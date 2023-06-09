<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SportShoes-Purchase Reports</title>
</head>
<body>
	<center>
		<h1>Purchases in Filtered by date</h1>
		<table>
			<tr>
				<td>Product Id</td>
				<td>|</td>
				<td>Product Name</td>
				<td>|</td>
				<td>Product Brand</td>
				<td>|</td>
				<td>Gender</td>
				<td>|</td>
				<td>Product Size</td>
				<td>|</td>
				<td>Product Price</td>
			</tr>
			<c:forEach items="${l_products}" var="product">
				<tr>
					<td>${product.id}</td>
					<td>|</td>
					<td>${product.prodname }</td>
					<td>|</td>
					<td>${product.brand }</td>
					<td>|</td>
					<td>${product.gender }</td>
					<td>|</td>
					<td>${product.localdate}</td>
					<td>|</td>
					<td>${product.username}</td>
				</tr>
			</c:forEach>
		</table>
		<h1>Users with most purchases</h1>
		<table>
			<tr>
				<td>Product Id</td>
				<td>|</td>
				<td>User Name</td>
				<td>|</td>
				<td>User Id</td>
			</tr>
			<c:forEach items="${m_users}" var="user">
				<tr>
					<td>${user.id}</td>
					<td>|</td>
					<td>${user.username }</td>
					<td>|</td>
					<td>${user.u_id}</td>
				</tr>
			</c:forEach>
		</table>
		<h1>Brand That sold most</h1>
		<table>
			<tr>
				<td>Product Id</td>
				<td>|</td>
				<td>Product Brand</td>
			</tr>
			<c:forEach items="${m_prod}" var="product">
				<tr>
					<td>${product.id }</td>
					<td>|</td>
					<td>${product.brand }</td>
				</tr>
			</c:forEach>
		</table>
		</table>


	</center>
</body>
</html>