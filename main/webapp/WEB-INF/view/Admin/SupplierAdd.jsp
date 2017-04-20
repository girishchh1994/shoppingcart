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

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Supplier Add</title>
</head>
<body>
	<h1 id="heading">My Liquor Shop</h1>
	<br>
	<br>
	<jsp:include page="Header.jsp"></jsp:include>
	<div id=Cover>
		<form:form action="${pageContext.request.contextPath}/supplierAdd"
			commandName="supplier" method="post">
			<fieldset>
			<div class="middle-section">
					<h3>Supplier Addition:</h3>
				<table>
				<c:if test="${!empty supplier.s_name}">
							<tr>
								<td>Id of the Supplier:</td>

								<c:choose>
									<c:when test="${not empty supplier.s_name}">

									</c:when>
									<c:otherwise>
										<td><form:input path="s_id" type="text" name="s_id"
												required="true" />
									</c:otherwise>
								</c:choose>
								<td><form:input path="s_id" type="text" name="s_id"
										readonly="true" disabled="true" /> <form:hidden path="s_id" /></td>
							</tr>
						</c:if>
					<tr>
						<td>Name of the Supplier:</td>
						<td>&nbsp;&nbsp;<form:input path="s_name" type="text" name="s_name"
								required="true" /></td>
					</tr>
					<tr>
						<td>Address of the Supplier:</td>
						<td>&nbsp;&nbsp;<form:input path="s_add" type="text" name="s_add"
								required="true" /></td>
					</tr>


					<tr>
						<td colspan="2"><c:if test="${!empty supplier.s_name}">
								<input type="submit"
									value="<spring:message text="Update Supplier"/>" />
							</c:if> <c:if test="${empty supplier.s_name}">
								<input type="submit"
									value="<spring:message text="Add Supplier"/>" />
							</c:if></td>
					</tr>
				</table>
				<br></br>
				</div>
			</fieldset>
		</form:form>
	</div>
	<table id="table">
		<tr id="table-row">
			<th>ID</th>
			<th>Name</th>
			<th>Address</th>
			<th colspan=2>Action</th>
		</tr>

		<c:forEach var="supplier" items="${supplierList}">
			<tr id="table-row">

				<td>${supplier.s_id}</td>
				<td>${supplier.s_name}</td>
				<td>${supplier.s_add}</td>



				<td id="border-right"><a href="edit_Supplier/${supplier.s_id}">Edit</a></td>

				<td><a
					href="<c:url value='/delete_Supplier/${supplier.s_id}' />">Delete</a></td>

			</tr>
		</c:forEach>

	</table>
</body>
</html>