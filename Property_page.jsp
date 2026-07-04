<%@ page language="java" contentType="text/html; charset=ISO-8859-1" import="java.sql.*,com.*" pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
	<!-- Mirrored from www.vasterad.com/themes/findeo_html/single-property-page-1.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 06 Nov 2017 05:23:06 GMT -->
	<head>
	
	<!-- Basic Page Needs
	================================================== -->
	<title>Search My Home</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta name="description" content="Free property search and posting for latur. Posted properties are visited by number of peoples and they can contact with the currosponding owner of the property or take contact details of the owner for us.">
	<meta name="keywords" content="Search my home latur,Searchmyhome latur Property details, About Properties">
	<meta name="author" content="Ingenious Technohub And Team">
	<!-- CSS
	================================================== -->
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/colors/main.css" id="colors">
	
	</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>
<%
	String buyid = request.getParameter("PropBuyId");
	String rentid = request.getParameter("PropRentId");
	String flatmatesid=request.getParameter("PropFlatmatesId");
	String hostelid = request.getParameter("PropHostelId");
	String id="";
	int flag=0;
	System.out.println(buyid+" ddd "+rentid);
	String Query="";
	if(buyid != null)
	{
		flag=1;
		Query = "SELECT * FROM tblbuy_properties where Property_Id = ?";
		id=buyid;
		System.out.println("buyid: "+buyid);
	}
	else if(rentid != null)
	{
		flag=2;
		Query = "SELECT * FROM tblrent_properties where Property_Id = ?";
		id=rentid;
		System.out.println("rentid: "+rentid);
	}
	else if(flatmatesid != null)
	{
		flag=3;
		Query = "SELECT * FROM tblflatmate_properties where Property_Id = ?";
		id=flatmatesid;
		System.out.println("flatid: "+flatmatesid);
	}
	else if(hostelid != null)
	{
		flag=4;
		Query = "SELECT * FROM tblpg_hostel_properties where Property_Id = ?";
		id=hostelid;
		System.out.println("flatid: "+hostelid);
	}
	
	PreparedStatement ps1 = DbConnect.getCon().prepareStatement(Query);
	ps1.setString(1,id);
	ResultSet rs1 = ps1.executeQuery();
	
	while(rs1.next())
	{	
%>

<!-- Wrapper -->
<div id="wrapper">

<!-- Title bar ================================================== -->
<div id="titlebar" class="property-titlebar margin-bottom-0">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="property-title">
					<h2><%=rs1.getString(3)%> <span class="property-badge"><%if(flag==1){ %>For Sale<%}else if(flag==2){ %> For Rent<%} %></span></h2>
					<span>
						<a href="#location" class="listing-address">
						<%if(flag==1){%>
							<i class="fa fa-map-marker"></i>
							
							<%=rs1.getString(13)+" "+rs1.getString(15)+" "+rs1.getString(14) %>
							<%}else if(flag==2 || flag==3){%>
							<i class="fa fa-map-marker"></i>
							
							<%=rs1.getString(17)+" "+rs1.getString(19)+" "+rs1.getString(18) %>
							<% }
							else if(flag==4){%>
							<i class="fa fa-map-marker"></i>
							
							<%=rs1.getString(19)+" "+rs1.getString(21)+" "+rs1.getString(20) %>
						<%}%>
						</a>
					</span>
				</div>

				<div class="property-pricing">
				<%if(flag==1){ %>
					<div class="property-price">Rs.<%=rs1.getString(12) %></div><%}
				else if(flag==2 || flag==3){%>
				    <div class="property-price">Rs.<%=rs1.getString(14) %></div><% }
				else if(flag==4){%>
				<div class="property-price">Rs.<%=rs1.getString(16) %></div><%
				}	%>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- Content ================================================== -->
<div class="container">
	<div class="row margin-bottom-50">
		<div class="col-md-12">
         <%if(flag==1){ %>
			<!-- Slider -->
			<div class="property-slider default">
				<%if(rs1.getString(17)!="" || rs1.getString(17)!= null){ %><a href="Buy_Property_images/<%=rs1.getString(17) %>" data-background-image="Buy_Property_images/<%=rs1.getString(17) %>" class="item mfp-gallery"></a><%} %>
				<%if(rs1.getString(18)!="" || rs1.getString(18)!= null){ %><a href="Buy_Property_images/<%=rs1.getString(18) %>" data-background-image="Buy_Property_images/<%=rs1.getString(18) %>" class="item mfp-gallery"></a><%} %>
				<%if(rs1.getString(19)!="" || rs1.getString(19)!= null){ %><a href="Buy_Property_images/<%=rs1.getString(19) %>" data-background-image="Buy_Property_images/<%=rs1.getString(19) %>" class="item mfp-gallery"></a><%} %>
				<%if(rs1.getString(20)!="" || rs1.getString(20)!= null){ %><a href="Buy_Property_images/<%=rs1.getString(20) %>" data-background-image="Buy_Property_images/<%=rs1.getString(20) %>" class="item mfp-gallery"></a><%} %>
			</div>
			 
			<!-- Slider Thumbs -->
			<div class="property-slider-nav">
				<%if(rs1.getString(17)!="" || rs1.getString(17)!= null){ %><div class="item"><img src="Buy_Property_images/<%=rs1.getString(17) %>" alt=""></div><%} %>
                <%if(rs1.getString(18)!="" || rs1.getString(18)!= null){ %> <div class="item"><img src="Buy_Property_images/<%=rs1.getString(18)%>" alt=""></div><%} %>
				<%if(rs1.getString(19)!="" || rs1.getString(19)!= null){ %><div class="item"><img src="Buy_Property_images/<%=rs1.getString(19) %>" alt=""></div><%} %>
				<%if(rs1.getString(20)!="" || rs1.getString(20)!= null){ %><div class="item"><img src="Buy_Property_images/<%=rs1.getString(20) %>" alt=""></div><%} %>
			</div>
			<%} 
         else if(flag==2){%>
         	<div class="property-slider default">
				<%if(rs1.getString(21)!=""){ %><a href="Rent_Property_images/<%=rs1.getString(21) %>" data-background-image="Rent_Property_images/<%=rs1.getString(21) %>" class="item mfp-gallery"></a><%} %>
				<%if(rs1.getString(22)!=""){ %><a href="Rent_Property_images/<%=rs1.getString(22) %>" data-background-image="Rent_Property_images/<%=rs1.getString(22) %>" class="item mfp-gallery"></a><%} %>
				<%if(rs1.getString(23)!=""){ %><a href="Rent_Property_images/<%=rs1.getString(23) %>" data-background-image="Rent_Property_images/<%=rs1.getString(23) %>" class="item mfp-gallery"></a><%} %>
				<%if(rs1.getString(24)!=""){ %><a href="Rent_Property_images/<%=rs1.getString(24) %>" data-background-image="Rent_Property_images/<%=rs1.getString(24) %>" class="item mfp-gallery"></a><%} %>	
			</div>

			<!-- Slider Thumbs -->
			<div class="property-slider-nav">
				<%if(rs1.getString(21)!=""){ %><div class="item"><img src="Rent_Property_images/<%=rs1.getString(21) %>" alt=""></div><%} %>
				<%if(rs1.getString(22)!=""){ %><div class="item"><img src="Rent_Property_images/<%=rs1.getString(22) %>" alt=""></div><%} %>
				<%if(rs1.getString(23)!=""){ %><div class="item"><img src="Rent_Property_images/<%=rs1.getString(23) %>" alt=""></div><%} %>
				<%if(rs1.getString(24)!=""){ %><div class="item"><img src="Rent_Property_images/<%=rs1.getString(24) %>" alt=""></div><%} %>
			</div><%}
         
         else if(flag==3){%>
         <div class="property-slider default">
				<%if(rs1.getString(21)!=""){ %><a href="Flatmate_Property_images/<%=rs1.getString(21) %>" data-background-image="Flatmate_Property_images/<%=rs1.getString(21) %>" class="item mfp-gallery"></a><%} %>
				<%if(rs1.getString(22)!=""){ %><a href="Flatmate_Property_images/<%=rs1.getString(22) %>" data-background-image="Flatmate_Property_images/<%=rs1.getString(22) %>" class="item mfp-gallery"></a><%} %>
				<%if(rs1.getString(23)!=""){ %><a href="Flatmate_Property_images/<%=rs1.getString(23) %>" data-background-image="Flatmate_Property_images/<%=rs1.getString(23) %>" class="item mfp-gallery"></a><%} %>
				<%if(rs1.getString(24)!=""){ %><a href="Flatmate_Property_images/<%=rs1.getString(24) %>" data-background-image="Flatmate_Property_images/<%=rs1.getString(24) %>" class="item mfp-gallery"></a><%} %>
			</div>
			 
			<!-- Slider Thumbs -->
			<div class="property-slider-nav">
				<%if(rs1.getString(21)!=""){ %><div class="item"><img src="Flatmate_Property_images/<%=rs1.getString(21) %>" alt=""></div><%} %>
				<%if(rs1.getString(22)!=""){ %><div class="item"><img src="Flatmate_Property_images/<%=rs1.getString(22) %>" alt=""></div><%} %>
				<%if(rs1.getString(23)!=""){ %><div class="item"><img src="Flatmate_Property_images/<%=rs1.getString(23) %>" alt=""></div><%} %>
				<%if(rs1.getString(24)!=""){ %><div class="item"><img src="Flatmate_Property_images/<%=rs1.getString(24) %>" alt=""></div><%} %>
				
			</div><%}
         else if(flag==4){%>
         <div class="property-slider default">
				<%if(rs1.getString(21)!=""){ %><a href="Pg_Hostel_Property_images/<%=rs1.getString(23) %>" data-background-image="Pg_Hostel_Property_images/<%=rs1.getString(23) %>" class="item mfp-gallery"></a><%} %>
				<%if(rs1.getString(22)!=""){ %><a href="Pg_Hostel_Property_images/<%=rs1.getString(24) %>" data-background-image="Pg_Hostel_Property_images/<%=rs1.getString(24) %>" class="item mfp-gallery"></a><%} %>
				<%if(rs1.getString(23)!=""){ %><a href="Pg_Hostel_Property_images/<%=rs1.getString(25) %>" data-background-image="Pg_Hostel_Property_images/<%=rs1.getString(25) %>" class="item mfp-gallery"></a><%} %>
				<%if(rs1.getString(24)!=""){ %><a href="Pg_Hostel_Property_images/<%=rs1.getString(26) %>" data-background-image="Pg_Hostel_Property_images/<%=rs1.getString(26) %>" class="item mfp-gallery"></a><%} %>
			</div>
			 
			<!-- Slider Thumbs -->
			<div class="property-slider-nav">
				<%if(rs1.getString(21)!=""){ %><div class="item"><img src="Pg_Hostel_Property_images/<%=rs1.getString(23) %>" alt=""></div><%} %>
				<%if(rs1.getString(22)!=""){ %><div class="item"><img src="Pg_Hostel_Property_images/<%=rs1.getString(24) %>" alt=""></div><%} %>
				<%if(rs1.getString(23)!=""){ %><div class="item"><img src="Pg_Hostel_Property_images/<%=rs1.getString(25) %>" alt=""></div><%} %>
				<%if(rs1.getString(24)!=""){ %><div class="item"><img src="Pg_Hostel_Property_images/<%=rs1.getString(26) %>" alt=""></div><%} %>
			</div><%}%>
		</div>
	</div>
</div>


<div class="container">
	<div class="row">
		<!-- Property Description -->
		<div class="col-lg-12 col-md-12">
			<div class="property-description">
				<!-- Main Features -->
			
				<ul class="property-main-features">
					<li>Area <span><%=rs1.getString(7) %> sq ft</span></li>
					<li>Property Type <span><%=rs1.getString(5) %></span></li>
					<li> Category<span><%=rs1.getString(4) %></span></li>
					<li>Floor<span><%=rs1.getString(6) %></span></li>
					<li><span><button class="widget-button with-tip" data-tip-content="Add to Bookmarks"><i class="fa fa-star-o"></i></button></span></li>
				</ul>
              
				<!-- Description -->
				<h3 class="desc-headline">Description</h3>
		  <% if(flag==1){%>	
				<p style="text-align:justify;margin-top: -20px;margin-bottom: 36px;">
					<%=rs1.getString(28) %> 
				</p>
           <%} else if(flag==2||flag==3){ %>
 					<p style="text-align:justify;margin-top: -20px;margin-bottom: 36px;">
					<%=rs1.getString(32) %> 
					</p>	
           <%} else if(flag==4){%>
            		<p style="text-align:justify;margin-top: -20px;margin-bottom: 36px;">
					<%=rs1.getString(34) %> 
					</p>
			<%} %>
			</div>
				
			<!-- Details -->
			<h3 class="desc-headline">Details</h3>
		
			<ul class="property-features margin-top-0">
				<li>Building Age: <span><%=rs1.getString(11) %> Years</span></li>
				<li>Parking: <span><%=rs1.getString(10) %></span></li>
				<li>Number Of Bathrooms: <span><%=rs1.getString(8) %></span></li>
			</ul>
						

			<!-- Features -->
			<h3 style="text-align:justify;margin-top: 32px;margin-bottom: 13px;" class="desc-headline">Features</h3>
			<ul class="property-features checkboxes margin-top-0" style="margin-bottom: 15px">
			<%if(flag==1){ %>
				<% if(rs1.getString(23).equals("1")) { %> <li>Lift</li>										
				<% }if(rs1.getString(24).equals("1")){ %> <li>Borewell</li>							
				<% }if(rs1.getString(25).equals("1")){ %> <li>Generator</li>							
				<% }if(rs1.getString(26).equals("1")){ %> <li>Playground</li>						
				<% }if(rs1.getString(27).equals("1")){ %> <li>Balconies</li> <% } }
				
			else if(flag==2 || flag==3){%>
			<% if(rs1.getString(27).equals("1")) { %> <li>Lift</li>										
				<% }if(rs1.getString(28).equals("1")){ %> <li>Borewell</li>							
				<% }if(rs1.getString(29).equals("1")){ %> <li>Generator</li>							
				<% }if(rs1.getString(30).equals("1")){ %> <li>Playground</li>						
				<% }if(rs1.getString(31).equals("1")){ %> <li>Balconies</li><% }}
			else if(flag==4){%>
			
			<% if(rs1.getString(29).equals("1")) { %> <li>Lift</li>										
				<% }if(rs1.getString(30).equals("1")){ %> <li>Borewell</li>							
				<% }if(rs1.getString(31).equals("1")){ %> <li>Generator</li>							
				<% }if(rs1.getString(32).equals("1")){ %> <li>Playground</li>						
				<% }if(rs1.getString(33).equals("1")){ %> <li>Balconies</li><% }}
			
				%>										
			</ul>
			<h3 style="text-align:justify;margin-top: 32px;margin-bottom: 13px;" class="desc-headline">Similar Properties</h3>	
		<% 
		String query1="";
		if(flag==1){query1="select * from tblbuy_properties where Property_Type=?";}
		if(flag==2){query1="select * from tblrent_properties where Property_Type=?";}
		if(flag==3){query1="select * from tblflatmate_properties where Property_Type=?";}
		if(flag==4){query1="select * from tblpg_hostel_properties where Property_Type=?";}
		try{
		PreparedStatement ps2 = DbConnect.getCon().prepareStatement(query1);
		ps2.setString(1,rs1.getString(5));
		ResultSet rs2 = ps2.executeQuery();
		
		while(rs2.next())
		{
		
		%>
       <!-- Similar Listings Container -->
			
				<!-- Layout Switcher -->
				<div class="layout-switcher hidden"><a href="#" class="list"><i class="fa fa-th-list"></i></a></div>
				<div class="listings-container list-layout">
			
					<!-- Listing Item -->
					<div class="listing-item">

						<a href="#" class="listing-img-container">

							<div class="listing-img-content">
							<%if(flag==1){ %>
								<span class="listing-price"><%=rs2.getString(12) %></span>
								<span class="like-icon"></span>
							<%}else if(flag==2||flag==3){ %>	
							<span class="listing-price"><%=rs2.getString(14) %></span>
								<span class="like-icon"></span>
								<%}else if(flag==4){ %>
								<span class="listing-price"><%=rs2.getString(16) %></span>
								<span class="like-icon"></span>
								<%} %>
							</div>
							
						<%if(flag==1){%>
                               <%if(rs2.getString(17)!=""){ %><img src="Buy_Property_images/<%=rs2.getString(17) %>" alt=""><%}
                               else if(rs2.getString(18)!=""){%><img src="Buy_Property_images/<%=rs2.getString(18) %>" alt=""><%}
                               else if(rs2.getString(19)!=""){%><img src="Buy_Property_images/<%=rs2.getString(19) %>"alt=""><%}
                               else if(rs2.getString(20)!=""){%><img src="Buy_Property_images/<%=rs2.getString(20) %>"alt=""><% }}
						if(flag==2){%>
                               <%if(rs2.getString(21)!=""){ %><img src="Rent_Property_images/<%=rs2.getString(21) %>" alt=""><%}
                               else if(rs2.getString(22)!=""){%><img src="Rent_Property_images/<%=rs2.getString(22) %>" alt=""><%}
                               else if(rs2.getString(23)!=""){%><img src="Rent_Property_images/<%=rs2.getString(23) %>" alt=""><%}
                               else if(rs2.getString(24)!=""){%><img src="Rent_Property_images/<%=rs2.getString(24) %>" alt=""><% }}
						if(flag==3){%>
                        <%if(rs2.getString(21)!=""){ %><img src="Flatmate_Property_images/<%=rs2.getString(21) %>" alt=""><%}
                        else if(rs2.getString(22)!=""){%><img src="Flatmate_Property_images/<%=rs2.getString(22) %>" alt=""><%}
                        else if(rs2.getString(23)!=""){%><img src="Flatmate_Property_images/<%=rs2.getString(23) %>" alt=""><%}
                        else if(rs2.getString(24)!=""){%><img src="Flatmate_Property_images/<%=rs2.getString(24) %>" alt=""><% }}
						if(flag==4){%>
                        <%if(rs2.getString(21)!=""){ %><img src="Pg_Hostel_Property_images/<%=rs2.getString(21) %>" alt=""><%}
                        else if(rs2.getString(22)!=""){%><img src="Pg_Hostel_Property_images/<%=rs2.getString(22) %>" alt=""><%}
                        else if(rs2.getString(23)!=""){%><img src="Pg_Hostel_Property_images/<%=rs2.getString(23) %>" alt=""><%}
                        else if(rs2.getString(24)!=""){%><img src="Pg_Hostel_Property_images/<%=rs2.getString(24) %>" alt=""><% }}%>
						</a>
						
						<div class="listing-content">

							<div class="listing-title">
							<%if(flag==1){%>
								<h4><a href="Property_page.jsp?PropBuyId=<%=rs2.getString(2) %>"><%=rs2.getString(3)%></a></h4><%}
							else if(flag==2){%>
							<h4><a href="Property_page.jsp?PropRentId=<%=rs2.getString(2) %>"><%=rs2.getString(3)%></a></h4><%}
							else if(flag==3){%>
								<h4><a href="Property_page.jsp?PropFlatmatesId=<%=rs2.getString(2) %>"><%=rs2.getString(3)%></a></h4><%}
							else if(flag==4){%>
							<h4><a href="Property_page.jsp?PropHostelId=<%=rs2.getString(2) %>"><%=rs2.getString(3)%></a></h4><%}
								%>
<!-- 							<a href="https://maps.google.com/maps?q=221B+Baker+Street,+London,+United+Kingdom&amp;hl=en&amp;t=v&amp;hnear=221B+Baker+St,+London+NW1+6XE,+United+Kingdom" class="listing-address popup-gmaps"> -->
									<%if(flag==1){%>
							<i class="fa fa-map-marker"></i>
							
							<%=rs2.getString(13)+" "+rs2.getString(15)+" "+rs2.getString(14) %>
							<%}else if(flag==2 || flag==3){%>
							<i class="fa fa-map-marker"></i>
							
							<%=rs2.getString(17)+" "+rs2.getString(19)+" "+rs2.getString(18) %>
							<% }
							else if(flag==4){%>
							<i class="fa fa-map-marker"></i>
							
							<%=rs2.getString(19)+" "+rs2.getString(21)+" "+rs2.getString(20) %>
						<%}%>
									
								</a>
   <%if (flag==1){ %>
								<a href="Property_page.jsp?PropBuyId=<%=rs2.getString(2) %>" class="details button border">Details</a><%}
   else if(flag==2){%>
   <a href="Property_page.jsp?PropRentId=<%=rs2.getString(2) %>" class="details button border">Details</a><%}
   else if(flag==3){%>
    <a href="Property_page.jsp?PropFlatmatesId=<%=rs2.getString(2) %>" class="details button border">Details</a><%}
   else if(flag==4){%>
	   <a href="Property_page.jsp?PropHostelId=<%=rs2.getString(2) %>" class="details button border">Details</a><%}%>
							</div>

					<ul class="listing-details">
						<li>Building Age: <span><%=rs1.getString(11) %> Years</span></li>
						<li>Parking: <span><%=rs1.getString(10) %></span></li>
						<li>Number Of Bathrooms: <span><%=rs1.getString(8) %></span></li>
					</ul>
						</div>
						<!-- Listing Item / End -->

					</div>
					<!-- Listing Item / End -->				
				</div>
				<!-- Similar Listings Container / End -->
<%}}
catch(Exception e){e.printStackTrace();}
	} %>
			</div>
		</div>
		<!-- Property Description / End -->
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

<!-- Maps -->
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false&amp;language=en"></script>
<script type="text/javascript" src="scripts/infobox.min.js"></script>
<script type="text/javascript" src="scripts/markerclusterer.js"></script>
<script type="text/javascript" src="scripts/maps.js"></script>


</div>
<!-- Wrapper / End -->


</body>

<!-- Mirrored from www.vasterad.com/themes/findeo_html/single-property-page-1.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 06 Nov 2017 05:23:06 GMT -->
</html>