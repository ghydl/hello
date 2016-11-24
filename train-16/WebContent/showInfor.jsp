<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
   <%@page import="hello.BoyFriend" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<%
    BoyFriend bf=(BoyFriend)session.getAttribute("myBoyFriend");
    String phone = request.getParameter("yuehui");

 int shengqi =bf.getShengQi();
 int ai =bf.getAi();
 
   if(phone.equals("0")){
	 shengqi=shengqi+10;
 }else if(phone.equals("1")){
	 shengqi=shengqi+50;
 }else if(phone.equals("2")){
	 ai=ai+20;
 }else {
	 ai=ai+10;
	 shengqi=shengqi+10;
 }
  bf.setShengQi(shengqi);
  bf.setAi(ai);
  
  if(bf.getShengQi()>20){
	  out.print("<h1>哈哈你已经出局了！</h1>");
  }else{
	  out.print(" <h1>生气了</h1>");
	  if(bf.getAi()>30){
		  out.print(" <h1>表现还不错哦！ </h1>");
	  }
	  out.print(" <p><a href='status.jsp'>继续测试 </p> ");
  }
  if(bf.getAi()>100){
	  out.print(" <h1> 表现还不错！ </h1>");
  }
%>
</body>
</html>