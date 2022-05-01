<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
<sql:setDataSource var="con" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3307/obsm_project" user="root" password="meet123"/>
<sql:query var="rs" dataSource="${con}">
	select * from patner_details;
</sql:query>
<c:set var="m1" value="${param.mail}"></c:set>
<c:set var="pwd" value="${param.pwd}"></c:set>

<c:forEach var="data" items="${rs.rows}">
	<c:set var="m2" value="${data.Email}"></c:set>
	<c:set var="pwd2" value="${data.Password}"></c:set>
	<c:if test="${m1 eq m2}">
		<c:if test="${pwd eq pwd2}">
			<c:set var="uname" value="${data.OwnerName}" scope="session"></c:set>
			<c:set var="sname" value="${data.ServiceCenterName}" scope="session"></c:set>
			<jsp:forward page="Patner_dashboard.jsp"></jsp:forward>
		</c:if>
	</c:if>
</c:forEach>
	<jsp:forward page="Error_Patnerlogin.html"></jsp:forward>	
</body>
</html>