package Controle;

import Classes.Produto;
import Modelo.ModeloProduto;
import java.sql.SQLException;
import java.text.DecimalFormat;

/**
 *
 * @author Harrison
 */
public class ProdutoControle {

    public String pegaProdutos() throws SQLException {

        ModeloProduto mp = new ModeloProduto();
        String htmlcode = "";
        DecimalFormat deci = new DecimalFormat("0.00"); //decide quantas casas apos a virgula

        for (Produto produto : mp.buscaTodosProdutos()) {

            htmlcode += "	<div class=\"col-sm-4\">\n"
                    + "							<div class=\"product-image-wrapper\">\n"
                    + "								<div class=\"single-products\">\n"
                    + "									<div class=\"productinfo text-center\">\n"
                    + "										<img src=\"" + produto.getImg_produto() + "\" alt=\"\" />\n"
                    + "										<h2>R$" + deci.format(produto.getPreco()) + "</h2>\n"
                    + "										<p>" + produto.getNome() + "</p>\n"
                    + "										<a href=\"product-details.jsp?id=" + produto.getId() + "\" class=\"btn btn-default add-to-cart\"><i class=\"fa fa-shopping-cart\"></i>Ver Detalhes</a>\n"
                    + "									</div>\n"
                    + "									<div class=\"product-overlay\">\n"
                    + "										<div class=\"overlay-content\">\n"
                    + "											<h2>R$" + produto.getPreco() + "</h2>\n"
                    + "											<p>" + produto.getNome() + "</p>\n"
                    + "											<a href=\"product-details.jsp?id=" + produto.getId() + "\" class=\"btn btn-default add-to-cart\"><i class=\"fa fa-shopping-cart\"></i>Ver Detalhes</a>\n"
                    + "										</div>\n"
                    + "									</div>\n"
                    + "								</div>\n"
                    + "								<div class=\"choose\">\n"
                    + "									<ul class=\"nav nav-pills nav-justified\">\n"
                    + "										<li><a href=\"\"><i class=\"fa fa-plus-square\"></i>Add to wishlist</a></li>\n"
                    + "										<li><a href=\"\"><i class=\"fa fa-plus-square\"></i>Add to compare</a></li>\n"
                    + "									</ul>\n"
                    + "								</div>\n"
                    + "							</div>\n"
                    + "						</div>";

        }

        return htmlcode;
    }

    public Produto pegaProduto(int id) throws SQLException {

        return new ModeloProduto().buscaUmProduto(id);

    }
    
    
    
    
     public String pegaProdutos1() throws SQLException {

        ModeloProduto mp = new ModeloProduto();
        String htmlcode = "";
        DecimalFormat deci = new DecimalFormat("0.00"); //decide quantas casas apos a virgula

        for (Produto produto : mp.buscaTodosGarrafas()) {

            htmlcode += "	<div class=\"col-sm-4\">\n"
                    + "							<div class=\"product-image-wrapper\">\n"
                    + "								<div class=\"single-products\">\n"
                    + "									<div class=\"productinfo text-center\">\n"
                    + "										<img src=\"" + produto.getImg_produto() + "\" alt=\"\" />\n"
                    + "										<h2>R$" + deci.format(produto.getPreco()) + "</h2>\n"
                    + "										<p>" + produto.getNome() + "</p>\n"
                    + "										<a href=\"product-details.jsp?id=" + produto.getId() + "\" class=\"btn btn-default add-to-cart\"><i class=\"fa fa-shopping-cart\"></i>Ver Detalhes</a>\n"
                    + "									</div>\n"
                    + "									<div class=\"product-overlay\">\n"
                    + "										<div class=\"overlay-content\">\n"
                    + "											<h2>R$" + produto.getPreco() + "</h2>\n"
                    + "											<p>" + produto.getNome() + "</p>\n"
                    + "											<a href=\"product-details.jsp?id=" + produto.getId() + "\" class=\"btn btn-default add-to-cart\"><i class=\"fa fa-shopping-cart\"></i>Ver Detalhes</a>\n"
                    + "										</div>\n"
                    + "									</div>\n"
                    + "								</div>\n"
                    + "								<div class=\"choose\">\n"
                    + "									<ul class=\"nav nav-pills nav-justified\">\n"
                    + "										<li><a href=\"\"><i class=\"fa fa-plus-square\"></i>Add to wishlist</a></li>\n"
                    + "										<li><a href=\"\"><i class=\"fa fa-plus-square\"></i>Add to compare</a></li>\n"
                    + "									</ul>\n"
                    + "								</div>\n"
                    + "							</div>\n"
                    + "						</div>";

        }

        return htmlcode;
    }
     
     
     
