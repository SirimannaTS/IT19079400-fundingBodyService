
<%@page import="com.FundingBoady"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<script src="Components/jquery-3.2.1.min.js"></script>
<script src="Components/item.js"></script>
<link rel="stylesheet" href="Views/bootstrap.min.css">

<meta charset="ISO-8859-1">
<title>Funding Body Management</title>
</head>
<body>

<div class="container"><div class="row"><div class="col-6"> 
<h1>Funding Body Management </h1>
<form id="formFbody" name="formFbody">
 Funding Body Name: 
 <input id="fBodyName" name="fBodyName" type="text" 
 class="form-control form-control-sm">
 <br> Funding Body Email: 
 <input id="fBodyEmail" name="fBodyEmail" type="text" 
 class="form-control form-control-sm">
 <br> Funding Body Address: 
 <input id="fBodyAddress" name="fBodyAddress" type="text" 
 class="form-control form-control-sm">
  <br> Funding Body Phone: 
 <input id="fBodyPhone" name="fBodyPhone" type="text" 
 class="form-control form-control-sm">
  <br> Funding Body Research Interest Area: 
 <input id="fBodyIarea" name="fBodyIarea" type="text" 
 class="form-control form-control-sm">
 <br> Funding Body Fund Range: 
 <input id="fBodyFrange" name="fBodyFrange" type="text" 
 class="form-control form-control-sm">
 <br>
 <input id="btnSave" name="btnSave" type="button" value="Save" 
 class="btn btn-primary">
 <input type="hidden" id="hidFbodyIDSave" 
 name="hidFbodyIDSave" value="">
</form>
<div id="alertSuccess" class="alert alert-success"></div>
<div id="alertError" class="alert alert-danger"></div>
<br>
<div id="divFbodyGrid">
 <%
 FundingBoady FundingBoadyObj = new FundingBoady(); 
 out.print(FundingBoadyObj.readFundingBodies()); 
 %>
</div>
</div> </div> </div> 


</body>
</html>