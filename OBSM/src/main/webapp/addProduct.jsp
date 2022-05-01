<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%
String pname=request.getParameter("p_name");
String purl=request.getParameter("url");
String img_url=request.getParameter("img_url");
try{
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/obsm_project","root","meet123");
	PreparedStatement ps=con.prepareStatement("Insert Into product(product_name, url, imgUrl) values(?,?,?)");
	ps.setString(1, pname);
	ps.setString(2, purl);
	ps.setString(3, img_url);
	boolean i=ps.execute();
	if(i==true){
		out.print("<p align='center' style='width:100%; background: red;color: white;'>Product Added</p>");
	}
	RequestDispatcher rq=request.getRequestDispatcher("manageShop.jsp");
	rq.forward(request, response);
}catch(Exception e){out.println("Error : \n"+e);}
%>
</body>
</html>