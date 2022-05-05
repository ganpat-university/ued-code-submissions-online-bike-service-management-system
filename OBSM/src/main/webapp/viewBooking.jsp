<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking</title>
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
    	td{
    		border: 1px black solid;
    	}
    	table{
    		padding-top: 100px;
    		width: 100%;
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
.body{
	min-height: 100vh;
}
table{
	width: 100%;
}
    </style>
    <link rel="stylesheet" href="CSS/style.css" />
</head>
<body>
 <sql:setDataSource var="con" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3307/obsm_project" user="root" password="meet123"/>
	
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

        	<sql:query var="rs1" dataSource="${con}">
				select * from booking left join user_details on booking.User_id=user_details.User_id where serviceCenter="${sname}";
			</sql:query>	
			
    <div class="container-fluid body">
<!--       <div class="container body-content"> -->
        <div class="row" align="center" style="padding-top: 20px;">
        
        <c:if test="${f2 eq 1}">
        <form action="updatestatus.jsp" method="post" style="width: 100%">
			<table>
			<tr><th>Booking ID</th><th>Service Center</th><th>Email ID</th><th>Brand</th><th>Contact No.</th><th>Service</th><th>Status</th><th>Requested date</th><th>Requested From</th><th>Update</th><th width="50px">Cost</th></tr>

			<%! int i=0; %>
			<c:forEach var="data" items="${rs1.rows}">
					<tr><td>${data.bid}</td><td>${data.serviceCenter}</td><td>${data.Email_id}</td><td>${data.Brand}</td><td>${data.Phone_No}</td>
					<td>
						<c:if test="${data.status eq '0'}"><input type="text" name="ser" placeholder="Enter Service applied" style="width:150px;"></c:if>
						<c:if test="${data.status eq '1'}">${data.Service}</c:if>						
					</td><td>
						<c:if test="${data.status eq '0'}"><p style="color: red;"><b>Not Completed</b></p></c:if>
						<c:if test="${data.status eq '1'}"><p style="color: green;"><b>Completed</b></p></c:if>
					</td><td>${data.Request_date}</td><td>${data.FirstName}</td>
					<td>
						<c:if test="${data.status eq '0'}"><input type="radio" name="update" value="${data.bid}"></c:if>
						<c:if test="${data.status eq '1'}"><p style="color: green;"><b>-</b></p></c:if>					
					</td>
					<td>
						<c:if test="${data.status eq '0'}"><input type="number" name="num_update" placeholder="Enter Cost" style="width:80px;"></c:if>
						<c:if test="${data.status eq '1'}"><p style="color: green;"><b>${data.cost}</b></p></c:if>					
					</td>
			</tr>
			
			</c:forEach></table>
			<div class="submit"  style="padding-top: 20px;">
				<input type="submit" style="background-color: green; width:60%;letter-spacing: 4px; color: white; box-shadow: 2px 2px 1px black;" value="Update Data"></div>
			</form></c:if>
        <c:if test="${f2 eq 0}">
        <h2>Your Verification still Pending.</h2>
        </c:if>
        </div>
<!--       </div> -->
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