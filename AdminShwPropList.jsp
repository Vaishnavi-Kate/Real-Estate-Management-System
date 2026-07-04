<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
	<head>
	
	<!-- Basic Page Needs
	================================================== -->
	<title>Search My Home</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Free property search and posting for latur. Posted properties are visited by number of peoples and they can contact with the currosponding owner of the property or take contact details of the owner for us.">
	<meta name="keywords" content="Search my home latur,Add property, post property, Home,House,Flats,Flatmates,Pg Hostel,Buy,Search,Rent">
	<meta name="author" content="Ingenious Technohub And Team">
	<!-- CSS ================================================== -->
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/colors/main.css" id="colors">
	<link rel="stylesheet" href="https://cdn.datatables.net/1.10.16/css/jquery.dataTables.min.css"/>
	</head>
<body>

<!-- Wrapper -->
<div id="wrapper">

<jsp:include page="Header.jsp"></jsp:include>

<!-- Titlebar
================================================== -->
<div id="titlebar">
	<div class="container">
		<div class="row">
			<div class="col-md-12">

				<h2>All Posted Properties</h2>
				
				<!-- Breadcrumbs -->
				<nav id="breadcrumbs">
					<ul>
						<li><a href="#">Home</a></li>
						<li>Admin</li>
						<li>Property List</li>
					</ul>
				</nav>
			</div>
		</div>
	</div>
</div>

<!-- Content ================================================== -->
<div class="container">
	<!-- Blockquote ================================================== -->
	<div class="row">
		<div class="col-md-12">
<!-- 		Headline --> 
<!-- 		<h4 class="headline with-border margin-top-0 margin-bottom-35">Blockquote</h4> -->
<!-- 		<blockquote>Mauris aliquet ultricies ante, non faucibus ante gravida sed. Sed ultrices pellentesque purus, vulputate volutpat ipsum hendrerit sed neque sed sapien rutrum laoreet justo ultrices. In pellentesque lorem condimentum dui morbi pulvinar dui non quam pretium ut lacinia tortor.</blockquote> -->
			<table id="Properties">
				<thead>
					<tr>
						<th>Serial No.</th>
						<th>Owner Name.</th>
						<th>Property Name.</th>
						<th>Status</th>
						<th>Action</th>
					</tr>
				</thead>
				<tbody id="result">
					
				</tbody>
			</table>
		</div>
	</div>


</div>



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
 <script src="http://code.jquery.com/jquery-3.3.1.js"></script>
 <script src="https://cdn.datatables.net/1.10.16/js/jquery.dataTables.min.js"></script>
 
 <script>
       $(document).ready(function(){
    	   $('#Properties').DataTable();
    	   
    	   alert("hello");
    	   $.ajax({
    		  url: 'AdminShwPropListDB.jsp',
    		  method:'post',
    		  data:'proptype=1',
    		  success : function(data){
    			  $("#result").html(data);
    		  }
    	   });
       });
</script>
</body>
</html>