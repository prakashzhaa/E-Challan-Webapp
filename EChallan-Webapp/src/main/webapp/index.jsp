<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.DB.DBConnect" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>E-Challan: Index</title>
	<%@include file="AllModule/allCSS.jsp"%>
	<style type="text/css">
	.back-img{
	background: url(img/b.jpg);
	height: 80vh;
	width: 100%; 
	background-size: cover;
	background-repeat: no-repeat;
	}
	</style>
</head>
<body>
	<%@include file="AllModule/navbar.jsp"%>
	
		
	<div class="container-fluid back-img">
	<h2 class="text-center text-primary">Electronic Challan Details</h2>
	<div class="container-fluid">
    <label>
      <input onClick="window.location='#';" class="text-center text-danger" name="group3" type="radio" checked />
      <span>PAY CHALLAN</span>
    </label>
    <label>
      <input onClick="window.location='#';" class="text-center text-danger" name="group3" type="radio" checked />
      <span>VIEW CHALLAN</span>
    </label>
    <label>
      <input onClick="window.location='#';" class="text-center text-danger" name="group3" type="radio" checked />
      <span>ISSUE CHALLAN</span>
    </label>
</div>
	</div>
	
<%@include file="AllModule/footer.jsp" %>

	
	
	
</body>
</html>