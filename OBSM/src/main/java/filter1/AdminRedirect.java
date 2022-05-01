package filter1;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
@WebServlet(urlPatterns="/filter")

public class AdminRedirect extends HttpServlet{
	public void doPost(HttpServletRequest rq,HttpServletResponse rs) throws ServletException,IOException {
		rs.setContentType("text/html");
		RequestDispatcher rd=rq.getRequestDispatcher("AdminDashBoard.jsp");
		rd.forward(rq, rs);
	}
	public void destroy() {}
}
