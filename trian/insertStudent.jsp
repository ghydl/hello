<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8" import="java.sql.*,java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
    String connectSQL="jdbc.sqlserver://localhost:1433;DatabaseName=software";
    
    Connection conn= java.sql.DriverManager.getConnection(connectSQL,"sa","");
    String sql ="insert into student values(?,?,?,?)";
    PreparedStatement st=conn.prepareStatement(sql);
    
    request.setCharacterEncoding("utf-8");
    response.setCharacterEncoding("utf-8");
    response.setContentType("text/html;charset=utf-8");
    
    
    String id=request.getParameter("id");
    String name=request.getParameter("name");
    String age=request.getParameter("age");
    String major=request.getParameter("major");
   
    st.setInt(1,Integer.parseInt(id));
    st.setString(2,name);
    st.setInt(3, Integer.parseInt(age));
    st.setString(4, major);
    
    st.executeUpdate();
    System.out.println(st.toString());
    
    st.close();
    conn.close();
    
    
    
%>
用户已经插入！
    </body>
</html>