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
	select Email from user_details;
</sql:query>
<c:set var="m1" value="${param.mail}"></c:set>
<c:set var="pwd" value="${param.pwd}"></c:set>
<c:set var="cpwd" value="${param.cpwd}"></c:set>
<c:if test="${pwd eq cpwd}">
<c:forEach var="data" items="${rs.rows}">
<c:set var="m2" value="${data.Email}"></c:set>
	<c:if test="${m1 eq m2}">
		<jsp:forward page="Error_Registration.html"></jsp:forward>
	</c:if>
</c:forEach>
<sql:update var="update" dataSource="${con}">
	Insert Into user_details(FirstName,LastName,Email,PhoneNo,Password,username) Values("${fn:substringBefore(param.name," ")}","${fn:substringAfter(param.name," ")}","${param.mail}","${param.ph}","${param.pwd}","${fn:substringBefore(param.mail,"@")}");
</sql:update>
	<p style="background-color: red; color:white;">Successfully Registration is Completed.</p>
	<jsp:include page="login.html"></jsp:include>
</c:if>
<%-- 	<jsp:forward page="Error_Registration.html"></jsp:forward> --%>
</body>
</html>