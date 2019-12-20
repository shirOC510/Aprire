<%@page import="controles.ControladorProducto"%>
<%@page import="clases.Producto"%>
<%@page import="clases.Articulo"%>
<%@page import="java.util.ArrayList"%>
<%
    HttpSession sesion = request.getSession(true);
    ArrayList<Articulo> articulos = sesion.getAttribute("carrito") == null ? null : (ArrayList) sesion.getAttribute("carrito");
%>
<%@page import="java.util.*" session="true" %>
<%!
public String noLoggedin(){
	return "<strong>Esta pagina es solo para usuarios registrados.</strong><br><br><a href='login.html'>Registrarme</a>";
}
%>
<%
if(session.getAttribute("loggedin") == null)
{
    out.print("<script>alert('Para ver deatalles del producto Inicie Sesion'); window.location.replace('login.html');</script>");
    out.print(noLoggedin());
    return;
}	
String viewPermision = (String)session.getAttribute("loggedin");
if(!viewPermision.equals("true"))
{
	noLoggedin();
	return;
}
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Carrito | Aprire</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
	<link href="css/main.css" rel="stylesheet">
	<link href="css/responsive.css" rel="stylesheet">
        <link rel="icon" href="images/Logo/aprire4.ico">
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
								<li><a href=""><i class="fa fa-phone"></i> +51 973267469</a></li>
                                                                <li><a href=""><i class="fa fa-phone"></i> +51 923227488</a></li>
                                                                <li><a href=""><i class="fa fa-envelope"></i> shirleyOx@gmail.com</a>
								<li><a href=""><i class="fa fa-envelope"></i> spitfire9618@gmail.com</a></li>
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
		</div><!--/header_top-->
		
		<div class="header-middle"><!--header-middle-->
			<div class="container">
				<div class="row">
					<div class="col-sm-4">
						<div class="logo pull-left">
							<a href="shop.jsp"><img src="images/Logo/AprireLogo3.jpg" alt="" width="165" height="75" /></a>
						</div>
						<div class="btn-group pull-right">
							<div class="btn-group">
								<button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
									Perú
									<span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li><a href="">Korea</a></li>
									<li><a href="">USA</a></li>
								</ul>
							</div>
							
							<div class="btn-group">
								<button type="button" class="btn btn-default dropdown-toggle usa" data-toggle="dropdown">
									Soles
									<span class="caret"></span>
								</button>
								<ul class="dropdown-menu">
									<li><a href="">Dolares</a></li>
									<li><a href="">Yenes</a></li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-sm-8">
						<div class="shop-menu pull-right">
							<ul class="nav navbar-nav">
								<li><a href=""><i class="fa fa-user"></i> Cuenta</a></li>
								<li><a href=""><i class="fa fa-star"></i> Wishlist</a></li>
								<li><a href="checkout.jsp"><i class="fa fa-crosshairs"></i> Checkout</a></li>
								<li><a href="cart.jsp" class="active"><i class="fa fa-shopping-cart"></i> Carrito</a></li>
								<%--<li><a href="login.html"><i class="fa fa-lock"></i> Login</a></li>--%>
                                                                <li><a href="logout.jsp"><i class="fa fa-unlock"></i> Logout</a></li>
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
								<span class="sr-only">Barra de Navegación</span>
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
                                        <li><a href="shop.html">Productos</a></li>
										<li><a href="product-details.jsp">Detalles del Producto</a></li> 
										<li><a href="checkout.jsp">Checkout</a></li> 
										<li><a href="cart.jsp" class="active">Carrito</a></li> 
										<li><a href="login.html">Login</a></li>
                                                                                <li><a href="logout.jsp">Logout</a></li>
                                    </ul>
                                </li> 
								<li class="dropdown"><a href="#">Blog<i class="fa fa-angle-down"></i></a>
                                    <ul role="menu" class="sub-menu">
                                        <!--<li><a href="blog.html">Blog List</a></li>-->
                                        <!--<li><a href="blog-single.html">Blog Single</a></li>-->
                                    </ul>
                                </li> 
								<!--<li><a href="404.html">404</a></li>-->
								<li><a href="contact-us.html">Contacto</a></li>
							</ul>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="search_box pull-right">
							<input type="text" placeholder="Search"/>
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
				  <li><a href="#">Aprire</a></li>
				  <li class="active">Carrito Compra</li>
				</ol>
			</div>
			<div class="table-responsive cart_info">
				<table class="table table-condensed">
					<thead>
						<tr class="cart_menu">
							<td class="image">Item</td>
							<td class="description"></td>
							<td class="price">Precio</td>
							<td class="quantity">Cantidad</td>
							<td class="total">Total</td>
							<td></td>
						</tr>
					</thead>
					<tbody>
                                                
                                                <%
                                                    ControladorProducto cp = new ControladorProducto();
                                                    double total = 0;
                                                    double igv = 0.18;
                                                    double subtotal = 0;
       
                                                    for(Articulo a : articulos){
                                                        Producto producto = cp.getProducto(a.getIdProducto());
                                                        subtotal += a.getCantidad() * producto.getPrecio();
                                                %>
                                                
						<tr>
							<td class="cart_product">
								<a href=""><img src="<%= producto.getImg()%>" width="200" height="200" alt=""></a>
							</td>
							<td class="cart_description">
								<h4><a href=""><%= producto.getNombre()%></a></h4>
								<p>Web ID:<%= producto.getId()%></p>
							</td>
							<td class="cart_price">
								<p>S/. <%= producto.getPrecio()%></p>
							</td>
							<td class="cart_quantity">
								<div class="cart_quantity_button">
									<a class="cart_quantity_up" href=""> + </a>
									<input class="cart_quantity_input" type="text" name="quantity" value="<%= a.getCantidad()%>" autocomplete="off" size="2">
									<a class="cart_quantity_down" href=""> - </a>
								</div>
							</td>
							<td class="cart_total">
								<p class="cart_total_price">S/.<%= Math.round(producto.getPrecio()*a.getCantidad()*100.0) / 100.0%></p>
							</td>
							<td class="cart_delete">
                                                            <span id="idarticulo" style="display:none;"><%= producto.getId()%></span>
								<a class="cart_quantity_delete" href="" id="deleteitem"><i class="fa fa-times"></i></a>
							</td>
						</tr>
                                                <%}%>
						
					</tbody>
				</table>
                        </div>
                                                
                            <a href="javascript:window.history.go(-2)" class="btn btn-default check_out"><strong>Seguir Comprando</strong></a>
                            <br><br>
		</div>
	</section> <!--/#cart_items-->

    	<section id="do_action">
		<div class="container">
			<div class="heading">
				<h3>¿Que desearías hacer ahora?</h3>
				<p>Escoje si tu tienes algun tipo de descuento o puntos para poder reducir el costo de envío.</p>
			</div>
			<div class="row">
				<div class="col-sm-6">
					<div class="chose_area">
						<ul class="user_option">
							<li>
								<input type="checkbox">
								<label>Usar Código de Cupon</label>
							</li>
							<li>
								<input type="checkbox">
								<label>Usar un Codigode gif</label>
							</li>
							<li>
								<input type="checkbox">
								<label>Estimar el envío y pagos extras</label>
							</li>
						</ul>
						<ul class="user_info">
							<li class="single_field">
								<label>País</label>
								<select>
									<option>Estados Unidos</option>
									<option>Bulgaria</option>
									<option>Inglaterra</option>
									<option>India</option>
									<option>Korea</option>
									<option>Ucrania</option>
									<option>Japón</option>
									<option>Dubai</option>
								</select>
								
							</li>
							<li class="single_field">
								<label>Region / Estado:</label>
								<select>
									<option>Seleccione</option>
									<option>Dhaka</option>
									<option>Londres</option>
									<option>Dillih</option>
									<option>Lahore</option>
									<option>Alaska</option>
									<option>Tokio</option>
									<option>Dubai</option>
								</select>
							
							</li>
							<li class="single_field zip-field">
								<label>Zip Code:</label>
								<input type="text">
							</li>
						</ul>
						<a class="btn btn-default update" href="">Obtener </a>
						<a class="btn btn-default check_out" href="">Continuar</a>
					</div>
				</div>
				<div class="col-sm-6">
					<div class="total_area">
						<ul>
							<li>Sub Total <span>S/.<%=Math.round(subtotal*100.0)/100.0%></span></li>
							<li>IGV <span>S/.<%=igv*subtotal%></span></li>
							<li>Shipping Cost <span>Free</span></li>
							<li>Total <span>S/.<%= ((igv*subtotal)+subtotal) %></span></li>
						</ul>
							<a class="btn btn-default update" href="">Actualizar</a>
							<a class="btn btn-default check_out" href="">Verificar</a>
					</div>
				</div>
			</div>
		</div>
	</section>
        
    <script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.scrollUp.min.js"></script>
    <script src="js/jquery.prettyPhoto.js"></script>
    <script src="js/main.js"></script>
    <script src="js/carrito.js"></script>
</body>
</html>