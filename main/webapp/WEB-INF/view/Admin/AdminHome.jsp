<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Admin Home Page</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="resources/css/Cover.css" rel="stylesheet" type="text/css">

  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<div>

<h1 id="heading">My Liquor Shop</h1><br><br>
<jsp:include page="/WEB-INF/view/Header.jsp"></jsp:include>
<div class="link">
<h2>Admin Home</h2><br>
<a href = "Product">Product Add</a>
<br>
<a href = "Category">Category Add</a>
<br>
<a href = "Supplier">Supplier Add</a>
<br>
<!--  <a href = "AllProducts">All Products</a>
<br>
<a href = "mycart">My Cart</a> -->



</div>
</div>
</body>
</html>