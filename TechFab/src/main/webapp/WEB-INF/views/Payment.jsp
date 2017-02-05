  <%@ include file="header.jsp" %>
<div class="container">
    	<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
						<div style="align:center">
								<h2>Confirm Purchase</h2>
							</div>
							
						</div>
					
					</div>
  
  
  <div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
   




                <div class="creditCardForm">
            
            <div class="payment">
                 <form:form method="POST" modelAttribute="cartItem" id="login-form" role="form" style="display: block;">
                
                    <div class="form-group owner">
                        <label for="owner">Owner</label>
                        <input type="text" class="form-control" id="owner">
                    </div>
                    <div class="form-group CVV">
                        <label for="cvv">CVV</label>
                        <input type="text" class="form-control" id="cvv">
                    </div>
                    <div class="form-group" id="card-number-field">
                        <label for="cardNumber">Card Number</label>
                        <input type="text" class="form-control" id="cardNumber">
                    </div>
                    <div class="form-group" id="expiration-date">
                        <label>Expiration Date:</label>
                        <select>
                            <option value="01">January</option>
                            <option value="02">February </option>
                            <option value="03">March</option>
                            <option value="04">April</option>
                            <option value="05">May</option>
                            <option value="06">June</option>
                            <option value="07">July</option>
                            <option value="08">August</option>
                            <option value="09">September</option>
                            <option value="10">October</option>
                            <option value="11">November</option>
                            <option value="12">December</option>
                        </select>
                        <select>
                            <option value="16"> 2016</option>
                            <option value="17"> 2017</option>
                            <option value="18"> 2018</option>
                            <option value="19"> 2019</option>
                            <option value="20"> 2020</option>
                            <option value="21"> 2021</option>
                        </select>
                    </div><br>
                    <div class="form-group" id="credit_cards">
                        <img src="resources/mypro/images/visa.jpg" id="visa">
                        <img src="resources/mypro/images/mastercard.jpg" id="mastercard">
                        <img src="resources/mypro/images/amex.jpg" id="amex">
                    </div><br>
                    <div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
    
          <input type="submit" value="payment" name="_eventId_submit" tabindex="4" class="form-control btn btn-login"/>
                    </div></div></div>
                </form:form>
            </div>
        </div>
        </div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
        
        <script src="resources/mypro/js/jquery.payform.min.js" charset="utf-8"></script>
    <script src="resources/mypro/js/script.js"></script>
    


  <%@ include file="footer.jsp" %>
