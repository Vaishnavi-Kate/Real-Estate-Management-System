<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

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
	<!-- CSS ================================================== -->
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/colors/main.css" id="colors">
	  
	<style>
	 .requried
	{
		font-weight:bold;
		color:#ff6565;
	}
	.radiocontainer {
		margin-left:15px;
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
	</style>
</head>
<body>
<!-- Wrapper -->
<div id="wrapper">

<jsp:include page="Header.jsp"></jsp:include>
<!-- Titlebar ================================================== -->
<div id="titlebar">
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<h2>LogInRegister</h2>
				<!-- Breadcrumbs -->
				<nav id="breadcrumbs">
					<ul>
						<li><a href="#">Home</a></li>
						<li>LogInRegister</li>
					</ul>
				</nav>
			</div>
		</div>
	</div>
</div>

<!-- Contact ================================================== -->
<!-- Container -->
<div class="container" style="margin-top:-25px;">
	<p id="warning" style="color:red;text-align:center;margin-top:-40;display:none;">Please Log in first</p>	
	<div class="row">
	<div class="col-md-4 col-md-offset-4">
	
	<!--Tab -->
	<div class="my-account style-1 margin-top-5 margin-bottom-40">
		<ul class="tabs-nav">
			<li class=""><a href="#tab1">Log In</a></li>
			<li><a href="#tab2">Register</a></li>
		</ul>
		
		<div class="tabs-container alt">
			<!-- Login -->
			<div class="tab-content" id="tab1" style="display: none;">
				<form method="get" action="login-registerDB1.jsp" class="login">
					<p class="form-row form-row-wide">
						<label for="username1">Username:
							<i class="im im-icon-Male"></i>
							<input type="text" class="input-text" name="username" id="username1"/>
						</label>
					</p>			

					<p class="form-row form-row-wide">
						<label for="password">Password:
							<i class="im im-icon-Lock-2"></i>
							<input class="input-text" type="password"  name="password" id="password"/>
						</label>
					</p>

					<p class="form-row">
						<input type="submit" class="button border margin-top-10" value="Login" />
						<span class="lost_password">
							<a href="javascript:void(0)" >Lost Your Password?</a>
						</span>	
					</p>					
					<p style="padding:45px;" class="form-row">
						<span style="padding:25px;" class="lost_password">
							
						</span>	
					</p>					
				</form>
			</div>

			<!-- Register -->
			<div class="tab-content" id="tab2" style="display: none;">
			<form  method="post" action="login-registerDB.jsp" class="register" onsubmit="return ValidateFileUpload()">
				<p class="form-row form-row-wide">
					<label for="name" style="text-align:right;margin-top:-15px;margin-bottom:-20px;"><span class="requried">*</span> Are required fields</label>
				</p>
								
				<p class="form-row form-row-wide">
					<label for="name">Name: <span class="requried">*</span>
						<i class="im im-icon-Male"></i>
						<input type="text" class="input-text" name="username" id="username"/>
					</label>
				</p>
				
				<p class="form-row form-row-wide">
					<label for="phone_no">Mobile No: <span class="requried">*</span>
						<i class="fa fa-phone"></i>
					  <input type="number" class="input-text"  name="phonetext1" id="phone_no"  maxlength="10" pattern="[0-9]{10}" value="" /> 
					</label>
				</p>
					
				<p class="form-row form-row-wide">
					<label for="alternatephone_no">Alternate Mobile No:
						<i class="fa fa-phone"></i>
						<input type="number" class="input-text" name="phonetext2" id="alternatephone_no" maxlength="10" pattern="[0-9]{10}"  />
					</label>
				</p>
					
				<p class="form-row form-row-wide">
					<label for="email2">Email Address: <span class="requried">*</span>
						<i class="im im-icon-Mail"></i>  
						<input type="email" class="input-text" name="email" id="email2" placeholder="Enter the email"  />
					</label>
					<label style="font-size:14px;color:gray;margin-top:-15px;"><b>Note: </b>Your email will be your username</label>
				</p>
				
				<p class="form-row form-row-wide">
					<label for="address">Address: <span class="requried">*</span>
						<i class="fa fa-map-marker"></i> 
						<input type="text" class="input-text" name="addresstext" id="address"   />
					</label>
				</p>
				
				<p class="form-row form-row-wide">
					<label for="city">City: <span class="requried">*</span>
						
						<input type="text" class="input-text" name="citytext" id="city" value=""/>
					</label>
				</p>
				
				<p class="form-row form-row-wide">
					<label for="pincode">Pincode: <span class="requried">*</span>
						<i class="fa fa-map-pin"></i> 
						<input type="text"  class="input-text" name="pincodetext" maxlength="6" pattern="^[1-9][0-9]{6}*$ " id ="pincode" />
					</label>
				</p>
				
				<p class="form-row form-row-wide">
					<label for="state">State: <span class="requried">*</span>
						<input type="text" class="input-text" name="statetext" id="state"  />
					</label>
				</p>
				<p class="form-row form-row-wide">
					<label for="country">Country: <span class="requried">*</span>
						<i class="fa fa-flag"></i>  
						<input type="text" class="input-text" name="countrytext" id="country"  />
					</label>
				</p>
					
				<p class="form-row form-row-wide">
					<label for="password1">Password: <span class="requried">*</span>
						<i class="im im-icon-Lock-2"></i>
						<input class="input-text" type="password" name="password1" id="password1" />
					</label>
				</p>

				<p class="form-row form-row-wide">
					<label for="password2">Confirm Password: <span class="requried">*</span>
						<i class="im im-icon-Lock-2"></i>
						<input class="input-text" type="password" name="password2" id="password2"  />
					</label>
				</p>
<!-- 				<label for="fileChooser"> profile photo:  -->
<!-- 					</label> -->
<!--                    <input type="file" name="fname" id="fileChooser" onchange=""  />  -->
				<p style="margin-top:25px;" class="form-row form-row-wide">Account Type: <span class="requried">*</span>
					<label class="radiocontainer">seeker
					  <input type="radio" name="accnttype" id="accnttypeid" value="seeker" checked>
					  <span class="checkmark"></span>
					</label>
					<label class="radiocontainer">Owner
					  <input type="radio" name="accnttype" id="accnttypeid" value="owner">
					  <span class="checkmark"></span>
					</label>
					<label style="font-size:14px;color:gray;margin-top:15px;"><b>Note: </b>Type can't be changed after registration</label>
					</p>
		        <p class="form-row" style="margin-top:35px;">
					<input type="submit" class="button border fwmargin-top-10" value="register" name="register" style="width:50%" onclick="return validate();"/>
				</p>
				</form>
			</div>
		</div>
	</div>
	</div>
	</div>

</div>
<!-- Container / End -->

<jsp:include page="Footer.jsp"></jsp:include>

<!-- Scripts
================================================== -->
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


</div>
<!-- Wrapper / End -->

<script>
    
    //var x = document.forms["myForm"]["email"].value;
	//var xemail = ["email2"].value;   
	var result = false;
	var username = document.getElementById('username');
	var phone_no = document.getElementById('phone_no'); 
	var email =  document.getElementById('email2');
	var address = document.getElementById('address');
	var home_nameno = document.getElementById('home_nameno');
	var colony = document.getElementById('colony');    
	var city = document.getElementById('city');
	var state = document.getElementById('state');
	var country = document.getElementById('country');
	var pincode = document.getElementById('pincode');
	var password1 = document.getElementById('password1');
	var password2 = document.getElementById('password2');
	
	function validate()
	{
		if(username.value.length <= 0)
		   {
				alert('Enter your name.');
			}
		else
			{
				if(phone_no.value.length > 10 || phone_no.value.length < 10)
				{
					alert("Mobile no. must have 10 digits.");
				}
				else
				{
					if(address.value.length <= 0)
					{
						alert("Enter valid address.");
					}
				else
					{
					//-----------------------------------------------
						if(home_nameno.value.length <= 0)
							{ 
							alert("Enter valid homename or no");
							}
						else
							{
								if(colony.value.length <= 0)
								{
									alert("Enter colony");
								}
								else
								{
									if(city.value.length > 0)
										{
											if(state.value.length > 0)
												{
													if(country.value.length > 0)
														{
															if(pincode.value.length > 0)
																{
																//	alert(password1.value +' '+password2.value);
																	if(password1.value == password2.value)
																		{
																			result = true;
																		}
																	else
																		{
																			alert("Enter valid password.");
																		}
																}
															else{
																alert("Enter valid pincode.");
															}
														}
													else
														{
															alert("Enter valid country.");
														}
												}
											else
												{
													alert("Enter city name");
												}
										}
									else
										
										{
											alert("Enter city name");
										}
								}
							}
					//------------------------- copied code above
					}
				}
			}
		return result;
	
	}
	</script>
	<SCRIPT type="text/javascript">
	 function ValidateFileUpload()
	    {
	   
          var fuData = document.getElementById('fileChooser');
         var FileUploadPath = fuData.value;
        
      if (FileUploadPath != '')
        {
    	  var Extension = FileUploadPath.substring(
                  FileUploadPath.lastIndexOf('.') + 1).toLowerCase();

//The file uploaded is an image

if (Extension == "png" || Extension == "bmp" || Extension == "jpeg" || Extension == "jpg") {

//To Display
              if (fuData.files && fuData.files[0]) 
              {
                  var reader = new FileReader();

                  reader.onload = function(e) {
                      $('#blah').attr('src', e.target.result);
                  }

                  reader.readAsDataURL(fuData.files[0]);
              }

return true;            } 
//The file upload is NOT an image
else {
              alert("Photo only allows file types of  PNG, JPG, JPEG and BMP. ");
return false;
          }

        } 
    }
	
</SCRIPT>
</body>
<!-- Mirrored from www.vasterad.com/themes/findeo_html/login-register.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 06 Nov 2017 05:23:29 GMT --></html>