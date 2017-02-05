<%@ include file="header.jsp" %>
   
  
  <div class="container">
    	<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div style="align:center">
								<h2>Shipping Address</h2>
							</div>
						</div>
						<hr>
					</div>
  
  
  <div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
       
  
    <form:form method="POST" modelAttribute="shippingAddress" id="login-form" role="form" style="display: block;">

<div class="form-group">
        <form:input path="streetAddress"  class="form-control" placeholder="Street Address"/>
                <form:errors path="streetAddress"  class="form-control" cssClass="errors"></form:errors>
        
              </div><br>
              
           
              <div class="form-group">
        <form:input path="flatNo"  class="form-control" placeholder="Flatno"/>
                        <form:errors path="flatNo"  class="form-control" cssClass="errors"></form:errors>
        
              </div>
              <br>
            
              
              <div class="form-group">
        <form:input path="city"  class="form-control" placeholder="city"/>
                                <form:errors path="city"  class="form-control" cssClass="errors"></form:errors>
        
              </div>
             <br>
             
              <div class="form-group">
               <form:input path="state"  class="form-control" placeholder="State"/>
                                        <form:errors path="state"  class="form-control" cssClass="errors"></form:errors>
        
              
              </div>
              <br>
              
              
              <div class="form-group">
                     <form:input path="postalCode"  class="form-control" placeholder="postal code"/>
                                                <form:errors path="postalCode"  class="form-control" cssClass="errors"></form:errors>
        
              </div>
              <br>
    
    <div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
    
                  <input type="submit" value="submit" tabindex="4" class="form-control btn btn-login"  name="_eventId_submit"/>
      </div>
      </div>
    </div>
    
    </form:form>
    
 </div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
  
 <%@ include file="footer.jsp" %>
    