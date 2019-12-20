<%@page import="controles.ControladorProducto" %>
<%
    controles.ControladorProducto cp = new ControladorProducto();
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Aprire</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
    <link rel="icon" href="images/Logo/aprire4.ico">       
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/CABECERA-->

<body >
    <!--INFORMACION PARA CONTACTAR-->
    <header id="header">
	<div class="header_top">
            <div class="container">
		<div class="row">
                    <div class="col-sm-6 ">
			<div class="contactinfo">
                            <ul class="nav nav-pills">
				<li><a href=""><i class="fa fa-phone"></i> +51 973267469</a></li>
                                <li><a href=""><i class="fa fa-phone"></i> +51 923227488</a></li>
                                <li><a href="https://www.google.com/gmail/"><i class="fa fa-envelope"></i> shirleyOx@gmail.com</a>
				<li><a href="https://www.google.com/gmail/"><i class="fa fa-envelope"></i> spitfire9618@gmail.com</a></li>
                            </ul>
			</div>
                    </div>
                    <div class="col-sm-6">
			<div class="social-icons pull-right">
                            <ul class="nav navbar-nav">
				<li><a href="https://www.facebook.com/"><i class="fa fa-facebook"></i></a></li>
				<li><a href="https://twitter.com/?lang=es/"><i class="fa fa-twitter"></i></a></li>
				<li><a href="https://www.linkedin.com/"><i class="fa fa-linkedin"></i></a></li>
				<li><a href="https://dribbble.com/"><i class="fa fa-dribbble"></i></a></li>
				<li><a href="https://plus.google.com/"><i class="fa fa-google-plus"></i></a></li>
                            </ul>
			</div>
                    </div>
		</div>
            </div>
        </div>
        <%--1------------------------------------------------------------------------------------------------------------%>
        <!--PRIMERA BARRA DE MENU DE APRIRE-->
	<div class="header-middle">
            <div class="container">
		<div class="row">
                    <div class="col-sm-4">
			<div class="logo pull-left">
                            <a href="shop.jsp"><img src="images/Logo/AprireLogo3.jpg" alt="" width="165" height="75" /></a>
                        </div>
                    <div class="btn-group pull-right">
			<div class="btn-group">
                            <button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">Perú
				<span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu">
				<li><a href="">Brasil</a></li>
				<li><a href="">Korea</a></li>
                                <li><a href="">Inglaterra</a></li>
                            </ul>
			</div>
							
                        <div class="btn-group">
                            <button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">SOLES
                                <span class="caret"></span>
                            </button>
                            <ul class="dropdown-menu">
                                <li><a href="">Dollar</a></li>
                                <li><a href="">Yenes</a></li>
			</ul>
                        </div>
                    </div>  
                    </div>
                    <div class="col-sm-8">
			<div class="shop-menu pull-right">
                            <ul class="nav navbar-nav">
				<li><a href=""><i class="fa fa-user"></i> Cuenta</a></li>
				<li><a href="checkout.jsp"><i class="fa fa-crosshairs"></i> Crear Cuenta</a></li>
				<li><a href="cart.jsp"><i class="fa fa-shopping-cart"></i> Carrito</a></li>
				<li><a href="login.html"><i class="fa fa-lock"></i> Login</a></li>
                                <%--<li><a href="logout.jsp"><i class="fa-fa-unlock"></i>Logout</a></li>--%>
                            </ul>
			</div>
                    </div>
		</div>
            </div>
        </div>
        <%-----2--------------------------------------------------------------------------------------------%>
	
	<div class="header-bottom">
            <div class="container">
		<div class="row">
                    <div class="col-sm-9">
			<div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="sr-only">Barra de navegación</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
                    </div>
		<div class="mainmenu pull-left">
                    <ul class="nav navbar-nav collapse navbar-collapse">
                    <li><a href="index.html">Inicio</a></li>
                    <li class="dropdown"><a href="#" class="active">Tienda<i class="fa fa-angle-down"></i></a>
                    <ul role="menu" class="sub-menu">
                    <li><a href="shop.jsp" class="active">Productos</a></li>
			<li><a href="product-details.html">Detalles de Producto</a></li> 
			<li><a href="checkout.jsp">Checkout</a></li> 
			<li><a href="cart.jsp">Carrito</a></li> 
			<li><a href="login.html">Login</a></li> 
                    </ul>
                    </li> 
			<li class="dropdown"><a href="#">Blog<i class="fa fa-angle-down"></i></a>
                            <ul role="menu" class="sub-menu">
                                <li><a href="blog.html">Blog List</a></li>
                                <li><a href="blog-single.html">Blog Single</a></li>
                            </ul>
                        </li> 
                            <%--<li><a href="404.html">404</a></li>--%>
                            <li><a href="contact-us.html">Contacto</a></li>
		
                    </div>
                </div>
			<div class="col-sm-3">
                            <div class="search_box pull-right">
                                <!--<input type="text" placeholder="Search"/>-->
                            </div>
			</div>
		</div>
            </div>
	</div>
    </header>
    <%---FIN DE LA BARRA DE MENU 1-------------------------------------------------------------%> 

    <%--AVISO PUBLICITARIO--%>
    <section id="advertisement">
	<div class="container">
            <img src="images/shop/advertisement.jpg" alt="" />
	</div>
    </section>
    <%----------------------------------------CATEGORIA DE PRODUCTOS BARRA LATERAL------------------------------%>
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
						<span class="badge pull-right"><i class="fa fa-plus"></i></span>Cuero</a>
					</h4>
                                    </div>
				<div id="sportswear" class="panel-collapse collapse">
                                    <div class="panel-body">
                                        <ul>
                                            <li><a href="">Rocker </a></li>
                                            <li><a href="">Under Armour </a></li>
                                            <li><a href="">Infamous</a></li>
                                        </ul>
                                    </div>
                                </div>
				</div>
				<div class="panel panel-default">
                                    <div class="panel-heading">
					<h4 class="panel-title">
                                            <a data-toggle="collapse" data-parent="#accordian" href="#mens">
						<span class="badge pull-right"><i class="fa fa-plus"></i></span>Sport</a>
                                        </h4>
                                    </div>
				<div id="mens" class="panel-collapse collapse">
                                    <div class="panel-body">
					<ul>
                                            <li><a href="">Addidas</a></li>
                                            <li><a href="">Nike</a></li>
                                            <li><a href="">Umbro</a></li>
                                            <li><a href="">Puma</a></li>	
					</ul>
                                    </div>
				</div>
                            </div>
        <div class="panel panel-default">
            <div class="panel-heading">
		<h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordian" href="#mens">
			<span class="badge pull-right"><i class="fa fa-plus"></i></span>Drill</a>
		</h4>
            </div>
            <div id="mens" class="panel-collapse collapse">
		<div class="panel-body">
                    <ul>
			<li><a href="">Doo Australia</a></li>
                        <li><a href="">Tommy Hilfiger Puffer</a></li>	
                    </ul>
		</div>
            </div>
	</div>
	<div class="panel panel-default">
            <div class="panel-heading">
		<h4 class="panel-title">
                    <a data-toggle="collapse" data-parent="#accordian" href="#womens"><span class="badge pull-right"><i class="fa fa-plus"></i></span>Jean
                    </a>
		</h4>
            </div>
            <div id="womens" class="panel-collapse collapse">
                <div class="panel-body">
                    <ul>
                        <li><a href="">Parada 111</a></li>
                        <li><a href="">Forcaps</a></li>
                        <li><a href="">Now</a></li>
                        <li><a href="">Bretoni</a></li>
                        <li><a href="">Cunning</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <%----------------------FIN DE LA CATEGORIA DE PRODUCTOS--------------------------------------------------------------%>
	
            <%---------------------RANGO DE PRECIO----------------------------------%>
            <div class="price-range">
                <h2>Rango de Precio</h2>
                    <div class="well">
                        <input type="text" class="span2" value="" data-slider-min="0" data-slider-max="600" data-slider-step="5" data-slider-value="[250,450]" id="sl2" ><br />
                        <b>S/.0</b> <b class="pull-right">S/.400</b>
                    </div>
                    </div>
                    <!--/FIN DE LA BARRA DE PRECIO-->

                    <%-----------AVISO PUBLICITARIO---------%>
                    <div class="shipping text-center"><!--shipping-->
                            <img src="images/home/shipping.jpg" alt="" />
                            <br><br>
        
                            
                    </div>
                    <div>
                        <video src="images/home/proxaprire2.mp4" style="width: 280px; height:240px" controls>
                        </video>  
                    </div>
                    <!--/FIN DEL AVISO PUBLICITARIO-->
						
                    </div>
		</div>
		
                <%--------------PRODUCTOS DE APRIRE---------------------%>
                <div class="col-sm-9 padding-right">
                    <div class="features_items"><!--features_items-->
			<h2 class="title text-center">Productos</h2>
     
                <%--------------MÉTODO PARA OBTENER LOS PRODUCTOS MEDIANTE EL CONTROLADOR tipo Producto---------%>
						
                    <%= cp.getProductos()%>
                                               
                                 	
                    <ul class="pagination">
			<li class="active"><a href="">1</a></li>
			<li><a href="">2</a></li>
			<li><a href="">3</a></li>
			<li><a href="">&raquo;</a></li>
                    </ul>
                </div>
            </div>                                        
	</section>
	<%-------------------------------FINAL DE LOS PRODUCTOS DE APRIRE--------------------------------------------------%>
	
        
        <%-------------------------------PIE DE PÁGINA--------------------------------------------------%>
        
        <footer id="footer"><!--Footer-->
		<div class="footer-top">
			<div class="container">
				<div class="row">
					<div class="col-sm-2">
						<div class="companyinfo">
                                                    <h2>A<span>p</span>r<span>i</span>r<span>e</span></h2>
							<p>Abrígate en cualquier parte del mundo con Aprire</p>
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
							<h2>Servicios</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="">Ayuda Online</a></li>
								<li><a href="">Contactanos</a></li>
							</ul>
						</div>
					</div>
		
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>Políticas</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="">Terminos de Uso</a></li>
								<li><a href="">Política de Privacidad</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-2">
						<div class="single-widget">
							<h2>Acerca de Aprire</h2>
							<ul class="nav nav-pills nav-stacked">
								<li><a href="">Información de la Compañia</a></li>
								<li><a href="">Locación de Tienda</a></li>
								<li><a href="">Programas Afiliados</a></li>
								<li><a href="">Copyright</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-3 col-sm-offset-1">
						<div class="single-widget">
							<h2>Informate</h2>
							<form action="#" class="searchform">
								<input type="text" placeholder="Your email address" />
								<button type="submit" class="btn btn-default"><i class="fa fa-arrow-circle-o-right"></i></button>
								<p>Recibe las útimas noticias sobre <br />nuestra tienda online poniendo tu email aquí...</p>
							</form>
						</div>
					</div>
					
				</div>
			</div>
		</div>
		
		<div class="footer-bottom">
			<div class="container">
				<div class="row">
					<p class="pull-left">Copyright © 2018 Aprire. Derechos Reservados.</p>
					<p class="pull-right"><span><a target="_blank" href=""></a></span></p>
				</div>
			</div>
		</div>
		
	</footer>
        <%-------------------------------FINAL DEL PIE DE PAGINA--------------------------------------------------%>
    
        <script src="js/jquery.js"></script>
	<script src="js/price-range.js"></script>
        <!--<script src="js/jquery.scrollUp.min.js"></script>-->
	<script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.prettyPhoto.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>