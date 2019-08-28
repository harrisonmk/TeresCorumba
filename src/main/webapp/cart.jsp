
<%@page import="Classes.Produto"%>
<%@page import="Controle.ProdutoControle"%>
<%@page import="Classes.Artigo"%>
<%@page import="java.util.ArrayList"%>


<%
HttpSession sessao = request.getSession(true);
ArrayList<Artigo> artigos = sessao.getAttribute("carrinho") == null ? null : (ArrayList) sessao.getAttribute("carrinho");    




%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Cart | E-Shopper</title>
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
</head><!--/head-->

<body>
	<header id="header"><!--header-->
		<div class="header_top"><!--header_top-->
			<div class="container">
				<div class="row">
					<div class="col-sm-6">
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
								
								<li><a href="cart.jsp" class="active"><i class="fa fa-shopping-cart"></i> carrinho</a></li>
								<li><a href="login.jsp"><i class="fa fa-lock"></i> Login</a></li>
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
								<li class="dropdown"><a href="#">Shop<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <li><a href="shop.jsp">Produtos</a></li>
										 
										
										<li><a href="cart.jsp" class="active">Carrinho</a></li> 
										<li><a href="login.jsp">Login</a></li> 
                                    </ul>
                                </li> 
								
								
								
							</ul>
						</div>
					</div>
					
				</div>
			</div>
		</div><!--/header-bottom-->
	</header><!--/header-->

	<section id="cart_items">
		<div class="container">
			<div class="breadcrumbs">
				<ol class="breadcrumb">
				  <li><a href="shop.jsp">Home</a></li>
				  <li class="active">Shopping Cart</li>
				</ol>
			</div>
			<div class="table-responsive cart_info" id="cart-container">
				<table class="table table-condensed" id="shop-table">
					<thead>
						<tr class="cart_menu">
							<td class="image">Item</td>
							<td class="description"></td>
							<td class="price">Preço</td>
							<td class="quantity">Quantidade</td>
							<td class="total">Total</td>
							<td></td>
						</tr>
					</thead>
					<tbody>
                                            
                                            
                                            <%
                                            
                                            ProdutoControle cp = new ProdutoControle();
                                            double total=0;
                                            if (artigos !=null){
                                            for(Artigo a :artigos){
                                            Produto produto = cp.pegaProduto(a.getIdProduto());
                                            total += a.getQuantidade()*produto.getPreco();
                                            %>
                                            
						<tr>
							<td class="cart_product">
								<a href=""><img src="<%=produto.getImg_produto()  %>" alt=""></a>
							</td>
							<td class="cart_description">
								<h4><a href=""> <%=produto.getNome()  %> </a></h4>
								<p>Web ID: 1089772</p>
							</td>
							<td class="cart_price">
								<p>R$ <%=produto.getPreco()%></p>
							</td>
							<td class="cart_quantity">
								<div class="cart_quantity_button">
									<a class="cart_quantity_up" href=""> + </a>
									<input class="cart_quantity_input" type="text" name="quantity" value="<%= a.getQuantidade() %>" autocomplete="off" size="2">
									<a class="cart_quantity_down" href=""> - </a>
								</div>
							</td>
							<td class="cart_total">
								<p class="cart_total_price">R$ <%= Math.round(produto.getPreco()*a.getQuantidade()*100.0)/100.0 %> </p>
							</td>
							<td class="cart_delete">
                                                            
                                                            <span id="idartigo" style="display:none;"><%= produto.getId() %></span>
                                                            
								<a class="cart_quantity_delete" href="" id="apagarItem" ><i class="fa fa-times"></i></a>
							</td>
						</tr>

                                               <%}} %> 
                            
						
					</tbody>
				</table>
                                      <% if(artigos == null){ %>
                                            <h4>Não existe produtos no carrinho</h4>    
                                     <%} %>         
			</div>
                                               
                        <a class="btn btn-default update" href="javascript:window.history.go(-2);">Seguir Comprando</a>                     
                                               
		</div>
	</section> <!--/#cart_items-->

	<section id="do_action">
		<div class="container">
		<!--	<div class="heading">
				<h3>What would you like to do next?</h3>
				<p>Choose if you have a discount code or reward points you want to use or would like to estimate your delivery cost.</p>
			</div> -->
			<div class="row">
			<!--	<div class="col-sm-6">
					<div class="chose_area">
						<ul class="user_option">
							<li>
								<input type="checkbox">
								<label>Use Coupon Code</label>
							</li>
							<li>
								<input type="checkbox">
								<label>Use Gift Voucher</label>
							</li>
							<li>
								<input type="checkbox">
								<label>Estimate Shipping & Taxes</label>
							</li>
						</ul>
						<ul class="user_info">
							<li class="single_field">
								<label>Country:</label>
								<select>
									<option>United States</option>
									<option>Bangladesh</option>
									<option>UK</option>
									<option>India</option>
									<option>Pakistan</option>
									<option>Ucrane</option>
									<option>Canada</option>
									<option>Dubai</option>
								</select>
								
							</li>
							<li class="single_field">
								<label>Region / State:</label>
								<select>
									<option>Select</option>
									<option>Dhaka</option>
									<option>London</option>
									<option>Dillih</option>
									<option>Lahore</option>
									<option>Alaska</option>
									<option>Canada</option>
									<option>Dubai</option>
								</select>
							
							</li>
							<li class="single_field zip-field">
								<label>Zip Code:</label>
								<input type="text">
							</li>
						</ul>
						<a class="btn btn-default update" href="">Get Quotes</a>
						<a class="btn btn-default check_out" href="">Continue</a>
					</div> -->
				</div>
				<div class="col-sm-6">
					<div class="total_area">
						<ul>
                                                    <li>Subtotal do carrinho <span id="txt-subtotal">R$ <%= Math.round(total*100.0)/100.0 %></span></li>
							<li>Imposto Ecológico <span>0.0</span></li>
							<li>Frete<span>Free</span></li>
							<li>Total <span id="txt-total">R$ <%= Math.round(total*100.0)/100.0 %></span></li>
						</ul>
							<a class="btn btn-default update" href="">Atualizar</a>
							<a class="btn btn-default check_out" href="">Confirmar</a>
					</div>
				</div>
			</div>
		</div>
	</section><!--/#do_action-->
        
        
        		<!-- CONTENT -->
			<section>
				<div class="container">

					

					<form action="#" method="post" class="row sky-form cartContent">

						<div class="col-md-9 checkout">

							<!-- ACCORDION -->
							<div class="accordion panel-group transparent" id="accordion2">

								<!-- BILLING ADDRESS -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion2" href="#acordion_1">
												endereço de cobrança
											</a>
										</h4>
									</div>
									<div id="acordion_1" class="collapse in">
										<div class="panel-body">

											<fieldset>					
												<div class="row">
													<div class="col-md-6">
														<label class="input">
															<i class="icon-prepend fa fa-user"></i>
															<input type="text" placeholder="primeiro nome">
														</label>
													</div>
													<div class="col-md-6">
														<label class="input">
															<i class="icon-prepend fa fa-user"></i>
															<input type="text" placeholder="ultimo nome">
														</label>
													</div>
												</div>
												
												<div class="row">
													<div class="col-md-6">
														<label class="input">
															<i class="icon-prepend fa fa-envelope"></i>
															<input type="email" placeholder="E-mail">
														</label>
													</div>
													<div class="col-md-6">
														<label class="input">
															<i class="icon-prepend fa fa-phone"></i>
															<input type="tel" placeholder="fone">
														</label>
													</div>
												</div>
											</fieldset>
									
											<fieldset>
												<div class="row">
													<div class="col-md-5">
														<label class="select">
															<select class="pointer">
																<option value="0" selected disabled>Pais</option>
																<option value="244">Aaland Islands</option>
																<option value="1">Afghanistan</option>
																<option value="2">Albania</option>
																<option value="3">Algeria</option>
																<option value="4">American Samoa</option>
																<option value="5">Andorra</option>
																<option value="6">Angola</option>
																<option value="7">Anguilla</option>
																<option value="8">Antarctica</option>
																<option value="9">Antigua and Barbuda</option>
																<option value="10">Argentina</option>
																<option value="11">Armenia</option>
																<option value="12">Aruba</option>
																<option value="13">Australia</option>
																<option value="14">Austria</option>
																<option value="15">Azerbaijan</option>
																<option value="16">Bahamas</option>
																<option value="17">Bahrain</option>
																<option value="18">Bangladesh</option>
																<option value="19">Barbados</option>
																<option value="20">Belarus</option>
																<option value="21">Belgium</option>
																<option value="22">Belize</option>
																<option value="23">Benin</option>
																<option value="24">Bermuda</option>
																<option value="25">Bhutan</option>
																<option value="26">Bolivia</option>
																<option value="245">Bonaire, Sint Eustatius and Saba</option>
																<option value="27">Bosnia and Herzegovina</option>
																<option value="28">Botswana</option>
																<option value="29">Bouvet Island</option>
																<option value="30">Brazil</option>
																<option value="31">British Indian Ocean Territory</option>
																<option value="32">Brunei Darussalam</option>
																<option value="33">Bulgaria</option>
																<option value="34">Burkina Faso</option>
																<option value="35">Burundi</option>
																<option value="36">Cambodia</option>
																<option value="37">Cameroon</option>
																<option value="38">Canada</option>
																<option value="251">Canary Islands</option>
																<option value="39">Cape Verde</option>
																<option value="40">Cayman Islands</option>
																<option value="41">Central African Republic</option>
																<option value="42">Chad</option>
																<option value="43">Chile</option>
																<option value="44">China</option>
																<option value="45">Christmas Island</option>
																<option value="46">Cocos (Keeling) Islands</option>
																<option value="47">Colombia</option>
																<option value="48">Comoros</option>
																<option value="49">Congo</option>
																<option value="50">Cook Islands</option>
																<option value="51">Costa Rica</option>
																<option value="52">Cote D'Ivoire</option>
																<option value="53">Croatia</option>
																<option value="54">Cuba</option>
																<option value="246">Curacao</option>
																<option value="55">Cyprus</option>
																<option value="56">Czech Republic</option>
																<option value="237">Democratic Republic of Congo</option>
																<option value="57">Denmark</option>
																<option value="58">Djibouti</option>
																<option value="59">Dominica</option>
																<option value="60">Dominican Republic</option>
																<option value="61">East Timor</option>
																<option value="62">Ecuador</option>
																<option value="63">Egypt</option>
																<option value="64">El Salvador</option>
																<option value="65">Equatorial Guinea</option>
																<option value="66">Eritrea</option>
																<option value="67">Estonia</option>
																<option value="68">Ethiopia</option>
																<option value="69">Falkland Islands (Malvinas)</option>
																<option value="70">Faroe Islands</option>
																<option value="71">Fiji</option>
																<option value="72">Finland</option>
																<option value="74">France, skypolitan</option>
																<option value="75">French Guiana</option>
																<option value="76">French Polynesia</option>
																<option value="77">French Southern Territories</option>
																<option value="126">FYROM</option>
																<option value="78">Gabon</option>
																<option value="79">Gambia</option>
																<option value="80">Georgia</option>
																<option value="81">Germany</option>
																<option value="82">Ghana</option>
																<option value="83">Gibraltar</option>
																<option value="84">Greece</option>
																<option value="85">Greenland</option>
																<option value="86">Grenada</option>
																<option value="87">Guadeloupe</option>
																<option value="88">Guam</option>
																<option value="89">Guatemala</option>
																<option value="241">Guernsey</option>
																<option value="90">Guinea</option>
																<option value="91">Guinea-Bissau</option>
																<option value="92">Guyana</option>
																<option value="93">Haiti</option>
																<option value="94">Heard and Mc Donald Islands</option>
																<option value="95">Honduras</option>
																<option value="96">Hong Kong</option>
																<option value="97">Hungary</option>
																<option value="98">Iceland</option>
																<option value="99">India</option>
																<option value="100">Indonesia</option>
																<option value="101">Iran (Islamic Republic of)</option>
																<option value="102">Iraq</option>
																<option value="103">Ireland</option>
																<option value="104">Israel</option>
																<option value="105">Italy</option>
																<option value="106">Jamaica</option>
																<option value="107">Japan</option>
																<option value="240">Jersey</option>
																<option value="108">Jordan</option>
																<option value="109">Kazakhstan</option>
																<option value="110">Kenya</option>
																<option value="111">Kiribati</option>
																<option value="113">Korea, Republic of</option>
																<option value="114">Kuwait</option>
																<option value="115">Kyrgyzstan</option>
																<option value="116">Lao People's Democratic Republic</option>
																<option value="117">Latvia</option>
																<option value="118">Lebanon</option>
																<option value="119">Lesotho</option>
																<option value="120">Liberia</option>
																<option value="121">Libyan Arab Jamahiriya</option>
																<option value="122">Liechtenstein</option>
																<option value="123">Lithuania</option>
																<option value="124">Luxembourg</option>
																<option value="125">Macau</option>
																<option value="127">Madagascar</option>
																<option value="128">Malawi</option>
																<option value="129">Malaysia</option>
																<option value="130">Maldives</option>
																<option value="131">Mali</option>
																<option value="132">Malta</option>
																<option value="133">Marshall Islands</option>
																<option value="134">Martinique</option>
																<option value="135">Mauritania</option>
																<option value="136">Mauritius</option>
																<option value="137">Mayotte</option>
																<option value="138">Mexico</option>
																<option value="139">Micronesia, Federated States of</option>
																<option value="140">Moldova, Republic of</option>
																<option value="141">Monaco</option>
																<option value="142">Mongolia</option>
																<option value="242">Montenegro</option>
																<option value="143">Montserrat</option>
																<option value="144">Morocco</option>
																<option value="145">Mozambique</option>
																<option value="146">Myanmar</option>
																<option value="147">Namibia</option>
																<option value="148">Nauru</option>
																<option value="149">Nepal</option>
																<option value="150">Netherlands</option>
																<option value="151">Netherlands Antilles</option>
																<option value="152">New Caledonia</option>
																<option value="153">New Zealand</option>
																<option value="154">Nicaragua</option>
																<option value="155">Niger</option>
																<option value="156">Nigeria</option>
																<option value="157">Niue</option>
																<option value="158">Norfolk Island</option>
																<option value="112">North Korea</option>
																<option value="159">Northern Mariana Islands</option>
																<option value="160">Norway</option>
																<option value="161">Oman</option>
																<option value="162">Pakistan</option>
																<option value="163">Palau</option>
																<option value="247">Palestinian Territory, Occupied</option>
																<option value="164">Panama</option>
																<option value="165">Papua New Guinea</option>
																<option value="166">Paraguay</option>
																<option value="167">Peru</option>
																<option value="168">Philippines</option>
																<option value="169">Pitcairn</option>
																<option value="170">Poland</option>
																<option value="171">Portugal</option>
																<option value="172">Puerto Rico</option>
																<option value="173">Qatar</option>
																<option value="174">Reunion</option>
																<option value="175">Romania</option>
																<option value="176">Russian Federation</option>
																<option value="177">Rwanda</option>
																<option value="178">Saint Kitts and Nevis</option>
																<option value="179">Saint Lucia</option>
																<option value="180">Saint Vincent and the Grenadines</option>
																<option value="181">Samoa</option>
																<option value="182">San Marino</option>
																<option value="183">Sao Tome and Principe</option>
																<option value="184">Saudi Arabia</option>
																<option value="185">Senegal</option>
																<option value="243">Serbia</option>
																<option value="186">Seychelles</option>
																<option value="187">Sierra Leone</option>
																<option value="188">Singapore</option>
																<option value="189">Slovak Republic</option>
																<option value="190">Slovenia</option>
																<option value="191">Solomon Islands</option>
																<option value="192">Somalia</option>
																<option value="193">South Africa</option>
																<option value="194">South Georgia &amp; South Sandwich Islands</option>
																<option value="248">South Sudan</option>
																<option value="195">Spain</option>
																<option value="196">Sri Lanka</option>
																<option value="249">St. Barthelemy</option>
																<option value="197">St. Helena</option>
																<option value="250">St. Martin (French part)</option>
																<option value="198">St. Pierre and Miquelon</option>
																<option value="199">Sudan</option>
																<option value="200">Suriname</option>
																<option value="201">Svalbard and Jan Mayen Islands</option>
																<option value="202">Swaziland</option>
																<option value="203">Sweden</option>
																<option value="204">Switzerland</option>
																<option value="205">Syrian Arab Republic</option>
																<option value="206">Taiwan</option>
																<option value="207">Tajikistan</option>
																<option value="208">Tanzania, United Republic of</option>
																<option value="209">Thailand</option>
																<option value="210">Togo</option>
																<option value="211">Tokelau</option>
																<option value="212">Tonga</option>
																<option value="213">Trinidad and Tobago</option>
																<option value="214">Tunisia</option>
																<option value="215">Turkey</option>
																<option value="216">Turkmenistan</option>
																<option value="217">Turks and Caicos Islands</option>
																<option value="218">Tuvalu</option>
																<option value="219">Uganda</option>
																<option value="220">Ukraine</option>
																<option value="221">United Arab Emirates</option>
																<option value="222">United Kingdom</option>
																<option value="223">United States</option>
																<option value="224">United States Minor Outlying Islands</option>
																<option value="225">Uruguay</option>
																<option value="226">Uzbekistan</option>
																<option value="227">Vanuatu</option>
																<option value="228">Vatican City State (Holy See)</option>
																<option value="229">Venezuela</option>
																<option value="230">Viet Nam</option>
																<option value="231">Virgin Islands (British)</option>
																<option value="232">Virgin Islands (U.S.)</option>
																<option value="233">Wallis and Futuna Islands</option>
																<option value="234">Western Sahara</option>
																<option value="235">Yemen</option>
																<option value="238">Zambia</option>
																<option value="239">Zimbabwe</option>
															</select>
															<i></i>
														</label>
													</div>
													
													<div class="col-md-4">
														<label class="input">
															<input type="tel" placeholder="cidade">
														</label>
													</div>
													
													<div class="col-md-3">
														<label class="input">
															<input type="tel" placeholder="codigo postal">
														</label>
													</div>
												</div>
												
												<div>
													<label class="input">
														<input type="tel" placeholder="endereço">
													</label>
												</div>
												
												<div>
													<label class="textarea">
														<textarea rows="3" placeholder="informação adicional"></textarea>
													</label>
												</div>
											</fieldset>

											<footer class="nomargin">
												<a data-toggle="collapse" data-parent="#accordion2" href="#acordion_2" class="btn btn-warning pull-right">Continue</a>
											</footer>
										</div>
									</div>
								</div>
								<!-- /BILLING ADDRESS -->

								<!-- SHIPPING ADDRESS -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion2" href="#acordion_2">
												endereço de entrega
											</a>
										</h4>
									</div>
									<div id="acordion_2" class="collapse">
										<div class="panel-body">

											<div class="row">
												<div class="col-md-12">
													<label class="checkbox">
														<input type="checkbox" name="checkbox" checked="">
														<i></i> Enviar para o endereço de faturamento
													</label>
												</div>
											</div>


											<fieldset>
												<div class="row">
													<div class="col-md-6">
														<label class="input">
															<i class="icon-prepend fa fa-user"></i>
															<input type="text" placeholder="primeiro nome">
														</label>
													</div>
													<div class="col-md-6">
														<label class="input">
															<i class="icon-prepend fa fa-user"></i>
															<input type="text" placeholder="ultimo nome">
														</label>
													</div>
												</div>
												
												<div class="row">
													<div class="col-md-6">
														<label class="input">
															<i class="icon-prepend fa fa-envelope"></i>
															<input type="email" placeholder="E-mail">
														</label>
													</div>
													<div class="col-md-6">
														<label class="input">
															<i class="icon-prepend fa fa-phone"></i>
															<input type="tel" placeholder="Fone">
														</label>
													</div>
												</div>
											</fieldset>
									
											<fieldset>
												<div class="row">
													<div class="col-md-5">
														<label class="select">
															<select class="pointer">
																<option value="0" selected disabled>Pais</option>
																<option value="244">Aaland Islands</option>
																<option value="1">Afghanistan</option>
																<option value="2">Albania</option>
																<option value="3">Algeria</option>
																<option value="4">American Samoa</option>
																<option value="5">Andorra</option>
																<option value="6">Angola</option>
																<option value="7">Anguilla</option>
																<option value="8">Antarctica</option>
																<option value="9">Antigua and Barbuda</option>
																<option value="10">Argentina</option>
																<option value="11">Armenia</option>
																<option value="12">Aruba</option>
																<option value="13">Australia</option>
																<option value="14">Austria</option>
																<option value="15">Azerbaijan</option>
																<option value="16">Bahamas</option>
																<option value="17">Bahrain</option>
																<option value="18">Bangladesh</option>
																<option value="19">Barbados</option>
																<option value="20">Belarus</option>
																<option value="21">Belgium</option>
																<option value="22">Belize</option>
																<option value="23">Benin</option>
																<option value="24">Bermuda</option>
																<option value="25">Bhutan</option>
																<option value="26">Bolivia</option>
																<option value="245">Bonaire, Sint Eustatius and Saba</option>
																<option value="27">Bosnia and Herzegovina</option>
																<option value="28">Botswana</option>
																<option value="29">Bouvet Island</option>
																<option value="30">Brazil</option>
																<option value="31">British Indian Ocean Territory</option>
																<option value="32">Brunei Darussalam</option>
																<option value="33">Bulgaria</option>
																<option value="34">Burkina Faso</option>
																<option value="35">Burundi</option>
																<option value="36">Cambodia</option>
																<option value="37">Cameroon</option>
																<option value="38">Canada</option>
																<option value="251">Canary Islands</option>
																<option value="39">Cape Verde</option>
																<option value="40">Cayman Islands</option>
																<option value="41">Central African Republic</option>
																<option value="42">Chad</option>
																<option value="43">Chile</option>
																<option value="44">China</option>
																<option value="45">Christmas Island</option>
																<option value="46">Cocos (Keeling) Islands</option>
																<option value="47">Colombia</option>
																<option value="48">Comoros</option>
																<option value="49">Congo</option>
																<option value="50">Cook Islands</option>
																<option value="51">Costa Rica</option>
																<option value="52">Cote D'Ivoire</option>
																<option value="53">Croatia</option>
																<option value="54">Cuba</option>
																<option value="246">Curacao</option>
																<option value="55">Cyprus</option>
																<option value="56">Czech Republic</option>
																<option value="237">Democratic Republic of Congo</option>
																<option value="57">Denmark</option>
																<option value="58">Djibouti</option>
																<option value="59">Dominica</option>
																<option value="60">Dominican Republic</option>
																<option value="61">East Timor</option>
																<option value="62">Ecuador</option>
																<option value="63">Egypt</option>
																<option value="64">El Salvador</option>
																<option value="65">Equatorial Guinea</option>
																<option value="66">Eritrea</option>
																<option value="67">Estonia</option>
																<option value="68">Ethiopia</option>
																<option value="69">Falkland Islands (Malvinas)</option>
																<option value="70">Faroe Islands</option>
																<option value="71">Fiji</option>
																<option value="72">Finland</option>
																<option value="74">France, skypolitan</option>
																<option value="75">French Guiana</option>
																<option value="76">French Polynesia</option>
																<option value="77">French Southern Territories</option>
																<option value="126">FYROM</option>
																<option value="78">Gabon</option>
																<option value="79">Gambia</option>
																<option value="80">Georgia</option>
																<option value="81">Germany</option>
																<option value="82">Ghana</option>
																<option value="83">Gibraltar</option>
																<option value="84">Greece</option>
																<option value="85">Greenland</option>
																<option value="86">Grenada</option>
																<option value="87">Guadeloupe</option>
																<option value="88">Guam</option>
																<option value="89">Guatemala</option>
																<option value="241">Guernsey</option>
																<option value="90">Guinea</option>
																<option value="91">Guinea-Bissau</option>
																<option value="92">Guyana</option>
																<option value="93">Haiti</option>
																<option value="94">Heard and Mc Donald Islands</option>
																<option value="95">Honduras</option>
																<option value="96">Hong Kong</option>
																<option value="97">Hungary</option>
																<option value="98">Iceland</option>
																<option value="99">India</option>
																<option value="100">Indonesia</option>
																<option value="101">Iran (Islamic Republic of)</option>
																<option value="102">Iraq</option>
																<option value="103">Ireland</option>
																<option value="104">Israel</option>
																<option value="105">Italy</option>
																<option value="106">Jamaica</option>
																<option value="107">Japan</option>
																<option value="240">Jersey</option>
																<option value="108">Jordan</option>
																<option value="109">Kazakhstan</option>
																<option value="110">Kenya</option>
																<option value="111">Kiribati</option>
																<option value="113">Korea, Republic of</option>
																<option value="114">Kuwait</option>
																<option value="115">Kyrgyzstan</option>
																<option value="116">Lao People's Democratic Republic</option>
																<option value="117">Latvia</option>
																<option value="118">Lebanon</option>
																<option value="119">Lesotho</option>
																<option value="120">Liberia</option>
																<option value="121">Libyan Arab Jamahiriya</option>
																<option value="122">Liechtenstein</option>
																<option value="123">Lithuania</option>
																<option value="124">Luxembourg</option>
																<option value="125">Macau</option>
																<option value="127">Madagascar</option>
																<option value="128">Malawi</option>
																<option value="129">Malaysia</option>
																<option value="130">Maldives</option>
																<option value="131">Mali</option>
																<option value="132">Malta</option>
																<option value="133">Marshall Islands</option>
																<option value="134">Martinique</option>
																<option value="135">Mauritania</option>
																<option value="136">Mauritius</option>
																<option value="137">Mayotte</option>
																<option value="138">Mexico</option>
																<option value="139">Micronesia, Federated States of</option>
																<option value="140">Moldova, Republic of</option>
																<option value="141">Monaco</option>
																<option value="142">Mongolia</option>
																<option value="242">Montenegro</option>
																<option value="143">Montserrat</option>
																<option value="144">Morocco</option>
																<option value="145">Mozambique</option>
																<option value="146">Myanmar</option>
																<option value="147">Namibia</option>
																<option value="148">Nauru</option>
																<option value="149">Nepal</option>
																<option value="150">Netherlands</option>
																<option value="151">Netherlands Antilles</option>
																<option value="152">New Caledonia</option>
																<option value="153">New Zealand</option>
																<option value="154">Nicaragua</option>
																<option value="155">Niger</option>
																<option value="156">Nigeria</option>
																<option value="157">Niue</option>
																<option value="158">Norfolk Island</option>
																<option value="112">North Korea</option>
																<option value="159">Northern Mariana Islands</option>
																<option value="160">Norway</option>
																<option value="161">Oman</option>
																<option value="162">Pakistan</option>
																<option value="163">Palau</option>
																<option value="247">Palestinian Territory, Occupied</option>
																<option value="164">Panama</option>
																<option value="165">Papua New Guinea</option>
																<option value="166">Paraguay</option>
																<option value="167">Peru</option>
																<option value="168">Philippines</option>
																<option value="169">Pitcairn</option>
																<option value="170">Poland</option>
																<option value="171">Portugal</option>
																<option value="172">Puerto Rico</option>
																<option value="173">Qatar</option>
																<option value="174">Reunion</option>
																<option value="175">Romania</option>
																<option value="176">Russian Federation</option>
																<option value="177">Rwanda</option>
																<option value="178">Saint Kitts and Nevis</option>
																<option value="179">Saint Lucia</option>
																<option value="180">Saint Vincent and the Grenadines</option>
																<option value="181">Samoa</option>
																<option value="182">San Marino</option>
																<option value="183">Sao Tome and Principe</option>
																<option value="184">Saudi Arabia</option>
																<option value="185">Senegal</option>
																<option value="243">Serbia</option>
																<option value="186">Seychelles</option>
																<option value="187">Sierra Leone</option>
																<option value="188">Singapore</option>
																<option value="189">Slovak Republic</option>
																<option value="190">Slovenia</option>
																<option value="191">Solomon Islands</option>
																<option value="192">Somalia</option>
																<option value="193">South Africa</option>
																<option value="194">South Georgia &amp; South Sandwich Islands</option>
																<option value="248">South Sudan</option>
																<option value="195">Spain</option>
																<option value="196">Sri Lanka</option>
																<option value="249">St. Barthelemy</option>
																<option value="197">St. Helena</option>
																<option value="250">St. Martin (French part)</option>
																<option value="198">St. Pierre and Miquelon</option>
																<option value="199">Sudan</option>
																<option value="200">Suriname</option>
																<option value="201">Svalbard and Jan Mayen Islands</option>
																<option value="202">Swaziland</option>
																<option value="203">Sweden</option>
																<option value="204">Switzerland</option>
																<option value="205">Syrian Arab Republic</option>
																<option value="206">Taiwan</option>
																<option value="207">Tajikistan</option>
																<option value="208">Tanzania, United Republic of</option>
																<option value="209">Thailand</option>
																<option value="210">Togo</option>
																<option value="211">Tokelau</option>
																<option value="212">Tonga</option>
																<option value="213">Trinidad and Tobago</option>
																<option value="214">Tunisia</option>
																<option value="215">Turkey</option>
																<option value="216">Turkmenistan</option>
																<option value="217">Turks and Caicos Islands</option>
																<option value="218">Tuvalu</option>
																<option value="219">Uganda</option>
																<option value="220">Ukraine</option>
																<option value="221">United Arab Emirates</option>
																<option value="222">United Kingdom</option>
																<option value="223">United States</option>
																<option value="224">United States Minor Outlying Islands</option>
																<option value="225">Uruguay</option>
																<option value="226">Uzbekistan</option>
																<option value="227">Vanuatu</option>
																<option value="228">Vatican City State (Holy See)</option>
																<option value="229">Venezuela</option>
																<option value="230">Viet Nam</option>
																<option value="231">Virgin Islands (British)</option>
																<option value="232">Virgin Islands (U.S.)</option>
																<option value="233">Wallis and Futuna Islands</option>
																<option value="234">Western Sahara</option>
																<option value="235">Yemen</option>
																<option value="238">Zambia</option>
																<option value="239">Zimbabwe</option>
															</select>
															<i></i>
														</label>
													</div>
													
													<div class="col-md-4">
														<label class="input">
															<input type="tel" placeholder="Cidade">
														</label>
													</div>
													
													<div class="col-md-3">
														<label class="input">
															<input type="tel" placeholder="Codigo postal">
														</label>
													</div>
												</div>
												
												<div>
													<label class="input">
														<input type="tel" placeholder="Endereço">
													</label>
												</div>
												
												<div>
													<label class="textarea">
														<textarea rows="3" placeholder="informação adicional"></textarea>
													</label>
												</div>
											</fieldset>

											<footer class="nomargin">
												<a data-toggle="collapse" data-parent="#accordion2" href="#acordion_1" class="btn btn-default pull-left nomargin-left">voltar</a>
												<a data-toggle="collapse" data-parent="#accordion2" href="#acordion_3" class="btn btn-warning pull-right">Continue</a>
											</footer>

										</div>
									</div>
								</div>
								<!-- /SHIPPING ADDRESS -->

								<!-- REVIEW and PAYMENT -->
								<div class="panel panel-default">
									<div class="panel-heading">
										<h4 class="panel-title">
											<a data-toggle="collapse" data-parent="#accordion2" href="#acordion_3">
												Payment
											</a>
										</h4>
									</div>
									<div id="acordion_3" class="collapse">
										<div class="panel-body sky-form cartContent">


												<div class="row">
													<div class="col-md-12 inline-group">
														<label class="radio"><input type="radio" name="radio-inline" checked><i></i>Visa</label>
														<label class="radio"><input type="radio" name="radio-inline"><i></i>MasterCard</label>
														<label class="radio"><input type="radio" name="radio-inline"><i></i>PayPal</label>
													</div>
												</div>
												
											<fieldset>

												<label class="input">
													<input type="text" placeholder="nome do cartao">
												</label>
												
												<div class="row">
													<div class="col-md-10">
														<label class="input">
															<input type="text" placeholder="numero do cartão">
														</label>
													</div>
													<div class="col-md-2">
														<label class="input">
															<input type="text" maxlength="3" placeholder="CVV2">
														</label>
													</div>
												</div>
												
												<div class="row">
													<label class="col-md-4 margin-top10">data de expiração</label>
													<div class="col-md-5">
														<label class="select">
															<select>
																<option value="0" selected disabled>Mês</option>
																<option value="1">janeiro</option>
																<option value="1">Fevereiro</option>
																<option value="3">Março</option>
																<option value="4">Abril</option>
																<option value="5">Maio</option>
																<option value="6">Junho</option>
																<option value="7">Julho</option>
																<option value="8">Agosto</option>
																<option value="9">Setembro</option>
																<option value="10">Outubro</option>
																<option value="11">Novembro</option>
																<option value="12">Dezembro</option>
															</select>
															<i></i>
														</label>
													</div>
													<div class="col-md-3">
														<label class="input">
															<input type="text" maxlength="4" placeholder="Ano">
														</label>
													</div>
												</div>

											</fieldset>

											<footer class="nomargin">
												<a data-toggle="collapse" data-parent="#accordion3" href="#acordion_2" class="btn btn-default pull-left nomargin-left">Back</a>
											</footer>

										</div>
									</div>
								</div>
								<!-- /REVIEW and PAYMENT -->

							</div>
							<!-- /ACCORDION -->

							<button class="btn btn-primary btn-lg pull-right" onclick="funcao1()" value="Exibir Alert"><i class="fa fa-check"></i> Finalizar $<%= Math.round(total*100.0)/100.0 %></button>

						</div>



					</form>
                                                        
                                        <script>
function funcao1()
{
alert("Compra Realizada com sucesso!");
}
</script>                

				</div>
			</section>
			<!-- /CONTENT -->
        
        

	<footer id="footer"><!--Footer-->
		<div class="footer-top">
			<div class="container">
				<div class="row">
					<div class="col-sm-2">
						<div class="companyinfo">
							<h2><span>Teres</span>Corumba</h2>
							
						</div>
					</div>
					<div class="col-sm-7">
						<div class="col-sm-3">
							
						</div>
						
						<div class="col-sm-3">
							
						</div>
						
						<div class="col-sm-3">
							
						</div>
						
						<div class="col-sm-3">
							
						</div>
					</div>
					<div class="col-sm-3">
						<div class="address">
							<img src="images/home/map.png" alt="" />
							
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
								<li><a href="">FAQâ€™s</a></li>
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
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
    <script src="js/carrinho.js"></script>
</body>
</html>