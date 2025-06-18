<%@page import="com.shoaib.model.Requirements"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="zxx">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap Min CSS -->
    <link rel="stylesheet" href="assets/Website/assets/css/bootstrap.min.css">
    <!-- Owl Theme Default Min CSS -->
    <link rel="stylesheet" href="assets/Website/assets/css/owl.theme.default.min.css">
    <!-- Owl Carousel Min CSS -->
    <link rel="stylesheet" href="assets/Website/assets/css/owl.carousel.min.css">
    <!-- Boxicons Min CSS -->
    <link rel="stylesheet" href="assets/Website/assets/css/boxicons.min.css">
    <!-- Flaticon CSS -->
    <link rel="stylesheet" href="assets/Website/assets/css/flaticon.css">
    <!-- Meanmenu Min CSS -->
    <link rel="stylesheet" href="assets/Website/assets/css/meanmenu.min.css">
    <!-- Animate Min CSS -->
    <link rel="stylesheet" href="assets/Website/assets/css/animate.min.css">
    <!-- Nice Select Min CSS -->
    <link rel="stylesheet" href="assets/Website/assets/css/nice-select.min.css">
    <!-- Odometer Min CSS -->
    <link rel="stylesheet" href="assets/Website/assets/css/odometer.min.css">
    <!-- Date Picker CSS-->
    <link rel="stylesheet" href="assets/Website/assets/css/date-picker.min.css">
    <!-- Magnific Popup Min CSS -->
    <link rel="stylesheet" href="assets/Website/assets/css/magnific-popup.min.css">
    <!-- Beautiful Fonts CSS -->
    <link rel="stylesheet" href="assets/Website/assets/css/beautiful-fonts.css">
    <!-- Style CSS -->
    <link rel="stylesheet" href="assets/Website/assets/css/style.css">
    <!-- Dark CSS -->
    <link rel="stylesheet" href="assets/Website/assets/css/dark.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="assets/Website/assets/css/responsive.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.1/css/all.min.css" integrity="sha512-5Hs3dF2AEPkpNAR7UiOHba+lRSJNeM2ECkwxUIxC1Q/FLycGTbNapWXB4tP889k5T5Ju8fs4b1P5z/iB4nMfSQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- Favicon -->
    <link rel="icon" type="image/png" href="assets/Website/assets/img/wai.png">

    <!-- TITLE -->
    <title>WA Travel - Manpower Consultant</title>
    <style>
        .buy-now-btn{
            display: none;
        }
        .error{
        	color: red;
        }
        .stapp{
    position: fixed;
    bottom: 5px;
    right: 15px;
    z-index: 99;
    font-size: 20px;
    border: none;
    outline: none;
    border-radius: 50px;
    color: #fff;
    background-color: #6AAF08;
    cursor: pointer;
    width: 45px;
    height: 45px;
    line-height: 45px;
    text-align: center;
    transition: all .5s ease-in-out;
    z-index: 1;
}
.stapp:hover {
	color: white;
}
.pstapp{
    position: fixed;
    bottom: 5px;
    left: 15px;
    z-index: 99;
    font-size: 20px;
    border: none;
    outline: none;
    border-radius: 50px;
    color: #fff;
    background-color: blue;
    cursor: pointer;
    width: 45px;
    height: 45px;
    line-height: 45px;
    text-align: center;
    transition: all .5s ease-in-out;
    z-index: 1;
}
.pstapp:hover {
	color: white;
}
        
    </style>
     <script>
        // Disable right-click
        document.addEventListener('contextmenu', function (e) {
            e.preventDefault();
        });

        // Disable specific keyboard shortcuts
        document.addEventListener('keydown', function (e) {
            // Prevent F12 (Inspect Element)
            if (e.key === "F12") {
                e.preventDefault();
            }

            // Prevent Ctrl+Shift+I (Chrome DevTools), Ctrl+Shift+J (Console), and Ctrl+U (View Source)
            if ((e.ctrlKey && e.shiftKey && e.key === 'I') || 
                (e.ctrlKey && e.shiftKey && e.key === 'J') || 
                (e.ctrlKey && e.key === 'U')) {
                e.preventDefault();
            }
        });
    </script>
</head>

