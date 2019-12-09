<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		
		$("#btn01").click(function(){
			//获取id为uname的值
			var username = $("#uname").val();
			//jQuery的异步交互
			$("#box").load("test.jsp",{"uname":username},function(r,s,xhr){
				alert(r) ;//响应文本内容
				alert(s); //success
				alert(xhr.statusText);//ok, tomcat8
			})
		});
		
	})


</script>
</head>
<body>
用户名: <input type="text"  id="uname"><button id="btn01">ajax获取</button>
<div id="box" style="color:red;">

</div>
</body>
</html>