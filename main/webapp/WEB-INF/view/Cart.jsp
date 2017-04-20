<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
	<link href="resources/css/Cover1.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="resources/js/npm.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://code.jquery.com/jquery.js"></script>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<title>Cart is here</title>
</head>
<body>
<h1 id="heading"> My Liquor Shop </h1><br><br>
<jsp:include page="Header.jsp"></jsp:include>
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-12 col-md-10 col-md-offset-1">
            <table class="table">
                <thead>
                    <tr id="table-row">
                        <th>Product</th>
                        <th>Quantity</th>
                        <th class="text-center">Price</th>
                        <th class="text-center">Total</th>
                        <th> </th>
                    </tr>
                </thead>
                <tbody>
                    			<c:forEach var="cart" items="${cartList}">
                
                    <tr id="row-hover">
                        <td class="col-sm-8 col-md-6">
                        <div class="media">
                            <a class="thumbnail pull-left" href="#"> <img class="media-object" src="http://icons.iconarchive.com/icons/custom-icon-design/flatastic-2/72/product-icon.png" style="width: 72px; height: 72px;"> </a>
                            <div class="media-body">
                                <h4 class="media-heading"><a href="#">${cart.p_name}</a></h4>
                                <h5 class="media-heading"> by <a href="#">${cart.category_id}</a></h5>
                                <h5 class="media-heading"> Sold by <a href="#">${cart.supplier_id}</a></h5>
                                
                            </div>
                        </div></td>
                        <td class="col-sm-1 col-md-1" style="text-align: center">
                        <input type="text" class="form-control" name="p_id" value="${cart.quantity}">
                        </td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>Rs ${cart.p_price}</</strong></td>
                        <td class="col-sm-1 col-md-1 text-center"><strong>RS ${cart.total}</</strong></td>
                        <td class="col-sm-1 col-md-1">
                        <a href="${pageContext.request.contextPath}/remove_cart/${cart.p_id}"class="btn btn-danger">
                            <span class="glyphicon glyphicon-remove"></span> Remove
                        </a></td>
                    </tr>
                    </c:forEach>
                    
                    
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td><h3>Total</h3></td>
                        <td class="text-right"><h3><strong>${total}</strong></h3></td>
                    </tr>
                    <tr>
                        <td>   </td>
                        <td>   </td>
                        <td>   </td>
                        <td>
                    <a href="${pageContext.request.contextPath}/Home">    <button type="button" class="btn btn-default">
                            <span class="glyphicon glyphicon-shopping-cart"></span> Continue Shopping
                        </button></a></td>
                        <td>
                      <a href="checkoutFlow" > <button type="button" class="btn btn-success">
                            Checkout <span class="glyphicon glyphicon-play"></span>
                        </button></a></td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</div></body>
</html>