<body>
<%
List<Requirements> req = (List<Requirements>)request.getAttribute("req");
%>
    <!-- Start Preloader Area -->
     <div class="preloader">
        <div class="lds-ripple">
            <div></div>
            <div></div>
        </div>
    </div>
    <!-- End Preloader Area -->

    <!-- Start Ecorik Navbar Area -->
    <div class="eorik-nav-style eorik-nav-style-five fixed-top">
        <div class="navbar-area">
            <!-- Menu For Mobile Device -->
            <div class="mobile-nav">
                <a href="#" class="logo">
						<img src="assets/Website/assets/img/wlogo.png" alt="Logo" style="margin-top: -12px;">
					</a>
            </div>
            <!-- Menu For Desktop Device -->
            <div class="main-nav">
                <nav class="navbar navbar-expand-md navbar-light">
                    <div class="container">
                        <a class="navbar-brand" href="#">
								<img src="assets/Website/assets/img/wlogo.png" alt="Logo" style="height: 75px;">
							</a>
                        <div class="collapse navbar-collapse mean-menu" id="navbarSupportedContent">
                            <ul class="navbar-nav m-auto">
                                <li class="nav-item">
                                    <a href="#" class="nav-link dropdown-toggle active">
											Home
										</a>
                                </li>
                                <li class="nav-item">
                                    <a href="#about" class="nav-link dropdown-toggle">
											About Us
										</a>
                                </li>
                                <li class="nav-item">
                                    <a href="#req" class="nav-link dropdown-toggle">
											Requirments
										</a>
                                </li>
                                <!-- <li class="nav-item">
                                    <a href="#test" class="nav-link dropdown-toggle">
											Testimonials
										</a>
                                </li> -->
                                <li class="nav-item">
                                    <a href="#contact" class="nav-link dropdown-toggle">
											Contacts
										</a>
                                </li>
                               
                            </ul>
                            <!-- Start Other Option -->
                            <div class="others-option">
                                <a class="call-us" href="tel:++91 95401 94732">
										<i class="bx bx-phone-call bx-tada"></i>
										+91 95401 94732
									</a>
                            </div>
                            <!-- End Other Option -->
                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </div>
    <!-- End Ecorik Navbar Area -->

    <!-- Start Ecorik Slider Area -->
    <section class="eorik-slider-area eorik-slider-area-five">
        <div class="eorik-slider-five owl-carousel owl-theme">
            <div class="eorik-slider-item slider-item-bg-13">
                <div class="d-table">
                    <div class="d-table-cell">
                        <div class="container">
                            <div class="eorik-slider-text overflow-hidden one">
                                <h1>Global Job Explorer</h1>
                                <span>Explore International Job Opportunities Across Borders</span>
                                <div class="slider-btn">
                                    <a class="default-btn" href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#enquiryModal">
											Get Enquiry
											<i class="flaticon-right"></i>
										</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="eorik-slider-item slider-item-bg-14">
                <div class="d-table">
                    <div class="d-table-cell">
                        <div class="container">
                            <div class="eorik-slider-text overflow-hidden two">
                                <h1>Global Career Genius</h1>
                                <span>Explore International Job Opportunities Across Borders</span>
                                <div class="slider-btn">
                                    <a class="default-btn" href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#enquiryModal">
                                            Get Enquiry
											<i class="flaticon-right"></i>
										</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="eorik-slider-item slider-item-bg-15">
                <div class="d-table">
                    <div class="d-table-cell">
                        <div class="container">
                            <div class="eorik-slider-text overflow-hidden three">
                                <h1>Genius Opportunities</h1>
                                <span>Explore International Job Opportunities Across Borders</span>
                                <div class="slider-btn">
                                    <a class="default-btn" href="javascript:void(0)" data-bs-toggle="modal" data-bs-target="#enquiryModal">
                                        Get Enquiry
											<i class="flaticon-right"></i>
										</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Ecorik Slider Area -->

    

    <!-- Start About Area -->
    <section class="facilities-area-five pb-100" style="margin-top: 90px;" id="about">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-4 p-0">
                    <div class="facilities-single-bg"></div>
                </div>
                <div class="col-lg-8 p-0">
                    <div class="facilities-right-wrap pt-100 pb-70">
                        <div class="facilities-title">
                            <h2>About WI Group</h2>
                            <p class="text-white">Join WI Group today and embark on your journey toward a fulfilling international career!</p>
                        </div>
                        <div class="row mr-0">
                            <div class="col-lg-4 col-sm-6">
                                <div class="single-facilities-wrap">
                                    <div class="single-facilities">
                                        <p>WI Group is committed to helping individuals discover exciting international career opportunities that take their professional journey beyond borders. Our platform connects job seekers with global companies, offering access to a world of possibilities for those eager to explore new professional horizons.</p>
                                        <a  class="icon-btn">
												<i class="flaticon-right"></i>
											</a>
                                    </div>
                                </div>
                            </div>
                           
                            <div class="col-lg-4 col-sm-6 offset-sm-3 offset-lg-0">
                                <div class="single-facilities-wrap">
                                    <div class="single-facilities">
                                        <p>At WI Group, we believe that careers are more than just work—they are adventures that foster growth, learning, and cultural exploration. With our expert guidance and a comprehensive database of international job opportunities, we make global job hunting simple and accessible.</p>
                                        <a  class="icon-btn">
												<i class="flaticon-right"></i>
											</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-4 col-sm-6">
                                <div class="single-facilities-wrap">
                                    <div class="single-facilities">
                                        <p>Whether you're an experienced professional seeking new challenges or a recent graduate ready to dive into international markets, WI Group provides the tools, resources, and network to help you land your dream job anywhere in the world.</p>
                                        <a  class="icon-btn">
												<i class="flaticon-right"></i>
											</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End facilities Area -->

    <!-- Start Explore Area -->
    <!-- End Explore Area -->

    <!-- Start Our Rooms Area -->
    <section class="our-rooms-area pb-70" id="req">
        <div class="container">
            <div class="section-title">
                <span>Interview</span>
                <h2>Requirments</h2>
            </div>

            <div class="row">
            <%if(req.size() > 0){
            	for(Requirements r : req){
            	if(r.getType().equalsIgnoreCase("Interview")){%>
                <div class="col-lg-3 col-sm-6">
                    <div class="single-rooms-three-wrap">
                        <div class="single-rooms-three">
                            <img src="displayimage?url=<%=r.getImage()%>" alt="Image">
                            <div class="single-rooms-three-content">
                                <h3><%=r.getCompany_name()%></h3>
                                <a href="javascript:void(0)" onclick="shoEnqMod(<%=r.getSno()%>)" class="default-btn">
										Enquiry
										<i class="flaticon-right"></i>
									</a>
                            </div>
                        </div>
                    </div>
                </div>
                <%}}}else{ %>
                <p class="text-danger" style="font-weight: 700">No Requirements available</p>
                <%} %>
            </div>
        </div>
    </section>
    <section class="our-rooms-area pb-70" id="req">
        <div class="container">
            <div class="section-title">
                <span>CV Selection</span>
                <h2>Requirments</h2>
            </div>

            <div class="row">
                <%if(req.size() > 0){
            	for(Requirements r : req){
            	if(r.getType().equalsIgnoreCase("CV Selection")){%>
                <div class="col-lg-3 col-sm-6">
                    <div class="single-rooms-three-wrap">
                        <div class="single-rooms-three">
                            <img src="displayimage?url=<%=r.getImage()%>" alt="Image">
                            <div class="single-rooms-three-content">
                                <h3><%=r.getCompany_name()%></h3>
                                <a href="javascript:void(0)" onclick="shoEnqMod(<%=r.getSno()%>)" class="default-btn">
										Enquiry
										<i class="flaticon-right"></i>
									</a>
                            </div>
                        </div>
                    </div>
                </div>
                <%}}}else{ %>
                <p class="text-danger" style="font-weight: 700">No Requirements available</p>
                <%} %>
            </div>
        </div>
    </section>
    <!-- End Our Rooms Area -->

    <!-- Start Counter Area -->
    <!-- <section class="counter-area counter-area-five pt-100 pb-70">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-sm-6">
                    <div class="single-counter">
                        <p>Beaches</p>
                        <h2>
                            <span class="odometer" data-count="50">00</span> <span class="target">+</span>
                        </h2>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single-counter">
                        <p>Spa offers</p>
                        <h2>
                            <span class="odometer" data-count="95">00</span> <span class="target">+</span>
                        </h2>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single-counter">
                        <p>Rooms</p>
                        <h2>
                            <span class="odometer" data-count="45">00</span> <span class="target">+</span>
                        </h2>
                    </div>
                </div>
                <div class="col-lg-3 col-sm-6">
                    <div class="single-counter">
                        <p>Happy client</p>
                        <h2>
                            <span class="odometer" data-count="20">00</span> <span class="target">K</span>
                        </h2>
                    </div>
                </div>
            </div>
        </div>
    </section> -->
    <!-- End Counter Area -->

    <!-- End Incredible Area -->
    <section class="incredible-area ptb-100 jarallax">
        <div class="container">
            <div class="incredible-content">
                <a href="https://www.youtube.com/watch?v=bk7McNUjWgw" class="video-btn popup-youtube">
						<i class="flaticon-play-button"></i>
					</a>
                <h2><span>Incredible!</span> Are you coming today</h2>
                <p>Join WI Group today and take the first step towards discovering exciting global career opportunities. Unlock your potential with our expert guidance and connect with top international employers around the world!</p>
                <a href="#contact" class="default-btn">
						Join Us Today
						<i class="flaticon-right"></i>
					</a>
            </div>
        </div>
    </section>
    <!-- End Incredible Area -->

    <!-- start Testimonials Area -->
    <!-- <section class="testimonials-area ptb-100" id="test">
        <div class="container">
            <div class="section-title">
                <span>Testimonials</span>
                <h2>What customers say</h2>
            </div>
            <div class="testimonials-wrap owl-carousel owl-theme">
                <div class="single-testimonials">
                    <ul>
                        <li>
                            <i class="bx bxs-star"></i>
                        </li>
                        <li>
                            <i class="bx bxs-star"></i>
                        </li>
                        <li>
                            <i class="bx bxs-star"></i>
                        </li>
                        <li>
                            <i class="bx bxs-star"></i>
                        </li>
                        <li>
                            <i class="bx bxs-star"></i>
                        </li>
                    </ul>
                    <h3>Excellent Swimming</h3>
                    <p>“Awesome yksum dolor sit ametco elit, sed do eiusmod tempor incididunt et md do eiusmoeiusmod tempor inte emamnsecacing eiusmoeiusmod”</p>
                    <div class="testimonials-content">
                        <img src="assets/Website/assets/img/testimonials/2.jpg" alt="Image">
                        <h4>Ayman Jenis</h4>
                        <span>CEO@Leasuely</span>
                    </div>
                </div>
                <div class="single-testimonials">
                    <ul>
                        <li>
                            <i class="bx bxs-star"></i>
                        </li>
                        <li>
                            <i class="bx bxs-star"></i>
                        </li>
                        <li>
                            <i class="bx bxs-star"></i>
                        </li>
                        <li>
                            <i class="bx bxs-star"></i>
                        </li>
                        <li>
                            <i class="bx bxs-star"></i>
                        </li>
                    </ul>
                    <h3>Excellent hotel</h3>
                    <p>“Awesome yksum dolor sit ametco elit, sed do eiusmod tempor incididunt et md do eiusmoeiusmod tempor inte emamnsecacing eiusmoeiusmod”</p>
                    <div class="testimonials-content">
                        <img src="assets/Website/assets/img/testimonials/3.jpg" alt="Image">
                        <h4>Ayman Jenis</h4>
                        <span>CEO@Leasuely</span>
                    </div>
                </div>
                <div class="single-testimonials">
                    <ul>
                        <li>
                            <i class="bx bxs-star"></i>
                        </li>
                        <li>
                            <i class="bx bxs-star"></i>
                        </li>
                        <li>
                            <i class="bx bxs-star"></i>
                        </li>
                        <li>
                            <i class="bx bxs-star"></i>
                        </li>
                        <li>
                            <i class="bx bxs-star"></i>
                        </li>
                    </ul>
                    <h3>Excellent Room</h3>
                    <p>“Awesome yksum dolor sit ametco elit, sed do eiusmod tempor incididunt et md do eiusmoeiusmod tempor inte emamnsecacing eiusmoeiusmod”</p>
                    <div class="testimonials-content">
                        <img src="assets/Website/assets/img/testimonials/1.jpg" alt="Image">
                        <h4>Ayman Jenis</h4>
                        <span>CEO@Leasuely</span>
                    </div>
                </div>
            </div>
        </div>
    </section> -->
    <!-- End Testimonials Area -->

