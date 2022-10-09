<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Driver: Index</title>
<%@include file="allCSS.jsp"%>
</head>
<body style="background-color:#f0f1f2;">
	
	<%@include file="navbar.jsp"%>
	<div class="container">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card">
					<div class="card-body">
						<h3 class="text-center">Driver Panel</h3>
						
						
						
						<form>
							<div class="form-group">
								<label for="exampleInputfname">Full Name</label> <input
									type="text" class="form-control" id="exampleInputfname"
									aria-describedby="fnameHelp" placeholder="Enter Full Name"
									required="required"> <small
									class="form-text text-muted">Enter as per Driving
									License.</small>
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">S/O or W/O</label> <input
									type="text" class="form-control" id="exampleInputPassword1"
									placeholder="Father Name/Husband Name" required="required">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">DL Number</label> <input
									type="text" class="form-control" id="exampleInputPassword1"
									placeholder="Enter Driving License Number"
									required="required">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">DOB</label> <input
									type="date" class="form-control" id="exampleInputPassword1"
									placeholder="Enter Date of Birth" required="required">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Vehicle Number</label> <input
									type="text" class="form-control" id="exampleInputPassword1"
									placeholder="Enter Vehicle Number" required="required">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Date of Issue</label> <input
									type="date" class="form-control" id="exampleInputPassword1"
									placeholder="" required="required">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Validity Till</label> <input
									type="date" class="form-control" id="exampleInputPassword1"
									placeholder="" required="required">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Address</label> <input
									type="text" class="form-control" id="exampleInputPassword1"
									placeholder="Enter Residental Address" required="required">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">City</label> <input
									type="text" class="form-control" id="exampleInputPassword1"
									placeholder="Enter City" required="required">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">State</label> <input
									type="text" class="form-control" id="exampleInputPassword1"
									placeholder="Enter State" required="required">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Pincode</label> <input
									type="text" class="form-control" id="exampleInputPassword1"
									placeholder="Enter Pincode" required="required">
							</div>
							
							<div class="form-group">
									<label for="exampleFormControlFile1"><h5>Photo</h5></label><br>
									<input type="file" class="form-control-file"
										id="exampleFormControlFile1" >
								</div><br>
							

							<button type="submit" class="btn btn-primary" >Submit</button>
						</form>


					</div>
				</div>

			</div>

		</div>

	</div>


</body>
</html>