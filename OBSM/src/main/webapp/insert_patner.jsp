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
</head>
<body>
<sql:setDataSource var="con" driver="com.mysql.cj.jdbc.Driver" url="jdbc:mysql://localhost:3307/obsm_project" user="root" password="meet123"/>
<sql:query var="rs" dataSource="${con}">
	select Email from patner_details;
</sql:query>
<c:set var="m1" value="${param.mail}"></c:set>
<c:forEach var="data" items="${rs.rows}">
<c:set var="m2" value="${data.Email}"></c:set>
	<c:if test="${m1 eq m2}">
		<jsp:forward page="Error_PatnerRegistration.html"></jsp:forward>
	</c:if>
</c:forEach>
<sql:update var="update" dataSource="${con}">
	Insert Into patner_details(ServiceCenterName, OwnerName, Email, ContactNo, Address,Password) Values("${param.s_name}","${param.oname}","${param.mail}","${param.cno}","${param.add}","${param.pwd}");
</sql:update>
	<jsp:include page="patnerLogin.html"></jsp:include>
	<p>You have Successfully Registered Your Self.</p>
</body>
</html>