<!-- Start Contact Area -->
<section class="main-contact-area pb-100 mt-5" id="contact">
    <div class="container">
        <div class="section-title">
            <span>Contact Us</span>
            <h2>Drop us a message for any query</h2>
        </div>
        <div class="row">
            <div class="col-12">
                <div class="contact-wrap mb-0">
                    <div class="contact-form">
                        <form id="contact_form" name="contact_form">
                            <div class="row">
                                <div class="col-lg-6 col-sm-6">
                                    <div class="form-group">
                                        <input type="text" name="name" id="name" class="form-control"   placeholder="Your Name">
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>

                                <!-- <div class="col-lg-6 col-sm-6">
                                    <div class="form-group">
                                        <input type="email" name="email" id="email" class="form-control" required data-error="Please enter your email" placeholder="Your Email">
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div> -->

                                <div class="col-lg-6 col-sm-6">
                                    <div class="form-group">
                                        <input type="text" name="phone_number" id="phone_number"   class="form-control" placeholder="Your Phone">
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>

                                <div class="col-lg-12 col-sm-12">
                                    <div class="form-group">
                                        <input type="text" name="subject" id="subject" class="form-control"  placeholder="Your Subject">
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>

                                <div class="col-lg-12 col-md-12">
                                    <div class="form-group">
                                        <textarea name="message" class="form-control" id="message" cols="30" rows="5"  placeholder="Your Message"></textarea>
                                        <div class="help-block with-errors"></div>
                                    </div>
                                </div>

                                <div class="col-lg-12 col-md-12">
                                    <button type="submit" id="sndbtn" class="default-btn btn-two">
                                            Send Message
                                            <i class="flaticon-right"></i>
                                        </button>
                                    <div id="msgSubmit" class="h3 text-center hidden"></div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- End Contact Area -->
    <!-- Start Footer Menu Area -->
    <div class="footer-menu-area">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-4">
                    <div class="footer-logo">
                        <img src="assets/Website/assets/img/wlogo.png" alt="Image" style="height: 70px;">
                    </div>
                </div>
                <div class="col-lg-8">
                    <ul>
                        <li>
                            <a href="about.html">
									About Us
								</a>
                        </li>
                       
                        <li>
                            <a href="service-style-one.html">
									Requirments
								</a>
                        </li>
                        <!-- <li>
                            <a href="testimonial.html">
									Testimonial
								</a>
                        </li> -->
                        <li>
                            <a href="news-grid.html">
                                Contacts
								</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- End Footer Menu Area -->

    <!-- Start Footer Area -->
    <footer class="footer-top-area footer-top-area-four">
        <div class="container">
            <div class="footer-middle-area pb-30" style="padding-top: 30px;">
                <div class="row">
                    <div class="col-lg-4 col-md-6">
                        <div class="single-widget">
                            <ul class="information" style="display: flex;">
                                <li class="address">
                                    <i class="flaticon-maps-and-flags"></i>
                                    <span>Address</span> 160, 2nd Floor,
                                    Sarai Julaina, New Friends Colony,
                                    Opp- Escort Hospital 
                                    New Delhi-110025
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="single-widget">
                            <ul class="information" style="display: flex;">
                                
                                <li class="address">
                                    <i class="flaticon-call"></i>
                                    <span>Phone</span>
                                    <a href="tel: +919540194732">
                                        +91-9540194732
										</a>
                                </li>
                               
                            </ul>
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-6">
                        <div class="single-widget">
                            <ul class="information" style="display: flex;">
                                <li class="address">
                                    <i class="flaticon-envelope"></i>
                                    <span>Email</span>
                                    <a href="mailto:wigroupservice@gmail.com">
											<span class="__cf_email__" data-cfemail="741c1118181b3411171b061d1f5a171b19">wigroupservice@gmail.com</span>
										</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="footer-bottom-area mt-0">
                <div class="row align-items-center">
                    <div class="col-lg-6">
                        <div class="copy-right">
                            <p>© Proudly Owned by <a href="" target="_blank">Waris Ansari Tour & Travel</a></p>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="designed">
                            <p>Designed and Developed By <i class='bx bx-heart'></i> <a href="#" target="_blank">Shoaib Jamal</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- End Footer Area -->

    <!-- Start Go Top Area -->
    <div class="go-top d-lg-block d-none">
        <i class='bx bx-chevrons-up bx-fade-up'></i>
        <i class='bx bx-chevrons-up bx-fade-up'></i>
    </div>
    <!-- End Go Top Area -->
 <a href="javascript:void(0)" onclick="redirectToWhatsApp()" class="stapp d-lg-none d-block"><i class="fa-brands fa-whatsapp"></i></a>
