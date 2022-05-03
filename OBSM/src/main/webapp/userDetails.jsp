<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
      integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn"
      crossorigin="anonymous"
    />
    <style type="text/css">
    
.body .body-content{
	padding: 30px;
}

.body .body-content .box{
	padding:20px;
	background-color: #C0C0C0;
	border-radius: 5px;
	align-content: space-around;
	margin: 30px;
}
.body .body-content .box:hover{
	 transition: 0.1s;
	background-color: #808080;
	color: white;
}
.body .body-content h1:hover{
	font-weight: bolder;
}
table{
	border: 1px black solid;
	background-color: #ffde96;
	text-align: center;
}
th{
	background-color: #a30023;
	color: white;
	border: 1px white solid;
	
} 
td{
	border: 1px white solid;
	text-align:left;
	padding-left: 5px;
}
table{
	border: 2px black solid;
	box-shadow: 3px 3px 10px black;
}
form{
	width: 100%;
}
.body .body-content .submit input:hover{
	background-color: white;
	color: black;
}
    </style>
    <link rel="stylesheet" href="CSS/style.css" />
</head>
<body>
<sql:setDataSource var="con" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3307/obsm_project" user="root" password="meet123"/>
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
              <li><a href="AdminDashBoard.jsp">Home</a></li>
              <li><a href="manageRequest.jsp">Manage Request</a></li>
              <li><a href="userDetails.jsp">User</a></li>
              <li><a href="manageShop.jsp">Manage Shop</a></li>
              <li><a href="logout" style="color: #44bcc7;border:1px solid;">Logout</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
<!-- {}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}bid, serviceCenter, Email_id, Brand, Phone_No, Service, status, Request_date, User_id{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}}{}{}{}{}{}{}{} --> 
        	<sql:query var="rs" dataSource="${con}">
				select * from user_details Order by User_id;
			</sql:query>
        	<sql:query var="rs1" dataSource="${con}">
				select * from booking left join user_details on booking.User_id=user_details.User_id;
			</sql:query>		
    <div class="container-fluid body">
      <div class="container body-content">
      	<div class="row" style="display: flex; text-align: center; font-size: 20px;margin-bottom: 10px;">
      		<div class="col""><a href="#table1" style="border-bottom: 2px black solid;border-radius: 4px;">User Details</a> </div>
      		<div class="col"><a href="#table2" style="border-bottom: 2px black solid;border-radius: 4px;">Booking Status</a> </div>
      	</div>
        <div class="row" align="center">
        <div class="row table1" style="width:100%;" id="table1">
			<div class="col">
			<h4 width=100% style="background-color: #82A284;color: white;border: 2px black solid;">Users Details</h4></div>
			<table>
			<tr><th>User ID</th><th>FirstName</th><th>LastName</th><th>Email</th><th>Contact No.</th><th>username</th></tr>
			<c:forEach var="data" items="${rs.rows}">
				
					<tr><td>${data.User_id}</td><td>${data.FirstName}</td><td>${data.LastName}</td><td>${data.Email}</td><td>${data.PhoneNo}</td><td>${data.username}</td>
			</tr>
			</c:forEach></table></div>

		<div class="row table2" style="margin-top: 40px;width:100%;" id="table2">
			<div class="col">
			<h4 width=100% style="background-color: #82A284;color: white;border: 2px black solid;">Booking</h4></div>
			<table>
			<tr><th>Booking ID</th><th>Service Center</th><th>Email ID</th><th>Brand</th><th>Contact No.</th><th>Service</th><th>Status</th><th>Request_date</th><th>Request From</th></tr>
			<c:forEach var="data" items="${rs1.rows}">
					<tr><td>${data.bid}</td><td>${data.serviceCenter}</td><td>${data.Email_id}</td><td>${data.Brand}</td><td>${data.Phone_No}</td><td>${data.Service}</td><td>
						<c:if test="${data.status eq '0'}"><p style="color: red;"><b>Not Completed</b></p></c:if>
						<c:if test="${data.status eq '1'}"><p style="color: green;"><b>Completed</b></p></c:if>
					</td><td>${data.Request_date}</td><td>${data.FirstName}</td>
			</tr>
			</c:forEach></table>
			</div>
        </div>
      </div>
    </div>
    
<!-- {}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}}{}{}{}{}{}{}{} -->    
    <div class="container-fluid section">
        <div class="container">
          <div class="row">
            --------------------------------
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