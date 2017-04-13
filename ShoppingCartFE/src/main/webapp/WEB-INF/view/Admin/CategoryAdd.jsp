<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

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
<title>Category Add</title>
</head>
<body>
	<h1 id="heading">My Liquor Shop</h1>
	<br>
	<br>
	<jsp:include page="Header.jsp"></jsp:include>
	<div id=Cover>
		${msg}

		<form:form action="${pageContext.request.contextPath}/categoryAdd"
			commandName="category" modelAttribute="category" method="post">
			<fieldset>
				<div class="middle-section">
					<h3>Category:</h3>
					<table>
						<c:if test="${!empty category.c_name}">
							<tr>
								<td>Id of the brand:</td>

								<c:choose>
									<c:when test="${not empty category.c_name}">

									</c:when>
									<c:otherwise>
										<td><form:input path="c_id" type="text" name="c_id"
												required="true" />
									</c:otherwise>
								</c:choose>
								<td><form:input path="c_id" type="text" name="c_id"
										readonly="true" disabled="true" /> <form:hidden path="c_id" /></td>
							</tr>
						</c:if>
						<tr>
							<td>Name of the Category:</td>
							<td>&nbsp;&nbsp;<form:input path="c_name" type="text"
									name="c_name" required="true" /></td>
						</tr>
						<tr>
							<td>Description of the Category:</td>
							<td>&nbsp;&nbsp;<form:input path="c_desc" type="text"
									name="c_desc" required="true" /></td>
						</tr>


						<tr>
							<td colspan="2"><c:if test="${!empty category.c_name}">
									<input type="submit"
										value="<spring:message text="Update Category"/>" />
								</c:if> <c:if test="${empty category.c_name}">
									<input type="submit"
										value="<spring:message text="Add Category"/>" />
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
					<th colspan=2>Action</th>
				</tr>
			<c:forEach var="category" items="${categoryList}">
				<tr id="table-row">
					<td>${category.c_id}</td>
					<td>${category.c_name}</td>
					<td>${category.c_desc}</td>
					<td id="border-right"><a href="<c:url value='/edit_Category/${category.c_id}'/>">Edit<span
							class="glyphicon glyphicon-pencil"></span></a></td>
					<td><a
						href="<c:url value='/delete_Category/${category.c_id}'/>">Delete<span
							class="glyphicon glyphicon-trash"></span></a></td>

				</tr>
			</c:forEach>

		</table>
</body>
</html>