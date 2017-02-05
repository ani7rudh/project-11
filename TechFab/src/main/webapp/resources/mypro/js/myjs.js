 <!-- 					autocomplete script	start		 -->

    	
     	$(document).ready(function() {

    		$('#w-input-search').autocomplete({
     			serviceUrl: 'http://localhost:8084/TechFab/getproducts',
     			paramName: "productName",
     			delimiter: ",",
     		   transformResult: function(response) {

     			return {
     			  //must convert json to javascript object before process
     			  suggestions: $.map($.parseJSON(response), function(item) {

     			      return { value: item.productName, data: item.productId };
     			   })

     			 };

     	            }

     		 });

     	  });
    	
    	
    	
     	 


<!-- autocomplete end -->


//form style start


$(function() {

    $('#login-form-link').click(function(e) {
		$("#login-form").delay(100).fadeIn(100);
 		$("#register-form").fadeOut(100);
		$('#register-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});
	$('#register-form-link').click(function(e) {
		$("#register-form").delay(100).fadeIn(100);
 		$("#login-form").fadeOut(100);
		$('#login-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});

});











//form style start



