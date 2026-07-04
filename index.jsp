<%@page import="java.sql.PreparedStatement"%>
<%@page import="com.DbConnect"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	<!-- Basic Page Needs ================================================== -->
	<title>Search My Home</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="description" content="Free property search and posting for latur. Posted properties are visited by number of peoples and they can contact with the currosponding owner of the property or take contact details of the owner for us.">
	<meta name="keywords" content="Search my home latur,Home,House,Flats,Flatmates,Pg Hostel,Buy,Search,Rent">
	<meta name="author" content="Ingenious Technohub And Team">
	<!-- CSS ================================================== -->
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/colors/main.css" id="colors">
	<link rel="shortcut icon" type="image/png" href="images/favicon2.ico"/>
</head>
<body>
<!-- Wrapper -->
<div id="wrapper">
<!-- Header Container ================================================== -->
<jsp:include page="Header.jsp"></jsp:include>
<!-- Header Container / End -->

<!-- Banner ================================================== -->
<div class="parallax" data-background="images/room-house.jpg" data-color="#36383e" data-color-opacity="0.40" data-img-width="2500" data-img-height="1600">
	<div class="parallax-content">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<!-- Main Search Container -->
					<div class="main-search-container">
						<h2 style="text-shadow: 1.5px 1px gray;">Find Your Dream Home</h2>

						<!-- Main Search -->
						<form class="main-search-form" id="search" action="Buy_List_Display.jsp" method="post">
							<!-- Type -->
							<div class="search-type" >
								<label class="active"><input class="first-tab" name="tab" checked="checked" type="radio" id="sale" value="Buy_List_Display.jsp">For Sale</label>				
								<label><input name="tab" type="radio" id="rent" value="Rent_List_Display.jsp">For Rent</label>
								<label><input name="tab" type="radio" id="flatmate" value="Flatmate_List_Display.jsp">For Flatmate</label>
								<label><input name="tab" type="radio" id="hostel" value="Pg_Hostel_List_Display.jsp">For Hostel/PG</label>
								<div class="search-type-arrow"></div>
							</div>

							<!-- Box -->
							<div class="main-search-box">
								<!-- Main Search Input -->
								<div class="main-search-input larger-input">
									<input name="city" type="text" class="ico-01" list="Property_addresses" placeholder="Enter city" required="required"/>
									<datalist id="Property_addresses">
						    			<option>Latur</option>
						    			
									</datalist>
									<button class="button" type="submit">Search</button>
								</div>
								<label id="Note"><b>Note: </b>Only latur city properties are available currently.</label>
							</div>
							<!-- Box / End -->
						</form>
						<!-- Main Search -->
					</div>
					<!-- Main Search Container / End -->
				</div>
			</div>
		</div>

	</div>
