<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>数据处理页面</title>
</head>
<body>
<%
String textContent=request.getParameter("name");
String buttonName=request.getParameter("submit");
%>
获取到客户端提交的文本和按钮信息如下：
<hr>
文本框输入的信息：<%=textContent %>
<br>
按钮信息：<%=buttonName %>
<hr>
</body>
</html>