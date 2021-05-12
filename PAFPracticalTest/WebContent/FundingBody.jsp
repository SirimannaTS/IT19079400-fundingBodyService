
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

	<div class="container">
         <div class="row">
             <div class="col">
                <h1>Funding Body Management</h1>
<form id="formItem" name="formItem" method="post" action="FundingBody.jsp">
 Item code: 
<input id="itemCode" name="itemCode" type="text" 
 class="form-control form-control-sm">
<br> Item name: 
<input id="itemName" name="itemName" type="text" 
 class="form-control form-control-sm">
<br> Item price: 
<input id="itemPrice" name="itemPrice" type="text" 
 class="form-control form-control-sm">
<br> Item description: 
<input id="itemDesc" name="itemDesc" type="text" 
 class="form-control form-control-sm">
<br>
<input id="btnSave" name="btnSave" type="button" value="Save" 
 class="btn btn-primary">
<input type="hidden" id="hidItemIDSave" name="hidItemIDSave" value="">
</form>

<div id = "alertSuccess" class="alert alert-success">
    <%
     out.print(session.getAttribute("statusMsg"));
    %>
    </div>
    <div id = "alertError" class="alert alert-danger"></div>
    <br>
    <%
    FundingBoady  FundingBodyObj = new FundingBoady();
     out.print(FundingBodyObj.readFundingBodies());
    %>
             </div>
         </div>
    </div>


	


















</body>
</html>