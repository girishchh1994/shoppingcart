<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
                <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
        <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page isELIgnored="false"%>
<link href="resources/css/Cover.css" rel="stylesheet" type="text/css">
<link href="resources/css/bootstrap.min.css" rel="stylesheet"
	type="text/css">
<link href="resources/css/bootstrap.css" rel="stylesheet"
	type="text/css">
<link href="resources/css/bootstrap.css.map" rel="stylesheet"
	type="text/css">
<link href="resources/css/bootstrap.min.css.map" rel="stylesheet"
	type="text/css">
<link href="resources/css/bootstrap-theme.css" rel="stylesheet"
	type="text/css">
<link href="resources/css/bootstrap-theme.css.map" rel="stylesheet"
	type="text/css">
<link href="resources/css/bootstrap-theme.min.css" rel="stylesheet"
	type="text/css">
<link href="resources/css/bootstrap-theme.min.css.map" rel="stylesheet"
	type="text/css">
<script type="text/javascript" src="resources/js/table.js"></script>
<script type="text/javascript" src="resources/js/Admin.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="resources/js/Edit.js"></script>
<script type="text/javascript" src="resources/js/Login.js"></script>
<script type="text/javascript" src="resources/js/npm.js"></script>
<script type="text/javascript"
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery.js"></script>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Product Add</title>
</head>
<body>
<h1 id="heading">My Liquor Shop</h1>
	<br>
	<br>
	<jsp:include page="Header.jsp"></jsp:include>
	<div id=Cover>
<form:form action="${pageContext.request.contextPath}/productAdd" commandName="product" method="post" enctype="multipart/form-data">
<fieldset>
				<div class="middle-section">
   <h3>Product Addition:</h3>
<table>
<tr>
		
			<c:if test="${!empty product.p_name}">
    <td>ID of the brand:</td>
        <td><form:input path="p_id" type="number" name="p_id" readonly="true" /></td>
         <form:hidden path="p_id"/>
        
  
    </c:if>
	</tr>
	
			<tr>
				<td>Name of the Product:</td>
			<td><form:input path="p_name" type="text" name="p_name" required="true"/></td>
			</tr>
			<tr>
				<td>Description of the Product:</td>
			<td><form:input path="p_desc" type="text" name="p_desc" required="true"/></td>
			</tr>
			<tr>
			<td>Price of the Product:</td>
			<td><form:input path="p_price" type="number" name="p_price" required="true"/></td>
			</tr>
			<c:if test="${empty product.p_name}">
			<tr>
			<td>Image of the Product:</td>
			<td><form:input path="p_img" type="file" name="p_img" required="true"/></td>
			</tr>
			</c:if>
			
			<!--<form:select  path="category_id" >
							<c:forEach var="cat" items="${categoryList}">
			
    <form:option value="${cat.c_name}"  />
    </c:forEach>
              
</form:select>-->
<tr>
				<td>Brand of the Product:</td>
				<td><form:select path="category_id">
						<c:forEach var="category" items="${categoryList}">
							<form:option value="${category.c_name}">${category.c_name}</form:option>
						</c:forEach>
					</form:select></td>
			</tr>
			
			<tr>
				<td>Supplier of the Product:</td>
				<td><form:select path="supplier_id">
						<c:forEach var="supplier" items="${supplierList}">
							<form:option value="${supplier.s_name}">${supplier.s_name}</form:option>
						</c:forEach>
					</form:select></td>
			</tr>
			
			<tr>
				<td colspan="2"><c:if test="${!empty product.p_name}">
						<input type="submit" value="<spring:message text="Update Product"/>" />
					</c:if> <c:if test="${empty product.p_name}">
						<input type="submit" value="<spring:message text="Add Product"/>" />
					</c:if></td>
			</tr>
		</table>
		</div>
	<br></br>
  </fieldset>
</form:form>
</div>
<table id="table">

			<tr id="table-row">
				<th>ID</th>  	
				<th>Name</th>	
				<th>Description</th>
				<th>Price</th>
				<th>Category</th>
				<th>Supplier</th>
				
				 <th colspan=2>Action</th>
		</tr>

		<c:forEach var="product" items="${productList}">
			<tr id="table-row">

				<td>${product.p_id}</td>
				<td>${product.p_name}</td>
				<td>${product.p_desc}</td>
				<td>${product.p_price}</td>
				<td>${product.category_id}</td>
				<td>${product.supplier_id}</td>
				
				
				<td id="border-right"><a href="<c:url value='/edit_Product/${product.p_id}'/>">Edit</a></td>
					
					<td><a href="<c:url value='/delete_Product/${product.p_id}' />" >Delete</a></td>

			</tr>
		</c:forEach>

	</table>

				


</body>
</html>