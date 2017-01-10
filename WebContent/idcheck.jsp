<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%  

	String id=request.getParameter("cmd");


Connection con;
PreparedStatement pstmt;
ResultSet rs;

Class.forName("oracle.jdbc.driver.OracleDriver");

String url= "jdbc:oracle:thin:@localhost:1521:xe";
String uid= "hr";
String upw= "hr";
con = DriverManager.getConnection( url, uid , upw);
String sql = "select * from members where id=?";


pstmt = con.prepareStatement(sql);

pstmt.setString(1, id);

int result= pstmt.executeUpdate();

if( result== 1){
	
	System.out.println("아이디 존재");
	session.setAttribute("idch", 1); // 아이디가 존재
	session.setAttribute("checkMsg", 0);
	response.sendRedirect("join.jsp");
	
	
}else{
	
	System.out.println("아이디 사용가능");
	
	session.setAttribute("id", id);
	session.setAttribute("idch", 2); 
	session.setAttribute("checkMsg", 1);  //아이디 체크를 수행함.
	response.sendRedirect("join.jsp");
	
	
}

%>






</body>
</html>