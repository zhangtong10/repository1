<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>

<script>
	$(function(){
		$.ajax({
			url:"show.do",
			type:"post",
			dataType:"json",
			success:function(response,status,xhr){
				var depts = response;
				for(var i=0;i<depts.length;i++){
					var d = depts[i];
					var tr = $("<tr></tr>");
					var td1 =$("<td>"+d.deptno+"</td>");
					var td2 =$("<td>"+d.dname+"</td>");
					var td3 =$("<td>"+d.loc+"</td>");
					var td4 =$("<td><a href='update.do?id="+d.deptno+"'>修改</a>&nbsp;&nbsp;&nbsp;<a href='delete.do?id="+d.deptno+"'>删除</a></td>");
					tr.append(td1);
					tr.append(td2);
					tr.append(td3);
					tr.append(td4);
					$("#tab").append(tr);
					
				}
			},
			error:function(){
				alert("服务器端出错")
			}
		});
		
		
	})

</script>
</head>
<body>
<table id="tab" border="1" width="300px" cellspacing="0">
	<tr>
		<th>编号</th>
		<th>名称</th>
		<th>位置</th>
		<th>操作</th>
	</tr>

</table>
</body>
</html>