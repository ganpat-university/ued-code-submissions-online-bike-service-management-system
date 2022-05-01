package filter1;
import java.io.*;
import jakarta.servlet.*;
import jakarta.servlet.annotation.WebFilter;
@WebFilter(urlPatterns="/filter")

public class UserAdmin  implements Filter{
	@Override
	public void doFilter(ServletRequest rq, ServletResponse rs, FilterChain chain) throws IOException, ServletException {
		rs.setContentType("text/html");
		PrintWriter p=rs.getWriter();
		String mail=rq.getParameter("mail");
		String pwd=rq.getParameter("pwd");
		if(mail.equals("obsm091011@admin.com") && pwd.equals("obsm091011")) {
			chain.doFilter(rq, rs);
		}else {
			RequestDispatcher rd=rq.getRequestDispatcher("validateUser.jsp");
			rd.forward(rq, rs);
		}
	}
	public void destroy() {}
}
