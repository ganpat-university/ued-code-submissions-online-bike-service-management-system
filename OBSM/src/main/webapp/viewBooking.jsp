<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Dashboard</title>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
      integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
      crossorigin="anonymous"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
      integrity="sha512-SfTiTlX6kk+qitfevl/7LibUOeJWlt9rbyDn92a1DqWOw9vWG2MFoays0sgObmWazO5BQPiFucnnEAjpAB+/Sw=="
      crossorigin="anonymous"
    />
    <style>
    	.body .body-content .table td,th{
    		border: 1px black solid;
    	}
    	.table{
    		padding-top: 100px;
    	}
		.dropbtn {  
    		background-color: grey;  
    		color: black;  
    		padding: 3px;  
    		width: 120px;
    		font-size: 22px;  
}  
.dropdown {  
    display: inline-block;  
    position: relative  
}  
.dropdown-content {  
    position: absolute;  
    background-color: lightgrey;  
    min-width: 200px;  
    display: none;  
    z-index: 1;  
}  
.dropdown-content a {  
    color: black;  
    padding: 12px 16px;  
    display: block;  
}  
.dropdown-content a:hover {  
    background-color: black;  
}  
.dropdown:hover .dropdown-content {  
    display: block;  
}  
.dropdown:hover .dropbtn {  
    background-color: grey;  
}  
.body-content .table{
	padding: 10px;
	padding-left: 20px;
} 
.body-content .table table{
	background-color: #ffde96;
	border: 2px black solid;
	box-shadow: 5px 5px 5px black;
}  
.body-content .table th{
	background-color: #a30023;
	color: white;
} 
    </style>
    <link rel="stylesheet" href="CSS/style.css" />
  </head>
  <body>
  <!-- ----------------------------------------------------------------------------------------------------------------------------- -->
  <sql:setDataSource var="con" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3307/obsm_project" user="root" password="meet123"/>
  <!-- ----------------------------------------------------------------------------------------------------------------------------- -->
   
    <div id="header">
      <div class="container navbars">
        <div class="row">
          <div class="col-3">
            <div class="header">
              <a href="#">
                <h6>Online Bike Service Management</h6>
              </a>
            </div>
          </div>
          <div class="col-9 menu">
            <ul class="ul_nav">
              <li><a href="user_dashboard.jsp">Home</a></li>
              <li><a href="#Help">Help</a></li>
              <li><a href="#About">About</a></li>
              <li><a href="shop.jsp">Shop</a></li>
              <li>
				<div class="dropdown">  
					<button class="dropbtn"><c:out value="${uname}"></c:out></button>  
					<div class="dropdown-content">  
					<a href="viewProfile.jsp"> Profile </a>  
					<a href="viewBooking.jsp"> Booking Status </a>  
					<a href="cart.jsp"> Cart </a> 
					<a href="index.html"> Logout </a>  
					</div>  
				</div>  
			  </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="container-fluid body">
      <div class="container body-content">
        <div class="row table">
          <sql:query var="rs" dataSource="${con}">
				select * from booking where User_id = ${cid};
		</sql:query>
		<table>
		<tr><th>Service ID</th><th>Service Center</th><th>Email</th><th>Brand</th><th>Phone Number</th><th>Status</th><th>Request Date</th></tr>
		<c:forEach var="data" items="${rs.rows}">
			<tr><td>${data.bid}</td><td>${data.serviceCenter}</td><td>${data.Email_id}</td><td>${data.Brand}</td><td>${data.Phone_No}</td><td>
			<c:if test="${data.status eq '0'}"><p style="color: red;"><b>Not Complete</b></p></c:if>
			<c:if test="${data.status eq '1'}"><p style="color: green;"><b>Complete</b></p></c:if>
			</td><td>${data.Request_date}</td></tr>
		</c:forEach>
        </table>
        </div>
      </div>
    </div>
    <div class="container-fluid footer">
      <div class="container">
        <div class="row">
          <div class="col">Copyright ©-All rights are reserved</div>
          <div class="col">Email | <a href="https://mail.google.com/mail/u/0/?ogbl&zx=w29j1upgl55j#inbox?compose=GTvVlcSMTDxFHNDgTbgbzfzDMfbmXTtpCVgNkrBxpDvCdskJSwjskBWBNNzlZxMqtrzdjHnslXvSM">meetprajapati20@gnu.ac.in</a></div>
          <div class="col">Ph No. | +91 8306974067</div>
          <div class="col">Online Bike Service Managament</div>
        </div>
      </div>
    </div>
  </body>
</html>
