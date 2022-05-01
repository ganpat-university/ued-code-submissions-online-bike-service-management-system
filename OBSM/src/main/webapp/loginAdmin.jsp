<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
</head>
<body>

<%
	String aid=request.getParameter("aid");
	String pwd=request.getParameter("apwd");
	if(aid.equals("admin") && pwd.equals("admin123")){
		RequestDispatcher rd=request.getRequestDispatcher("AdminDashBoard.jsp");
		rd.forward(request,response);
	}else{
		RequestDispatcher rd=request.getRequestDispatcher("ErrorAdmin.jsp");
		rd.forward(request,response);
	}
%>
</body>
</html>