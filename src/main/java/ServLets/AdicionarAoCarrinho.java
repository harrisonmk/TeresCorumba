/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ServLets;

import Classes.Artigo;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Harrison
 */
public class AdicionarAoCarrinho extends HttpServlet {

    //adicionarProduto
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

        int quantidade = Integer.parseInt(request.getParameter("quantidade"));
        int idProduto = Integer.parseInt(request.getParameter("idproduto"));

        HttpSession sessao = request.getSession(true);

        ArrayList<Artigo> artigos = sessao.getAttribute("carrinho") == null ? new ArrayList<>() : (ArrayList) sessao.getAttribute("carrinho");

        boolean flag = false;

        if (artigos.size() > 0) {

            for (Artigo a : artigos) {
                if (idProduto == a.getIdProduto()) {

                    a.setQuantidade(a.getQuantidade() + quantidade);
                    flag = true;
                    break;
                }

            }

        }
        
        if(!flag){
            
         artigos.add(new Artigo(idProduto,quantidade));
            
        }
        
        sessao.setAttribute("carrinho", artigos);
        
        response.sendRedirect("cart.jsp");

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
