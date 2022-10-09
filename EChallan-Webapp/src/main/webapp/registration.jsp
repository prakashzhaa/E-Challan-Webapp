<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Electronic Challan</title>
<%@include file="AllModule/allCSS.jsp"%>
</head>

<body style="background-color: #f0f1f2;">
	<%@include file="AllModule/navbar.jsp"%>
	<div class="container-fluid pd-2">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center">Registration Details</h3>
						
							<c:if test="${not empty succMsg }">
								<p class="text-center text-success">${succMsg}</p>
								<c:remove var="succMsg" scope="session" />

							</c:if>

							<c:if test="${not empty failedMsg }">
								<p class="text-center text-danger">${failedMsg}</p>
								<c:remove var="failedMsg" scope="session" />

							</c:if>
							<form action="RegistrationServlet" method="post">

							<div class="form-group">
								<label for="exampleInputName">Full Name</label> <input
									type="text" class="form-control" id="exampleInputFullName"
									placeholder="Enter Full Name" required="required" name="fname">
							</div>


							<div class="form-group">
								<label for="exampleInputIDNumber">ID Card</label> <input
									type="text" class="form-control" id="exampleInputIDNumber"
									placeholder="Enter Your Identity Card Number"
									required="required" name="idcard">
							</div>
							<div class="form-group">
								<label for="exampleDesignumber">Designation</label> <input
									type="text" class="form-control" id="exampleInputDesignumber"
									placeholder="Enter Designation" required="required"
									name="design">
							</div>

							<div class="form-group">
								<label for="examplephonegnumber">Phone Number</label> <input
									type="text" class="form-control" id="exampleInputnumber"
									placeholder="Enter Your Phone Number" required="required"
									name="phone">
							</div>


							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Password" required="required" name="password">
							</div>
							<div class="form-group form-check">
								<input type="checkbox" class="form-check-input"
									id="exampleCheck1"> <label class="form-check-label"
									for="exampleCheck1">By clicking this you are agreed by
									all our terms and conditions.</label>
							</div>
							<button type="submit" class="btn btn-primary">Submit</button>
						</form>


					</div>
				</div>


			</div>

		</div>

	</div>

	<%@include file="AllModule/footer.jsp"%>



</body>
</html>