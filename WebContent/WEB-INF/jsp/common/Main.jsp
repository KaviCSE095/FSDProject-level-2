<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<html>
<head>
<title>Event Organizers-Register</title>
    <link rel="shortcut icon" href="images/logo.png" type="image/png">
<meta charset="ISO-8859-1">
<style>
body{
	background:black;
}
.homeclass{
	
}
.maindiv {
	background:url("images/event.jpg");
	background-position:center;
	background-size:cover;
	height:110%;
	width:100%;
	margin-top:-20%;
  }
.header{
	text-align:center;
	height:15%;
}
.menu{
	 position: sticky;
	top: 0;
}
ul{
  margin-top:-2%;
  list-style-type: none;
  overflow: hidden;
  background-color:black;
  
}

li{
  float:right;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover {
  background-color:hotpink;
}

.active {
  background-color: Deeppink;
}
.logo{
	float:left;
}

button.a{
	border-radius:50%;
	height:31%;
	width:17%;
	border:none;
	background-image:url("images/book.png");
	background-size:cover;
	background-position:center;
	opacity:50%;
	margin-top:20%;
	outline:none;
}
button.b{
	border-radius:50%;
	height:31%;
	width:17%;
	border:none;
	background-image:url("images/catering.jpg");
	background-size:cover;
	background-position:center;
	opacity:50%;
	margin-top:20%;
	outline:none;
}
button:hover{
	opacity:100%;
}
.buttondiv{
	display:block;
	text-align:center;
	margin-top:140px;
}
.mainsub1{
	display:flex;
	width:100%;
	height:100%;
}
.mainsub2{
	display:flex;
	width:100%;
	height:100%;
}
.mainsub3{
	display:flex;
	width:100%;
	height:100%;
}
.mainsub4{
	display:flex;
	width:100%;
	height:100%;
}
.mainsub5{
	display:flex;
	width:100%;
	height:100%;
}
.sub1{
	
	width:50%;
	background-image:url("images/engagement.jpg");
	background-size:cover;
	background-position:center;
}
.sub2{
	width:50%;
	background-image:url("images/reception.jpg");
	background-size:cover;
	background-position:center;
}
.sub3{
	width:50%;
	background-image:url("images/marriage.jpg");
	background-size:cover;
	background-position:center;
}
.sub4{
	width:50%;
	background-image:url("images/anniversary.jpg");
	background-size:cover;
	background-position:center;
}
.sub5{
	width:50%;
	background-image:url("images/birthday.jpg");
	background-size:cover;
	background-position:center;
}
.sub6{
	width:50%;
	background-image:url("images/bussiness.jpg");
	background-size:cover;
	background-position:center;
}
.sub7{
	width:50%;
	background-image:url("images/parties.jpg");
	background-size:cover;
	background-position:center;
}
.sub8{
	width:50%;
	background-image:url("images/function.jpg");
	background-size:cover;
	background-position:center;
}
.sub9{
	width:50%;
	background-image:url("images/celebration.jpg");
	background-size:cover;
	background-position:center;
}
.sub10{
	width:50%;
	background-image:url("images/competitions.jpg");
	background-size:cover;
	background-position:center;
}
h1{
	font-color:white;
	text-align:center;
}
</style>
</head>
<body>
<div class="homeclass">
	<div class="header"><font color="white" size="50%"><b>KRKB EVENT ORGANIZERS</b><br><br> </font></div>
	<div class="menu">
				<ul>
					<li><a class="active" href="admin.do">Admin</a></li>
					<li><a href="about.do">About</a></li>  
					<li><a href="gallery.do">Gallery</a></li>
					<li><a href="login.do">Catering</a></li>
					
				</ul>
			</div>
	<div class="maindiv">
		<div class="buttondiv">
			<button onclick=window.open("EventReg.do","_self") class="a"></button> <button onclick=window.open("login.do","_self") class="b"></button>
		</div>
	</div>
	<div class="maindiv2">
		<img src="images/events1.png" width="100%" height="40%"/>
	</div>
	<font color="white">
	<div class="maindiv3">
		<div class="mainsub1">
			<div class="sub1"><h1>ENGAGEMENTS</h1></div>
			<div class="sub2"><h1>RECEPTIONS</h1></div>
		</div>
		<div class="mainsub2">
			<div class="sub3"><h1>WEDDINGS</h1></div>
			<div class="sub4"><h1>ANNIVERSARY</h1></div>
		</div>
		<div class="mainsub3">
			<div class="sub5"><h1>BIRTHDAYS</h1></div>
			<div class="sub6"><h1>BUSSINESS</h1></div>
		</div>
		<div class="mainsub4">
			<div class="sub7"><h1>PARTIES</h1></div>
			<div class="sub8"><h1>FUNCTIONS</h1></div>
		</div>
		<div class="mainsub5">
			<div class="sub9"><h1>CELEBRATIONS</h1></div>
			<div class="sub10"><h1>ANNUAL EVENTS</h1></div>
		</div>
	</div>
<div class="footer">
	<marquee> ALL DETAILS WILL BE SAFE AND SECURE</marquee>
</div>
</div>
</font>
</body>
</html>
