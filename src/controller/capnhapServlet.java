package controller;

import java.io.IOException;

import javax.jms.Session;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Users;
import service.LoginDAO;
import service.capnhapDAO;

/**
 * Servlet implementation class capnhapServlet
 */
@WebServlet("/capnhapServlet")
public class capnhapServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public capnhapServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String	taikhoan = request.getParameter("taikhoan");
		 String matkhau = request.getParameter("matkhau");
		 String tennd = request.getParameter("TenND");
		 String ngaysinh =request.getParameter("ngaysinh");
		 String diachi = request.getParameter("diachi");
		 String dienthoai = request.getParameter("dienthoai");
		 LoginDAO login = new LoginDAO();
		 Users id = login.getUserByUserId(taikhoan);
		 Users user = new Users(id.getMA(),taikhoan,matkhau,tennd,ngaysinh,diachi,dienthoai);
		 capnhapDAO capnhap = new capnhapDAO();
		 boolean kt = capnhap.updateUser(user);
		 HttpSession httpsession = request.getSession();
		 if(kt) {
			 httpsession.setAttribute("user", user);
			 response.sendRedirect("hoso.jsp");
		 }
	}

}
