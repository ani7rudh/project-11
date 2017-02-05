  <%@ include file="header.jsp" %>
<div ng-app="app" ng-controller="myController" >
<div class="container">
    	<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div style="align:center">
								<h2>Add Brand</h2>
							</div>
						</div>
						<hr>
					</div>
  
  
  <div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
	
<form:form method="POST" modelAttribute="brand" action="addBrand" id="login-form" role="form" style="display: block;">

                   									<div class="form-group">
        
        <form:input path="brandName"  placeholder="Brand Name" tabindex="1" class="form-control"/>
                 <form:errors path="brandName" class="form-control" cssClass="error"></form:errors>
        </div><br>
    
    
        <div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
        
                  <input type="submit" value="addBrand" tabindex="4" class="form-control btn btn-login"/>
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
    <div>Search Brand : {{ searchBrand }}</div>
    <input type="text" placeholder="Search the brand" ng-model="searchBrand" tabindex="1" class="form-control">
    
  </div>

 
<div class="table-responsive">

    <table class="table">  
    <caption><h2>Brand List</h2></caption>
    <thead class="thead-default">
     
        <th>brand Id</th>  
        <th>Brand Name</th>  
         <th>Brand Edit</th>         
         <th>Brand Delete</th>         
              </thead> 
    <tbody>
      <tr ng-repeat="blist in jsonData | orderBy:sortType:sortReverse | filter:searchBrand">  
  
            <td scope="row">{{blist.brandId}}</td>  
            <td>{{blist.brandName}}</td>  
            <td><a href="editBrand-{{blist.brandId}}" class="btn btn-custom-3 btn-sm" >Edit</a></td>  
           <td><a href="deleteBrand-{{blist.brandId}}" class="btn btn-custom-3 btn-sm">Delete</a></td> 
</tr>  
</tbody>
    </table> 
    </div>
    <script type="text/javascript">
    var app=angular.module('app',[]);
    app.controller("myController",function($scope){
    	$scope.sortType     = 'brandName';
    	  $scope.sortReverse  = false; 
    	  $scope.searchBrand   = ''; 
    	
    	$scope.jsonData=${brandList};
    });
    
    
    
    </script>
   
   


</div>
 <%@ include file="footer.jsp" %>

