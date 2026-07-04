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
	 .required
	{
		font-weight:bold;
		color:#ff6565;
	}
	</style>
	<!-- CSS ================================================== -->
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/colors/main.css" id="colors">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
<script type="text/javascript">
	<%if(session.getAttribute("uid")==null){ %>
		location.href='login-register.jsp';	
	<%}%>
</script>
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

				<h2>My Profile</h2>

				<!-- Breadcrumbs -->
				<nav id="breadcrumbs">
					<ul>
						<li><a href="#">Home</a></li>
						<li>My Profile</li>
					</ul>
				</nav>

			</div>
		</div>
	</div>
</div>


<!-- Content
================================================== -->
<div class="container">
	<div class="row">
		<!-- Widget -->
		<jsp:include page="MyProfileSidebar.jsp"></jsp:include>
		<%
			PreparedStatement ps= DbConnect.getCon().prepareStatement("SELECT * FROM tbluser_registrations WHERE User_id = '"+session.getAttribute("uid")+"'");
			ResultSet rs=ps.executeQuery();
			if(rs.next())
			{ %>
				<form action="my-profileDB.jsp" method="post">
					<div class="col-md-8">
						<div class="row">
							<div class="col-md-8 my-profile">
<!-- 								<h4 class="margin-top-0 margin-bottom-30">My Account</h4> -->
								<p class="form-row form-row-wide">
									<label for="name" style="text-align:right;margin-top:-15px;margin-bottom:-20px;"><span class="required">*</span> Are required fields</label>
								</p>
								
								<label>Name <span class="required">*</span></label>
								<input name="name" value="<%=rs.getString(2) %>" type="text" required>

								<label>Phone <span class="required">*</span></label>
								<input id="phone" name="phone" value="<%=rs.getString(3) %>" type="number" required>
			
								<label>Alternate Phone</label>
								<input id="phone1" name="phone1" value="<%=rs.getString(4) %>" type="number">
			
								<label>Email <span class="required">*</span></label>
								<input name="email" value="<%=rs.getString(5) %>" type="email" required>
								<label style="font-size:14px;color:gray;margin-top:-15px;"><b>Note: </b>Your email will be your username</label>
			
								<label>Address <span class="required">*</span></label>
								<textarea name="address" id="address" cols="30" required><%=rs.getString(6) %></textarea>
					
								<label>City <span class="required">*</span></label>
								<input name="city" value="<%=rs.getString(7) %>" type="text" required>
			
								<label>Pincode <span class="required">*</span></label>
								<input name="pincode" value="<%=rs.getString(8) %>" type="number" required>
			
								<label>State <span class="required">*</span></label>
								<input name="state" value="<%=rs.getString(9) %>" type="text" required>
								
								<label>Country <span class="required">*</span></label>
								<input name="country" value="<%=rs.getString(10) %>" type="text" required>
								
								<input type="submit" onclick="return validate();" class="button margin-top-20 margin-bottom-20 pull-right" value="Save Changes">
							</div>
						</div>
					</div>
				</form>
		<%	} %>
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
		var result=true;
		var phone =document.getElementById('phone').value;
		var phone1 =document.getElementById('phone1').value;
		
		if(phone.length > 10 || phone.length < 10)
		{
			alert('Enter valid phone no.');
			result=false;
		}
		
		if((phone1.length > 0) && (phone1.length > 10 || phone1.length < 10))
		{
			alert('Enter valid alternate phone no.');
			result=false;
		}
		return result;
	}
	//if()
</script>
</body>

<!-- Mirrored from www.vasterad.com/themes/findeo_html/my-profile.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 06 Nov 2017 05:23:06 GMT -->
</html>