     public String pegaProdutos2() throws SQLException {

        ModeloProduto mp = new ModeloProduto();
        String htmlcode = "";
        DecimalFormat deci = new DecimalFormat("0.00"); //decide quantas casas apos a virgula

        for (Produto produto : mp.buscaTodosBombas()) {

            htmlcode += "	<div class=\"col-sm-4\">\n"
                    + "							<div class=\"product-image-wrapper\">\n"
                    + "								<div class=\"single-products\">\n"
                    + "									<div class=\"productinfo text-center\">\n"
                    + "										<img src=\"" + produto.getImg_produto() + "\" alt=\"\" />\n"
                    + "										<h2>R$" + deci.format(produto.getPreco()) + "</h2>\n"
                    + "										<p>" + produto.getNome() + "</p>\n"
                    + "										<a href=\"product-details.jsp?id=" + produto.getId() + "\" class=\"btn btn-default add-to-cart\"><i class=\"fa fa-shopping-cart\"></i>Ver Detalhes</a>\n"
                    + "									</div>\n"
                    + "									<div class=\"product-overlay\">\n"
                    + "										<div class=\"overlay-content\">\n"
                    + "											<h2>R$" + produto.getPreco() + "</h2>\n"
                    + "											<p>" + produto.getNome() + "</p>\n"
                    + "											<a href=\"product-details.jsp?id=" + produto.getId() + "\" class=\"btn btn-default add-to-cart\"><i class=\"fa fa-shopping-cart\"></i>Ver Detalhes</a>\n"
                    + "										</div>\n"
                    + "									</div>\n"
                    + "								</div>\n"
                    + "								<div class=\"choose\">\n"
                    + "									<ul class=\"nav nav-pills nav-justified\">\n"
                    + "										<li><a href=\"\"><i class=\"fa fa-plus-square\"></i>Add to wishlist</a></li>\n"
                    + "										<li><a href=\"\"><i class=\"fa fa-plus-square\"></i>Add to compare</a></li>\n"
                    + "									</ul>\n"
                    + "								</div>\n"
                    + "							</div>\n"
                    + "						</div>";

        }

        return htmlcode;
    }
     
     
     
