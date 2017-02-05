  <%@ include file="header.jsp" %>
<div ng-app="app" ng-controller="myController" >

    <div class="container">
    	<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div style="align:center">
								<h2>Add Supplier</h2>
							</div>
						</div>
						<hr>
					</div>
  
  
  <div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
    
<form:form method="POST" modelAttribute="supplier" action="addSupplier" id="login-form" role="form" style="display: block;">
  
               <div class="form-group">
        <form:input path="supplierName" placeholder="Supplier Name" tabindex="1" class="form-control"/>
               <form:errors path="supplierName" class="form-control" cssClass="error"></form:errors>
               </div><br>
    
        <div class="form-group">
           <form:input path="supplierAddress" placeholder="Supplier Address" tabindex="1" class="form-control"/>
         <form:errors path="supplierAddress" class="form-control" cssClass="error"></form:errors>
         </div><br>
   
         
         <div class="form-group">
          <form:input path="supplierContact"  placeholder="Supplier contact" tabindex="1" class="form-control"/>
         <form:errors path="supplierContact" class="form-control" cssClass="error"></form:errors>
</div><br>
    
         
 <div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
        
                  <input type="submit" value="addSupplier" tabindex="4" class="form-control btn btn-login"/>
      </div>
      </div>
    </div>
         
</form:form></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
        




<div class="alert alert-info">
    <div>Search Supplier: {{ searchSupplier}}</div>
    <input type="text" placeholder="Search the supplier" ng-model="searchSupplier">
    
  </div>

<div class="table-responsive">
    <table class="table">  
    <caption><h2>Supplier List</h2></caption>
    <thead class="thead-default">
     
        <th>Supplier Id</th>  
        <th>Supplier Name</th>  
        <th>Supplier Address</th> 
        <th>Supplier Contact</th> 
         
        <th>Edit supplier</th>  
        <th>Delete supplier</th>  
    </thead>    
         
  <tbody>
      <tr ng-repeat="slist in jsonData | orderBy:sortType:sortReverse | filter:searchSupplier">  
            <td>{{slist.supplierId}}</td>  
            <td>{{slist.supplierName}}</td>  
            <td>{{slist.supplierAddress}}</td>  
             <td>{{slist.supplierContact}}</td>  
            
            <td><a href="editSupplier-{{slist.supplierId}}" class="btn btn-custom-3 btn-sm">Edit</a></td>  
           <td><a href="deleteSupplier-{{slist.supplierId}}" class="btn btn-custom-3 btn-sm">Delete</a></td> 
</tr>  
</tbody>
    </table>
    </div> 
   <script type="text/javascript">
    var app=angular.module('app',[]);
    app.controller("myController",function($scope){
    	$scope.sortType     = 'supplierName';
  	  $scope.sortReverse  = false; 
  	  $scope.searchSupplier   = ''; 
  	
    	$scope.jsonData=${supplierList};
    });
    
    
    
    </script>
   
   
    
   </div>
   <%@ include file="footer.jsp" %>
  