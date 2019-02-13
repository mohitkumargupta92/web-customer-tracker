<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>

<html>

<head>
<title>List Customers</title>
<link type="text/css" rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css">
</head>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>CRM - Customer Relationship Manager</h2>
		</div>
	</div>
	<br><br>
	<input type="button" value="Add Customer" onclick="window.location.href='showFormForAdd';return false;"
	class="add-button"/>
	<br>

	<table>
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Email</th>
			<th>Action</th>
		</tr>

		<c:forEach var="customer" items="${customers }">
		
		<!--  Update -->
		<c:url var="updateLink" value="/customer/showFormForUpdate">
			<c:param name="customerId" value="${customer.id}"></c:param>
		</c:url>
		<!--  Update End -->
		
		<!--  Delete -->
		<c:url var="deleteLink" value="/customer/delete">
			<c:param name="customerId" value="${customer.id}"></c:param>
		</c:url>
		<!-- Delete End -->
		
			<tr>
				<td>${customer.firstName}</td>
				<td>${customer.lastName}</td>
				<td>${customer.email}</td>
				<td>
					<a href="${updateLink }">Update</a>
					|
					<a href="${deleteLink }" onclick="if(!(confirm('Are you sure you want to delete this customer ?'))) return false">
					Delete</a>
				</td>
			</tr>

		</c:forEach>

	</table>
</body>
</html>