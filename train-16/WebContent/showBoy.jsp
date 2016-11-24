<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="hello.BoyFriend"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="myBoyFriend" class="hello.BoyFriend" scope="session" />
<jsp:setProperty property="*" name="myBoyFriend"/>

<p><jsp:getProperty name="myBoyFriend"  property="yanZhi"/></p>
<p><jsp:getProperty name="myBoyFriend"  property="tiZhong"/></p>
<p><jsp:getProperty name="myBoyFriend"  property="shenGao"/></p>
<p><jsp:getProperty name="myBoyFriend"  property="shengQi"/></p>
<p><jsp:getProperty name="myBoyFriend"  property="ai"/></p>
<p><a href="status.jsp">你敢接受挑战吗？</a></p>
</body>
</html>