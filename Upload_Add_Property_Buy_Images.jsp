<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<!-- Mirrored from www.vasterad.com/themes/findeo_html/submit-property.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 06 Nov 2017 05:23:07 GMT -->
<head>

<title>Search My Home</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

<!-- CSS
================================================== -->

<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/colors/main.css" id="colors">

<style type="text/css">
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
				<h2><i class="fa fa-plus-circle"></i> Add Rent Property</h2>
			</div>
		</div>
	</div>
</div>


<!-- Content
================================================== -->
<form  action="Upload_Add_Property_Buy_Images" method="post" enctype="multipart/form-data">

<div class="container">
<div class="row">

	<!-- Submit Page -->
	<div class="col-md-12">
		<div class="submit-page">

		<h3>Upload Images</h3>
		<div class="submit-section">
		   
	
			 <div class="row">
				<div class="col-md-12">
				<div class="col-md-6">Select Image1:<input type="file" name="img1" /> </div>
				<div class="col-md-6">Select Image2:<input type="file" name="img2" /></div>
				</div>
				<br /><br />
				<div class="col-md-12">
				<div class="col-md-6">Select Image3:<input type="file" name="img3" /> </div>
				<div class="col-md-6">Select Image4:<input type="file" name="img4" /></div>
				</div>	 
			</div>
		
			<!-- Title -->
		
			 <!-- Row -->
			<div class="row with-forms">
			
			</div>
			<!-- Row / End -->

		</div>
		<!-- Section / End -->

<br/>
		<div class="divider"></div>
		<div class="col-md-12" align="center">
			<input type="submit" name="submit" value="Submit Property" style="padding: 2px 20px" onclick="validate()">
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
</html>