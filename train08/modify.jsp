<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@page import="java.sql.DriverManager" %>
    <%
    request.setCharacterEncoding("utf-8");
    response.setCharacterEncoding("utf-8");
    response.setContentType("text/html;charset=utf-8");
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
 <form action="updateStudent.jsp" method="post">
 <p>学号:<input type="text" name="id"/></p>
 <p>姓名：<input type="text" name="name"/></p>
 <p>年龄：<input type="text" name="age"/></p>
 <p>专业：<input type="text" name="major"/></p>
 <button type="sumbit">提交</button>
 </form>
</body>
</html>