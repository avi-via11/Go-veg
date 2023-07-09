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
		.formSection form {
  
		  background-color: #EBEBEB;
		  width: 280px;
		  height: 360px;
		  margin: auto;
		  position: absolute;
		  top: 0;
		  bottom: 90px;
		  left: 15px;
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

		    <form action="admin.html">
		        <button class="btn btn-outline-danger"  type="submit" >Back</button>
		    </form>	
		    </div>  
		</nav>
	
		
		<div class="id">
		<img src="https://themefisher.com/blog/simple-admin-panel-templates.png">
		<div class="formSection">
	<form name="itemNew" method="post" action="additem">
	<b>Category</b><br><select name="catId" id="id">
				<option value="select_one">--Select One--</option>
				<option value=1> Fruits</option>  
				<option value=2> Vegetables</option>  
				<option value=3> Pulses</option>  
				<option value=4> Cereals</option>  
			</select> <br>
	Item Name<input type="text" name="itemName"/><br>
	Item Price<input type="number" id="price" name="itemPrice" step="0.01" min="0.00" required><br>
	Item Quantity<input type="number" id="price" name="itemQty" step="0.01" min="0.00" required><br>
	Date<br><input type="date" id="myDate" name="myDate"><br><br>
	
	<input type="submit" value="save"/>
	</form>

		</div>
		
	</div>
</div>


</body>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</html>