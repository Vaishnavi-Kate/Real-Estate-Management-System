<!-- Footer ================================================== -->
<div id="footer" class="sticky-footer">
	<!-- Main -->
	<div class="container">
		<div class="row">
			<div class="col-md-5 col-sm-6">
				<a class="footer-logo" href="index.jsp"><img width="auto" height="100px" src="images/logo/myhome.png" alt="Search My home"></a>
<!-- 				<img src="images/logo.png" alt=""> -->
				<br><br>
				<p style="text-align:justify;">Search My Home is a web portal. Here we have displayed variety of <a href="#" class="tooltip top" title="e.g. Room, Home, House, Flat, Villa etc.">properties</a>. such as properties for <a href="#" class="tooltip top" title="Property for sell">buy</a>, properties for rent, properties for hostel/pg etc.</p>
			</div>

			<div class="col-md-4 col-sm-6 ">
				<h4>Helpful Links</h4>
				<ul class="footer-links">
					<%if(session.getAttribute("uid")==null){ %>
						<li><a href="login-register.jsp">Login</a></li>
						<li><a href="login-register.jsp">Sign Up</a></li>	
					<%}else{%>
						<li><a href="my-profile.jsp">My Account</a></li>
						<li><a href="Add_Property_Buy.jsp">Add&nbsp;Buy&nbsp;Property</a></li>
						<li><a href="AddProperty_Rent.jsp">Add&nbsp;Rent&nbsp;Property</a></li>
						<li><a href="Add_Property_Flatmate.jsp">Add&nbsp;Flatmate&nbsp;Property</a></li>
						<li><a href="Add_Property_Pg_Hostel.jsp">Add&nbsp;Hostel/PG&nbsp;Property</a></li>
					<%}%>			
				</ul>

				<ul class="footer-links">
					<li><a href="index.jsp">Home</a></li>
					<li><a href="About.jsp">About Us</a></li>
					<li><a href="Contact.jsp">Contact Us</a></li>
				</ul>
				<div class="clearfix"></div>
			</div>		

			<div class="col-md-3  col-sm-12">
				<h4>Contact Us</h4>
				<div class="text-widget">
					<span>New Ausa Road, Latur - 413512</span> <br>
					Cell: <span>(738) 740-8353 </span><br>
					E&nbsp;-&nbsp;Mail:&nbsp;<span><a href="mailto:searchmyhomelatur@gmail.com">searchmyhomelatur@gmail.com</a></span>&nbsp;<br>
				</div>

				<ul class="social-icons margin-top-20">
					<li><a class="facebook" href="javascript:void(0)"><i class="icon-facebook"></i></a></li>
					<li><a class="twitter" href="javascript:void(0)"><i class="icon-twitter"></i></a></li>
					<li><a class="gplus" href="javascript:void(0)"><i class="icon-gplus"></i></a></li>
					<li><a class="pinterest" href="javascript:void(0)"><i class="icon-pinterest"></i></a></li>
				</ul>
			</div>
		</div>
		
		<!-- Copyright -->
		<div class="row">
			<div class="col-md-12">
				<div class="copyrights">© 2018-19 SearchMyHome. All Rights Reserved. <span>Designed and Developed by <a href="ingenioustechnohub.com" onMouseOver="this.style.color='#000'" onMouseOut="this.style.color='#707070'" title="Ingenious">Ingenious Technohub</a></span></div>
			</div>
		</div>
	</div>
</div>
<!-- Footer / End -->

<!-- Back To Top Button -->
<div id="backtotop"><a href="#"></a></div>