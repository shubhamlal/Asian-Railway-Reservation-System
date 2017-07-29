<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script><title>Confirm Booking</title>
<style>
.jumbotron {
   height:200px;
   background: url("station.jpg") no-repeat center center;
   -webkit-background-size: 100% 100%;
   -moz-background-size: 100% 100%;
   -o-background-size: 100% 100%;
   background-size: 100% 100%;
  }
  #query {
  	width:50px%
  	float:left;
  } 
  #entry {
  border:2px
  
  } 
 
body{
	background-image:url("p.jpg");
	width:100%;
	height:100%
}
  
</style>
</head>
<body>
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
      </ul>
    </div>
  </div>
</nav>
 
<%
HttpSession sess= request.getSession();
String jtrainnum=(String)sess.getAttribute("trainnum");
String jtrainname =(String)sess.getAttribute("trainname");
String jtrainstartdate=(String)sess.getAttribute("trainstartdate");
String jtraintype=(String)sess.getAttribute("traintype");
String jtraintime=(String)sess.getAttribute("traintime");
%>

 <h3>These are the following trains present</h3>
 <div class="container" id="query">
	<table class="table">
   	 <thead>
      <tr>
        <th>Train Number</th>
        <th>Train Name</th>
        <th>Train Start Date</th>
        <th>Train Type</th>
        <th>Train Time</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><% out.print(jtrainnum); %></td>
        <td><% out.print(jtrainname); %></td>
        <td><% out.print(jtrainstartdate); %></td>
        <td><% out.print(jtraintype); %></td>
        <td><% out.print(jtraintime); %></td>
      </tr>
      
    </tbody>
  </table>
</div>
<div>
<form class="form-inline" role="form" action="finalbook.jsp" method="get"></form>

<div class="conatiner">
<div class="row">
<div class="col-md-3">	
<table id="entry" class="table">
	<tr>
		<th>SNo.</th>
		<th>Enter Your Name</th>
		<th>Enter Your age</th>
		<th>Enter your EAdhar Number</th>
		
		
		
	</tr>
	<tr><td>1</td>
		<td><input id="nam_1" type="text" name="name_1"/></td>
		<td><input type="text" name="age_1"></td>
		<td><input type="text" name="Eadhar_1"></td>
	</tr>
	<tr><td>2</td>
		<td><input id="nam_2" type="text" name="name_2"/></td>
		<td><input type="text" name="age_2"></td>
		<td><input type="text" name="Eadhar_2"></td>
	</tr>
	<tr><td>3</td>
		<td><input id="nam_3" type="text" name="name_3"/></td>
		<td><input type="text" name="age_3"></td>
		<td><input type="text" name="Eadhar_3"></td>
	</tr>
	</table>
	</div>
</div>
</div>

			<div class="row">
				<div class="col-md-4">
			<button class="btn btn-block" type="submit" onClick="functio()">Book</button>
	</div>
</div>	
</div>
</form>
<script>
function functio()
{
	var nam1=document.getElementById("nam_1");
	var nam2=document.getElementById("nam_2");
	var nam3=document.getElementById("name_3");
	if((nam1==nam2) || (nam2==nam3) || (nam1==nam3)) {
		document.write("Names Cannot be Same");
	}
	elseif((nam_1==" ")&&(nam_2==" ")&&(nam_3==" "))
		{
			document.write("You have to provide atleast one Name");
		}
	}
</script>
</body>
</html>