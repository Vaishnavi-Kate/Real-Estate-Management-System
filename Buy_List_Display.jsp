<%@ page language="java" import="java.sql.*,com.*" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<!-- Mirrored from www.vasterad.com/themes/findeo_html/listings-list-with-sidebar.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 06 Nov 2017 05:23:05 GMT -->
<head>
	<!-- Basic Page Needs 	================================================== -->
	<title>Search My Home</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Free property search and posting for latur">
	<meta name="keywords" content="Search my home latur,Home,House,Flats,Flatmates,Pg Hostel,Buy,Search,Rent">
	<meta name="author" content="Ingenious Technohub And Team">
	<!-- CSS	================================================== -->
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/colors/main.css" id="colors">
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<!-- Wrapper -->
<div id="wrapper">
<!-- Titlebar ================================================== -->
<div class="parallax titlebar"
	data-background="images/listings-parallax.jpg"
	data-color="#333333"
	data-color-opacity="0.7"
	data-img-width="800"
	data-img-height="505">

	<div id="titlebar">
		<div class="container">
			<div class="row">
				<div class="col-md-12">

					<h2>Property Listings</h2>
					<span>Search With Us</span>
					
					<!-- Breadcrumbs -->
					<nav id="breadcrumbs">
						<ul>
							<li><a href="index.jsp">Home</a></li>
							<li>Listings</li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- Content
================================================== -->
<div class="container">
	<div class="row sticky-wrapper">

		<div class="col-md-8">

			<!-- Main Search Input -->
			<div class="main-search-input margin-bottom-35">
				<input type="text" class="ico-01" placeholder="Enter address e.g. street, city and state or zip" value=""/>
				<button class="button">Search</button>
			</div>

			<!-- Listings -->
			<div class="listings-container list-layout" id="DisplayBuyResults">

			<%
			PreparedStatement ps=null;
			ResultSet rs = null,rs1=null;
			ps = DbConnect.getCon().prepareStatement("SELECT * FROM tblbuy_properties");
			rs = ps.executeQuery();
			String uid = (String)session.getAttribute("uid");
			System.out.print(uid);
			while(rs.next())
			{
			%>
			
				<!-- Listing Item -->
				<div class="listing-item">

					<a href="Property_page.jsp?PropBuyId=<%=rs.getString(2) %>" class="listing-img-container">

						<div class="listing-badges">
							<span>For Sale</span>
						</div>

						<div class="listing-img-content">
							<%if(rs.getString(12).equals("0")){%> 
									
								<%}else{%>
									<span class="listing-price">RS. <%=rs.getString(12) %></span>
								<%}%>
							<%
							if(uid != null)
							{
							ps = DbConnect.getCon().prepareStatement("select * from tblshortlisted_properties where Property_id=? and User_Id=? and Property_Type='Buy' ");
							ps.setString(1, rs.getString(2));
							ps.setString(2, uid);
							rs1=ps.executeQuery();
							if(rs1.next())
							{
							}
							else
							{
								%>
								<!-- <span class="like-icon with-tip" data-tip-content="Shortlist Property" id="<%=rs.getString(2) %>" title="Buy" onclick="addToShortlist(this.id,this.title);"></span> -->	
							<%	
							}
							}
							%>
							
							
						</div>

						<img src="Buy_Property_images/<%=rs.getString(17) %>" alt="">
					</a>
					
					<div class="listing-content">

						<div class="listing-title">
							<h4><a href="Property_page.jsp?PropBuyId=<%=rs.getString(2) %>"><%=rs.getString(3) %></a></h4>
							<a >
								<i class="fa fa-map-marker"></i>
								<%=rs.getString(13) %>, <%=rs.getString(15) %>-<%=rs.getString(16) %>, <%=rs.getString(14) %>
							</a>

							<a href="Property_page.jsp?PropBuyId=<%=rs.getString(2) %>" class="details button border">Details</a>
						</div>

						<ul class="listing-details">
							<li><%=rs.getString(7) %> sq ft</li>
							<li><%=rs.getString(5) %></li>
							<li><%=rs.getString(8)%> Bathroom</li>
							<li></li>
						</ul>
<!-- 
						<div class="listing-footer">
							<a href="#"><i class="fa fa-user"></i> Harriette Clark</a>
							<span><i class="fa fa-calendar-o"></i> 2 days ago</span>
						</div>
 -->
					</div>

				</div>
				<!-- Listing Item / End -->
			<%	
			}
			
			%>
			</div>
			<!-- Listings Container / End -->
		</div>
		<!-- Sidebar -->
		<jsp:include page="Buy_Side_Bar.jsp"></jsp:include>
		<!-- Sidebar / End -->
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
<script type="text/javascript" src="scripts/mmenu.min.js"></script>
<script type="text/javascript" src="scripts/tooltips.min.js"></script>
<script type="text/javascript" src="scripts/masonry.min.js"></script>
<script type="text/javascript" src="scripts/custom.js"></script>

</div>
<!-- Wrapper / End -->

<script>
$(document).ready(function(){
	
 $('#area-range input[class="first-slider-value"]').removeAttr("disabled");
 $('#area-range input[class="first-slider-value"]').attr("name","minvaluearea");
 $('#area-range input[class="first-slider-value"]').attr("readonly","readonly");
 
 $('#area-range input[class="second-slider-value"]').removeAttr("disabled");
 $('#area-range input[class="second-slider-value"]').attr("name","maxvaluearea");
 $('#area-range input[class="second-slider-value"]').attr("readonly","readonly");
 
 $('#price-range input[class="first-slider-value"]').removeAttr("disabled");
 $('#price-range input[class="first-slider-value"]').attr("name","minvaluerent");
 $('#price-range input[class="first-slider-value"]').attr("readonly","readonly");
 
 $('#price-range input[class="second-slider-value"]').removeAttr("disabled");
 $('#price-range input[class="second-slider-value"]').attr("name","maxvaluerent");
 $('#price-range input[class="second-slider-value"]').attr("readonly","readonly");
 
 
 $('form').on('submit',function(e){
	 
	 e.preventDefault();
	 
	 $.ajax({
		 
		 type:'POST',
		 url:'Get_Buy_Result.jsp',
		 data:$('form').serialize(),
		 success:function(result){
			 $('#DisplayBuyResults').html(result);
		 }
	 });
 });
	
});

</script>
<script type="text/javascript" src="scripts/shortlistfunction.js"></script>
</body>
</html>