<%@ page language="java" import ="java.time.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
<title>DASHBOARD</title>
<style type="text/css">
body{
	background-image:url("02.jpg");
	width:100%;
	height:100%
	}
.btn btn-info btn-block	{
width:50px;
}
</style>
</head>
<body>
<%
HttpSession sess= request.getSession();
String fname=(String)sess.getAttribute("userf");
String lname=(String)sess.getAttribute("userl");
%>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.html">ARS</a>
    </div>
    <div>
      <ul class="nav navbar-nav">
        <li class="active"><a href="#">Home</a></li>
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Manage Your Account<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="login.html">Signup</a></li>
           <li><a href="signup.html">Login</a></li>
          </ul>
        </li>
        <li><a href="BookingPage.html">Book your ticket here</a></li>
        <li><a href="AboutARS!.html">About Us</a></li>
        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">
        <strong><% out.print(fname); %>
<% out.print(lname);%></strong><span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="login.html">Signup</a></li>
           <li><a href="signup.html">Login</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>   
<h4 id=attri right"> Current Time: <%= java.util.Calendar.getInstance().getTime() %> </h4>
<button id=attri class="btn btn-default"><a href="index.html">Logout</a></button> 
  
  </div>
 <div class="container">
 <div class="row">
 <table class="table table-bordered">
<tr><td><button class="btn btn-info btn-block"><a href="http://www.w3schools.com">Check P.N.R. status</a></button></td></tr>
<tr><td><button class="btn btn-info btn-block"><a href="BookingPage.jsp">Book Your Ticket</a></button></td></tr>
<tr><td><button class="btn btn-info btn-block"><a href="cancelticketd">Cancel Your Ticket</button></td></tr>
<tr><td><button class="btn btn-info btn-block">Find Route map </button></td></tr>
  </table>
  </div> 
  </div>    
</div>
</div>
<Footer style="position:right"style="color: black "></Footer>

HttpSession sesss=request.getSession();
sesss.setAttribute("userf",rs.getString("f_name"));
sesss.setAttribute("userl",rs.getString("l_name"));


</body>
</html>