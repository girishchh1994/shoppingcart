<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="resources/css/AllProducts.css" rel="stylesheet" type="text/css">
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
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="resources/js/npm.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://code.jquery.com/jquery.js"></script>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<div class="container">
    <div class="row">
    	<div class="col-md-12">
    			<c:forEach var="product" items="${productList}" begin="0" end="2">
    	
			<div class="col-sm-6 col-md-4">
				<div class="thumbnail" >
					<h4 class="text-center"><span class="label label-info">${product.category_id}</span></h4>
					<img src="resources/images/${product.p_id}.jpg" alt="{product.p_name}" class="img-responsive">
					<div class="caption">
						<div class="row">
							<div class="col-md-6 col-xs-6">
								<h3>${product.p_name}</h3>
							</div>
							<div class="col-md-6 col-xs-6 price">
								<h3>
								<label>Rs ${product.p_price}</label></h3>
							</div>
						</div>
						<p>${product.p_desc}</p>
						<div class="row">
							<div class="col-md-6">
								<a href="<c:url value='/Product_Display/${product.p_id}'/>"><span class="glyphicon glyphicon-plus"></span> More Details</a> 
							</div>
							<div class="col-md-6">
								<a href="#" class="btn btn-success btn-product"><span class="glyphicon glyphicon-shopping-cart"></span> Buy</a></div>
						</div>

						<p> </p>
					</div>
				</div>
			</div>
			</c:forEach>
        </div> 

	</div>
</div>




<div class="container">
    <div class="row">
    	<div class="col-md-12">
    			<c:forEach var="product" items="${productList}" begin="3" end="5">
    	
			<div class="col-sm-6 col-md-4">
				<div class="thumbnail" >
					<h4 class="text-center"><span class="label label-info">${product.category_id}</span></h4>
					<img src="resources/images/${product.p_id}.jpg" alt="{product.p_name}" class="img-responsive">
					<div class="caption">
						<div class="row">
							<div class="col-md-6 col-xs-6">
								<h3>${product.p_name}</h3>
							</div>
							<div class="col-md-6 col-xs-6 price">
								<h3>
								<label>Rs ${product.p_price}</label></h3>
							</div>
						</div>
						<p>${product.p_desc}</p>
						<div class="row">
							<div class="col-md-6">
								<a class="btn btn-primary btn-product"><span class="glyphicon glyphicon-thumbs-up"></span> Like</a> 
							</div>
							<div class="col-md-6">
								<a href="#" class="btn btn-success btn-product"><span class="glyphicon glyphicon-shopping-cart"></span> Buy</a></div>
						</div>

						<p> </p>
					</div>
				</div>
			</div>
			</c:forEach>
        </div> 

	</div>
</div>



<div class="container">
    <div class="row">
    	<div class="col-md-12">
    			<c:forEach var="product" items="${productList}" begin="6" end="8">
    	
			<div class="col-sm-6 col-md-4">
				<div class="thumbnail" >
					<h4 class="text-center"><span class="label label-info">${product.category_id}</span></h4>
					<img src="resources/images/${product.p_id}.jpg" alt="{product.p_name}" class="img-responsive">
					<div class="caption">
						<div class="row">
							<div class="col-md-6 col-xs-6">
								<h3>${product.p_name}</h3>
							</div>
							<div class="col-md-6 col-xs-6 price">
								<h3>
								<label>Rs ${product.p_price}</label></h3>
							</div>
						</div>
						<p>${product.p_desc}</p>
						<div class="row">
							<div class="col-md-6">
								<a class="btn btn-primary btn-product"><span class="glyphicon glyphicon-thumbs-up"></span> Like</a> 
							</div>
							<div class="col-md-6">
								<a href="#" class="btn btn-success btn-product"><span class="glyphicon glyphicon-shopping-cart"></span> Buy</a></div>
						</div>

						<p> </p>
					</div>
				</div>
			</div>
			</c:forEach>
        </div> 

	</div>
</div>

</body>
</html>