/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

/*import cart.CartBean;
import cart.ProductDTO;*/
import com.sun.corba.se.spi.protocol.RequestDispatcherDefault;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.CartBean;
import model.LoginBean;
import model.Product;
import model.ProductDTO;
import model.Products;

/**
 *
 * @author tylershelter
 */
public class ControllerCartBean extends HttpServlet {
    
    final private String welcomePage = "index.jsp";
    final private String errorPage = "fail.jsp";
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
         PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
            String action = request.getParameter("action");
            if(action.equals("Add to Cart")){
                HttpSession session = request.getSession(true);
                CartBean shop = (CartBean) session.getAttribute("SHOP");
                if(shop == null){
                    shop = new CartBean();
                }
                String code = request.getParameter("txtCode");
                String name = request.getParameter("txtName");
                String pri = request.getParameter("txtPrice");
                String img = request.getParameter("img");
                float fpri = Float.parseFloat(pri);
                Product s = new Product(code, name, fpri, img);
                ProductDTO sp = new ProductDTO(s);
                shop.addSanPham(sp);
                session.setAttribute("SHOP", shop);
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);   
            }else if(action.equals("Sign In")){
                String username = request.getParameter("txtUsername");
                String password = request.getParameter("txtPassword");
                LoginBean login = new LoginBean();
                
                boolean result = login.checkLogin(username, password);
                String url = errorPage;
                if(result){
                    HttpSession session = request.getSession(true);
                    session.setAttribute("USER", username);
                    url = "search.jsp";
                }
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            }else if(action.equals("View Cart")){
                RequestDispatcher rd = request.getRequestDispatcher("showcart.jsp");
                rd.forward(request, response);
            }else if(action.equals("AddMore")){
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);
            }
            else if(action.equals("Insert")){
                RequestDispatcher rd = request.getRequestDispatcher("insert.jsp");
                rd.forward(request, response);
            }
            else if(action.equals("Remove")){
                String[] list = request.getParameterValues("rmv");
                if(list != null){
                    HttpSession session = request.getSession();
                    if(session != null){
                        CartBean shop = (CartBean) session.getAttribute("SHOP");
                        if(shop != null){
                            for(int i=0; i<list.length;i++ ){
                                shop.removeSanPham(list[i]);
                            }
                            session.setAttribute("SHOP", shop);
                        }
                    }
                }
                String url = "ControllerCartBean?action=View Cart";
                RequestDispatcher rd = request.getRequestDispatcher(url);
                rd.forward(request, response);
            }else if(action.equals("Back")){
                    RequestDispatcher rd=request.getRequestDispatcher("search.jsp");
                    rd.forward(request, response);
            }else if(action.equals("Update")){
                RequestDispatcher rd = request.getRequestDispatcher("update.jsp");
                rd.forward(request, response);
            }else if(action.equals("Delete")){
                RequestDispatcher rd = request.getRequestDispatcher("delete.jsp");
                rd.forward(request, response);
            }
            
        }catch(Exception e){
            e.printStackTrace();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
