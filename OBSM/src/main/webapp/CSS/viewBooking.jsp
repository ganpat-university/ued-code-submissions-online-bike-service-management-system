<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
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
              <li><a href="Patner_dashboard.jsp">Home</a></li>
              <li><a href="#Help">Help</a></li>
              <li><a href="#About">About</a></li>
              <li><a href="shop.jsp">Shop</a></li>
              <li>
				<div class="dropdown">  
					<button class="dropbtn"><c:out value="${uname}"></c:out></button>  
					<div class="dropdown-content">  
					<a href="index.html"> Logout </a>  
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
      <div class="container body-content">
        <div class="row" align="center">
        
<!--         bid, serviceCenter, Email_id, Brand, Phone_No, Service, status, Request_date, User_id -->
        
        <form action="updatestatus" method="post">
			<table>
			<tr><th>Booking ID</th><th>Service Center</th><th>Email ID</th><th>Brand</th><th>Contact No.</th><th>Service</th><th>Status</th><th>Request_date</th><th>Request From</th></tr>

			<%! int i=0; %>
			<c:forEach var="data" items="${rs1.rows}">
					<tr><td>${data.bid}</td><td>${data.serviceCenter}</td><td>${data.Email_id}</td><td>${data.Brand}</td><td>${data.Phone_No}</td><td>${data.Service}</td><td>
						<c:if test="${data.status eq '0'}"><p style="color: red;"><b>Not Completed</b></p></c:if>
						<c:if test="${data.status eq '1'}"><p style="color: green;"><b>Completed</b></p></c:if>
					</td><td>${data.Request_date}</td><td>${data.FirstName}</td>
			</tr>
			
			</c:forEach></table>
			<div class="submit"  style="padding-top: 20px;">
				<input type="submit" style="background-color: green; width:60%;letter-spacing: 4px; color: white; box-shadow: 2px 2px 1px black;" value="Update Data"></div>
			</form>
        </div>
      </div>
    </div>
</body>
</html>