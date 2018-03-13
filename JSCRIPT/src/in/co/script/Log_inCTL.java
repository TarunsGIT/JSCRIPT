package in.co.script;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

 
@WebServlet("/Log_inCTL")
public class Log_inCTL extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
     public Log_inCTL() {
        super();
        // TODO Auto-generated constructor stub
    }

	 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   
		 doPost(request, response);
	 }

 	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	   
 		response.setContentType("TEXT/HTML");
 		PrintWriter out=response.getWriter();
 		String email=request.getParameter("email");
 		String password=request.getParameter("password");
 		HttpSession session=request.getSession(true);
 		session.setAttribute("email", email);
 		session.setAttribute("password", password);
 	    
 		out.println("<HTML>");
 		out.println("<BODY>");
 		out.println("<CENTER>");
 		out.println("YOU" +email+ "ARE LOGGED IN");
 		String newURL=response.encodeURL("/ServletSession/GetSession");
 		out.println("Click <a href=\" " +newURL+ "\"> here </a> for another servlet");
 		out.println("</CENTER>");
 		out.println("</BODY>");
 		out.println("</HTML>");
 		out.close();
 	 }

}
