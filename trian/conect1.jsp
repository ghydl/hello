<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
String connectSQL="jdbc.sqlserver://localhost:1433;DatabaseName=software";

Connection conn= java.sql.DriverManager.getConnection(connectSQL,"sa","");
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery("select * from student"); %>
<h1>按照年龄查询</h1>
<%
   int age =Integer.parseInt(request.getParameter("age"));
  String sql= "select *from student where age =?";
  PreparedStatement st= conn.prepareStatement(sql);
  st.setInt(1, age);
  rs =st.executeQuery();
  
  out.println("<table>");
  while(rs.next()){
  	out.print("<tr>");
  	out.print("<td>"+rs.getInt("id")+"<td>");
  	out.print("<td>"+rs.getInt("name")+"<td>");
  	out.print("<td>"+rs.getInt("age")+"<td>");
  	out.print("<td>"+rs.getInt("major")+"<td>");
  	
  }
out.print("</br>");
 out.close();
 stmt.close();
 conn.close();
%>
</body>
</html>