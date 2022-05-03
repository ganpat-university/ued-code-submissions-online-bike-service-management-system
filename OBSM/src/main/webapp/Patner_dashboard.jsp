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
    <style>
.dropbtn {  
  		background-color: grey;  
  		color: black;  
  		padding: 3px;  
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
    
    </style>
    <link rel="stylesheet" href="CSS/style.css" />
  </head>
  <body>
  <!-- ----------------------------------------------------------------------------------------------------------------------------- -->
  <sql:setDataSource var="con" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3307/obsm_project" user="root" password="meet123"/>
	
           	<sql:query var="rs" dataSource="${con}">
				select count(*) as c from booking where serviceCenter="${sname}" and status=0 ;
			</sql:query>
			
           	<c:forEach var="data" items="${rs.rows}">
					<c:set var="f1" value="${data.c}"></c:set>
			</c:forEach>
			
			<sql:query var="rs1" dataSource="${con}">
				select * from patner_details where ServiceCenterName="${sname}";
			</sql:query>
           	<c:forEach var="data" items="${rs1.rows}">
					<c:set var="f2" value="${data.Status}"></c:set>
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
              <li><a href="Patner_dashboard.jsp">Home</a></li>
              <li><a href="viewBooking.jsp">Manage Request</a></li>
              <li><a href="patnershop.jsp">Shop</a></li>
              <li>
				<div class="dropdown">  
					<button class="dropbtn"><c:out value="${uname}"></c:out></button>  
					<div class="dropdown-content">  
					<a href="logout"> Logout </a>  
					</div>  
				</div>  
			  </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
        <c:if test="${f2 eq 0}"><div style="background-color: red;">
      <marquee bgcolor="red" height="22" width="100%" direction="left" scrollamount="15" style="color:white; font-weight: bolder;margin:0px;">Your Verification is Pending.</marquee></c:if></div>
    <div class="container-fluid body">
      <div class="container body-content">
      
        <div class="row">
          <div class="col">
            <div class="map">
              <h4 style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;">Nearest Bike Service Center</h4>
<!-- map --><iframe width="100%" height="100%" frameborder="2" scrolling="no" src="https://maps.google.com/maps?width=100%25&amp;height=600&amp;hl=en&amp;q=near%20by%20bike%20service%20center+(My%20Business%20Name)&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed"></iframe>
          </div>
          </div>
          <div class="col">
            <div class="about">
              <h3 class="home-div2">Online Bike Service Management System-OBSM</h3>
              <p> The mission of <b>OBSM</b> is to serve its customers to the fullest. OBSMS is the online based entity that is aimed at organizing the quite unorganized after sales market for its users so that customers can have all relevant details before making an informed decision based on their requirements.</p>
            </div>
          </div>
        </div>
        <c:if test="${f2 eq 1}">
        <div class="row" style="padding-top: 10%;justify-content:center; text-align: center;">
        	<div class="col-6" >
        		<div style="background-color: #005555;color: #A1E3D8; border: 2px black solid; border-radius: 7px;">
        		<h2>Total Request Pending</h2>
				<h4>${f1}</h4></div>
        	</div>
        </div></c:if>
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
