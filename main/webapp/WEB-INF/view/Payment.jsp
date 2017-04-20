<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <link href="resources/css/Cover.css" rel="stylesheet" type="text/css">
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<h1 id="heading"> My Liquor Shop </h1><br><br>
<jsp:include page="Header.jsp"></jsp:include>
 <br><br>
  <br><br>
  <br>
  <br>
<div class="container">
  <div class="row col-xs-4"></div>
  <div class="col-xs-4">
  <div class="panel panel-primary">
     <div class="panel-heading">
   
      <div class="row">
       <h3 class="panel-title " style="padding-left: 20px">Select Payment Type</h3>
       
      </div>
     </div>
     <div class="panel-body">
				<sf:form modelAttribute="card">
  				<sf:radiobutton path="method" value="cod"/>  Cash On Delivery<br><br>
    			<sf:radiobutton path="method" value="card"/>  Credit Card<br><br>
        		<button class="btn btn-success btn-sm btn-block" name="_eventId_submit" type="submit">Proceed</button> 
				</sf:form>
				 </div>
        </div>
        </div>
        </div>
        
</body>
</html>