package ServLets;

import Classes.Artigo;
import Classes.Produto;
import Controle.ProdutoControle;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Harrison
 */
public class DeletarItem extends HttpServlet {

    //apagarItem
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

        HttpSession sessao = request.getSession(true);
        ArrayList<Artigo> artigos = sessao.getAttribute("carrinho") == null ? new ArrayList<>() : (ArrayList) sessao.getAttribute("carrinho");
        int idproduto = Integer.parseInt(request.getParameter("idproduto"));

        if (artigos != null) {

            for (Artigo a : artigos) {

                if (a.getIdProduto() == idproduto) {

                    artigos.remove(a);
                    break;
                }

            }

        }

        double total = 0;
        ProdutoControle cp = new ProdutoControle();

        for (Artigo a : artigos) {

            try {
                Produto produto = cp.pegaProduto(a.getIdProduto());
                total += a.getQuantidade()* produto.getPreco();
            } catch (SQLException ex) {
                Logger.getLogger(DeletarItem.class.getName()).log(Level.SEVERE, null, ex);
            }

        }
        
        response.getWriter().print(Math.round(total * 100.0)/100.0);

        response.getWriter().print("OK");

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
