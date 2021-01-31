<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<title>About</title>
		
		<meta name="viewport" content="width=device-width, initial-scale=1">
	
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

		<!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

		<!-- Popper JS -->
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

		<!-- Latest compiled JavaScript -->
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


	
	<style>
		body{
			background-color: lightgrey;
		}
		.container-fluid{
			padding-top: 20px;
 			padding-right: 20px;
 			padding-bottom: 5px;
			padding-left: 40px;

		}
		.service {
			border: 5px outset black;
			background-color: lightblue;
 			text-align: center;
 			margin : 10px;
 			
 			
		}
		#ser_con{
			padding-top: 20px;
 			padding-right: 30px;
 			padding-bottom: 5px;
			padding-left: 40px;
		}
		p{
			padding-top: 20px;
 			padding-right: 20px;
 			padding-bottom: 5px;
			padding-left: 40px;
		}
		#top{
			padding-top : 20px;
		}
		#img {
			background-image: url('images/fl.jpeg');
			background-position: center;
			background-repeat: no-repeat;
			background-size: cover;
			height: 305px;
		}
		.button {
 			background-color: lightblue;
			border: 2px solid blue;
			color: blue;
			
			padding-top: 2px;
 			padding-right: 2px;
 			padding-bottom: 2px;
			padding-left: 2px;
			
			text-decoration: none;
			
			font-size: 16px;
			height : 40px;
			width : 160px;
			position: absolute;
			top : 28%;
			left: 20%;
			cursor: pointer;
			border-radius: 5px;
		}
		#txt{
			position : relative;
			top : 35%;
			left : 15%;
			
		}
		
		
	</style>
	</head>
	
	
	
	<body>
	
	<div class = 'container-fluid' >

		<div class= 'row' id = 'img'>
			<p id='txt' style="color:white; font-family:'Courier New'; font-size:30px ">Plan an Event </p></br>
			<button class = 'button' onclick=window.open("EventReg.do","_self")><center>Book Event</center></button>
		</div>

	
		<div class='service'>
			<center><h1>Our Services</h1></center>
		</div>
		
		
		<div class = 'row' id = 'top'>
			<div class='col-sm-6' id = 'ser_con'>
				<p style="font-size:20px"> Specializing in the creation of exceptional events for private and corporate clients, we design, plan and manage every project from conception to execution. </p>

				<p style="font-size:20px"> Our group of seasoned professionals understands that breakthrough ideas are only as good as the discipline supporting them. At Bassett Events we believe that there is a sublime connection between the mastery of logistics and the creation of astonishment. </p>

 				<p style="font-size:20px"> Our events are completely customized, reflecting the brand personality of each client. Whether we act for a family, a product, a company or a cause, our work embrace experiences that integrate innovative design with the finest in wine and cocktails, dining, music, entertainment and  most important of all  that intangible element of surprise.</p>
			</div>
			<div class='col-sm-6' id = 'ser_con' >
				<center><p style="font-size:20px">PRINT & GRAPHIC DESIGN; DECOR DESIGN & FABRICATION; LIGHTING DESIGN & PRODUCTION; TABLE DESIGN & EXECUTION; FLORAL DESIGN & INSTALLATION; SOUND DESIGN; INVITATION & RSVP MANAGEMENT; BUDGET DEVELOPMENT; CRITICAL PATH DEVELOPMENT; VENDOR CONTRACT NEGOTIATION; CATERING CONSULTATION; EVENT STAFFING; MEDIA RELATIONS; SPONSORSHIP MANAGEMENT; TALENT PROCUREMENT; VIDEO PRODUCTION MANAGEMENT; MULTIMEDIA PRODUCTION MANAGEMENT; HOSPITALITY & TRAVEL; PROTOCOL & CONCIERGE ACTIVATION; TOTAL EVENT LOGISTICS;</p></center> 			
			</div>
		</div>
	</div>
	</body>
</html>