  <%@ include file="header.jsp" %>

         	<div class="container">
    	<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div style="align:center">
								<h2>Login Form</h2>
							</div>
						</div>
						<hr>
					</div>
  
  
  <div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
							
    <form method="POST"  action="perform_login" id="login-form" role="form" style="display: block;">

<div class="form-group">
        <input name="userName" type="text" class="form-control" placeholder="User Name" tabindex="1"/>
              </div><br>
            
    
  
  <div class="form-group">
        <input name="password" type="password" class="form-control" placeholder="Password" tabindex="2"/>
              </div>
              
  
  
  
  <br>
    	<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
                        <input type="submit" value="Login" tabindex="4" class="form-control btn btn-login"/>
                  
                  </div>
      
      </div>
    </div>
    <br>
    <div class="form-group">
										<div class="row">
											<div class="col-lg-12">
												<div class="text-center">
													<a href="reg" tabindex="5" class="forgot-password">Create Account here</a>
												</div>
											</div>
										</div>
									</div>
  
  </form>
  
  
 </div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
   <%@ include file="footer.jsp" %>
  