<%@ page language="java" import ="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Signup!</title>
</head>
<body>
<%

Connection con=null;
Statement stm=null;
PreparedStatement psmt=null;
ResultSet rs=null;

String fuser_fname=" ",fuser_lname,fuser_npass=" ",fuser_cpass=" ",fuser_email=" ",fuser_gender=" ";
fuser_fname=request.getParameter("txtfname");
fuser_lname=request.getParameter("txtlname");
fuser_email=request.getParameter("txtemail");
fuser_npass=request.getParameter("txtnpass");
fuser_cpass=request.getParameter("txtcpass");
fuser_gender=request.getParameter("optradio");
if((fuser_npass).equals(fuser_cpass))
{
try 
{
Class.forName("com.mysql.jdbc.Driver");
	
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ARS","root","12345");
	
	
	System.out.println("Connected");
	
	psmt=con.prepareStatement("insert into users values(?,?,?,?,?)");
	psmt.setString(1,fuser_fname);
	psmt.setString(2,fuser_lname);
	psmt.setString(3,fuser_email);
	psmt.setString(4,fuser_npass);
	psmt.setString(5,fuser_gender);
	psmt.executeUpdate();
	System.out.println("data inserted");
	response.sendRedirect("index.html");
	

}
	catch(Exception ex)
	{
		System.out.println(ex);
	}
}
else 
{
	response.sendRedirect("login.html");
}
%>

</body>
</html>