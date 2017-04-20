<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib uri="http://www.springframework.org/tags/form" prefix="fm"%>
    	<%@ taglib uri="http://www.springframework.org/tags" prefix="sp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- All the files that are required -->
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link href='http://fonts.googleapis.com/css?family=Varela+Round' rel='stylesheet' type='text/css'>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.13.1/jquery.validate.min.js"></script>
<link href="resources/css/Login.css" rel="stylesheet" type="text/css">
<link href="resources/css/Cover.css" rel="stylesheet" type="text/css">

<script type="text/javascript" src="resources/js/Login.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<title>Registration Page</title>
</head>
<body>

<!-- REGISTRATION FORM -->
<div class="text-center" style="padding:50px 0">
	<div class="logo">register</div>
	<!-- Main Form -->
	<div class="login-form-1">
		<fm:form id="register-form" class="text-left" action="useradd" commandName="user">
			<div class="login-form-main-message"></div>
			<div class="main-login-form">
				<div class="login-group">
					<div class="form-group">
						<label for="reg_username" class="sr-only">Email address</label>
						<input type="text" class="form-control" id="name" name="name" placeholder="username"><fm:errors path="name" cssStyle="color:red;"/>
					</div>
					<div class="form-group">
						<label for="reg_password" class="sr-only">Password</label>
						<input type="password" class="form-control" id="pwd" name="pwd" placeholder="password"><fm:errors path="pwd" cssStyle="color:red;"/>
					</div>
					<div class="form-group">
						<label for="reg_contact" class="sr-only">Contact</label>
						<input type="text" class="form-control" id="contact" name="contact" placeholder="Contact Number"><fm:errors path="contact" cssStyle="color:red;"/>
					</div>
					
					
					
					
					
					
					
				</div>
				<button type="submit" class="login-button"><i class="fa fa-chevron-right"></i></button>
			</div>
			<div class="etc-login-form">
				<p>already have an account? <a href="Login">login here</a></p>
			</div>
		</fm:form>
	</div>
	<!-- end:Main Form -->
</div>

</body>
</html>