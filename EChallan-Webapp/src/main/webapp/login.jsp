<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<%@include file="AllModule/allCSS.jsp"%>
</head>
<body style="background-color: #f0f1f2;">
	<%@include file="AllModule/navbar.jsp"%>
	
	<div class="container-fluid pd-2">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center">Login Panel</h3>

						<form>
							<div class="form-group">
								<label for="exampleInputID">Unique ID</label> <input
									type="text" class="form-control" id="exampleInputID"
									aria-describedby="IDHelp" placeholder="Enter Your Unique ID" required="required">
								<small id="IDHelp" class="form-text text-muted">
									Never share your ID with anyone else.</small>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Password" required="required">
							</div>
							<div class="form-group form-check">
								<input type="checkbox" class="form-check-input"
									id="exampleCheck1"> <label class="form-check-label"
									for="exampleCheck1"><small>By clicking this you
										are agreed by all our terms and conditions.</small></label>
							</div>

							<div class="text-center">
								<button type="submit" class="btn btn-primary ">Login</button>
								<br> <a href="registration.jsp">Create Account</a>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>
</html>