<a href="tel:+919540194732" class="pstapp d-lg-none d-block"><i class="fa-solid fa-phone-volume"></i></a>

    <!-- Jquery Min JS -->
    <script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script>
    <script src="assets/Website/assets/js/jquery.min.js"></script>
    <!-- Bootstrap Bundle Min JS -->
    <script src="assets/Website/assets/js/bootstrap.bundle.min.js"></script>
    <!-- Meanmenu Min JS -->
    <script src="assets/Website/assets/js/meanmenu.min.js"></script>
    <!-- Owl Carousel Min JS -->
    <script src="assets/Website/assets/js/owl.carousel.min.js"></script>
    <!-- Wow Min JS -->
    <script src="assets/Website/assets/js/wow.min.js"></script>
    <!-- Nice Select Min JS -->
    <script src="assets/Website/assets/js/nice-select.min.js"></script>
    <!-- Magnific Popup Min JS -->
    <script src="assets/Website/assets/js/magnific-popup.min.js"></script>
    <!-- Mixitup JS -->
    <script src="assets/Website/assets/js/mixitup.min.js"></script>
    <!-- Appear Min JS -->
    <script src="assets/Website/assets/js/appear.min.js"></script>
    <!-- Odometer Min JS -->
    <script src="assets/Website/assets/js/odometer.min.js"></script>
    <!-- Datepicker Min JS -->
    <script src="assets/Website/assets/js/bootstrap-datepicker.min.js"></script>
    <!-- Ofi Min JS -->
    <script src="assets/Website/assets/js/ofi.min.js"></script>
    <!-- jarallax Min JS -->
    <script src="assets/Website/assets/js/jarallax.min.js"></script>
    <!-- Form Validator Min JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/1000hz-bootstrap-validator/0.11.9/validator.min.js"></script>
    <!-- Contact JS -->
    <script src="assets/Website/assets/js/contact-form-script.js"></script>
    <!-- Ajaxchimp Min JS -->
    <script src="assets/Website/assets/js/ajaxchimp.min.js"></script>
    <!-- Custom JS -->
   <script src="assets/Website/assets/js/custom.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/jquery.validate.min.js"></script>

  <script>
