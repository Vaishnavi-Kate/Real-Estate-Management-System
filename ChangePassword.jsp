<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.sql.*,com.*" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<!-- Basic Page Needs ================================================== -->
	<title>Search My Home</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Free property search and posting for latur">
	<meta name="keywords" content="Search my home latur,Home,House,Flats,Flatmates,Pg Hostel,Buy,Search,Rent">
	<meta name="author" content="Ingenious Technohub And Team">
	<style>
		 .requried
		{
			font-weight:bold;
			color:#ff6565;
		}
	</style>
	<!-- CSS ================================================== -->
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/colors/main.css" id="colors">
</head>
<body>
	<% if(session.getAttribute("uid")==null) { %> 
		<script type="text/javascript">
			location.href="login-register.jsp";
		</script>
	<% } %>
<!-- Wrapper -->
<div id="wrapper">

<!-- Header Container ================================================== -->
<jsp:include page="Header.jsp"></jsp:include>
<!-- Header Container / End -->

<!-- Titlebar ================================================== -->
<div id="titlebar">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h2>Change Password</h2>
				<!-- Breadcrumbs -->
				<nav id="breadcrumbs">
					<ul>
						<li><a href="#">Home</a></li>
						<li>My Profile</li>
						<li>Change Password</li>
					</ul>
				</nav>
			</div>
		</div>
	</div>
</div>

<!-- Content ================================================== -->
<div class="container">
	<div class="row">
		<!-- Widget -->
		<jsp:include page="MyProfileSidebar.jsp"></jsp:include>
		
		<form action="ChangePasswordDB.jsp" method="post">
			<div class="col-md-8">
				<div class="row">
					<div class="col-md-8 my-profile">
						<label>Old Password <span class="requried">*</span></label>
						<input id="oldpass" name="oldpass" value="" type="password" placeholder="Old Password">
	
						<label>New Password <span class="requried">*</span></label>
						<input id="newpass" name="newpass" value="" type="password" placeholder="New Password">
	
						<label>Confirm New Password <span class="requried">*</span></label>
						<input id="confirmpass" name="confirmpass" value="" type="password" placeholder="Confirm New Password">
						<span id="msg" style="color:red;font-weight:bold"></span> <br>
						<input type="submit" onclick="return validate();" value="Change Password" class="button margin-top-20 margin-bottom-20">
					</div>
				</div>
			</div>
		</form>
	</div>
</div>

<!-- Footer
================================================== -->
<div class="margin-top-55"></div>

<jsp:include page="Footer.jsp"></jsp:include>

<!-- Scripts
================================================== -->
<script src="../../cdn-cgi/scripts/78d64697/cloudflare-static/email-decode.min.js"></script><script type="text/javascript" src="scripts/jquery-2.2.0.min.js"></script>
<script type="text/javascript" src="scripts/chosen.min.js"></script>
<script type="text/javascript" src="scripts/magnific-popup.min.js"></script>
<script type="text/javascript" src="scripts/owl.carousel.min.js"></script>
<script type="text/javascript" src="scripts/rangeSlider.js"></script>
<script type="text/javascript" src="scripts/sticky-kit.min.js"></script>
<script type="text/javascript" src="scripts/slick.min.js"></script>
<script type="text/javascript" src="scripts/masonry.min.js"></script>
<script type="text/javascript" src="scripts/mmenu.min.js"></script>
<script type="text/javascript" src="scripts/tooltips.min.js"></script>
<script type="text/javascript" src="scripts/custom.js"></script>
</div>
<!-- Wrapper / End -->

<script>
	function validate()
	{
		var result = false;
		var oldpass = document.getElementById('oldpass').value;
		var newpass = document.getElementById('newpass').value;
		var confirmpass = document.getElementById('confirmpass').value;
		var msg = document.getElementById('msg');
		if(oldpass == "" || newpass == "" || confirmpass == "")
		{
			//alert('Fill all the fields');
			msg.innerHTML = "Fill all the fields";
		}
		else
		{
			if(newpass != confirmpass)
			{
				//alert('New password and confirm password are mismatch.');
				msg.innerHTML = "New password and confirm password are mismatch.";
			}
			else
			{
				result = true;
			}	
		}
		return result;	
	}
</script>
</body>
</html>