     public String pegaOuropy() throws SQLException {

        ModeloProduto mp = new ModeloProduto();
        String htmlcode = "";
        DecimalFormat deci = new DecimalFormat("0.00"); //decide quantas casas apos a virgula

        for (Produto produto : mp.buscaOuropy()) {

            htmlcode += "	<div class=\"col-sm-4\">\n"
                    + "							<div class=\"product-image-wrapper\">\n"
                    + "								<div class=\"single-products\">\n"
                    + "									<div class=\"productinfo text-center\">\n"
                    + "										<img src=\"" + produto.getImg_produto() + "\" alt=\"\" />\n"
                    + "										<h2>R$" + deci.format(produto.getPreco()) + "</h2>\n"
                    + "										<p>" + produto.getNome() + "</p>\n"
                    + "										<a href=\"product-details.jsp?id=" + produto.getId() + "\" class=\"btn btn-default add-to-cart\"><i class=\"fa fa-shopping-cart\"></i>Ver Detalhes</a>\n"
                    + "									</div>\n"
                    + "									<div class=\"product-overlay\">\n"
                    + "										<div class=\"overlay-content\">\n"
                    + "											<h2>R$" + produto.getPreco() + "</h2>\n"
                    + "											<p>" + produto.getNome() + "</p>\n"
                    + "											<a href=\"product-details.jsp?id=" + produto.getId() + "\" class=\"btn btn-default add-to-cart\"><i class=\"fa fa-shopping-cart\"></i>Ver Detalhes</a>\n"
                    + "										</div>\n"
                    + "									</div>\n"
                    + "								</div>\n"
                    + "								<div class=\"choose\">\n"
                    + "									<ul class=\"nav nav-pills nav-justified\">\n"
                    + "										<li><a href=\"\"><i class=\"fa fa-plus-square\"></i>Add to wishlist</a></li>\n"
                    + "										<li><a href=\"\"><i class=\"fa fa-plus-square\"></i>Add to compare</a></li>\n"
                    + "									</ul>\n"
                    + "								</div>\n"
                    + "							</div>\n"
                    + "						</div>";

        }

        return htmlcode;
    }
     
     
     public String pegaKarina() throws SQLException {

        ModeloProduto mp = new ModeloProduto();
        String htmlcode = "";
        DecimalFormat deci = new DecimalFormat("0.00"); //decide quantas casas apos a virgula

        for (Produto produto : mp.buscaKarina()) {

            htmlcode += "	<div class=\"col-sm-4\">\n"
                    + "							<div class=\"product-image-wrapper\">\n"
                    + "								<div class=\"single-products\">\n"
                    + "									<div class=\"productinfo text-center\">\n"
                    + "										<img src=\"" + produto.getImg_produto() + "\" alt=\"\" />\n"
                    + "										<h2>R$" + deci.format(produto.getPreco()) + "</h2>\n"
                    + "										<p>" + produto.getNome() + "</p>\n"
                    + "										<a href=\"product-details.jsp?id=" + produto.getId() + "\" class=\"btn btn-default add-to-cart\"><i class=\"fa fa-shopping-cart\"></i>Ver Detalhes</a>\n"
                    + "									</div>\n"
                    + "									<div class=\"product-overlay\">\n"
                    + "										<div class=\"overlay-content\">\n"
                    + "											<h2>R$" + produto.getPreco() + "</h2>\n"
                    + "											<p>" + produto.getNome() + "</p>\n"
                    + "											<a href=\"product-details.jsp?id=" + produto.getId() + "\" class=\"btn btn-default add-to-cart\"><i class=\"fa fa-shopping-cart\"></i>Ver Detalhes</a>\n"
                    + "										</div>\n"
                    + "									</div>\n"
                    + "								</div>\n"
                    + "								<div class=\"choose\">\n"
                    + "									<ul class=\"nav nav-pills nav-justified\">\n"
                    + "										<li><a href=\"\"><i class=\"fa fa-plus-square\"></i>Add to wishlist</a></li>\n"
                    + "										<li><a href=\"\"><i class=\"fa fa-plus-square\"></i>Add to compare</a></li>\n"
                    + "									</ul>\n"
                    + "								</div>\n"
                    + "							</div>\n"
                    + "						</div>";

        }

        return htmlcode;
    }
     
     
      public String pega81() throws SQLException {

        ModeloProduto mp = new ModeloProduto();
        String htmlcode = "";
        DecimalFormat deci = new DecimalFormat("0.00"); //decide quantas casas apos a virgula

        for (Produto produto : mp.busca81()) {

            htmlcode += "	<div class=\"col-sm-4\">\n"
                    + "							<div class=\"product-image-wrapper\">\n"
                    + "								<div class=\"single-products\">\n"
                    + "									<div class=\"productinfo text-center\">\n"
                    + "										<img src=\"" + produto.getImg_produto() + "\" alt=\"\" />\n"
                    + "										<h2>R$" + deci.format(produto.getPreco()) + "</h2>\n"
                    + "										<p>" + produto.getNome() + "</p>\n"
                    + "										<a href=\"product-details.jsp?id=" + produto.getId() + "\" class=\"btn btn-default add-to-cart\"><i class=\"fa fa-shopping-cart\"></i>Ver Detalhes</a>\n"
                    + "									</div>\n"
                    + "									<div class=\"product-overlay\">\n"
                    + "										<div class=\"overlay-content\">\n"
                    + "											<h2>R$" + produto.getPreco() + "</h2>\n"
                    + "											<p>" + produto.getNome() + "</p>\n"
                    + "											<a href=\"product-details.jsp?id=" + produto.getId() + "\" class=\"btn btn-default add-to-cart\"><i class=\"fa fa-shopping-cart\"></i>Ver Detalhes</a>\n"
                    + "										</div>\n"
                    + "									</div>\n"
                    + "								</div>\n"
                    + "								<div class=\"choose\">\n"
                    + "									<ul class=\"nav nav-pills nav-justified\">\n"
                    + "										<li><a href=\"\"><i class=\"fa fa-plus-square\"></i>Add to wishlist</a></li>\n"
                    + "										<li><a href=\"\"><i class=\"fa fa-plus-square\"></i>Add to compare</a></li>\n"
                    + "									</ul>\n"
                    + "								</div>\n"
                    + "							</div>\n"
                    + "						</div>";

        }

        return htmlcode;
    }
      
    
      public String pegaKurupi() throws SQLException {

        ModeloProduto mp = new ModeloProduto();
        String htmlcode = "";
        DecimalFormat deci = new DecimalFormat("0.00"); //decide quantas casas apos a virgula

        for (Produto produto : mp.buscaKurupi()) {

            htmlcode += "	<div class=\"col-sm-4\">\n"
                    + "							<div class=\"product-image-wrapper\">\n"
                    + "								<div class=\"single-products\">\n"
                    + "									<div class=\"productinfo text-center\">\n"
                    + "										<img src=\"" + produto.getImg_produto() + "\" alt=\"\" />\n"
                    + "										<h2>R$" + deci.format(produto.getPreco()) + "</h2>\n"
                    + "										<p>" + produto.getNome() + "</p>\n"
                    + "										<a href=\"product-details.jsp?id=" + produto.getId() + "\" class=\"btn btn-default add-to-cart\"><i class=\"fa fa-shopping-cart\"></i>Ver Detalhes</a>\n"
                    + "									</div>\n"
                    + "									<div class=\"product-overlay\">\n"
                    + "										<div class=\"overlay-content\">\n"
                    + "											<h2>R$" + produto.getPreco() + "</h2>\n"
                    + "											<p>" + produto.getNome() + "</p>\n"
                    + "											<a href=\"product-details.jsp?id=" + produto.getId() + "\" class=\"btn btn-default add-to-cart\"><i class=\"fa fa-shopping-cart\"></i>Ver Detalhes</a>\n"
                    + "										</div>\n"
                    + "									</div>\n"
                    + "								</div>\n"
                    + "								<div class=\"choose\">\n"
                    + "									<ul class=\"nav nav-pills nav-justified\">\n"
                    + "										<li><a href=\"\"><i class=\"fa fa-plus-square\"></i>Add to wishlist</a></li>\n"
                    + "										<li><a href=\"\"><i class=\"fa fa-plus-square\"></i>Add to compare</a></li>\n"
                    + "									</ul>\n"
                    + "								</div>\n"
                    + "							</div>\n"
                    + "						</div>";

        }

        return htmlcode;
    }
      
      
      
