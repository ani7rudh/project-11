  <%@ include file="header.jsp" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

                       <div ng-app="app" ng-controller="myController" >

        <section id="content">
        	<div id="breadcrumb-container">
        		<div class="container">
					<ul class="breadcrumb">
						<li><a href="/TechFab/">Home</a></li>
						<li class="active">Product</li>
					</ul>
        		</div>
        	</div>
        	<div class="container">
        		<div class="row">
        			<div class="col-md-12">
        				
        				<div class="row">
        				
        				<div class="col-md-6 col-sm-12 col-xs-12 product-viewer clearfix">

        					<div id="product-image-carousel-container">
        						<ul id="product-carousel" class="celastislide-list">
	        						<li class="active-slide"><a data-rel="prettyPhoto[product]" href="resources/images/{{productdata.productId}}-3.jpg" 
	        						data-image="resources/images/{{productdata.productId}}-3.jpg" data-zoom-image="resources/images/{{productdata.productId}}-3.jpg" class="product-gallery-item"
	        						><img src="resources/images/{{productdata.productId}}-3.jpg" alt="Phone photo 1"></a></li>
	        						
	        						<li class="active-slide"><a data-rel="prettyPhoto[product]" href="resources/images/{{productdata.productId}}-0.jpg" 
	        						data-image="resources/images/{{productdata.productId}}-0.jpg" data-zoom-image="resources/images/{{productdata.productId}}-0.jpg" class="product-gallery-item"
	        						><img src="resources/images/{{productdata.productId}}-0.jpg" alt="Phone photo 1"></a></li>
	        						
	        						<li class="active-slide"><a data-rel="prettyPhoto[product]" href="resources/images/{{productdata.productId}}-1.jpg" 
	        						data-image="resources/images/{{productdata.productId}}-1.jpg" data-zoom-image="resources/images/{{productdata.productId}}-1.jpg" class="product-gallery-item"
	        						><img src="resources/images/{{productdata.productId}}-1.jpg" alt="Phone photo 1"></a></li>
	        						
	        						<li class="active-slide"><a data-rel="prettyPhoto[product]" href="resources/images/{{productdata.productId}}-2.jpg" 
	        						data-image="resources/images/{{productdata.productId}}-2.jpg" data-zoom-image="resources/images/{{productdata.productId}}-2.jpg" class="product-gallery-item"
	        						><img src="resources/images/{{productdata.productId}}-2.jpg" alt="Phone photo 1"></a></li>
	        						

										

        					</ul><!-- End product-carousel -->
        					</div>

        					<div id="product-image-container">
        						<figure><img src="resources/images/{{productdata.productId}}-4.jpg" data-zoom-image="resources/images/{{productdata.productId}}-3.jpg" alt="Product Big image" id="product-image" data-big="resources/images/{{productdata.productId}}-4.jpg">
        							<figcaption class="item-price-container">
									
										<span class="item-price">{{productdata.productPrice}}</span>
									</figcaption>
        						</figure>
        						
        						
        					</div><!-- product-image-container -->        				 
        				</div><!-- End .col-md-6 -->

        				<div class="col-md-6 col-sm-12 col-xs-12 product">
                        <div class="lg-margin visible-sm visible-xs"></div><!-- Space -->
                        <!-- additinal json data -->
                        
        					<h1>Product Details</h1>
        					
        				<ul class="product-list">
        					<li><span>Product Name:</span>{{productdata.productName}}</li>
        					<li><span>product description:</span>{{productdata.productDescription}}</li>
        					<li><span>product quantity:</span>{{productdata.productQuantity}}</li>
        					<li><span>product price:</span>{{productdata.productPrice}}</li>
        					<li><span>product discount:</span>{{productdata.productDiscount}}</li>
        					<li><span>product category:</span>{{productdata.categoryName}}</li>
        					
        					
        					
        					
        					
                       
     
                       
                        
                         <script type="text/javascript">
    var app=angular.module('app',[]);
    app.controller("myController",function($scope){
   
    	$scope.productdata=${product};
    });
    
    </script>
   
                        
                        
                        
                        <!--end of additinal json data-->
   
        				</ul>
        				
                                             
                        
                        
                        
                        
                        
                        <br>
							<div class="product-add clearfix">
						  <form:form modelAttribute="cartItem" action="/TechFab/addtocart-${sessionScope.productId}?userId=1">
							
								<div class="custom-quantity-input">
							
								        <form:input type="number" path="productQuantity" name="Quantity" value="1"/>
								
								</div>
								
								<div class="product-extra clearfix">
								<div class="product-extra-box-container clearfix">
								<input type="submit" value="addtocart" class="btn btn-custom-2"/>
					            <a class="btn btn-custom-2" href="buynow-{{productdata.productId}}?userId=1">BUY NOW</a>
			               <a class="btn btn-custom-2" href="wishlist-{{productdata.productId}}?userId=1">WishList</a>
			               </div></div>
								</form:form>
							</div><!-- .product-add -->
        					<div class="md-margin"></div><!-- Space -->
        					<div class="product-extra clearfix">
								
								<div class="md-margin visible-xs"></div>
								
								
								<script type="text/javascript">
											var addthis_config = {
												data_track_addressbar : !0
											};
										</script>
										<script type="text/javascript"
											src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-52b2197865ea0183"></script>	<!-- AddThis Button END -->
								</div><!-- End .share-button-group -->
        					</div>
        				</div><!-- End .col-md-6 -->
        					
        					
        				</div><!-- End .row -->
        				
        				<div class="lg-margin2x"></div><!-- End .space -->
        						
        						
        						      			
        				
        			</div><!-- End .col-md-12 -->
        		</div><!-- End .row -->
			</div><!-- End .container -->
       
        </section><!-- End #content -->
        
        
        
        	<script>
		$(function() {

			var carouselContainer = $('#product-carousel'),
                productImg =  $('#product-image');

			carouselContainer.elastislide({
				orientation : 'vertical',
				minItems : 4
					
			});

            productImg.mlens({
                imgSrc: $("#product-image").attr("data-big"),         
                lensShape: "square",
                lensSize: 150,
                borderSize: 4,
                borderColor: "#999",
                borderRadius: 0
            });
			
			
			var oldImg = productImg.attr('src');
			carouselContainer.find('li').on('mouseover', function() {
				
				var newImg = $(this).find('a').attr('href');
				
                productImg.attr({'src': newImg, 'data-big': newImg}).trigger('imagechanged');
                
			});

            // triggered with custom event
            productImg.on('imagechanged', function() {
                productImg.mlens("update", 0 ,{
                    imgSrc: productImg.attr("data-big"),
                    lensShape: "square",
                    lensSize: 150,
                    borderSize: 4,
                    borderColor: "#999"
                });
            });

		});
	</script>
        
       
    <%@ include file="footer.jsp" %>
   