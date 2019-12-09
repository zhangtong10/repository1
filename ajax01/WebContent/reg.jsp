<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		//需求： 当用户名失去焦点时， 异步请求服务器资源check.jsp，将用户名的值传入，做校验。 将校验结果在id为msg的span中显示
		$("#uname").blur(function(){
			// 获取用户名的值
			var u = $("#uname").val();
			// 异步请求
			$.ajax({
				url:"check.do",
				type:"post",
				dataType:"json",
				//"async":false,
				data:{"username":u},
				success:function(response,status,xhr){
					//alert(response.msg)
					$("#msg").html(response.message)
				},
				error:function(){
					alert("服务器端出错！")
				}
			});
			
			
		})
		
		
	})

</script>

</head>
<body>
<form action="reg.do" method="post">
	username <input type="text" id="uname" name="uname" autofocus="autofocus"><span id="msg"></span><br>
	password <input type="password" id="pwd" name="pwd"><br>
	<input type="submit" value="注册">
	
</form>
</body>
</html>