package filter1;

import java.io.*;
import java.sql.*;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
@WebServlet(urlPatterns="/updatestatus")
public class UpdateStatus extends HttpServlet{
		public void doPost(HttpServletRequest rq,HttpServletResponse rs) throws ServletException,IOException {
			rs.setContentType("text/html");
			PrintWriter out=rs.getWriter();
			try {
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/obsm_project","root","meet123");
			PreparedStatement ps=con.prepareStatement("select count(P_id) from patner_details;");
			ResultSet rs1=ps.executeQuery();
			rs1.next();
			PreparedStatement ps1=null;
			for (int i=0;i<rs1.getInt(1);i++) {
				String pid=rq.getParameter("Choice"+i);
				if(pid!=null) {
					ps1=con.prepareStatement("Update patner_details set Status=1 where P_id=?");
					ps1.setInt(1, Integer.parseInt(pid));
					ps1.executeUpdate();
					ps1.close();
				}
			}
			ps.close();
			rs1.close();
			con.close();	
			RequestDispatcher rd=rq.getRequestDispatcher("manageRequest.jsp");
			rd.forward(rq, rs);
			}catch(Exception e){out.println("<h2 style='text-align: center;'>"+"Internal Server Error"+"</h2>"+e);}
		}
		public void destroy() {}
	}
