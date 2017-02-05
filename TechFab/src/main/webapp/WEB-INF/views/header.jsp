<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    isELIgnored="false"
%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
    <%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<!--[if IE 8]> <html class="ie8"> <![endif]-->
<!--[if IE 9]> <html class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html> <!--<![endif]-->
    <head>
        <meta charset="utf-8">
        <title>TechFab</title>
       <link rel="shortcut icon" href="resources/mypro/images/favicon.ico" />
        <link href='resources/mypro/css/googlefonts.css' rel='stylesheet' id="googlefont">
                <link href='resources/mypro/css/googlefonts1.css' rel='stylesheet' type='text/css'>
                <link href='resources/mypro/css/googlefonts2.css' rel='stylesheet' type='text/css'>
                <link href='resources/mypro/css/googlefonts3.css' rel='stylesheet' type='text/css'>
        
        <link rel="stylesheet" href="resources/mypro/css/bootstrap.min.css">
        <link rel="stylesheet" href="resources/mypro/css/font-awesome.min.css">
        <link rel="stylesheet" href="resources/mypro/css/prettyPhoto.css">
        <link rel="stylesheet" href="resources/mypro/css/colpick.css">
        <link rel="stylesheet" href="resources/mypro/css/sequence-slider.css">
        <link rel="stylesheet" href="resources/mypro/css/owl.carousel.css">
        <link rel="stylesheet" href="resources/mypro/css/style.css">
        <link rel="stylesheet" href="resources/mypro/css/responsive.css">
                                         <link rel="stylesheet" href="resources/mypro/css/mycss.css">
                
        <script src="resources/js/angular.min.js"></script>
                <script src="resources/mypro/js/jquery.min.js"></script>
        
         <script src="resources/mypro/js/jquery.autocomplete.min.js"></script>
        
                 <script src="resources/mypro/js/myjs.js"></script>
      <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyD45Nu6JYgh1oKG5G9ut7Nr4QW48gx-6ug&amp;sensor=false"></script>
        
        
        <!-- Favicon and Apple Icons -->
        <link rel="icon" type="image/png" href="resources/mypro/images/icons/icon.html">
        <link rel="apple-touch-icon" sizes="57x57" href="resources/mypro/images/icons/apple-icon-57x57.html">
        <link rel="apple-touch-icon" sizes="72x72" href="resources/mypro/images/icons/apple-icon-72x72.html">
        
        <!--- jQuery -->
        <script>window.jQuery || document.write('<script src="resources/mypro/js/jquery-1.11.0.min.js"><\/script>')
        
               
        
        </script>
		<!--[if lt IE 9]>
			<script src="js/html5shiv.js"></script>
			<script src="js/respond.min.js"></script>
		<![endif]-->
	    
		<style id="custom-style">
		.error{color:red;}
		
 		.autocomplete-suggestions { border: 1px solid #999; background: #FFF; overflow: auto; } 
 .autocomplete-suggestion { padding: 5px 5px; white-space: nowrap; overflow: hidden; font-size:22px} 
 .autocomplete-selected { background: #F0F0F0; } 
 .autocomplete-suggestions strong { font-weight: bold; color: #3399FF; } 
				
								
				
		</style>
    </head>
    <body>

    
    <div id="wrapper">
    	<header id="header">
    		<div id="header-top">
    			<div class="container">
    				<div class="row">
                        <div class="col-md-12">
        					<div class="header-top-left">
        						<ul id="top-links" class="clearfix">
        							<li><a href="#" title="My Wishlist"><span class="top-icon top-icon-pencil"></span><span class="hide-for-xs">My Wishlist</span></a></li>
        							<li><a href="#" title="My Account"><span class="top-icon top-icon-user"></span><span class="hide-for-xs">My Account</span></a></li>
        							<li><a href="#" title="My Cart"><span class="top-icon top-icon-cart"></span><span class="hide-for-xs">My Cart</span></a></li>
        							<li><a href="#" title="Checkout"><i class="icon-shopping-cart icon-large"></i>Checkout</a></li>
  			</ul>
        					</div><!-- End .header-top-left -->
        					<div class="header-top-right">
        						
        						<div class="header-top-dropdowns pull-right">
    								<div class="btn-group dropdown-money">
    									<button type="button" class="btn btn-custom dropdown-toggle" data-toggle="dropdown">
    										<span class="hide-for-xs">US Dollar</span><span class="hide-for-lg">$</span>
    									</button>
    									<ul class="dropdown-menu pull-right" role="menu">
    										<li><a href="#"><span class="hide-for-xs">Euro</span><span class="hide-for-lg">&euro;</span></a></li>
    										<li><a href="#"><span class="hide-for-xs">Pound</span><span class="hide-for-lg">&pound;</span></a></li>
    									</ul>
    								</div><!-- End .btn-group -->
    								<div class="btn-group dropdown-language">
    									<button type="button" class="btn btn-custom dropdown-toggle" data-toggle="dropdown">
    										<span class="hide-for-xs">Admin page</span>
    									</button>
    									<ul class="dropdown-menu pull-right" role="menu">
    										<li><a href="category"><span class="hide-for-xs">Category</span></a></li>
    									<li><a href="subcategory"><span class="hide-for-xs">SubCategory</span></a></li>
    										<li><a href="supplier"><span class="hide-for-xs">Supplier</span></a></li>
    										<li><a href="brand"><span class="hide-for-xs">Brand</span></a></li>
    										<li><a href="product"><span class="hide-for-xs">Product</span></a></li>
    											</ul>
    								</div><!-- End .btn-group -->
    							</div><!-- End .header-top-dropdowns -->
    							
    							<div class="header-text-container pull-right">
    								<p class="header-text"></p>
    								<p class="header-link">
    								<security:authorize access="isAuthenticated()">welcome
    								<security:authentication property="principal.Username"/>
                                        </security:authorize>
                                <c:if test="${empty pageContext.request.userPrincipal}">
                                  <a href="login">Login</a>           </c:if>
                               <c:if test="${!empty pageContext.request.userPrincipal}">
                                      <a href="/TechFab/logout">Logout</a>
                               </c:if>

    								
        							&nbsp;or&nbsp;<a href="reg">create an account</a></p>
        							
        							
        							
        							
        							
    							</div><!-- End .pull-right -->
    						</div><!-- End .header-top-right -->
    					</div><!-- End .col-md-12 -->
    				</div><!-- End .row -->
    			</div><!-- End .container -->
    		</div><!-- End #header-top -->
    		
    		<div id="inner-header">
    			<div class="container">
    				<div class="row">
						<div class="col-md-5 col-sm-5 col-xs-12 logo-container">
							<h1 class="logo clearfix">
								<span></span>
								<a href="/TechFab/" title="TechFab"><img src="resources/mypro/images/mylogo1.png" alt="TechFab" width="70" height="50">echfab</a>
							</h1>
						</div><!-- End .col-md-5 -->
    					<div class="col-md-7 col-sm-7 col-xs-12 header-inner-right">
    							
    							<div class="header-box contact-infos pull-right">
    							
    								<ul>
    									<li><span class="header-box-icon header-box-icon-skype"></span>TechFab_support</li>
    									<li><span class="header-box-icon header-box-icon-email"></span><a href="#">techfab@gmail.com</a></li>
    								</ul>
    							</div><!-- End .contact-infos -->
    							
    							<div class="header-box contact-phones pull-right clearfix">
    								<span class="header-box-icon header-box-icon-earphones"></span>
    								<ul class="pull-left">
    									<li>+(022) 158 14 25 78</li>
    									<li>+(022) 851 21 48 15</li>
    								</ul>
    							</div><!-- End .contact-phones -->
    							
    					</div><!-- End .col-md-7 -->
    				</div><!-- End .row -->
    			</div><!-- End .container -->
    			
    			<div id="main-nav-container">
    				<div class="container">
    					<div class="row">
    						<div class="col-md-12 clearfix">
    							
    							<nav id="main-nav">
    								<div id="responsive-nav">
    									<div id="responsive-nav-button">
											Menu <span id="responsive-nav-button-icon"></span>
										</div><!-- responsive-nav-button -->
    								</div>
    								<ul class="menu clearfix">
    									<li>
											<a class="active" href="/TechFab/">HOME</a>
																					</li>
										<li class="mega-menu-container"><a href="#">SHOP</a>
										
											<div class="mega-menu clearfix">
													
													
													<div class="col-5">
														<a href="productdisplay" class="mega-menu-title">Category</a><!-- End .mega-menu-title -->
														<ul class="mega-menu-list clearfix">
														 <c:forEach items="${cList}" var="clist">
													<li><a href="productdisplay">${clist.categoryName}</a></li>
													
													</c:forEach>
													</ul>
												
													</div><!-- End .col-5 -->
												
													
													
													
													
													
													
															
															
				
												
													<div class="col-5">
														<a href="productdisplay" class="mega-menu-title">SubCategory</a><!-- End .mega-menu-title -->
														<ul class="mega-menu-list clearfix">
														 <c:forEach items="${scList}" var="sclist">
													<li><a href="productdisplay">${sclist.subCategoryName}</a></li>
													
													</c:forEach>
													</ul>
												
													</div><!-- End .col-5 -->
														</div><!-- End .mega-menu -->
										</li>
										
										<li>
											<a href="#">PAGES</a>
											<ul>
												<li><a href="product.html">Product</a></li>
												<li><a href="cart.html">Cart</a></li>
												<li><a href="category.html">Category</a>
													<ul>
														<li><a href="category-list.html">Category list</a></li>
														<li><a href="category.html">Category Banner 1</a></li>
														<li><a href="category-banner-2.html">Category Banner 2</a></li>
														<li><a href="category-banner-3.html">Category Banner 3</a></li>
													</ul>
												</li>
                                                <li><a href="checkout.html">Checkout</a></li>
                                                <li><a href="aboutus.html">About Us</a></li>
												<li><a href="register-account.html">Register Account</a></li>
												<li><a href="compare-products.html">Compare Products</a></li>
                                                <li><a href="404.html">404 Page</a></li>
											</ul>
										</li>
										<li><a href="#">Portfolio</a>
											<ul>
												<li><a href="portfolio-2.html">Two Columns</a></li>
												<li><a href="portfolio-3.html">Three Columns</a></li>
												<li><a href="portfolio-4.html">Four Columns</a></li>
												<li><a href="single-portfolio.html">Portfolio Post</a></li>
											</ul>
										</li>
										<li><a href="blog.html">Blog</a>
											<ul>
												<li><a href="single.html">Blog Post</a></li>
											</ul>
										</li>
										<li><a href="contactus">Contact Us</a></li>
									</ul>
    								
    							</nav>
    							
    							<div id="quick-access">
    								<div class="dropdown-cart-menu-container pull-right">
    								<div class="btn-group dropdown-cart">
									<button type="button" class="btn btn-custom dropdown-toggle" data-toggle="dropdown">
										<span class="cart-menu-icon"></span>
										0 item(s) <span class="drop-price">- $0.00</span>
									</button>
									
										<div class="dropdown-menu dropdown-cart-menu pull-right clearfix" role="menu">
											<p class="dropdown-cart-description">Recently added item(s).</p>
											<ul class="dropdown-cart-product-list">
												<li class="item clearfix">
												<a href="#" title="Delete item" class="delete-item"><i class="fa fa-times"></i></a>
												<a href="#" title="Edit item" class="edit-item"><i class="fa fa-pencil"></i></a>
													<figure>
														<a href="product.html"><img src="resources/mypro/images/thumbnails/phone4.jpg" alt="phone 4"></a>
													</figure>
													<div class="dropdown-cart-details">
														<p class="item-name">
														<a href="product.html">Cam Optia AF Webcam </a>
														</p>
														<p>
															1x
															<span class="item-price">$499</span>
														</p>
													</div><!-- End .dropdown-cart-details -->
												</li>
												<li class="item clearfix">
												<a href="#" title="Delete item" class="delete-item"><i class="fa fa-times"></i></a>
												<a href="#" title="Edit item" class="edit-item"><i class="fa fa-pencil"></i></a>
													<figure>
														<a href="product.html"><img src="resources/mypro/images/thumbnails/phone2.jpg" alt="phone 2"></a>
													</figure>
													<div class="dropdown-cart-details">
														<p class="item-name">
															<a href="product.html">Iphone Case Cover Original</a>
														</p>
														<p>
															1x
															<span class="item-price">$499<span class="sub-price">.99</span></span>
														</p>
													</div><!-- End .dropdown-cart-details -->
												</li>
											</ul>
											
											<ul class="dropdown-cart-total">
												<li><span class="dropdown-cart-total-title">Shipping:</span>$7</li>
												<li><span class="dropdown-cart-total-title">Total:</span>$1005<span class="sub-price">.99</span></li>
											</ul><!-- .dropdown-cart-total -->
											<div class="dropdown-cart-action">
												<p><a href="cart.html" class="btn btn-custom-2 btn-block">Cart</a></p>
												<p><a href="checkout.html" class="btn btn-custom btn-block">Checkout</a></p>
											</div><!-- End .dropdown-cart-action -->
											
										</div><!-- End .dropdown-cart -->
										</div><!-- End .btn-group -->
									</div><!-- End .dropdown-cart-menu-container -->
									
									
    							<form class="form-inline quick-search-form" role="form" action="getproducts">
									<div class="form-group">
										<input type="text" class="form-control"  id="w-input-search" placeholder="Search here">
									</div><!-- End .form-inline -->
									<button type="submit" id="quick-search" id="button-id" class="btn btn-custom"></button>
								</form>
    							</div><!-- End #quick-access -->
    						</div><!-- End .col-md-12 -->
    				</div><!-- End .row -->
    			</div><!-- End .container -->
    				
    			</div><!-- End #nav -->
    		</div><!-- End #inner-header -->
    	</header><!-- End #header -->
    	
    	
    	
    	
    	