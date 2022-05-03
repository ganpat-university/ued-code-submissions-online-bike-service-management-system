<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<sql:setDataSource var="con" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3307/obsm_project" user="root" password="meet123"/>
	<c:set var="ser" value="${param.serv}"></c:set>
	<c:set var="mail" value="${param.mail}"></c:set>
	<c:set var="bike" value="${param.bike}"></c:set>
	<c:set var="ph" value="${param.ph}"></c:set>
	<c:set var="ser_list" value="${param.ser_list}"></c:set>
	<sql:update dataSource="${con}">
		insert into booking(User_id,serviceCenter, Email_id, Brand, Phone_No, Service, status,Request_date,cost) values(${cid},"${ser}","${mail}","${bike}","${ph}","${ser_list}",0,CURDATE(),0);
	</sql:update>
	<script>
	        alert("Check Your Service Status In 'Booking Status'");
	</script>	
	<p style="color: green;" width="100%"><b>Your Service is Booked</b></p>
	<jsp:include page="user_dashboard.jsp"></jsp:include>
</body>
</html>