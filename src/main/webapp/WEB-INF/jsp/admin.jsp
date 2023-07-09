<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
filter: brightness(50%);
}
.content {
		position:absolute;
		top: 255px;
		right:550px;
		display: flex; justify-content: center;
		font-size:55px;
		color:white;
		
		}
 			
</style>

<title>Admin</title>
</head>
<body>
	<div class="section1">
	<nav class="navbar">
		  <div class="container-fluid">
		    <a class="navbar-brand  active text-white" ><i class="fa-solid fa-seedling " ></i>Go<span>Veg</span></a>
		 
		    <ul class="navbar-nav  me-auto mb-2 mb-lg-0">
		    <div  class="d-flex " >	  
		    	<li class="nav-item ">
           			<a class="nav-link active text-white" href='/additem' role="button" >Add Item</a>
       			</li>
     		
     		
     		
       			<li class="nav-item mx-4">
           			<a class="nav-link active text-white" href='/purchaseentry' role="button" >Entry</a>
       			</li>
       			
       			<li class="nav-item mx-3">
           			<a class="nav-link active text-white" href='/purchasereport' role="button" >PurchaseReport</a>
       			</li>
       			</div>
       			</ul>	
       			
       			
       	
    		<div  class="d-flex " >	  
    		
    		<button class="btn btn-primary me-3" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasExample" aria-controls="offcanvasExample">
			  View items
			</button>
			
			<div class="offcanvas offcanvas-start" tabindex="-1" id="offcanvasExample" aria-labelledby="offcanvasExampleLabel">
			  <div class="offcanvas-header">
			    <h5 class="offcanvas-title" id="offcanvasExampleLabel">Item Catalog</h5>
			    <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
			  </div>
			  <div class="offcanvas-body">
			    <div>
			      Choose the Category of the item you wish to choose 
			    </div>
			    <div class="dropdown mt-3">
			      <button class="btn btn-primary dropdown-toggle" type="button" data-bs-toggle="dropdown">
			        Select
			      </button>
			      <ul class="dropdown-menu bg-primary ">
			        <li><a class="dropdown-item " href="adminFruitsVED.jsp">Fruits</a></li>
			        <li><a class="dropdown-item" href="adminVegVED.jsp">Vegetables</a></li>
			        <li><a class="dropdown-item" href="adminPulseVED.jsp">Pulses</a></li>
			        <li><a class="dropdown-item" href="adminCerealVED.jsp">Cereals</a></li>
			      </ul>
			    </div>
			  </div>
			</div> 
		    <form action="/">
		        <button class="btn btn-outline-danger"  type="submit" >Log Out</button>
		    </form>	
		    </div>  
		  </div>
		</nav>
		
		<div class="id">
		<img src="https://themefisher.com/blog/simple-admin-panel-templates.png">
		<div class="content">Welcome Admin </div>
		
	</div>

</div>	

</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</html>