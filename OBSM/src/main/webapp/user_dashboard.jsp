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
              <li><a href="userabout.jsp">About</a></li>
              <li><a href="shop.jsp">Shop</a></li>
              <li>
				<div class="dropdown">  
					<button class="dropbtn"><c:out value="${uname}"></c:out></button>  
					<div class="dropdown-content">  
					<a href="viewProfile.jsp"> Profile </a>  
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
      </div>
    </div>
    <div class="container-fluid section">
      <h3 id="Program">Patnership Program</h3>
        <div class="container">
          <div class="row">
            <div class="col fac">
              <h4>Free Publicity Greater Reach</h4>
              <p>Track the progress of your vehicle service through the app and get updates of every process vehicle through a digital platform.</p></div>
            <div class="col fac">
              <h4>Boost in Sales</h4>
              <p>We at OBSM strive to provide a seamless experience to our customers for service their vehicle through a digital platform.</p></div>
            <div class="col fac">
              <h4>Easier Customer Handling</h4>
              <p>We at OBSM strive to provide a seamless experience to our customers for service their vehicle through a digital platform.</p></div>
          </div>
        </div>
        <div class="row">
          <div class="col" style="width=100%;">
				<a href="patnerRegistration.html"><button>Become Patner</button></a>
          </div>
        </div>
        
      </div>
    </div>
    <div class="container-fluid section2">
    	<div class="container">
    	<div class="row book">
          <div class="col">
          	<table>
          	<form action="bookService.jsp">
          	<tr><td>
				<label for="bike">Choose a car:</label></td><td>
				<select name="bike" id="bike" required>
  					<option value="TVS">TVS</option>
  					<option value="ROYAL ENFIELD">ROYAL ENFIELD</option>
  					<option value="PIAGGO">PIAGGO</option>
  					<option value="MAHINDRA">MAHINDRA</option>	
  					<option value="KTM">KTM</option>		
  					<option value="SUZUKI">SUZUKI</option>		
  					<option value="KAWASAKI">KAWASAKI</option>		
  					<option value="HONDA">HONDA</option>	
  					<option value="HYOSUNG">HYOSUNG</option>	
  					<option value="BAJAJ">BAJAJ</option>	
  					<option value="APRILIA">APRILIA</option>		
  					<option value="UM MOTORCYCLE">UM MOTORCYCLE</option>		
  					<option value="YAMAHA">YAMAHA</option>	
  					<option value="BENELI">BENELI</option>					
				</select></td></tr>
				<tr><td>Phone Number </td><td>
				<input type="tel" pattern="[0-9]{10}" placeholder="eg. 1234567890" name="ph" required></td></tr>
				<tr><td>Email</td><td>
				<input type="email" name="mail" placeholder="Enter Email" required></td></tr>
				<sql:query var="rs1" dataSource="${con}">
					select ServiceCenterName from patner_details where Status=1;
				</sql:query>
				<tr>
				<td>Select Center</td><td>
				<select name="serv" id="serv">
				<c:forEach var="data" items="${rs1.rows}">
  						<option value="${data.ServiceCenterName}">${data.ServiceCenterName}</option>
				</c:forEach>
				</select>
				</td>
				</tr>
				<tr><td colspan="2" align="center">
				<input type="submit" style="color:white;background-color: blue;"></td></tr>
			</form></table>
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
