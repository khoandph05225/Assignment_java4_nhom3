package controller;

import java.io.IOException;

import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Trogiup;
import model.Users;
import service.phanhoiDAO;

/**
 * Servlet implementation class phanhoiServlet
 */
@WebServlet("/phanhoiServlet")
public class phanhoiServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public phanhoiServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String noidung = request.getParameter("textarea");
		Users user = (Users)request.getSession().getAttribute("user");
		phanhoiDAO phanhoi = new phanhoiDAO();
		Trogiup trogiup = new Trogiup(user.getTAIKHOAN(),noidung);
		boolean kt=phanhoi.phanhoiService(trogiup);
		HttpSession httpsession = request.getSession();
		if(kt) {
			httpsession.setAttribute("noidungphanhoi", noidung);
			response.sendRedirect("trogiup.jsp");
		}
	}

}