function redirectToWhatsApp() {
    var phoneNumber = "919540194732";  // Replace with the recipient's phone number
    var message = "";  // Replace with your desired message

    // Create a WhatsApp link
    var whatsappLink = "whatsapp://send?phone=" + phoneNumber + "&text=" + encodeURIComponent(message);

    // Try to open the link
    window.location.href = whatsappLink;
}
</script>



    <!-- Modal -->
    <div class="modal fade" id="enquiryModal" tabindex="-1" aria-labelledby="enquiryModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content ">
                <div class="modal-header">
                    <h5 class="modal-title" id="enquiryModalLabel">Enquiry Form</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form id="enquiry_form" name="enquiry_form">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="fullName" class="form-label">Full Name</label>
                                    <input type="text" class="form-control" id="fullName" name="fullName" placeholder="Enter your full name">
                                </div>
                            </div>
                           <!--  <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="emailAddress" class="form-label">Email Address</label>
                                    <input type="email" class="form-control" id="emailAddress" placeholder="name@example.com" required>
                                </div>
                            </div> -->
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="phoneNumber" class="form-label">Phone Number</label>
                                    <input type="tel" class="form-control" id="phoneNumber" name="phoneNumber" placeholder="Enter your phone number">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="mb-3">
                                    <label for="phoneNumber" class="form-label">Upload CV</label>
                                    <input type="file" class="form-control" id="cv"  name="cv" accept=".pdf, .doc, .docx">
                                </div>
                            </div>
                        </div>
                        <input type="hidden" id="req_id" name="req_id">
                        <div class="mb-3">
                            <label for="enquiryDetails" class="form-label">Enquiry Details</label>
                            <textarea class="form-control" id="enquiryDetails" name="enquiryDetails" rows="4" placeholder="Describe your enquiry"></textarea>
                        </div>
                        <button type="submit" class="btn btn-primary">Submit Enquiry</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script>
    
    function shoEnqMod(sno){
    	$("#req_id").val(sno);
    	$('#enquiryModal').modal('toggle')
    }
    
  $(function() {
      $("form[name='enquiry_form']").validate({
          rules: {
        	  fullName: { required: true },
        	  phoneNumber: { required: true },
        	  cv: { required: true },
        	  enquiryDetails: { required: true }
          },
          messages: {
        	  fullName: { required: "Please enter your name" },
        	  phoneNumber: { required: "Please enter your phone number" },
        	  cv: { required: "Please enter a subject" },
        	  enquiryDetails: { required: "Please write a message" }
          },
          submitHandler: function(form) {
              $("#sndbtn").attr("disabled", true);
              $("#sndbtn").html("Please wait...");
              var cv = $("#cv")[0].files[0];
              
              var obj = {
                  "name": $("#fullName").val(),
                  "phone_number": $("#phoneNumber").val(),
                  "message": $("#enquiryDetails").val(),
                  "req_id": $("#req_id").val(),
                  "type": "Enq"
              };
              var fd = new FormData();
				fd.append("cv",cv);
				fd.append("enq_data",JSON.stringify(obj));
              
              $.ajax({
                  url: 'addEnquiryWithCV',
                  type : 'post',
					data : fd,
					processData : false,
					contentType :  false,
                  success: function(data) {
                      $("#sndbtn").attr("disabled", false);
                      $("#sndbtn").html("Send Message");
                      if (data['status'] == 'Success') {
                          alert(data['message']);
                          location.reload();
                          $('#contact_form').trigger("reset");
                      } else {
                          alert(data['message']);
                      }
                  },
                  error: function() {
                      $("#sndbtn").attr("disabled", false);
                      $("#sndbtn").html("Send Message");
                      alert("An error occurred. Please try again.");
                  }
              });
          }
      });
  });
  $(function() {
      $("form[name='contact_form']").validate({
          rules: {
              name: { required: true },
              phone_number: { required: true },
              subject: { required: true },
              message: { required: true }
          },
          messages: {
              name: { required: "Please enter your name" },
              phone_number: { required: "Please enter your phone number" },
              subject: { required: "Please enter a subject" },
              message: { required: "Please write a message" }
          },
          submitHandler: function(form) {
              $("#sndbtn").attr("disabled", true);
              $("#sndbtn").html("Please wait...");
              
              var obj = {
                  "name": $("#name").val(),
                  "phone_number": $("#phone_number").val(),
                  "subject": $("#subject").val(),
                  "message": $("#message").val(),
                  "req_id": 0,
                  "type": "Cont"
              };
              
              $.ajax({
                  url: 'add_enquiry',
                  type: 'post',
                  data: JSON.stringify(obj),
                  dataType: 'json',
                  contentType: 'application/json',
                  success: function(data) {
                      $("#sndbtn").attr("disabled", false);
                      $("#sndbtn").html("Send Message");
                      if (data['status'] == 'Success') {
                          alert(data['message']);
                          location.reload();
                          $('#contact_form').trigger("reset");
                      } else {
                          alert(data['message']);
                      }
                  },
                  error: function() {
                      $("#sndbtn").attr("disabled", false);
                      $("#sndbtn").html("Send Message");
                      alert("An error occurred. Please try again.");
                  }
              });
          }
      });
  });
  </script>
</body>

</html>