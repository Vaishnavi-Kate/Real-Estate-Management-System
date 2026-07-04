<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<!-- Basic Page Needs
================================================== -->
<title>Search My Home</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="Free property search and posting for latur">
<meta name="keywords" content="Contact us, Search my home latur,Home,House,Flats,Flatmates,Pg Hostel,Buy,Search,Rent">
<meta name="author" content="Ingenious Technohub And Team">
<!-- CSS ================================================== -->
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/colors/main.css" id="colors">

</head>

<body>

<!-- Wrapper -->
<div id="wrapper">
<jsp:include page="Header.jsp"></jsp:include>

<!-- Content ================================================== -->
<!-- Map Container -->
<div class="contact-map margin-bottom-55">

	<!-- Google Maps -->
	<div class="google-map-container">
		<!-- <div id="propertyMap"> -->
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3786.2709769808625!2d76.55609361489064!3d18.380514387490685!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3bcf83d18e586e91%3A0xd906ed4194869445!2sAusa+Rd%2C+Sneh+Nagar+Colony%2C+Ram+Nagar%2C+Latur%2C+Maharashtra+413512!5e0!3m2!1sen!2sin!4v1519325046701" width="100%" height="100%" frameborder="0" style="border:0" allowfullscreen></iframe>
		<!-- </div> -->
		<!-- <a href="#" id="streetView">Street View</a>-->
	</div>
	<!-- Google Maps / End -->

	<!-- Office -->
	<div class="address-box-container">
		<div class="address-container" data-background-image="images/our-office.jpg">
			<div class="office-address">
				<h3>Our Office</h3>
				<ul>
					<li>New Ausa Road, </li>
					<li>Latur - 413512</li>
					<li>Cell (738) 740-8353 </li>
				</ul>
			</div>
		</div>
	</div>
	<!-- Office / End -->

</div>
<div class="clearfix"></div>
<!-- Map Container / End -->


<!-- Container / Start -->
<div class="container">

	<div class="row">

		<!-- Contact Details -->
		<div class="col-md-4">

			<h4 class="headline margin-bottom-30">Find Us There</h4>

			<!-- Contact Details -->
			<div class="sidebar-textbox">
<!-- 				<p>Collaboratively administrate turnkey channels whereas virtual e-tailers. Objectively seize scalable metrics whereas proactive e-services.</p> -->

				<ul class="contact-details">
					<li><i class="fa fa-mobile-phone"  style="font-size:42px"></i> <strong>Cell:</strong> <span>(738) 740-8353</span></li>
					<li><i class="im im-icon-Globe" ></i> <strong>Web:</strong> <span><a href="#">www.searchmyhomelatur.com</a></span></li>
					<li><i class="im im-icon-Envelope"></i> <strong>E-Mail:</strong> <span><a href="mailto:searchmyhomelatur@gmail.com"> searchmyhomelatur@gmail.com</a></span></li>
				</ul>
			</div>

		</div>

		<!-- Contact Form -->
		<div class="col-md-8">

			<section id="contact">
				<h4 class="headline margin-bottom-35">Contact Form</h4>

				<div id="contact-message"></div> 

					<form method="post" action="javascript:void(0)" name="contactform" id="contactform" autocomplete="on">

					<div class="row">
						<div class="col-md-6">
							<div>
								<input name="name" type="text" id="name" placeholder="Your Name" required="required" />
							</div>
						</div>

						<div class="col-md-6">
							<div>
								<input name="email" type="email" id="email" placeholder="Email Address" pattern="^[A-Za-z0-9](([_\.\-]?[a-zA-Z0-9]+)*)@([A-Za-z0-9]+)(([\.\-]?[a-zA-Z0-9]+)*)\.([A-Za-z]{2,})$" required="required" />
							</div>
						</div>
					</div>

					<div>
						<input name="subject" type="text" id="subject" placeholder="Subject" required="required" />
					</div>

					<div>
						<textarea name="comments" cols="40" rows="3" id="comments" placeholder="Message" spellcheck="true" required="required"></textarea>
					</div>

					<input type="submit" class="submit button" onclick="alert('Thank you..!')" id="submit" value="Submit Message" />

					</form>
			</section>
		</div>
		<!-- Contact Form / End -->

	</div>

</div>
<!-- Container / End -->

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


<!-- Maps -->
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false&amp;language=en"></script>
<script type="text/javascript" src="scripts/infobox.min.js"></script>
<script type="text/javascript" src="scripts/markerclusterer.js"></script>
<script type="text/javascript" src="scripts/maps.js"></script>

</div>
<!-- Wrapper / End -->
</body>
</html>