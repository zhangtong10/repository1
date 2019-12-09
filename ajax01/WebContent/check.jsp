<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html >
<html>
<head>
</head>
<body>
<%

   response.setHeader("Content-Type", "application/json;charset=utf-8");
   //response.setContentType("application/json");
   String uname = request.getParameter("username");
   out.println("{\"msg\":\"hello\"}");
   
   //out.println("用户名 "+ uname +"  已经存在");

%>
</body>
</html>