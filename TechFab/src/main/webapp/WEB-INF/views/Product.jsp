
  <%@ include file="header.jsp" %>
  

<div ng-app="app" ng-controller="myController" >

   <div class="container">
    	<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div style="align:center">
								<h2>Add Product</h2>
							</div>
						</div>
						<hr>
					</div>
  
  
  <div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
   

 <form:form method="POST" modelAttribute="product" action="addProduct" enctype="multipart/form-data" id="login-form" role="form" style="display: block;">
 
        
   
   <div class="form-group">
                   <form:input path="productName" class="form-control" placeholder="Product Name"/>
        <form:errors path="productName" class="form-control" cssClass="error"></form:errors>
        </div><br>
        
        
        <div class="form-group">
                          <form:input path="productDescription" class="form-control" placeholder="Product Description"/>
        <form:errors path="productDescription" class="form-control" cssClass="error"></form:errors>
        </div><br>
        
    
    <div class="form-group">
      <form:input path="productQuantity" class="form-control" placeholder="Product Quantity"/>
     </div><br>
        
    
            <div class="form-group">                
        <form:input path="productPrice" class="form-control" placeholder="Product price"/>
        </div><br>
       
    
    <div class="form-group">
    <form:input path="productDiscount" class="form-control" placeholder="Product discount"/>
    </div><br>
        
    
    
       <div class="form-group">                         
    <label class="custom-file">
    <form:input path="productImage" type="file" name="file" class="custom-file-input" multiple="multiple"></form:input>
    <span class="custom-file-control"></span>
    </label>
</div><br>
<div class="btn-group">
    <form:select path="category.categoryName" items="${categoryList}" itemValue="categoryName" itemLabel="categoryName" name="Category" class="btn btn-info dropdown-toggle" data-toggle="dropdown" >Category</form:select><br>
    </div>
    <div class="btn-group">
    <form:select path="subCategory.subCategoryName" items="${subCategoryList}" itemValue="subCategoryName" itemLabel="subCategoryName" name="Subcategory" class="btn btn-info dropdown-toggle" data-toggle="dropdown" >Subcategory</form:select>
   </div>
    <div class="btn-group">
    <form:select path="brand.brandName" items="${brandList}" itemValue="brandName" itemLabel="brandName" name="Brand" class="btn btn-info dropdown-toggle" data-toggle="dropdown" >Brand</form:select>
   
  
    <form:select path="supplier.supplierName" items="${supplierList}" itemValue="supplierName" itemLabel="supplierName" name="Supplier" class="btn btn-info dropdown-toggle" data-toggle="dropdown" >Supplier</form:select>
    

       </div>                             
    
    
    
    
    
    
    
    <br>
    
    <br>
             <div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
        
                 <input type="submit" value="addProduct" tabindex="4" class="form-control btn btn-login"/>
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
    <div>Search Product: {{ searchProduct }}</div>
    <input type="text" placeholder="Search the product" ng-model="searchProduct" tabindex="1" class="form-control">
    
  </div>

<div class="table-responsive">
    <table class="table">  
    <caption><h2>Product List</h2></caption>
    <thead class="thead-default">

        <th>product Id</th>  
        <th>Product Name</th>  
        <th>product description</th>  
        <th>product quantity</th>  
        <th>product price</th>  
        <th>product discount</th>  
        
        <th>Edit product</th>  
        <th>Delete product</th>  
    </thead>    
         <tbody>
     
        <tr ng-repeat="plist in jsonData | orderBy:sortType:sortReverse | filter:searchProduct">  
            <td scope="row">{{plist.productId}}</td>  
            <td>{{plist.productName}}</td>  
            <td>{{plist.productDescription}}</td>  
            <td>{{plist.productQuantity}}</td>  
            <td>{{plist.productPrice}}</td>  
            <td>{{plist.productDiscount}}</td>  
            
            <td><a href="editProduct-{{plist.productId}}" class="btn btn-custom-3 btn-sm">Edit</a></td>  
           <td><a href="deleteProduct-{{plist.productId}}" class="btn btn-custom-3 btn-sm">Delete</a></td> 
</tr>  
</tbody>
    </table> 
    </div>
    
    <script type="text/javascript">
    var app=angular.module('app',[]);
    app.controller("myController",function($scope){
    	$scope.sortType     = 'productName';
  	  $scope.sortReverse  = false; 
  	  $scope.searchProduct  = ''; 
    	$scope.jsonData=${productList};
    });
    
    </script>
   
    
   
</div>

 <%@ include file="footer.jsp" %>

