$(document).ready(function()
{
alert("fBody.js file conncted") 
if ($("#alertSuccess").text().trim() == "") 
 { 
 $("#alertSuccess").hide(); 
 } 
 $("#alertError").hide(); 
}); 
// SAVE ============================================
$(document).on("click", "#btnSave", function(event)
{ 
// Clear alerts---------------------
 $("#alertSuccess").text(""); 
 $("#alertSuccess").hide(); 
 $("#alertError").text(""); 
 $("#alertError").hide(); 
// Form validation-------------------
var status = validateFbodyForm(); 
if (status != true) 
 { 
 $("#alertError").text(status); 
 $("#alertError").show(); 
 return; 
 } 
// If valid------------------------
var type = ($("#hidFbodyIDSave").val() == "") ? "POST" : "PUT"; 
 $.ajax( 
 { 
 url : "FbodyAPI", 
 type : type, 
 data : $("#formFbody").serialize(), 
 dataType : "text", 
 complete : function(response, status) 
 { 
 onFbodySaveComplete(response.responseText, status); 
 } 
 }); 
});

function onFbodySaveComplete(response, status)
{ 
if (status == "success") 
 { 
 var resultSet = JSON.parse(response); 
 if (resultSet.status.trim() == "success") 
 { 
 $("#alertSuccess").text("Successfully saved."); 
 $("#alertSuccess").show(); 
 $("#divFbodyGrid").html(resultSet.data); 
 } else if (resultSet.status.trim() == "error") 
 { 
 $("#alertError").text(resultSet.data); 
 $("#alertError").show(); 
 } 
 } else if (status == "error") 
 { 
 $("#alertError").text("Error while saving."); 
 $("#alertError").show(); 
 } else
 { 
 $("#alertError").text("Unknown error while saving.."); 
 $("#alertError").show(); 
 } 
 $("#hidFbodyIDSave").val(""); 
 $("#formFbody")[0].reset(); 
}




// UPDATE==========================================
$(document).on("click", ".btnUpdate", function(event) 
{ 

 $("#hidFbodyIDSave").val($(this).data("itemid"));  
 $("#fBodyName").val($(this).closest("tr").find('td:eq(0)').text()); 
 $("#fBodyEmail").val($(this).closest("tr").find('td:eq(1)').text()); 
 $("#fBodyAddress").val($(this).closest("tr").find('td:eq(2)').text());
 $("#fBodyPhone").val($(this).closest("tr").find('td:eq(3)').text()); 
 $("#fBodyIarea").val($(this).closest("tr").find('td:eq(4)').text());  
 $("#fBodyFrange").val($(this).closest("tr").find('td:eq(5)').text()); 
}); 


$(document).on("click", ".btnRemove", function(event)
{ 
 $.ajax( 
 { 
 url : "FbodyAPI", 
 type : "DELETE", 
 data : "stakeholderID=" + $(this).data("itemid"),
 dataType : "text", 
 complete : function(response, status) 
 { 
 onFbodyDeleteComplete(response.responseText, status); 
 } 
 }); 
});
function  onFbodyDeleteComplete(response, status)
{ 
if (status == "success") 
 { 
 var resultSet = JSON.parse(response); 
 if (resultSet.status.trim() == "success") 
 { 
 $("#alertSuccess").text("Successfully deleted."); 
 $("#alertSuccess").show(); 
 $("#divFbodyGrid").html(resultSet.data); 
 } else if (resultSet.status.trim() == "error") 
 { 
 $("#alertError").text(resultSet.data); 
 $("#alertError").show(); 
 } 
 } else if (status == "error") 
 { 
 $("#alertError").text("Error while deleting."); 
 $("#alertError").show(); 
 } else
 { 
 $("#alertError").text("Unknown error while deleting.."); 
 $("#alertError").show(); 
 }
 }
// CLIENT-MODEL================================================================
function validateFbodyForm() 
{ 
// NAME
if ($("#fBodyName").val().trim() == "") 
 { 
 return "Insert Funding Body name."; 
 } 

//EMAIL
if ($("#fBodyEmail").val().trim() == "") 
 { 
 return "Insert Funding Body email."; 
 } 

// EMAIL VALIDATION 
var tmpEmail = $("#fBodyEmail").val().trim();
var atposition=tmpEmail.indexOf("@");  
var dotposition=tmpEmail.lastIndexOf(".");  
if (atposition<1 || dotposition<atposition+2 || dotposition+2>=tmpEmail.length)
{
return "Please enter a valid email address."; 

}

// ADDRESS
if ($("#fBodyAddress").val().trim() == "") 
 { 
 return "Insert Funding Body address."; 
 } 

// PHONE NUMBER-------------------------------
if ($("#fBodyPhone").val().trim() == "") 
 { 
 return "Insert Phone number."; 
 } 
// is numerical value
var tmpPhone = $("#fBodyPhone").val().trim(); 
if (!$.isNumeric(tmpPhone)) 
 { 
 return "Insert a numerical value for Phone number."; 
 } 

// RESEARCH INTEREST AREA------------------------
if ($("#fBodyIarea").val().trim() == "") 
 { 
 return "Insert research interest area."; 
 } 
 
 //FUND RANGE---------------
 if ($("#fBodyFrange").val().trim() == "") 
 { 
 return "Insert Fund Range."; 
 } 
// is numerical value
var tmpPrice = $("#fBodyFrange").val().trim(); 
if (!$.isNumeric(tmpPrice)) 
 { 
 return "Insert a numerical value for Fund Range."; 
 } 
// convert to decimal price
 $("#fBodyFrange").val(parseFloat(tmpPrice).toFixed(2)); 
 
 
 
return true; 
}/**
 * 
 *//**
 * 
 */