<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="java.lang.Character" %>
	<%@page import="java.util.*" %>
	 <%@page import="java.sql.*"%>
	
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
 			
 			
 			
 			
</style>

<title>Admin</title>
</head>
<body>
<div class="section1">
	<nav class="navbar ">
		  <div class="container-fluid">
		    <a class="navbar-brand  active text-white" ><i class="fa-solid fa-seedling " ></i>Go<span>Veg</span></a>
    		<div  class="d-flex " >
    		<form class="me-2" action="/login"> 
		        <button class="btn btn-outline-success"  type="submit" >BUY</button>
		    </form>	  
		    <form action="/">
		        <button class="btn btn-outline-danger"  type="submit" >Home</button>
		    </form>	
		    </div>  
		  </div>
		</nav>

</div>		
<div class="section2 container mt-5 border p-1">
<table class="ui celled table">
<thead >
<tr class="colour">
	<th style=" background-color:powderblue;">Sl.No</th>
	<th  style=" background-color:powderblue;">Name</th>
	<th  style=" background-color:powderblue;">Price</th>
	<th  style=" background-color:powderblue;">Available(Kg)</th>
</tr>
</thead>


<tbody>
				<c:forEach items="${items}" var="item" varStatus="loop">
				  <c:if test="${item.catId==1 }">
				    <tr>
				      <td>${loop.index-2}</td>
				     <td>${fn:toUpperCase(item.itemName)}</td>
				      <td>${item.itemPrice}</td>
				      <td>${item.intemQty}</td>
				    </tr>
				  </c:if>
				</c:forEach>
			</tbody>
</table>
</div>
</body>
</html>