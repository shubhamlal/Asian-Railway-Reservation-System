<%@ page language="java" import="java.sql.*"contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String blank=null;
String name1=request.getParameter("name_1");
String name2=request.getParameter("name_2");
String name3=request.getParameter("name_3");
Connection con=null;
%>
<script>
	var str1=name1;
	var str2=name2;
	var str3=name3;
	if(str1)
</script>
ResultSet rs=null;
PrepaedStatement prs=null;
String blank="";
try

{
	Class.forName("com.mysql.jdbc.Driver");

	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ARS","root","12345");


	System.out.println("Connected");
	stmt=con.createStatement();
	%>
	<script>
		if (name1.)
	</script>
	%>
</body>
</html>