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
              <li><a href="AdminDashBoard.html">Home</a></li>
              <li><a href="manageRequest.jsp">Manage Request</a></li>
              <li><a href="userDetails.jsp">User</a></li>
              <li><a href="manageShop.jsp">Manage Shop</a></li>
              <li><a href="logout" style="color: #44bcc7;border:1px solid;">Logout</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
<!-- {}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}{}}{}{}{}{}{}{}{} --> 
        	<sql:query var="rs" dataSource="${con}">
				select * from patner_details Order by Status ASC;
			</sql:query>
			
    <div class="container-fluid body">
      <div class="container body-content">
        <div class="row" align="center">
        <form action="updatestatus" method="post">
			<table>
			<tr><th>Patner ID</th><th>Service Center Name</th><th>Owner Name</th><th>Email</th><th>Contact No.</th><th>Address</th><th>Status</th><th>Update</th></tr>

			<%! int i=0; %>
			<c:forEach var="data" items="${rs.rows}">
					<tr><td>${data.P_id}</td><td>${data.ServiceCenterName}</td><td>${data.OwnerName}</td><td>${data.Email}</td><td>${data.ContactNo}</td><td>${data.Address}</td>
					<td><c:if test="${data.Status eq '0'}"><p style="color: red;"><b>Not Complete</b></p></c:if>
						<c:if test="${data.Status eq '1'}"><p style="color: green;"><b>Complete</b></p></c:if>
			</td>
			<td align="center" style="text-align: center;">
			<c:if test="${data.Status eq '0'}"><input type="checkbox" name="Choice<%=i %>" value="${data.P_id}">
			<% i=i+1; %></c:if></td>
			</tr>
			
			</c:forEach></table>
			<div class="submit"  style="padding-top: 20px;">
				<input type="submit" style="background-color: green; width:60%;letter-spacing: 4px; color: white; box-shadow: 2px 2px 1px black;" value="Update Data"></div>
			</form>
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