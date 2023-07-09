<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>

<link rel="icon" type="icon" href="images/Screenshot_2023-03-15_232855-removebg-preview.png">
<link rel="stylesheet" type="text/css" href="css/style.css">


<!----bootstrap linking -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>


<!----font awesome linking -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css" integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />

<!----animate linking -->
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css"/>

<meta charset="ISO-8859-1">
<style>
		html,body {
		width:100%;
		overflow-x:hidden;
			
		}
		table a{
			text-decoration: none;
		}
		.navbar {
        position: fixed;
        width: 100%;
        z-index: 100;
        opacity: 0.7;
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
		.section1{
			 width:100%;
 			 height:795px;
			background-image: url("https://images.pexels.com/photos/1714466/pexels-photo-1714466.jpeg?cs=srgb&dl=cooking-fresh-ingredients-vegetables-1714466.jpg&fm=jpg");
			
			 background-repeat: no-repeat;
			 background-position:center;
 			 background-size: cover;
 			 background-attachment:fixed;
 			
 	
		}
		.fa-solid{
			color: green;
			font-size:25px;
		}
		table tr td a{
			color:white;
		}
		table tr td{
			color:white;
			border: 1px solid white;
		}
		table tr th{
			border: 1px solid white;
		}
		table{
		margin-top:100px;
		}
		.content {
		color:white;
		text-align:center;
		
		
		}
		.content h1{
			font-size:70px;
		}
		.content h3{
			font-size:40px;
		}
		.content button{
			background-color:black;
			border:1px solid gray;
			border-radius:7px;
			opacity:0.7;
			color:white;
			font-size:20px;
			padding:6px 20px ;
			margin-top:40px;
			transtion:transform 2s;
		}
		.content button:hover{
		box-shadow: 3px 3px 10px black;
		background-color:gray;
		opacity:0.7;
		transition:.7s;
		cursor :pointer;
		transform:scale(1.2);
		}
		.form-control,.btn{
		height:30px;
		}
		.btn{
		padding-top:2px;
		}
		.collection-image-container{
		width: 100%;
		
		}
		.collection-image{
			object-position:center;
			margin-top: 130px;
			width:100%;
			height:300px;
			object-fit:contain;
		}
		.section3{
			 width:100%;
 			 height:600px;
 			 }
 		.imgs{
 		width:100%;
 		height:200px;
 		}	
	</style>
<title>GoVeg Store</title>

</head>
<body >
<div class="section1">
<nav class="navbar navbar-expand-lg bg-dark">
  <div class="container-fluid">
    <a class="navbar-brand animate__animated animate__rubberBand active text-white" ><i class="fa-solid fa-seedling " ></i>Go<span>Veg</span></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active text-white"  href="#section3">View Products</a>
        </li>
        
        <li class="nav-item">
          <a class="nav-link active text-white" href='/login' role="button" >Login</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
	<div class="row">
		<div class="col-3"></div>
		<div class="col-6 d-flex justify-content-center">
		<!-- 	<table style="width:500px;" class="table " >
				<tr style="background-color: #4CAF50;">
					<th>Category</th>
					<th>Item</th>
					<th>Customer</th>
					<th>Farmer</th>
					
				</tr>
				<tr>
					<td><a href="CategoryAdd.html"> New Category</a></td>
					<td><a href="ItemAdd.html">New Item</a></td>
					<td><a href="CustomerAdd.html">New Customer</a></td>
					<td><a href="FarmerAdd.html">New Farmer</a></td>
				</tr>
				<tr>
					<td><a href="CategoryVED.jsp"> View/Edit/Delete</td>
					<td>View/Edit/Delete</td>
					<td>View/Edit/Delete</td>
					<td>View/Edit/Delete</td>
				</tr>
			</table>-->
		</div>
		<div class="col-3"></div> 
	</div>
	<div id="content" class="content">
	<div class=" animate__animated animate__pulse">
		<h1 style="margin-top:230px;">Your Diligent Supplier</h1>
		<h3>Fresh Vegetables and Fruits</h3>
	</div>
		<a href="#section3"><button>Check out</button></a>
	</div>	
</div>


<div id="section3"class="section3">
	<div class="container d-flex justify-content-centre mt-5">
		<div class="row">
			<h2 style="margin-bottom:40px;">Our Products</h2>
				<div class="container d-flex justify-content-between">
				<div class="card" style="width: 18rem;">
		 			<img class="imgs" src="https://images.pexels.com/photos/1300975/pexels-photo-1300975.jpeg?auto=compress&cs=tinysrgb&w=600" class="card-img-top" alt="...">
		  			<div class="card-body">
		    			<h5 class="card-title">FRUITS</h5>
		    			<p class="card-text"> Fruits are usually sweet or sour in taste, and are rich in nutrients such as vitamins, minerals, and fiber.</p>
		    			<br><a href="timeoutFruit" class="btn btn-primary">View Items</a>
  					</div>
				</div>
				<div class="card" style="width: 18rem;">
		 			<img class="imgs" src="https://images.pexels.com/photos/2751755/pexels-photo-2751755.jpeg?auto=compress&cs=tinysrgb&w=600" class="card-img-top" alt="...">
		  			<div class="card-body">
		    			<h5 class="card-title">VEGETABLE</h5>
		    			<p class="card-text">important source of nutrients such as vitamins, minerals, fiber, and antioxidants, and are a key part of a healthy and balanced diet.</p>
		    			<a href="/viewVeg" class="btn btn-primary">View Items</a>
  					</div>
				</div>
				<div class="card" style="width: 18rem;">
		 			<img class="imgs" src="https://pibindia.files.wordpress.com/2016/12/istock_000020447381_medium.jpg?w=1400" class="card-img-top" alt="...">
		  			<div class="card-body">
		    			<h5 class="card-title">PULSE</h5>
		    			<p class="card-text">Pulses are a healthy and sustainable food source, and are a key part of many vegetarian and vegan diets. </p>
		    			<br><a href="/viewPulses" class="btn btn-primary ">View Items</a>
  					</div>
				</div>
				<div class="card" style="width: 18rem;">
		 			<img class="imgs" src="https://images.theconversation.com/files/389530/original/file-20210315-21-ajek7r.jpg?ixlib=rb-1.1.0&rect=37%2C0%2C4955%2C3330&q=45&auto=format&w=926&fit=clip" class="card-img-top" alt="...">
		  			<div class="card-body">
		    			<h5 class="card-title">CEREAL</h5>
		    			<p class="card-text">Cereals are an important source of carbohydrates, fiber, and other nutrients, and are a key part of many people's diets.</p>
		    			<a href="/viewCereal" class="btn btn-primary ">View Items</a>
  					</div>
				</div>
				</div>
		</div>
	</div>
</div>

<div class="section2">
	<div class="container">
		<div class="row ">
			<div class="col-6 mt-1 p-5">
			<h2>About GoVeg</h2><br>
			<p style="text-align:justify">
				We are a team of youngsters who are passionate about providing fresh, healthy and locally sourced produce to our customers. We believe that everyone deserves to have access to nutritious food that supports a healthy lifestyle, and that buying from local farmers is not only good for our bodies but also good for our communities.
				We work hard to ensure that the fruits and vegetables we offer are grown sustainably and without the use of harmful chemicals or pesticides. We believe that sustainable farming practices not only protect the environment but also ensure that our customers get the best quality produce possible.			
			<br>Thank you for choosing our platform. We hope you enjoy the fresh, healthy and delicious produce that we offer and we look forward to serving you again and again!
			</p>	
			</div>
			<div class="col-6 ">
				<div class="collection-image-container">
					<img class="collection-image" src="https://images.pexels.com/photos/775707/pexels-photo-775707.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1">
				</div>
			</div>
		</div>
	</div>
</div>	
  <div
    class="d-flex flex-column flex-md-row text-center text-md-start justify-content-between py-4 px-4 px-xl-5 bg-secondary">
    <!-- Copyright -->
    <div class="text-white mb-3 mb-md-0">
      Copyright © 2023. All rights reserved.
    </div>
    <!-- Copyright -->

    <!-- Right -->
    <div>
      <a href="#!" class="text-white me-4">
        <i class="fab fa-facebook-f"></i>
      </a>
      <a href="#!" class="text-white me-4">
        <i class="fab fa-twitter"></i>
      </a>
      <a href="#!" class="text-white me-4">
        <i class="fab fa-google"></i>
      </a>
      <a href="#!" class="text-white">
        <i class="fab fa-linkedin-in"></i>
      </a>
    </div>
    <!-- Right -->
  </div>
</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</html>