<%@ include file="header.jsp" %>
<div class="container">
    	<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div style="align:center">
								<h2>Your Billing Address</h2>
							</div>
						</div>
						<hr>
					</div>
  
  
  <div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
  
     <form:form method="POST" modelAttribute="billingAddress" id="login-form" role="form" style="display: block;">
 
  
          <div class="form-group">
       <h4>Street Address          :${billingAddress.streetAddress}</h4>
        </div>
                    
    
  
                  <div class="form-group">
     <h4>  FlatNo          :${billingAddress.flatNo}</h4>
        </div>
                   
  
  
                 <div class="form-group">
         <h4>    City          :${billingAddress.city}</h4>
        
                   </div>
  
  
                  <div class="form-group">
            <h4> State          :${billingAddress.state}</h4>
        
        </div>
                    
  
  
                  <div class="form-group">
        
           <h4>    PostalCode          :${billingAddress.postalCode}</h4>
        
        </div>
                   
  
  <br>
                  
      <div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
        
        <input name="_eventId_edit" type="submit" value="Edit" class="btn btn-primary"/> 
      
                  <input type="submit" value="submit" class="btn btn-primary"  name="_eventId_submit"/>
      </div></div></div>
      
    
    
    
    </form:form></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
    
 
    
  
  
  
  <br><br>
  <%@ include file="footer.jsp" %>
  
  