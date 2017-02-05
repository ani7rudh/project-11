<%@ include file="header.jsp" %>
   
  <div class="container">
    	<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div style="align:center">
								<h2>Confirm Registration Details</h2>
							</div>
						</div>
						<hr>
					</div>
  
  
  <div class="panel-body">
						<div class="row">
							<div class="col-lg-12">

         	  
         	   <form:form method="POST" modelAttribute="userDetails" id="login-form" role="form" style="display: block;">
  
  
  
          <div class="form-group">
     <h4>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; User Name &nbsp;&nbsp;: &nbsp;&nbsp; ${userDetails.userName}</h4>
        </div>
                    
    
  
                 <div class="form-group">
      <h4>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Password&nbsp;&nbsp;: &nbsp;&nbsp;${userDetails.password}</h4>
        </div>
                    
  
  
                  <div class="form-group">
     <h4>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;  First Name &nbsp;&nbsp;: &nbsp;&nbsp;${userDetails.fname}</h4>
                   </div>
  
  
                  <div class="form-group">
     <h4>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Last Name&nbsp;&nbsp; : &nbsp;&nbsp; ${userDetails.lname}</h4>
        </div>
                    
  
  
                 <div class="form-group">
        
     <h4>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Contact &nbsp;&nbsp;:&nbsp;&nbsp; ${userDetails.contact}</h4>
        </div>
                  
  
  
                <div class="form-group">
      <h4>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; Email &nbsp;&nbsp;: &nbsp;&nbsp;${userDetails.email}</h4>
        </div>
                   
  
  
  
  
  
   
  
  <br>
   <div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
             <input name="_eventId_edit" type="submit" value="Edit" class="btn btn-primary"/> 
      
                  <input type="submit" value="submit" class="btn btn-primary"  name="_eventId_submit"/>
      
      </div></div>
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
         	  