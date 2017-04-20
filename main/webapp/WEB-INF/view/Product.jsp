<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@page isELIgnored="false"%>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="resources/css/Cover.css" rel="stylesheet" type="text/css">
<link href="resources/css/product.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
<script type="text/javascript" src="resources/js/product.js"></script>
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
<h1 id="heading">My Liquor Shop</h1><br><br>
<jsp:include page="/WEB-INF/view/Header.jsp"></jsp:include>
<div class="container">
	<div class="row">
   <div class="col-xs-4 item-photo">
   					<img style="max-width:100%;" src="${pageContext.request.contextPath}/resources/images/${product.p_id}.jpg" alt="{product.p_name}" class="img-responsive">   
                </div>
                <div class="col-xs-5" style="border:0px solid gray">
                    <h3>${product.p_name}</h3>    
                    <h3>${product.p_desc}</h3>
                    <h5 style="color:#337ab7">Brand:-<a href="#">${product.category_id}</a></h5>
                    <div class="product-rating" style="color:#FFBF00;"><i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star-o"></i> </div>
                    

                    <h6 class="title-price"><small>PRICE</small></h6>
                    <h3 style="margin-top:0px;">Rs ${product.p_price}</h3>

					<h3 class="title-price"><small>SUPPLIER</small></h3>
                    <h3 style="margin-top:0px;">${product.supplier_id}</h3>
                    <!-- Botones de compra -->
                    <div class="section" style="padding-bottom:20px;">
						<form
						action="${pageContext.request.contextPath}/addCart/${product.p_id}">
						<input type="submit" class="btn btn-primary" value="Add To Cart" />
					</form> 
					                       <h6><a href="#"><span class="glyphicon glyphicon-heart-empty" style="cursor:pointer;"></span> Add to wishlist</a></h6>
                    </div>                                        
                </div>                              

                	
	</div>
</div>
</body>
</html>