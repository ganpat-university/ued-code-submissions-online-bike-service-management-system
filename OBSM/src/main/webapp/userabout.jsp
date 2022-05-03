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
    <title>OBSM</title>
    <link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
      integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
      crossorigin="anonymous"
    />
   <style type="text/css">
   @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;400;500&display=swap');
   
   	.section{
   		background-image: url("https://wallpaperbat.com/img/353146-motorcycle-desktop-wallpaper.jpg");
   		width: 100%;
   		min-height: 82vh;
   	}
   	.description{
   		background-color: #72717163;
   		padding: 20px;
   		background-image: linear-gradient(135deg, rgba(255,255,255,0.2), rgba(0,0,0,0.8));
   		box-shadow: 2px 2px 2px black;
   		font-family: 'Poppins',sans-serif; 
   	}
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
  
    <div id="header" class="head">
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
	
	
	<div class="container-fluid section d-flex justify-content-center align-item-center">
		<div class="container aboutbody">
	        <div class="row">
	          <div class="col">
	          	<div class="back-img">
	          		<div class="description text-center text-white">
						<h1>Started in 2020 </h1>
						<h4>with an aim to help people with their bike service management</h4> 
							<h1>&</h2> 
						<h4>to promote and help small workshops owner</h4>
					</div>
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
