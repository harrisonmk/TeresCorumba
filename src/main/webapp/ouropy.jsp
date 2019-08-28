

<%@page import="Controle.ProdutoControle"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    ProdutoControle controle = new ProdutoControle();
    %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ouropy</title>
         <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
        
    </head>
    <body>
       
      <header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6 ">
						<div class="contactinfo">
							<ul class="nav nav-pills">
								<li><a href=""><i class="fa fa-phone"></i> +55 067 99688-1919</a></li>
								<li><a href=""><i class="fa fa-envelope"></i> harrison.mitchell@hotmail.com</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="social-icons pull-right">
							<ul class="nav navbar-nav">
								<li><a href=""><i class="fa fa-facebook"></i></a></li>
								<li><a href=""><i class="fa fa-twitter"></i></a></li>
								<li><a href=""><i class="fa fa-linkedin"></i></a></li>
								<li><a href=""><i class="fa fa-dribbble"></i></a></li>
								<li><a href=""><i class="fa fa-google-plus"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header_top-->
		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="shop.jsp"><img src="images/home/logoTeres.jpg" alt="" /></a>
						</div>
					
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">								
								
								<li><a href="cart.jsp"><i class="fa fa-shopping-cart"></i> Carrinho</a></li>
								<li><a href="login.html"><i class="fa fa-lock"></i> Login</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--/header-middle-->
	
		<div class="header-bottom"><!--header-bottom-->
			<div class="container">
				<div class="row">
					<div class="col-sm-9">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
						</div>
						<div class="mainmenu pull-left">
							<ul class="nav navbar-nav collapse navbar-collapse">
								<li><a href="shop.jsp">Home</a></li>
								<li class="dropdown"><a href="#" class="active">Shop<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="shop.jsp" class="active">Produtos</a></li>
										
										<li><a href="cart.jsp">Carrinho</a></li> 
										<li><a href="login.jsp">Login</a></li> 
                                    </ul>
                                </li> 
								
								
							</ul>
						</div>
					</div>
				
				</div>
				</div>
			</div>
	</header>
	
	<section id="advertisement">
		<div class="container">
			<img src="images/shop/advertisement.jpg" alt="" />
		</div>
	</section>
	
	<section>
		<div class="container">
			<div class="row">
				<div class="col-sm-3">
					<div class="left-sidebar">
						<h2>Categoria</h2>
						<div class="panel-group category-products" id="accordian"><!--category-productsr-->
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title">
										<a data-toggle="collapse" data-parent="#accordian" href="#sportswear">
											<span class="badge pull-right"><i class="fa fa-plus"></i></span>
											sabores
										</a>
									</h4>
								</div>
								<div id="sportswear" class="panel-collapse collapse">
									<div class="panel-body">
										<ul>
											<li><a href="">Natural </a></li>
											<li><a href="">Menta </a></li>
											<li><a href="">Abacaxi </a></li>
											<li><a href="">Menta e Boldo</a></li>
											<li><a href="">Limao </a></li>
										</ul>
									</div>
								</div>
							</div>
						
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="Bombas.jsp">Bombas</a></h4>
								</div>
							</div>
							<div class="panel panel-default">
								<div class="panel-heading">
									<h4 class="panel-title"><a href="garrafas.jsp">Garrafas</a></h4>
								</div>
							</div>
						
						</div><!--/category-productsr-->
					
						<div class="brands_products"><!--brands_products-->
							<h2>Marcas</h2>
							<div class="brands-name">
								<ul class="nav nav-pills nav-stacked">
									<li><a href="ouropy.jsp"> <span class="pull-right">(50)</span>Ouropy</a></li>
									<li><a href="karina.jsp"> <span class="pull-right">(56)</span>Karina</a></li>
									<li><a href="81.jsp"> <span class="pull-right">(27)</span>81</a></li>
									<li><a href="kurupi.jsp"> <span class="pull-right">(32)</span>Kurupi</a></li>
									<li><a href="capimar.jsp"> <span class="pull-right">(5)</span>Capimar</a></li>
									<li><a href="curupira.jsp"> <span class="pull-right">(9)</span>Curupira</a></li>
									<li><a href="campanario.jsp"> <span class="pull-right">(4)</span>Campanário</a></li>
								</ul>
							</div>
						</div><!--/brands_products-->
						
						
						
					<!--	<div class="shipping text-center"><!--shipping-->
							<!--<img src="images/home/shipping.jpg" alt="" />
						</div> --> <!--/shipping-->
						
					</div>
				</div>
				
				<div class="col-sm-9 padding-right">
					<div class="features_items"><!--features_items-->
                                            
                                            
                                            <!-- carregar Produtos -->
                                            <%= controle.pegaOuropy() %>
                                            
                                            
					
						
						<ul class="pagination">
							<li class="active"><a href="">1</a></li>
							<li><a href="">2</a></li>
							<li><a href="">3</a></li>
							<li><a href="">&raquo;</a></li>
						</ul>
					</div><!--features_items-->
				</div>
			</div>
		</div>
	</section>
	
	<footer id="footer"><!--Footer-->
		<div class="footer-top">
			<div class="container">
				<div class="row">
					<div class="col-sm-2">
						<div class="companyinfo">
							<h2><span>Teres</span>-Corumbá</h2>
							
						</div>
					</div>
					<div class="col-sm-7">
					<!--	<div class="col-sm-3">
							<div class="video-gallery text-center">
								<a href="#">
									<div class="iframe-img">
										<img src="images/home/iframe1.png" alt="" />
									</div>
									<div class="overlay-icon">
										<i class="fa fa-play-circle-o"></i>
									</div>
								</a>
								<p>Círculo de Mãos</p>
								<h2>24 dezembro 2014</h2>
							</div>
						</div> -->
						
					<!--	<div class="col-sm-3">
							<div class="video-gallery text-center">
								<a href="#">
									<div class="iframe-img">
										<img src="images/home/iframe2.png" alt="" />
									</div>
									<div class="overlay-icon">
										<i class="fa fa-play-circle-o"></i>
									</div>
								</a>
								<p>Círculo de Mãos</p>
								<h2>24 dezembro 2014</h2>
							</div>
						</div> -->
						
					<!--	<div class="col-sm-3">
							<div class="video-gallery text-center">
								<a href="#">
									<div class="iframe-img">
										<img src="images/home/iframe3.png" alt="" />
									</div>
									<div class="overlay-icon">
										<i class="fa fa-play-circle-o"></i>
									</div>
								</a>
								<p>Círculo de Mãos</p>
								<h2>24 dezembro 2014</h2>
							</div>
						</div> -->
						
					<!--	<div class="col-sm-3">
							<div class="video-gallery text-center">
								<a href="#">
									<div class="iframe-img">
										<img src="images/home/iframe4.png" alt="" />
									</div>
									<div class="overlay-icon">
										<i class="fa fa-play-circle-o"></i>
									</div>
								</a>
								<p>Círculo de Mãos</p>
								<h2>24 dezembro 2014</h2>
							</div>
						</div> -->
					</div>
					<div class="col-sm-3">
						<div class="address">
							<img src="images/home/map.png" alt="" />
							<!--<p>505 S Atlantic Ave Virginia Beach, VA(Virginia)</p> -->
						</div>
					</div>
				</div>
			</div>
		</div>
		
		<div class="footer-widget">
			<div class="container">
				<div class="row">
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>Serviços</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="">Ajuda online</a></li>
								<li><a href="">Contate-Nos</a></li>
								<li><a href="">Status do pedido</a></li>
								<li><a href="">Mudar localização</a></li>
								<li><a href="">FAQâs</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>Compra rápida</h2>
							<ul class="nav nav-pills nav-stacked">
								
							</ul>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>Políticas</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="">Termos de uso</a></li>
								<li><a href="">Política de Privacidade</a></li>
								<li><a href="">Politica de reembolso</a></li>
								<li><a href="">Sistema de cobrança</a></li>
								
							</ul>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>Sobre o Shopper</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="">Informações da Empresa</a></li>
								<li><a href="">Carreiras</a></li>
								<li><a href="">Localização da loja</a></li>
								<li><a href="">Programa Afilado</a></li>
								<li><a href="">direito autoral</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-3 col-sm-offset-1">
						<div class="single-widget">
							<h2>Sobre a loja</h2>
							<form action="#" class="searchform">
								<input type="text" placeholder="Your email address" />
								<button type="submit" class="btn btn-default"><i class="fa fa-arrow-circle-o-right"></i></button>
								<p>Receba as atualizações mais recentes de <br />nosso site para atualizado dos nossos produtos </p>
							</form>
						</div>
					</div>
					
				</div>
			</div>
		</div>
		
		<div class="footer-bottom">
			<div class="container">
				<div class="row">
					<p class="pull-left">direito autoral Â© 2019 TerisCorumbá. Todos os direitos reservados.</p>
					<p class="pull-right">Designed by <span><a target="_blank" href="http://www.themeum.com">Themeum</a></span></p>
				</div>
			</div>
		</div>
		
	</footer><!--/Footer-->
	

  
    <script src="js/jquery.js"></script>
	<script src="js/price-range.js"></script>
    <script src="js/jquery.scrollUp.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>  
        
        
    </body>
</html>