      public String pegaCapimar() throws SQLException {

        ModeloProduto mp = new ModeloProduto();
        String htmlcode = "";
        DecimalFormat deci = new DecimalFormat("0.00"); //decide quantas casas apos a virgula

        for (Produto produto : mp.buscaCapimar()) {

            htmlcode += "	<div class=\"col-sm-4\">\n"
                    + "							<div class=\"product-image-wrapper\">\n"
                    + "								<div class=\"single-products\">\n"
                    + "									<div class=\"productinfo text-center\">\n"
                    + "										<img src=\"" + produto.getImg_produto() + "\" alt=\"\" />\n"
                    + "										<h2>R$" + deci.format(produto.getPreco()) + "</h2>\n"
                    + "										<p>" + produto.getNome() + "</p>\n"
                    + "										<a href=\"product-details.jsp?id=" + produto.getId() + "\" class=\"btn btn-default add-to-cart\"><i class=\"fa fa-shopping-cart\"></i>Ver Detalhes</a>\n"
                    + "									</div>\n"
                    + "									<div class=\"product-overlay\">\n"
                    + "										<div class=\"overlay-content\">\n"
                    + "											<h2>R$" + produto.getPreco() + "</h2>\n"
                    + "											<p>" + produto.getNome() + "</p>\n"
                    + "											<a href=\"product-details.jsp?id=" + produto.getId() + "\" class=\"btn btn-default add-to-cart\"><i class=\"fa fa-shopping-cart\"></i>Ver Detalhes</a>\n"
                    + "										</div>\n"
                    + "									</div>\n"
                    + "								</div>\n"
                    + "								<div class=\"choose\">\n"
                    + "									<ul class=\"nav nav-pills nav-justified\">\n"
                    + "										<li><a href=\"\"><i class=\"fa fa-plus-square\"></i>Add to wishlist</a></li>\n"
                    + "										<li><a href=\"\"><i class=\"fa fa-plus-square\"></i>Add to compare</a></li>\n"
                    + "									</ul>\n"
                    + "								</div>\n"
                    + "							</div>\n"
                    + "						</div>";

        }

        return htmlcode;
    }
      
      
      
