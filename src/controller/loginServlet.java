package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.connector.Request;
import model.Users;
import service.LoginDAO;

/**
 * Servlet implementation class loginServlet
 */
@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public loginServlet() {
        super();
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		 String userId = request.getParameter("UserName");	
		 String password = request.getParameter("PassWord");
		 LoginDAO loginService = new LoginDAO();
		 boolean result = loginService.authenticateUser(userId, password);
		 Users user = loginService.getUserByUserId(userId);
		 HttpSession httpsession = request.getSession();
		 if(result == true){
			 httpsession.setAttribute("user", user);		
			 response.sendRedirect("index.jsp");
		 }
		 else{
			 response.sendRedirect("dangnhap.jsp");
		 }
//		
//		RequestDispatcher rd = getServletContext().getRequestDispatcher(url);
//        rd.forward(request, response);
	}

}
