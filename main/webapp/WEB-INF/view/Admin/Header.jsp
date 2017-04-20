<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@page isELIgnored="false"%>
    <%@ taglib prefix="security" uri="http://www.springframework.org/security/tags"%>
<html lang="en">
<head>
  <title>Header</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="resources/css/logintest.css" rel="stylesheet"
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
  <script src="https://code.jquery.com/jquery.js"></script>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
</head>
<body>

<div class="container-fluid">
  <nav class="navbar navbar-inverse">
    <div class="navbar-header">
    	<button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".js-navbar-collapse">
			<span class="sr-only">Toggle navigation</span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
		        
		     <ul class="nav navbar-nav navbar-left">
			 <li><a href="Home">Home</a></li>
        	 </ul>
	</div>
	
	<div class="collapse navbar-collapse js-navbar-collapse">
		<ul class="nav navbar-nav">
			<c:forEach var="category" items="${categoryList}">
		
			<li class="dropdown">
			
				<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">${category.c_name} <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
          		<c:forEach var="product" items="${productList}">
          		
     			<c:if test="${category.c_name == product.category_id}">
          
            <li ><a href="<c:url value='/Product_Display/${product.p_id}'/>">${product.p_name}</a></li>
            </c:if>
            
            </c:forEach>
 					 <li class="divider"></li>
                            <li><a href="<c:url value='/Product_allDisplay/${product.category_id}'/>">View all<span class="glyphicon glyphicon-chevron-right pull-right"></span></a></li>
          </ul>
          </li>
          </c:forEach>
          </ul>
          
        <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">My account <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
       			<security:authorize access="isAnonymous()">
				<li><a href="Login">Login</a></li>
				<li><a href="Register">Register</a></li>
				</security:authorize>
				<security:authorize access="isAuthenticated()">
				<security:authorize access="hasRole('ROLE_USER')">
				<li><a href="mycart">My Cart</a></li>
				</security:authorize>
				
				<li><a href="Logout">Logout</a></li>
								</security:authorize>
      </ul>
      </li>
      </ul>
	</div><!-- /.nav-collapse -->
  </nav>
</div>
<script type="text/javascript" src="resources/js/table.js"></script>
<script type="text/javascript" src="resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="resources/js/Edit.js"></script>
<script type="text/javascript" src="resources/js/Login.js"></script>
<script type="text/javascript" src="resources/js/npm.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://code.jquery.com/jquery.js"></script>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</body>
</html>

									
			