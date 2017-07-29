<%@ page language="java" import ="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
Connection con=null;
Statement stmt=null;
ResultSet rs=null;
String eemail=" ",ppass=" ";

 eemail=request.getParameter("txtemail");
 ppass=request.getParameter("txtpass");
try {
Class.forName("com.mysql.jdbc.Driver");
	
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ARS","root","12345");
	
	System.out.println("Connected");
	
	
	stmt=con.createStatement();
	
	rs=stmt.executeQuery("select user_first_name,user_last_name from users where user_mail='"+eemail+"' and user_password='"+ppass+"'");

	if(rs.next())
	{
		HttpSession sess=request.getSession();
		sess.setAttribute("userf",rs.getString("user_first_name"));
		sess.setAttribute("userl",rs.getString("user_last_name"));
	
		response.sendRedirect("dashboard.jsp");
	
	}
	else
	{
		response.sendRedirect("index.html");
	}

}
catch(Exception ex)
{
out.println(ex);
}
%>
</body>
</html>