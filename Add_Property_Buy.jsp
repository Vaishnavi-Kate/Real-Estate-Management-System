<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
	
	<title>Search My Home</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Free property search and posting for latur">
	<meta name="keywords" content="Search my home latur,Add property, post property, Home,House,Flats,Flatmates,Pg Hostel,Buy,Search,Rent">
	<meta name="author" content="Ingenious Technohub And Team">
	<!-- CSS ================================================== -->
	
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/colors/main.css" id="colors">
	
	<style type="text/css">
	.requried
	{
	font-weight:bold;
	color:#ff6565;
	}
	
	.radiocontainer {
		
	    display: inline;
	    position:relative;
	    padding-left: 25px;
	    margin-bottom: 12px;
	    cursor: pointer;
	    font-size: 15px;
	    -webkit-user-select: none;
	    -moz-user-select: none;
	    -ms-user-select: none;
	    user-select: none;
	}
	
	/* Hide the browser's default radio button */
	.radiocontainer input {
	    position: absolute;
	    opacity: 0;
	}
	.checkmark {
	    position: absolute;
	    top: 0;
	    left: 0;
	    height: 15px;
	    width: 15px;
	    background-color: #ebebe0;
	    border-radius: 50%;
	}
	
	/* On mouse-over, add a grey background color */
	.radiocontainer:hover input ~ .checkmark {
	    background-color: #ccccb3;
	}
	
	/* When the radio button is checked, add a blue background */
	.radiocontainer input:checked ~ .checkmark {
	    background-color: #ebebe0;
	}
	
	/* Create the indicator (the dot/circle - hidden when not checked) */
	.checkmark:after {
	    content: "";
	    position: absolute;
	    display: none;
	}
	
	/* Show the indicator (dot/circle) when checked */
	.radiocontainer input:checked ~ .checkmark:after {
	    display: block;
	}
	
	/* Style the indicator (dot/circle) */
	.radiocontainer .checkmark:after {
	 	top: 4px;
		left: 4px;
		width: 7px;
		height: 7px;
		border-radius: 50%;
		background-color:#ccccb3;
	}
	.dropbtn {
	    background-color: #274abb;
	    color: white;
	    padding: 16px;
	    font-size: 16px;
	   
	    border-radius:4px;
	    cursor: pointer;
	}
	
	.dropdown {
	    position: relative;
	    display: inline-block;
	}
	
	.dropdown-content {
	    display: none;
	    position: absolute;
	    background-color: #f9f9f9;
	    min-width: 160px;
	    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
	    z-index: 1;
	    text-align:left;
	}
	
	.dropdown-content a {
	    color: black;
	    padding: 12px 16px;
	    text-decoration: none;
	    display: block;
	}
	
	.dropdown-content a:hover {background-color: #f1f1f1}
	
	.dropdown:hover .dropdown-content {
	    display: block;
	}
	
	.dropdown:hover .dropbtn {
	    background-color:#f5f5f5;
	}
	
	table tr th
	{
		padding: 5px;
	}
	table tr td
	{
		padding: 5px;
	}
	</style>
	</head>
<body>
<!-- Wrapper -->
<div id="wrapper">
<script type="text/javascript">
	<%if(session.getAttribute("uid")==null){ %>
		location.href='login-register.jsp';	
	<%}%>
</script>
<jsp:include page="Header.jsp"></jsp:include>

<!-- Titlebar
================================================== -->
<div id="titlebar" class="submit-page">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h2><i class="fa fa-plus-circle"></i> Add Buy Property</h2>
			</div>
		</div>
	</div>
</div>

<!-- Content
================================================== -->
<form name="buyform"  action="Add_Property_Buy" method="post">
	<div class="container">
	<div class="row">
		<!-- Submit Page -->
		<div class="col-md-12">
			<div class="submit-page" style="margin-bottom:10px">
	
			<h3>Basic Information</h3>
			<div class="submit-section">
	
			<!-- Title -->
			
			<div class="form">
				<h5>Property name <i class="tip" data-tip-content="Type title that will also contains an unique feature of your property (e.g. renovated, air contidioned)"></i></h5>
				<input class="form-control" type="text" value="" id="propname" name="propname"/>
			</div>
			
			 <!-- Row -->
			<div class="row with-forms">
				<!-- Type -->
				<div class="col-md-6">
					<h5>Property Category</h5>
					<select class="chosen-select-no-single" id="propcate" name = "propcate">
						<option label="blank"></option>		
						<option>House</option>
						<option>Apartment</option>
						<option>villa</option>							
					</select>
				</div>
				
				<div class="col-md-6">
					<h5>House/Apartment Type</h5>
					<select class="chosen-select-no-single" id="proptype" name="proptype" >
						<option label="blank"></option>		
						<option>1 BHK</option>
						<option>2 BHK</option>
						<option>3 BHK</option>
						<option>4 BHK</option>
						<option>5 BHK</option>
						<option>6 BHK</option>
						<option>7 BHK</option>
						<option>1 RK</option>
					</select>
				</div>	
			</div>
			<!-- Row / End -->

			<!-- Row -->
			<div class="row with-forms">

				<div class="col-md-4">
					<h5>floor</h5>
					<select class="chosen-select-no-single" id="floor" name="floor">
						<option label="blank"></option>
						<option>GF</option>	
						<option>1st</option>
						<option>2nd</option>
						<option>3rd</option>
						<option>4th</option>
					</select>
				</div>
						
				<!-- Area -->
				<div class="col-md-4">
					<h5>BuiltUp Area</h5>
					<div class="select-input disabled-first-option">
						<input type="number" data-unit="Sq Ft" id="buildarea" name="buildarea" >
					</div>
				</div>
				
				<div class="col-md-4">
					<h5>Property Price</h5>
					<div class="select-input disabled-first-option">
						<input type="number" id="price" name="price" data-unit="INR" >
						
					</div>
				</div>
			</div>
			<!-- Row / End -->
	
			</div>
			<!-- Section / End -->
	
			<!-- Section -->
			<h3 style="text-align: left;">Location</h3>
			<div class="submit-section">
				<!-- Row -->
				<div class="row with-forms">
	
					<!-- house name -->
					<div class="col-md-6">
						<h5>House Name</h5>
						<input type="text" id="housename" name="housename">
					</div>
	
					<!-- colony -->
					<div class="col-md-6">
						<h5>Colony</h5>
						<input type="text" id="colony" name="colony">
					</div>
	
					<!-- City -->
					<div class="col-md-6">
						<h5>City</h5>
						<input type="text" id="city" name="city">
					</div>
	
					<!-- State -->
					<div class="col-md-6">
						<h5>State</h5>
						<input type="text" id="state" name="state">
					</div>
					<div class="col-md-6">
						<h5>Country</h5>
						<input type="text" id="country" name="country">
					</div>
						<div class="col-md-6">
						<h5>Pincode</h5>
						<input type="text" id="pincode" name="pincode">
					</div>
				</div>
				<!-- Row / End -->
			</div>
			<!-- Section / End -->
		
			<!-- Section -->
			<h3>Detailed Information</h3>
			<div class="submit-section">
	              <!-- Description -->
				<div class="form">
					<h5>Description</h5>
					<textarea class="WYSIWYG" name="desc" cols="40" rows="3" id="desc" spellcheck="true" ></textarea>
				</div>
				
				<!-- Row -->
				<div class="row with-forms">
	
					<!-- Age of Home -->
					<div class="col-md-4">
						<h5>Building Age in years</h5>
					<input type="number" id="building_age" name="building_age">
					</div>
	
					
	
					<!-- Baths -->
					<div class="col-md-6">
						<h5>Bathrooms</h5>
						<select class="chosen-select-no-single" name="numofbathrooms">
							<option label="blank"></option>	
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
						</select>
					</div>
					<!-- Baths -->
					<div class="col-md-6">
						<h5>Furnishing</h5>
						<select class="chosen-select-no-single" name="furnishing">
							<option>Not Furnished</option>	
							<option>fully-furnished</option>
							<option>Semi-Furnished</option>
							
						</select>
					</div>
					
					<div class="col-md-6">
						<h5>Parking</h5>
						<select class="chosen-select-no-single" name="parking">
							<option >Not Available</option>	
							<option>Two Wheelar</option>
							<option>Four Wheelar</option>
							
						</select>
					</div>
				</div>
				<!-- Row / End -->
				
				<!-- Checkboxes -->
				<h5 class="margin-top-30">Amenities<span> (optional)</span></h5>
				<div class="in-row margin-bottom-20 ">
					<table>
					<tr><th>Lift :</th>
					<td>
					 <input  type="radio" value="0" name="Lift" checked="checked"> No &nbsp;&nbsp;&nbsp;
					 <input  type="radio" value="1" name="Lift"> Yes <br />
					</td> 
					</tr>
					
					<tr><th>Borewell :</th><td>
					 <input  type="radio" value="0" name="Borewell" checked="checked"> No &nbsp;&nbsp;&nbsp;
					<input  type="radio" value="1" name="Borewell"> Yes <br />
					</td> </tr>
					
					<tr><th>Generator :</th><td>
					 <input  type="radio" value="0" name="Generator" checked="checked"> No &nbsp;&nbsp;&nbsp;
					<input  type="radio" value="1" name="Generator"> Yes <br />
					</td> </tr>
					
					<tr><th>Playground :</th><td>
					 <input  type="radio" value="0" name="Playground" checked="checked"> No &nbsp;&nbsp;&nbsp;
					<input  type="radio" value="1" name="Playground"> Yes <br />
					</td> </tr>
					
					<tr><th>Balconies :</th><td>
					 <input  type="radio" value="0" name="Balconies" checked="checked"> No &nbsp;&nbsp;&nbsp;
					<input  type="radio" value="1" name="Balconies"> Yes <br />
					</td> </tr>
					
					<tr><th>Solar :</th><td>
					 <input  type="radio" value="0" name="Solar" checked="checked"> No &nbsp;&nbsp;&nbsp;
					<input  type="radio" value="1" name="Solar"> Yes <br />
					</td> </tr>
					</table>		
				</div>
				<!-- Checkboxes / End -->
			</div>
			<!-- Section / End -->	
	<br/>
			<div class="divider"></div>
				<div class="col-md-12" align="center" style="margin-bottom: 13px;">
					<input type="submit" name="submit" value="Submit & Next" style="padding: 2px 20px" onclick="validate()">
				</div>
			</div>
			
		</div>
	</div>
</div>
</form>
<jsp:include page="Footer.jsp"></jsp:include>
<!-- Footer / End -->


<!-- Back To Top Button -->
<div id="backtotop"><a href="#"></a></div>


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


<!-- DropZone | Documentation: http://dropzonejs.com -->
<script type="text/javascript" src="scripts/dropzone.js"></script>




<!-- Style Switcher / End -->


</div>
<!-- Wrapper / End -->


<script type="text/javascript">
function validate()
{
	
}
</script>
</body>

<!-- Mirrored from www.vasterad.com/themes/findeo_html/submit-property.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 06 Nov 2017 05:23:07 GMT -->
</html>