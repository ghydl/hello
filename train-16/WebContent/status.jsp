<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="hello.Status"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
 <jsp:useBean id="status" class="hello.Status" scope="session" />
 <form action="showInfor.jsp" method="post" >
 <%
    String test=status.getZt().get(0);
   ArrayList<String> xuanxiang=status.getTimu().get(test);
   
   out.println("<h1>"+test+"如何回答，认真思考哈</h1>" );
    
   
   for(int i=0;i<4;i++){
	   String neiRong= xuanxiang.get(i);
	   String num =String.valueOf(i);
	   out.print("<p><input type='radio' name='yuehui'  value='+"+num+"' >"+neiRong+"</input></p>");
   }
 %>
 <button >提交</button>
 </form>
</body>
</html>