<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ page import="java.util.*"  %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css" />

<!----bootstrap linking -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

<!----font awesome linking -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<!----animate linking -->
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>
<style type="text/css">
	.navbar {
        position: fixed;
        width: 100%;
        z-index: 100;
        background-color:black;
        opacity:0.8;
      
       
      }
		.container-fluid a{
		color:white;
		}
		.navbar-brand span{
		color:green;
		
		}
		.navbar-brand{
			font-weight:bolder;
			font-size:20px;
			
		}
		.fa-solid{
			color: green;
			font-size:25px;
			}
			
		.section1{
			 width:100%;
 			 height:50px;
 			 }	
 			 
 			 .id{
position:relative;}
.id img{
width:100%;
height:793px;
object-fit:cover;
filter: brightness(80%);
}
.content {
		position:absolute;
		top: 255px;
		right:550px;
		display: flex; justify-content: center;
		font-size:55px;
		color:white;
		
		}
		.id form {
  
		  background-color:white;
		  width: 280px;
		  height: 330px;
		  margin: auto;
		  position: absolute;
		  top: 0;
		  bottom: 0;
		  left: 0;
		  right: 0;
			padding:40px;
			border-radius:10px;
			box-shadow:2px 2px gray;
}	
input[type="submit"] {
  background-color: purple;
  color: white;
  border: none;
  border-radius:8px;
  padding: 10px 20px;
  cursor: pointer;
}

	input[type="submit"]:hover {
  background-color:green;
  color: white;
}
 
 			
</style>

<title>Admin</title>
</head>
<body>
	<div class="section1">
	<nav class="navbar">
		  <div class="container-fluid">
		    <a class="navbar-brand  active text-white" ><i class="fa-solid fa-seedling " ></i>Go<span>Veg</span></a>
		    <div class="d-flex">
		     <form action="invoice">
		        <button class="btn btn-outline-success"  type="submit" style="margin-right: 20px;" >Generate Bill</button>
		    </form>
		    <form action="/">
		        <button class="btn btn-outline-danger"  type="submit" >Log Out</button>
		    </form>	
		    </div>
		    </div>  
		</nav>
		
		
		
		
<!-- 
<div class="id">
    <img src="https://images.pexels.com/photos/1103970/pexels-photo-1103970.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1">
    <form name="itemEdit" method="post" action="/customer">
        <b>Enter the ID number</b>
        <input type="text" name="id"/><br><br>
        <b>Item</b><br>
        <select name="itemname">
            <option value="select item">Select Item</option>
            <c:forEach items="${items}" var="item">
                <option value="${item.itemName}">${item.itemName}</option>
            </c:forEach>
        </select><br><br>
        <b>Quantity</b>
        <input type="text" name="itemQty"/><br><br>
        <input type="submit" name="editBtn" value="Proceed"/>
    </form>
</div>
</div>
-->
<div class="id">
    <img src="https://images.pexels.com/photos/1103970/pexels-photo-1103970.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1">
    <form name="itemEdit" method="post" action="/customer">
        <b>Enter the ID number</b>
        <input type="text" name="id"/><br><br>
        <b>Item</b><br>
        <select name="itemname" onchange="calculatePrice()">
            <option value="select item">Select Item</option>
            <c:forEach items="${items}" var="item">
                <option value="${item.itemName},${item.itemPrice}">${item.itemName}</option>
            </c:forEach>
        </select><br><br>
        <b>Quantity</b>
        <input type="text" name="itemQty" oninput="calculatePrice()"/><br><br>
        <b>Price</b>
        <input type="text" name="itemPrice" id="itemPrice" readonly/><br><br>
        <input type="submit" name="editBtn" value="Proceed"/>
    </form>
</div>
</div>
<script>
    function calculatePrice() {
        var itemSelect = document.getElementsByName("itemname")[0];
        var quantityInput = document.getElementsByName("itemQty")[0];
        var priceInput = document.getElementById("itemPrice");
        
        var selectedOption = itemSelect.options[itemSelect.selectedIndex];
        var itemName = selectedOption.value.split(",")[0];
        var itemPrice = parseFloat(selectedOption.value.split(",")[1]);
        var quantity = parseFloat(quantityInput.value);
        
        if (isNaN(quantity)) {
            priceInput.value = "";
        } else {
            var totalPrice = itemPrice * quantity;
            priceInput.value = totalPrice.toFixed(2);
        }
    }
</script>

</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</html>