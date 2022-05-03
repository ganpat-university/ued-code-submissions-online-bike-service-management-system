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
<style>
* {box-sizing: border-box;
}
body {font-family: Verdana, sans-serif;}
.mySlides {display: none;}
img {
	vertical-align: middle;
	max-height: 400px; 
	max-width: 700px;
	align-self: center;
	
}
.slideshow-container {
  max-width: 1000px;
  position: relative;
  padding: 30px;
  width: 100%;
}

.active {
  background-color: #717171;
}

.fade {
  animation-name: fade;
  animation-duration: 5.5s;
  width: 100%;
}
@keyframes fade {
  from {opacity: 0.2} 
  to {opacity: 1}
}

</style>
    <link rel="stylesheet" href="CSS/style.css" />
  </head>
<body>
  <sql:setDataSource var="con" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3307/obsm_project" user="root" password="meet123"/>
  <sql:query var="rs" dataSource="${con }">
  	select * from home_image;
  </sql:query>
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
              <li><a href="">Home</a></li>
              <li><a href="#Program">Partnership</a></li>
              <li><a href="about.jsp">About</a></li>
              <li><a href="non_user_shop.jsp">Shop</a></li>
              <li><a href="login.html">Sign-In</a></li>
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
    <div class="container-fluid" style="background-color: grey;">
    	<div class="container image" style="padding:30px;">
			<div class="slideshow-container"  style="background-color: black; box-shadow: 10px 10px 30px black;">
				<c:forEach var="data" items="${rs.rows}">
				<div class="mySlides fade" align="center" style="border: 3px white solid;">
			  		<img src="${data.urlimg}" style="width:100%">
				</div>
				</c:forEach>
		
			</div>
		</div>
		<br>
		<script>
		let slideIndex = 0;
		showSlides();
		
		function showSlides() {
		  let i;
		  let slides = document.getElementsByClassName("mySlides");
		  for (i = 0; i < slides.length; i++) {
		    slides[i].style.display = "none";  
		  }
		  slideIndex++;
		  if (slideIndex > slides.length) {slideIndex = 1}    
		  slides[slideIndex-1].style.display = "block";  
		  setTimeout(showSlides, 6000); 
		}
		</script>
    </div>
    <div class="container-fluid section" style="background-color: #E9D5DA">
      <h3 id="Program" style="background-color: rgb(0,0,0); color:white; padding:30px; width:400px; height: 70px;">Patnership Program</h3>
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
          <div class="col">
          <a href="patnerRegistration.html"><button>Become Patner</button></a>
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
