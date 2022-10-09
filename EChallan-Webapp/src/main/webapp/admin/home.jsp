<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Officer: Home</title>
<%@include file="allCSS.jsp"%>
<style type="text/css">
a {
	text-decoration: none;
	text-color: black;
}
a:hover {
	text-decoration: none;
	text-color: black;
}
</style>
</head>
<body>
	<%@include file="navbar.jsp"%>


	<div class="container">
		<div class="row p-5">
			<div class="col-md-3">
				<a href="add_driver.jsp">
					<div class="card">
						<div class="card-body text-center ">
							<i class="fa-solid fa-user-plus fa-4x text-success "></i><br>
							<h2>Add Driver</h2>
							******************
						</div>

					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a href="add_category.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-square-plus fa-4x text-primary"></i><br>
							<h4>Add Challan Category</h4>
							*******************
						</div>

					</div>
				</a>
			</div>


			<div class="col-md-3">
				<a href="issue_challan.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-book-open fa-4x text-danger"></i><br>
							<h2>Issue Challan</h2>
							******************
						</div>

					</div>
				</a>
			</div>

			<div class="col-md-3">
				<a href="my_account.jsp">
					<div class="card">
						<div class="card-body text-center">
							<i class="fa-solid fa-house-chimney-user fa-4x text-warning"></i><br>

							<h2>My Account</h2>
							******************
						</div>

					</div>
				</a>
			</div>

		</div>

	</div>


</body>
</html>
