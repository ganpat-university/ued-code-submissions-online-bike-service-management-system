<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%
response.setContentType("text/html");
try {
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/obsm_project","root","meet123");

String uid=request.getParameter("update");
String ser=request.getParameter("ser");
String cost=request.getParameter("num_update");
PreparedStatement ps1=null;
PreparedStatement ps2=null;
		ps1=con.prepareStatement("Update booking set status=1 where bid=?");
		ps2=con.prepareStatement("update booking set Service=?,cost=? where bid=?");

		ps1.setInt(1, Integer.parseInt(uid));
		ps2.setString(1, ser);
		ps2.setInt(2, Integer.parseInt(cost));
		ps2.setInt(3, Integer.parseInt(uid));
		
		ps1.executeUpdate();
		ps1.close();
		ps2.executeUpdate();
		ps2.close();

con.close();	
RequestDispatcher rd=request.getRequestDispatcher("viewBooking.jsp");
rd.forward(request, response);
}catch(Exception e){out.println("<h2 style='text-align: center;'>"+"Internal Server Error"+"</h2>"+e);}
%>
</body>
</html>