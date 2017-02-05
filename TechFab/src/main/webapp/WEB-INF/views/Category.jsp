  <%@ include file="header.jsp" %>
  
  
   <div ng-app="app" ng-controller="myController" >
   
  <div class="container">
    	<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div style="align:center">
								<h2>Add Category</h2>
							</div>
						</div>
						<hr>
					</div>
  
  
  <div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
					
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

  
   
    
  <form:form method="POST" modelAttribute="category" action="addCategory" id="login-form" role="form" style="display: block;">
  
    
        
   									<div class="form-group">
   
        <form:input path="categoryName" placeholder="Category Name" tabindex="1" class="form-control"/>
        <form:errors path="categoryName"  class="form-control" cssClass="error"></form:errors>
              </div>
              <br>
             									<div class="form-group">
        <form:input path="categoryDescription"  placeholder="Category Description"  tabindex="2" class="form-control"/>
        <form:errors path="categoryDescription" class="form-control" cssClass="error" ></form:errors>
     </div>
              
        <br>
    	<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
                  <input type="submit" value="addCategory" tabindex="4" class="form-control btn btn-login"/>
      </div></div></div>
         
</form:form></div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
 
<div class="alert alert-info">
    
    <div class="form-group">Search Category: {{ searchCategory }}</div>
    <input type="text" placeholder="Search the category" ng-model="searchCategory" tabindex="1" class="form-control">
    
  </div>

<div class="table-responsive">
    <table class="table">  
    <caption><h2>Category List</h2></caption>
    <thead class="thead-default">
        <th>category Id</th>  
        <th>Category Name</th>  
        <th>category description</th>  
        <th >Edit category</th>  
        <th>Delete category</th>  
        </thead>
         
     <tbody>
        <tr ng-repeat="clist in jsonData | orderBy:sortType:sortReverse | filter:searchCategory">  
            <td scope="row">{{clist.categoryId}}</td>  
            <td>{{clist.categoryName}}</td>  
            <td>{{clist.categoryDescription}}</td>  
            <td><a href="editCategory-{{clist.categoryId}}" class="btn btn-custom-3 btn-sm">Edit</a></td>  
           <td><a href="deleteCategory-{{clist.categoryId}}" class="btn btn-custom-3 btn-sm">Delete</a></td> 
</tr>  
</tbody>
    </table> 
    </div>
    
    <script type="text/javascript">
    var app=angular.module('app',[]);
    app.controller("myController",function($scope){
    	$scope.sortType     = 'categoryName';
    	  $scope.sortReverse  = false; 
    	  $scope.searchCategory   = ''; 
    	$scope.jsonData=${categoryList};
    });
    
    
    
    </script>
   
    
   </div>
   <br><br>
   
 <%@ include file="footer.jsp" %>
 