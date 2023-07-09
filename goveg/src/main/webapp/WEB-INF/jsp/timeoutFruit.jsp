<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style type="text/css">
.spinner {
 width: 56px;
 height: 56px;
 display: grid;
 border: 4px solid #0000;
 border-radius: 50%;
 border-right-color: #004dff;
 animation: spinner-a4dj62 1s infinite linear;
}

.spinner::before,
.spinner::after {
 content: "";
 grid-area: 1/1;
 margin: 2px;
 border: inherit;
 border-radius: 50%;
 animation: spinner-a4dj62 2s infinite;
}

.spinner::after {
 margin: 8px;
 animation-duration: 3s;
}
.pos{
 position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
}
@keyframes spinner-a4dj62 {
 100% {
  transform: rotate(1turn);
 }
}
</style>
<title>Insert title here</title>
</head>
<body>
	<div class="pos">
<div class="spinner" align="center"></div>Loading
</div>
</body>
 <script>
      setTimeout(function(v) {
        window.location.href = "viewFruits";
      }, 2000);
    </script>
