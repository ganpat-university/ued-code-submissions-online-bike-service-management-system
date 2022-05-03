package filter1;
import java.io.*;
import java.util.*;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
@WebServlet(urlPatterns="/logout")
public class Logout extends HttpServlet{
	public void doGet(HttpServletRequest rq, HttpServletResponse rs) throws ServletException,IOException {
		rs.setContentType("text/html");
		PrintWriter out=rs.getWriter();
		rs.setHeader("Refresh","5;index.jsp");
		rq.getSession().invalidate();
				out.println("<div style=\"justify-content: center;text-align: center;vertical-align: middle; border:2pc black solid; background-color: #79DAE8; font-family: 'Century Gothic';\">\r\n"
						+ "		<p style=\"font-size: 60px;\">You have signed out.</p>\r\n"
						+ "		<p style=\"font-size: 30px; letter-spacing: 2px;\">REDIRECTING TO HOME PAGE IN 5 SECONDS.</p>\r\n"
						+ "</div>");
		
	}
}