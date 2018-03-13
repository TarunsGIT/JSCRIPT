package in.co.script;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
 
@WebServlet("/GetSession")
public class GetSession extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
     public GetSession() {
        super();
    }

 	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  
 		doPost(request, response);
 	}

 	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	  
 	HttpSession session=request.getSession(false);
 	response.setContentType("TEXT/HTML");
 	PrintWriter out=response.getWriter();
 	out.println("<HTML>");
 	out.println("<BODY>");
 	out.println("<CENTER>");
 	if(session==null){
 		out.println("YOU ARE NOT LOGGED IN");
 	}
 	else{
 		
 		out.println("YOU ARE ALREADY LOGGED IN");
 		out.println("HERE IS THE DATE IN YOUR SESSION");
 	     Enumeration names=session.getAttributeNames();
 	     while(names.hasMoreElements()){
 	    	 String name=(String) names.nextElement();
 	    	 Object value=session.getAttribute(name);
 	    	 out.println("<p>NAME=" + name + "VALUE=" +value+ "</p>");
 	    	}
 	     }
 	}

}
