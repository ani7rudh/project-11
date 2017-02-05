<%@ include file="header.jsp" %>
   
  
 <div class="container">
    	<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div style="align:center">
								<h2>Registration Form</h2>
							</div>
						</div>
						<hr>
					</div>
  
  
  <div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
 
    <form:form method="POST" modelAttribute="userDetails" id="login-form" role="form" style="display: block;">
  
  <div class="form-group">
        <form:input path="userName" class="form-control" placeholder="User Name" tabindex="1"/>
        <form:errors path="userName"  class="form-control" cssClass="error"></form:errors>
        
              </div><br>
             
    
  <div class="form-group">
        <form:input path="password" type="password" class="form-control" placeholder="Password" tabindex="1"/>
        <form:errors path="password"  class="form-control" cssClass="error"></form:errors>
        
              </div><br>
              
  
  <div class="form-group">
        <form:input path="fname" class="form-control" placeholder="first Name" tabindex="1"/>
        <form:errors path="fname"  class="form-control" cssClass="error"></form:errors>
        
              </div><br>
              
  
  <div class="form-group">
        <form:input path="lname" class="form-control" placeholder="last Name" tabindex="1"/>
        <form:errors path="lname"  class="form-control" cssClass="error"></form:errors>
        
              </div><br>
              
  
  <div class="form-group">
        <form:input path="contact" class="form-control" placeholder="contact" tabindex="1"/>
        <form:errors path="contact"  class="form-control" cssClass="error"></form:errors>
        
              </div><br>
              
  
  <div class="form-group">
        <form:input path="email" type="email" class="form-control" placeholder="email" tabindex="1"/>
        <form:errors path="email"  class="form-control" cssClass="error"></form:errors>
        
              </div>
             <br>
  
  
  <div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
        
                  <input type="submit" value="submit" tabindex="4" class="form-control btn btn-login"  name="_eventId_submit"/>
      
      </div>
    </div></div>
    
    </form:form>
    
 </div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
  
 <%@ include file="footer.jsp" %>
