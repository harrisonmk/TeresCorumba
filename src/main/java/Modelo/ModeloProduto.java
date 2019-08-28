package Modelo;

import Classes.Produto;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Harrison 
 * 
 */



public class ModeloProduto extends Conexao {

    
    /**
     * Metodo para listar todos os produtos da Loja
     * 
     * @return
     * @throws SQLException 
     */  
    public ArrayList<Produto> buscaTodosProdutos() throws SQLException {

        ArrayList<Produto> produtos = new ArrayList<>();
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            String sql = "call selectProdutos()"; //chama o procedure criado no mysql
            pst = getConectar().prepareCall(sql);
            rs = pst.executeQuery();
            while (rs.next()) { // os nomes passado nas " " são os nomes criados no banco de dados mysql e nao no java
                produtos.add(new Produto(rs.getInt("id_produto"), rs.getString("nome"), rs.getString("img_produto"), rs.getInt("id_categoria"), rs.getDouble("preco"), rs.getInt("estoque")));
            }
        } catch (SQLException e) {

        } finally {
            if (rs != null) {
                rs.close();
            }
            if (pst != null) {
                rs.close();
            }
        }

        return produtos;
    }
    
        public ArrayList<Produto> buscaTodosGarrafas() throws SQLException {

        ArrayList<Produto> produtos = new ArrayList<>();
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            String sql = "call selectgarrafas()"; //chama o procedure criado no mysql
            pst = getConectar().prepareCall(sql);
            rs = pst.executeQuery();
            while (rs.next()) { // os nomes passado nas " " são os nomes criados no banco de dados mysql e nao no java
                produtos.add(new Produto(rs.getInt("id_produto"), rs.getString("nome"), rs.getString("img_produto"), rs.getInt("id_categoria"), rs.getDouble("preco"), rs.getInt("estoque")));
            }
        } catch (SQLException e) {

        } finally {
            if (rs != null) {
                rs.close();
            }
            if (pst != null) {
                rs.close();
            }
        }

        return produtos;
    }
        
        
      public ArrayList<Produto> buscaTodosBombas() throws SQLException {

        ArrayList<Produto> produtos = new ArrayList<>();
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            String sql = "call selectbomba()"; //chama o procedure criado no mysql
            pst = getConectar().prepareCall(sql);
            rs = pst.executeQuery();
            while (rs.next()) { // os nomes passado nas " " são os nomes criados no banco de dados mysql e nao no java
                produtos.add(new Produto(rs.getInt("id_produto"), rs.getString("nome"), rs.getString("img_produto"), rs.getInt("id_categoria"), rs.getDouble("preco"), rs.getInt("estoque")));
            }
        } catch (SQLException e) {

        } finally {
            if (rs != null) {
                rs.close();
            }
            if (pst != null) {
                rs.close();
            }
        }

        return produtos;
    }   
      
      
      public ArrayList<Produto> buscaOuropy() throws SQLException {

        ArrayList<Produto> produtos = new ArrayList<>();
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            String sql = "call selectouropy()"; //chama o procedure criado no mysql
            pst = getConectar().prepareCall(sql);
            rs = pst.executeQuery();
            while (rs.next()) { // os nomes passado nas " " são os nomes criados no banco de dados mysql e nao no java
                produtos.add(new Produto(rs.getInt("id_produto"), rs.getString("nome"), rs.getString("img_produto"), rs.getInt("id_categoria"), rs.getDouble("preco"), rs.getInt("estoque")));
            }
        } catch (SQLException e) {

        } finally {
            if (rs != null) {
                rs.close();
            }
            if (pst != null) {
                rs.close();
            }
        }

        return produtos;
    }   
      
   public ArrayList<Produto> buscaKarina() throws SQLException {

        ArrayList<Produto> produtos = new ArrayList<>();
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            String sql = "call selectkarina()"; //chama o procedure criado no mysql
            pst = getConectar().prepareCall(sql);
            rs = pst.executeQuery();
            while (rs.next()) { // os nomes passado nas " " são os nomes criados no banco de dados mysql e nao no java
                produtos.add(new Produto(rs.getInt("id_produto"), rs.getString("nome"), rs.getString("img_produto"), rs.getInt("id_categoria"), rs.getDouble("preco"), rs.getInt("estoque")));
            }
        } catch (SQLException e) {

        } finally {
            if (rs != null) {
                rs.close();
            }
            if (pst != null) {
                rs.close();
            }
        }

        return produtos;
    }      
      
   
   public ArrayList<Produto> busca81() throws SQLException {

        ArrayList<Produto> produtos = new ArrayList<>();
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            String sql = "call select81()"; //chama o procedure criado no mysql
            pst = getConectar().prepareCall(sql);
            rs = pst.executeQuery();
            while (rs.next()) { // os nomes passado nas " " são os nomes criados no banco de dados mysql e nao no java
                produtos.add(new Produto(rs.getInt("id_produto"), rs.getString("nome"), rs.getString("img_produto"), rs.getInt("id_categoria"), rs.getDouble("preco"), rs.getInt("estoque")));
            }
        } catch (SQLException e) {

        } finally {
            if (rs != null) {
                rs.close();
            }
            if (pst != null) {
                rs.close();
            }
        }

        return produtos;
    }      
   
   
   public ArrayList<Produto> buscaKurupi() throws SQLException {

        ArrayList<Produto> produtos = new ArrayList<>();
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            String sql = "call selectkurupi()"; //chama o procedure criado no mysql
            pst = getConectar().prepareCall(sql);
            rs = pst.executeQuery();
            while (rs.next()) { // os nomes passado nas " " são os nomes criados no banco de dados mysql e nao no java
                produtos.add(new Produto(rs.getInt("id_produto"), rs.getString("nome"), rs.getString("img_produto"), rs.getInt("id_categoria"), rs.getDouble("preco"), rs.getInt("estoque")));
            }
        } catch (SQLException e) {

        } finally {
            if (rs != null) {
                rs.close();
            }
            if (pst != null) {
                rs.close();
            }
        }

        return produtos;
    }      
   
   
   public ArrayList<Produto> buscaCapimar() throws SQLException {

        ArrayList<Produto> produtos = new ArrayList<>();
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            String sql = "call selectcapimar()"; //chama o procedure criado no mysql
            pst = getConectar().prepareCall(sql);
            rs = pst.executeQuery();
            while (rs.next()) { // os nomes passado nas " " são os nomes criados no banco de dados mysql e nao no java
                produtos.add(new Produto(rs.getInt("id_produto"), rs.getString("nome"), rs.getString("img_produto"), rs.getInt("id_categoria"), rs.getDouble("preco"), rs.getInt("estoque")));
            }
        } catch (SQLException e) {

        } finally {
            if (rs != null) {
                rs.close();
            }
            if (pst != null) {
                rs.close();
            }
        }

        return produtos;
    }      
   
   
   
   public ArrayList<Produto> buscaCurupira() throws SQLException {

        ArrayList<Produto> produtos = new ArrayList<>();
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            String sql = "call selectcurupira()"; //chama o procedure criado no mysql
            pst = getConectar().prepareCall(sql);
            rs = pst.executeQuery();
            while (rs.next()) { // os nomes passado nas " " são os nomes criados no banco de dados mysql e nao no java
                produtos.add(new Produto(rs.getInt("id_produto"), rs.getString("nome"), rs.getString("img_produto"), rs.getInt("id_categoria"), rs.getDouble("preco"), rs.getInt("estoque")));
            }
        } catch (SQLException e) {

        } finally {
            if (rs != null) {
                rs.close();
            }
            if (pst != null) {
                rs.close();
            }
        }

        return produtos;
    }      
   
   
   
   public ArrayList<Produto> buscaCampanario() throws SQLException {

        ArrayList<Produto> produtos = new ArrayList<>();
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            String sql = "call selectcampanario()"; //chama o procedure criado no mysql
            pst = getConectar().prepareCall(sql);
            rs = pst.executeQuery();
            while (rs.next()) { // os nomes passado nas " " são os nomes criados no banco de dados mysql e nao no java
                produtos.add(new Produto(rs.getInt("id_produto"), rs.getString("nome"), rs.getString("img_produto"), rs.getInt("id_categoria"), rs.getDouble("preco"), rs.getInt("estoque")));
            }
        } catch (SQLException e) {

        } finally {
            if (rs != null) {
                rs.close();
            }
            if (pst != null) {
                rs.close();
            }
        }

        return produtos;
    }      
        

    /** 
    * metodo para buscar um produto da Loja
    *
     * @param id
     * @return 
     * @throws java.sql.SQLException 
    */  
    public Produto buscaUmProduto(int id) throws SQLException {

        Produto produto = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            String sql = "call selectProduto(?)"; //chama o procedure criado no mysql
            pst = getConectar().prepareCall(sql);
            pst.setInt(1, id);
            rs = pst.executeQuery();
            while (rs.next()) { // os nomes passado nas " " são os nomes criados no bando de dados mysql e nao no java
                produto = new Produto(rs.getInt("id_produto"), rs.getString("nome"), rs.getString("img_produto"), rs.getInt("id_categoria"), rs.getDouble("preco"), rs.getInt("estoque"));
            }
        } catch (SQLException e) {

        } finally {
            if (rs != null) {
                rs.close();
            }
            if (pst != null) {
                rs.close();
            }
        }

        return produto;

    }

}
