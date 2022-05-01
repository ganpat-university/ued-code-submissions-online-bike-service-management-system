<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
    <link rel="stylesheet" href="CSS/style.css" />
<style type="text/css">
    .adminform{
    	position: absolute;
    }
</style>
</head>
<body>
<div class="adminhead">
	<div class="adminform">
		<p style='background-color: red;color: white;'>Your AdminId and Password are Mismatch</p>
		<form action="loginAdmin.jsp">
		<table>
			<tr><td>Admin ID</td><td><input type="text" placeholder="Enter Admin Id" name="aid" required></td></tr>
			<tr><td>Password</td><td><input type="password" placeholder="Enter Admin password" name="apwd" required></td></tr>
			<tr><td><input type="submit"></td></tr>
		</table>
		</form>
	</div>
</div>
</body>
</html>