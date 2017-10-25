package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.jni.User;

import model.Users;
import service.RegisterDAO;

/**
 * Servlet implementation class registerServlet
 */
@WebServlet("/registerServlet")
public class registerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 response.setContentType("text/html;charset=UTF-8");
		 PrintWriter out = response.getWriter();
		 String	taikhoan = request.getParameter("taikhoan");
		 String matkhau = request.getParameter("matkhau"); 
		 String tennd = request.getParameter("tennd");
		 String ngaysinh =request.getParameter("ngaysinh");
		 String diachi = request.getParameter("diachi");
		 String dienthoai = request.getParameter("dienthoai");
		 Users user = new Users(taikhoan,matkhau,tennd,ngaysinh,diachi,dienthoai);
		 RegisterDAO register = new RegisterDAO();
		 boolean kt = register.register(user);
		 if(kt) {
			 response.sendRedirect("dangnhap.jsp");
		 }else {
			 response.sendRedirect("dangky.jsp");
		 	}
		 
	}
}
