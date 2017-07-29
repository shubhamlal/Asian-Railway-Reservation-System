<%@ page language="java" import ="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src=jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
<title>Checking Availability</title>
</head>
<body>
 <script src=jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
<%

Connection con=null;
Statement stmt=null;
ResultSet rs=null;




String jsource=request.getParameter("source");
String jdest=request.getParameter("dest");
String jdate=request.getParameter("journdate");
String jtype=request.getParameter("type");

try

{
	Class.forName("com.mysql.jdbc.Driver");

	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ARS","root","12345");


	System.out.println("Connected");


	stmt=con.createStatement();
	
	rs=stmt.executeQuery("SELECT train_no,train_name,train_date,train_type,train_time FROM trains WHERE train_source='"+jsource+"' AND train_dest='"+jdest+"' AND train_date='"+jdate+"'");

	
	if(rs.next())
	{
		System.out.println("It executes");
		HttpSession sess=request.getSession();
		sess.setAttribute("trainnum",rs.getString("train_no"));
		sess.setAttribute("trainname",rs.getString("train_name"));
		sess.setAttribute("trainstartdate",rs.getString("train_date"));
		sess.setAttribute("traintype",rs.getString("train_type"));
		sess.setAttribute("traintime",rs.getString("train_time"));
		response.sendRedirect("selectrain.jsp");
	}
	else 
	{
		System.out.println("It doesn't executes");
		response.sendRedirect("login.html");
	}
}
catch(Exception ex)
{
System.out.println(ex);
}
%>
</body>
</html>