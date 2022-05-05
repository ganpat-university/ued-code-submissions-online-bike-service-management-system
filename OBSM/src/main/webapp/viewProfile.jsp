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
    <title>Profile</title>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
      integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
      crossorigin="anonymous"
    />
    <style>
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
th,td{
	background-color: #E4D1B9;
	padding-left: 10px;
	width: 100px;
	border-bottom: 1px black solid;
}
    </style>
    <link rel="stylesheet" href="CSS/style.css" />
  </head>
  <body>
  <!-- ----------------------------------------------------------------------------------------------------------------------------- -->
 <sql:setDataSource var="con" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3307/obsm_project" user="root" password="meet123"/>
	<sql:query var="rs" dataSource="${con}">
		select * from user_details where FirstName="${uname}";
	</sql:query>
	<c:forEach var="data" items="${rs.rows}">
		<c:set var="name" value="${data.FirstName} ${data.LastName}"></c:set>
		<c:set var="username" value="${data.username}"></c:set>
		<c:set var="pn" value="${data.PhoneNo}"></c:set>
		<c:set var="mail" value="${data.Email}"></c:set>
	</c:forEach>
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
              <li><a href="userabout.jsp">About</a></li>
              <li><a href="shop.jsp">Shop</a></li>
              <li>
				<div class="dropdown">  
					<button class="dropbtn"><c:out value="${uname}"></c:out></button>  
					<div class="dropdown-content">     
					<a href="user_viewBooking.jsp"> Booking Status </a>  
					<a href="logout"> Logout </a>  
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
        <div class="row">
          <div class="col">
            <div class="basicdetail">
            	<div class="image"><img alt="name" src="https://www.bootdey.com/img/Content/avatar/avatar7.png"></div>
              <table align="center">
              	<tr><th>User Name</th><td><c:out value="${username}"></c:out></td></tr>
              	<tr><th>Name</th><td><c:out value="${name}"></c:out></td></tr>
              	<tr><th>Email Address</th><td><c:out value="${mail}"></c:out></td></tr>
              	<tr><th>Phone Number</th><td><c:out value="${pn}"></c:out></td></tr>
              </table>
            </div>
          </div>
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