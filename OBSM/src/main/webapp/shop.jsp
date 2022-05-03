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
    .product img{
    	border-radius: 20%;
    }
    .product{
    	background-color:#DDDDDD;    	
    	box-shadow: 2px 2px 10px black;
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
.product img{
    	border-radius: 20%;
    }
    .product{
    	background-color:#DDDDDD;    	
    	box-shadow: 2px 2px 10px black;
    	height: 350px;
    	border-radius: 5px;
    }
	button {
		background-color: grey;
		color: white;
		width: 100px;
	}
	button:hover {
		background-color: #F2F2F2;
		color: black;
		width: 80px;
	}
	.body .body-content .form-addItem{
		display:block;
		width: 100%;
		margin-top: 50px;
		border-radius: 10px;
		background-color: #E8C07D;
		padding : 30px; 
	}
	.body .body-content{
		padding-bottom: 30px;
	}
	table{
		text-align: center;
	}
	input{
		width: 70%;
		background-color: transparent;
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
      <div class="container body-content pt-3">
        <div class="row">
          	
        	<sql:query var="rs1" dataSource="${con}">
				select * from product;
			</sql:query>
        	<c:forEach var="data" items="${rs1.rows}">	
				<c:set var="proname" value="${data.product_name}"></c:set>
				<c:set var="p_url" value="${data.url}"></c:set>
				<c:set var="imgurl" value="${data.imgUrl}"></c:set>
        		<div class="col">
        		<div class="product" style="margin-bottom: 10px; margin-top: 20px;">
	        		<div class="col">
						<div class="row d-flex justify-content-center">
							<img alt="Image" src="${imgurl}" width=300px height=300px style="padding: 20px;">
						</div>
						<div class="row" style="text-align: center;">
							<div class="col">
							<p style="text-transform: capitalize;font-family: cursive; font-size: inherit;">${proname}</p>
							</div>
							<div class="col">
							<a href="${p_url}" target="_blank"><button>View</button></a>
							</div>
						</div>
					</div>
	        	</div>
				</div>
        	</c:forEach>
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