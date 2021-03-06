<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@page isELIgnored="false"%>
        <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
    
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>My Liquor Shop</title>
<link href="resources/css/logintest.css" rel="stylesheet"
	type="text/css">
	<link href="resources/css/carousel.css" rel="stylesheet"
	type="text/css">
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
<script type="text/javascript" src="resources/js/Edit.js"></script>
<script type="text/javascript" src="resources/js/Login.js"></script>
<script type="text/javascript" src="resources/js/npm.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery.js"></script>
  <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  <link href="resources/css/Cover1.css" rel="stylesheet" type="text/css">
  
  

</head>
<body>
<h1 id="heading"><i class="fa fa-beer" aria-hidden="true"></i> My Liquor Shop <i class="fa fa-beer" aria-hidden="true"></i></h1><br><br>
<jsp:include page="Header.jsp"></jsp:include>
<!-- <a href="Home">Home</a>
<c:if test="${empty loginMessage }">
<a href="Login">Login</a>
<a href="Register">Register</a>

</c:if>
<c:if test="${not empty loginMessage }">
<a href="Logout">Logout</a>
</c:if>-->
<security:authorize access="hasRole('ROLE_ADMIN')">
<jsp:forward page="Admin/AdminHome.jsp"></jsp:forward>
</security:authorize>
${successMessage } ${errorMessage }
<br>
${loginMessage}
<c:if test="${loginClicked==true or not empty errorMessage}">
<jsp:include page="Login.jsp"></jsp:include>
</c:if>
<c:if test="${registerClicked==true }">
<jsp:include page="Register.jsp"></jsp:include>
</c:if>
<c:if test="${atHome==true }">
<jsp:include page="Carousel.jsp"></jsp:include>

<div class="container-fluid">
    
    <div class="row grid-divider">
    <div class="col-sm-4">
      <div class="col-padding">
        <h3>Product 1</h3>
        <img src="http://p1.pichost.me/i/66/1910819.jpg" alt="ds" style="width:304px;height:228px;">
        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima expedita incidunt rerum.</p>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="col-padding">
        <h3>product 2</h3>
                <img src="http://p1.pichost.me/i/66/1910819.jpg" alt="ds" style="width:304px;height:228px;">

        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate placeat suscipit maxime tenetur officiis asperiores quae molestias fugiat praesentium dolorum.</p>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="col-padding">
        <h3>product 3</h3>
                <img src="http://p1.pichost.me/i/66/1910819.jpg" alt="ds" style="width:304px;height:228px;">

        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab veniam aperiam numquam cupiditate maiores repudiandae ea dicta, sunt rerum corporis. Ab veniam aperiam numquam cupiditate maiores repudiandae ea dicta, sunt rerum corporis. Ab veniam aperiam numquam cupiditate maiores repudiandae ea dicta.</p>
      </div>
    </div>
    </div>

</div>


</c:if>
</body>
</html>