      public String pegaCurupira() throws SQLException {

        ModeloProduto mp = new ModeloProduto();
        String htmlcode = "";
        DecimalFormat deci = new DecimalFormat("0.00"); //decide quantas casas apos a virgula

        for (Produto produto : mp.buscaCurupira()) {

            htmlcode += "	<div class=\"col-sm-4\">\n"
                    + "							<div class=\"product-image-wrapper\">\n"
                    + "								<div class=\"single-products\">\n"
                    + "									<div class=\"productinfo text-center\">\n"
                    + "										<img src=\"" + produto.getImg_produto() + "\" alt=\"\" />\n"
                    + "										<h2>R$" + deci.format(produto.getPreco()) + "</h2>\n"
                    + "										<p>" + produto.getNome() + "</p>\n"
                    + "										<a href=\"product-details.jsp?id=" + produto.getId() + "\" class=\"btn btn-default add-to-cart\"><i class=\"fa fa-shopping-cart\"></i>Ver Detalhes</a>\n"
                    + "									</div>\n"
                    + "									<div class=\"product-overlay\">\n"
                    + "										<div class=\"overlay-content\">\n"
                    + "											<h2>R$" + produto.getPreco() + "</h2>\n"
                    + "											<p>" + produto.getNome() + "</p>\n"
                    + "											<a href=\"product-details.jsp?id=" + produto.getId() + "\" class=\"btn btn-default add-to-cart\"><i class=\"fa fa-shopping-cart\"></i>Ver Detalhes</a>\n"
                    + "										</div>\n"
                    + "									</div>\n"
                    + "								</div>\n"
                    + "								<div class=\"choose\">\n"
                    + "									<ul class=\"nav nav-pills nav-justified\">\n"
                    + "										<li><a href=\"\"><i class=\"fa fa-plus-square\"></i>Add to wishlist</a></li>\n"
                    + "										<li><a href=\"\"><i class=\"fa fa-plus-square\"></i>Add to compare</a></li>\n"
                    + "									</ul>\n"
                    + "								</div>\n"
                    + "							</div>\n"
                    + "						</div>";

        }

        return htmlcode;
    }
      
      
      public String pegaCampanario() throws SQLException {

        ModeloProduto mp = new ModeloProduto();
        String htmlcode = "";
        DecimalFormat deci = new DecimalFormat("0.00"); //decide quantas casas apos a virgula

        for (Produto produto : mp.buscaCampanario()) {

            htmlcode += "	<div class=\"col-sm-4\">\n"
                    + "							<div class=\"product-image-wrapper\">\n"
                    + "								<div class=\"single-products\">\n"
                    + "									<div class=\"productinfo text-center\">\n"
                    + "										<img src=\"" + produto.getImg_produto() + "\" alt=\"\" />\n"
                    + "										<h2>R$" + deci.format(produto.getPreco()) + "</h2>\n"
                    + "										<p>" + produto.getNome() + "</p>\n"
                    + "										<a href=\"product-details.jsp?id=" + produto.getId() + "\" class=\"btn btn-default add-to-cart\"><i class=\"fa fa-shopping-cart\"></i>Ver Detalhes</a>\n"
                    + "									</div>\n"
                    + "									<div class=\"product-overlay\">\n"
                    + "										<div class=\"overlay-content\">\n"
                    + "											<h2>R$" + produto.getPreco() + "</h2>\n"
                    + "											<p>" + produto.getNome() + "</p>\n"
                    + "											<a href=\"product-details.jsp?id=" + produto.getId() + "\" class=\"btn btn-default add-to-cart\"><i class=\"fa fa-shopping-cart\"></i>Ver Detalhes</a>\n"
                    + "										</div>\n"
                    + "									</div>\n"
                    + "								</div>\n"
                    + "								<div class=\"choose\">\n"
                    + "									<ul class=\"nav nav-pills nav-justified\">\n"
                    + "										<li><a href=\"\"><i class=\"fa fa-plus-square\"></i>Add to wishlist</a></li>\n"
                    + "										<li><a href=\"\"><i class=\"fa fa-plus-square\"></i>Add to compare</a></li>\n"
                    + "									</ul>\n"
                    + "								</div>\n"
                    + "							</div>\n"
                    + "						</div>";

        }

        return htmlcode;
    }
      
      
  

}
