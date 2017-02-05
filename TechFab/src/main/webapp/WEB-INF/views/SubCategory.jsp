  <%@ include file="header.jsp" %>

<div ng-app="app" ng-controller="myController" >

<div class="container">
    	<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div style="align:center">
								<h2>Add SubCategory</h2>
							</div>
						</div>
						<hr>
					</div>
  
  
  <div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
	


  
    
        <form:form modelAttribute="subCategory" action="addSubCategory" id="login-form" role="form" style="display: block;">
        
               
           									<div class="form-group">
        
         <form:input path="subCategoryName"  placeholder="SubCategory Name" tabindex="1" class="form-control"/>
         <form:errors path="subCategoryName" class="form-control" cssClass="error"></form:errors>
         </div>
    <br>
                  									<div class="form-group">
         <form:input path="subCategoryDescription"  placeholder="SubCategory Description" tabindex="1" class="form-control"/>
        <form:errors path="subCategoryDescription" class="form-control" cssClass="error"></form:errors>
        </div>
    <br>
       <div align="center">
        <div class="btn-group">
        <form:select path="category.categoryName"  items="${categoryList}" itemValue="categoryName" itemLabel="categoryName" class="btn btn-info dropdown-toggle" data-toggle="dropdown">
        </form:select></div></div>
      <br>
    	<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
                    <input type="submit" value="addSubcategory" tabindex="4" class="form-control btn btn-login"/>
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
    <div>Search Subcategory: {{ searchSubCategory }}</div>
    <input type="text" placeholder="Search the subcategory" ng-model="searchSubCategory" tabindex="1" class="form-control">
    
  </div>
        
        
       <div class="table-responsive">
    <table  class="table">  
        <caption><h2>SubCategory List</h2></caption>
        <thead class="thead-default">
    
        <th>subcategory Id</th>  
        <th>subCategory Name</th>  
        <th>subcategory description</th>  
        <th>Edit subcategory</th>  
        <th>Delete subcategory</th>  
       </thead>
        
               <tbody>
        <tr ng-repeat="sclist in jsonData | orderBy:sortType:sortReverse | filter:searchSubCategory">  
            <td scope="row">{{sclist.subCategoryId}}</td>  
            <td>{{sclist.subCategoryName}}</td>  
            <td>{{sclist.subCategoryDescription}}</td>  
            <td><a href="editSubCategory-{{sclist.subCategoryId}}" class="btn btn-custom-3 btn-sm">Edit</a></td>  
           <td><a href="deleteSubCategory-{{sclist.subCategoryId}}" class="btn btn-custom-3 btn-sm">Delete</a></td> 
</tr>  
</tbody>
    
        </table>
        </div>
    
    <script type="text/javascript">
    var app=angular.module('app',[]);
    app.controller("myController",function($scope){
    	$scope.sortType     = 'subCategoryName';
  	  $scope.sortReverse  = false; 
  	  $scope.searchSubCategory   = ''; 
  	
    	$scope.jsonData=${subCategoryList};
    });
    
    </script>
    
    
    
           </div> 
   
  <%@ include file="footer.jsp" %>
 