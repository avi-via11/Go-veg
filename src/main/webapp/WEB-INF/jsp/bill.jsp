<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


	
	<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css" />

<!----bootstrap linking -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>

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
 		.table{
 		
 		width:50%;
 		text-align:center;
 		
 	
 		}	
 		.section2 {
        width: 30%;
        margin: 0 auto; /* center the body tag horizontally */
        border: 2px solid black; /* add a red border with 2px width */
        padding:40px 50px;
      }	 
 			
</style>

<title>Admin</title>
</head>
<body >
<div class="section1">
	<nav class="navbar ">
		  <div class="container-fluid">
		    <a class="navbar-brand  active text-white" ><i class="fa-solid fa-seedling " ></i>Go<span>Veg</span></a>
  
		    <form action="index.html">
		        <button class="btn btn-outline-danger"  type="submit" >LOG OUT</button>
		    </form>	 
		  </div>
		</nav>

</div>		

<br>
<br>

<table class="table  table-striped mt-4">
<thead>
  <tr>

                <th>Name</th>
                <th>Quantity(Kg)</th>
                <th>Price</th>

            </tr>
        </thead>
        <tbody>
	 <c:forEach var="item" items="${items}">
            <tr>
             <td>${item.itemName}</td>
                <td>${item.qty}</td>
                <td>${item.itemprice}</td>

            </tr>
             </c:forEach>

        </tbody>
    </table>
Total = <c:set var="subtotal" value="0" />
<c:forEach var="item" items="${items}">
    <c:set var="subtotal" value="${subtotal + item.itemprice}" />
</c:forEach>
${subtotal}
<br><br><form action="/deleteData" method="post">
    <input type="hidden" name="regId" value="${regId}">
    <button type="submit">Buy</button>
</form><br><br>

<b>Thanks for Shopping</b><i class="fa-solid fa-seedling " ></i>Go<span>Veg</span>
</body>
</html>