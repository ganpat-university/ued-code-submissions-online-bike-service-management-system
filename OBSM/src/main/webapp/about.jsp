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
   		background-image: url("https://images.pexels.com/photos/7864/pexels-photo.jpg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940");
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
              <li><a href="index.jsp">Home</a></li>
              <li><a href="patnerLogin.html">Partnership</a></li>
              <li><a href="about.jsp">About</a></li>
              <li><a href="non_user_shop.jsp">Shop</a></li>
              <li><a href="login.html">Sign-In</a></li>
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
          <div class="col">Copyright ?-All rights are reserved</div>
          <div class="col">Email | <a href="https://mail.google.com/mail/u/0/?ogbl&zx=w29j1upgl55j#inbox?compose=GTvVlcSMTDxFHNDgTbgbzfzDMfbmXTtpCVgNkrBxpDvCdskJSwjskBWBNNzlZxMqtrzdjHnslXvSM">meetprajapati20@gnu.ac.in</a></div>
          <div class="col">Ph No. | +91 8306974067</div>
          <div class="col">Online Bike Service Managament</div>
        </div>
      </div>
    </div>
  </body>
</html>
