package Servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Model.dao.UsuarioDAO;

public class Logar extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
        response.sendRedirect("");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        //processRequest(request, response);
        try{
            UsuarioDAO user = new UsuarioDAO();
            
            String login = request.getParameter("usuario");
            String senha = request.getParameter("senha");
            
            HttpSession session = request.getSession();
            
            if( user.autenticar(login, senha) ){
                response.sendRedirect("aluno.jsp");
                session.setAttribute("usuario", login);
                session.setMaxInactiveInterval(20);
            }else{
                response.sendRedirect("");
                session.invalidate();
            }
        }catch(Exception e){
            response.sendRedirect("");
        }
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