</div>
<!-- Banner part ends here -->
<%
PreparedStatement ps =null;
ResultSet rs = null;
%>
<!-- Content
================================================== -->
<div class="container">
	<!-- "SELECT property_id,property_type,count(*) FROM tblshortlisted_properties group by property_id order by count(*) desc limit 5"	 -->
	<div class="row">	
		<!-- Buy Property Carousel -->
		<div class="col-md-12">
			<h3 class="headline margin-bottom-25 margin-top-65">Buy Property</h3>
			<div class="carousel">
				<%
				ps = DbConnect.getCon().prepareStatement("select * from tblbuy_properties");
				rs = ps.executeQuery();
				
				while(rs.next())
				{
					%> 
				<!-- Listing Item -->
				<div class="carousel-item">
					<div class="listing-item">
						<a href="Property_page.jsp?PropBuyId=<%=rs.getString(2) %>" class="listing-img-container">
							<div class="listing-badges">
								<span>For Buy</span>
							</div>

							<div class="listing-img-content">
								<%if(rs.getString(12).equals("0")){%> 
									
								<%}else{%>
									<span class="listing-price">RS. <%=rs.getString(12) %></span>
								<%}%>
							</div>

							<img style="height:100%" src="Buy_Property_images/<%=rs.getString(17) %>" alt="">
						</a>
						
						<div class="listing-content">

							<div class="listing-title">
								<h4><a href="Property_page.jsp?PropBuyId=<%=rs.getString(2) %>"><%=rs.getString(3) %></a></h4>
									<i class="fa fa-map-marker"></i>
									<%=rs.getString(13) %>, <%=rs.getString(15) %>-<%=rs.getString(16) %>, <%=rs.getString(14) %>
							</div>

							<ul class="listing-features">
								<li>Area<span><%=rs.getString(7) %> sq ft</span></li>
								<li>Type<span><%=rs.getString(5) %></span></li>
								<li>Bathroom<span><%=rs.getString(8)%></span></li>
							</ul>
						</div>
						<!-- Listing Item / End -->


					</div>
				</div>
				<!-- Listing Item / End -->
				<%
				}
				%>
			</div>
		</div>
		<!-- Carousel / End -->
	</div>

	<div class="row">	
		<!--Rent Property Carousel -->
		<div class="col-md-12">
			<h3 class="headline margin-bottom-25 margin-top-65">Rent Property</h3>
			<div class="carousel">
					<%
				ps = DbConnect.getCon().prepareStatement("select * from tblrent_properties");
				rs = ps.executeQuery();
				
				while(rs.next())
				{
					%>
				<!-- Listing Item -->
				<div class="carousel-item">
					<div class="listing-item">
						<a href="Property_page.jsp?PropRentId=<%=rs.getString(2) %>" class="listing-img-container">
							<div class="listing-badges">
								<span>For Rent</span>
							</div>

							<div class="listing-img-content">
								<span class="listing-price">RS. <%=rs.getString(14) %><i>monthly</i></span>
								
							</div>

							<img style="height:100%" src="Rent_Property_images/<%=rs.getString(21) %>" alt="">
						</a>
						
						<div class="listing-content">

							<div class="listing-title">
								<h4><a href="Property_page.jsp?PropRentId=<%=rs.getString(2) %>"><%=rs.getString(3) %></a></h4>
									<i class="fa fa-map-marker"></i>
								<%=rs.getString(17) %>, <%=rs.getString(19) %>-<%=rs.getString(20) %>, <%=rs.getString(18) %>
								</div>

								<ul class="listing-features">
									<li>Area<span><%=rs.getString(7) %> sq ft</span></li>
									<li>Type<span><%=rs.getString(5) %></span></li>
									<li>Bathroom<span><%=rs.getString(8)%></span></li>
								</ul>
						</div>
						<!-- Listing Item / End -->
					</div>
				</div>
				<!-- Listing Item / End -->
				<%	}	%>
			</div>
		</div>
		<!-- Carousel / End -->
	</div>


	<div class="row">
		<!--Flatmate Property Carousel -->
		<div class="col-md-12">
			<h3 class="headline margin-bottom-25 margin-top-65">FlatMate Property </h3>
			<div class="carousel">
				<%
				ps = DbConnect.getCon().prepareStatement("select * from tblflatmate_properties");
				rs = ps.executeQuery();
				
				while(rs.next())
				{
					%>
				<!-- Listing Item -->
				<div class="carousel-item">
					<div class="listing-item">
						<a href="Property_page.jsp?PropFlatmatesId=<%=rs.getString(2) %>" class="listing-img-container">
							<div class="listing-badges">
								<span>For Flatmate</span>
							</div>

							<div class="listing-img-content">
								<span class="listing-price">RS. <%=rs.getString(14) %> <i>monthly</i></span>
								<!-- <span class="like-icon with-tip" data-tip-content="Add to Bookmarks"></span> -->
							</div>

							<img style="height:100%" src="Flatmate_Property_images/<%=rs.getString(21) %>" alt="">
						</a>
						
						<div class="listing-content">

							<div class="listing-title">
								<h4><a href="Property_page.jsp?PropFlatmatesId=<%=rs.getString(2) %>"><%=rs.getString(3) %></a></h4>
									<i class="fa fa-map-marker"></i>
								<%=rs.getString(17) %>, <%=rs.getString(19) %>-<%=rs.getString(20) %>, <%=rs.getString(18) %>
								</div>

							<ul class="listing-features">
								<li>Area<span><%=rs.getString(7) %> sq ft</span></li>
								<li>Type<span><%=rs.getString(5) %></span></li>
								<li>Bathroom<span><%=rs.getString(8)%></span></li>
							</ul>
						</div>
						<!-- Listing Item / End -->
					</div>
				</div>
				<!-- Listing Item / End -->
				<%	}	%>
			</div>
		</div>
		<!-- Carousel / End -->
	</div>
	
	<div class="row">	
		<!-- PG/Hostel Property Carousel -->
		<div class="col-md-12">
			<h3 class="headline margin-bottom-25 margin-top-65">PG/Hostel Property</h3>
			<div class="carousel">
				<%
				ps = DbConnect.getCon().prepareStatement("select * from tblpg_hostel_properties");
				rs = ps.executeQuery();
				
				while(rs.next())
				{
					%>
				<!-- Listing Item -->
				<div class="carousel-item">
					<div class="listing-item">
						<a href="Property_page.jsp?PropHostelId=<%=rs.getString(2) %>" class="listing-img-container">
							<div class="listing-badges">
								<span>For Pg/Hostel</span>
							</div>

							<div class="listing-img-content">
								<%if(rs.getString(12).equals("0")){%> 
									
								<%}else{%>
									<span class="listing-price">RS. <%=rs.getString(16) %></span>
								<%}%>
							</div>

							<img style="height:100%" src="Pg_Hostel_Property_images/<%=rs.getString(23) %>" alt="<%=rs.getString(3) %>">
						</a>
						
						<div class="listing-content">
							<div class="listing-title">
								<h4><a href="Property_page.jsp?PropHostelId=<%=rs.getString(2) %>"><%=rs.getString(3) %></a></h4>
									<i class="fa fa-map-marker"></i>
									<%=rs.getString(19) %>, <%=rs.getString(21) %>-<%=rs.getString(22) %>, <%=rs.getString(20) %>
							</div>

							<ul class="listing-features">
								<li>Area<span><%=rs.getString(7) %> sq ft</span></li>
								<li>Type<span><%=rs.getString(5) %></span></li>
								<li>Bathroom<span><%=rs.getString(8)%></span></li>
							</ul>
						</div>
						<!-- Listing Item / End -->
					</div>
				</div>
				<!-- Listing Item / End -->
				<%
				}
				%>
			</div>
		</div>
		<!-- Carousel / End -->
	</div>
</div>

	<jsp:include page="Footer.jsp"></jsp:include>

	<!-- Scripts ================================================== -->
	<script src="../../cdn-cgi/scripts/78d64697/cloudflare-static/email-decode.min.js"></script>
	<script type="text/javascript" src="scripts/jquery-2.2.0.min.js"></script>
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
	<script type="text/javascript">
	$(document).ready(function(){
				$('#rent').click(function(){
					$('#search').attr("action",$('#rent').val());
				});
				
				$('#sale').click(function(){
						$('#search').attr("action",$('#sale').val());
				});
			
				$('#flatmate').click(function(){
					$('#search').attr("action",$('#flatmate').val());
				});
			
				$('#hostel').click(function(){
						$('#search').attr("action",$('#hostel').val());
				});
	});
	</script>
</div>
<!-- Wrapper / End -->
</body>
</html>