<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin-Dashboard</title>
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
              <li><a href="AdminDashBoard.html">Home</a></li>
              <li><a href="manageRequest.jsp">Manage Request</a></li>
              <li><a href="userDetails.jsp">User</a></li>
              <li><a href="manageShop.jsp">Manage Shop</a></li>
              <li><a href="logout" class="btn-outline-primary text-white p-2">Logout</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
<!-- {}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}}{}{}{}{}{}{}{} --> 
        	<sql:query var="rs" dataSource="${con}">
				select * from total_analysis;
			</sql:query>
			<c:forEach var="data" items="${rs.rows}">
					<c:set var="f1" value="${data.No_users}"></c:set>
					<c:set var="f2" value="${data.No_Patners}"></c:set>
					<c:set var="f3" value="${data.Booking_Request_Pending}"></c:set>
					<c:set var="f4" value="${data.PatnerValidationPending}"></c:set>
			</c:forEach>
    <div class="container-fluid body">
      <div class="container body-content">
        <div class="row" align="center">
			<div class="col">
				<div class="box">
				<h3>Number Of User</h3>
				<hr>
				<h1>${f1}</h1></div>
			</div>
			<div class="col">
				<div class="box">
				<h3>Number Of Patners</h3>
				<hr>
				<h1>${f2}</h1></div>
			</div>
        </div>
        <div class="row" align="center">
			<div class="col">
				<div class="box">
				<h3>Pending Patner Validation</h3>
				<hr>
				<h1>${f4}</h1></div>
			</div>
			<div class="col">
				<div class="box">
				<h3>Pending Booking Request</h3>
				<hr>
				<h1>${f3}</h1></div>
			</div>
        </div>
      </div>
    </div>
<!-- {}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}}{}{}{}{}{}{}{} -->    
       <div class="container-fluid section">
        <div class="container">
          <div class="row">
            <div class="col" style="letter-spacing: 10px;font-weight: bolder; word-spacing: 20px;">ADMIN PAGE</div>
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