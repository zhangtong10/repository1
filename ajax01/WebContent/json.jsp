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
		var j = {"uname":"admin","age":22,"isMarried":true,"score":[88,99,66],"emps":[{"ename":"zhang","sal":5845},{"ename":"wang","sal":4587},{"ename":"li","sal":8555}]}
		/* alert(j.uname)
		alert(j.age)
		alert(j.isMarried)
		alert(j.score[0]) */
		var arrs = j.emps;
		for(var i=0;i< arrs.length;i++){
			var o = arrs[i];
			alert(o.ename+"--"+o.sal)
		}
		
		
	})

</script>
</head>
<body>

</body>
</html>