<%@page import="DB.DB"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- Mobile Specific Meta -->
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Favicon-->
        <link rel="shortcut icon" href="img/fav.png">
        <!-- Author Meta -->
        <meta name="author" content="">
        <!-- Meta Description -->
        <meta name="description" content="">
        <!-- Meta Keyword -->
        <meta name="keywords" content="">
        <!-- meta character set -->
        <meta charset="UTF-8">
        <!-- Site Title -->
        <title>Travelish </title>

        <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
        <!--
        CSS
        ============================================= -->
        <link rel="stylesheet" href="css/linearicons.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/magnific-popup.css">
        <link rel="stylesheet" href="css/jquery-ui.css">				
        <link rel="stylesheet" href="css/nice-select.css">							
        <link rel="stylesheet" href="css/animate.min.css">
        <link rel="stylesheet" href="css/owl.carousel.css">				
        <link rel="stylesheet" href="css/main.css">
    </head>
    <body>	

        <header id="header"><!-- #header -->
            <div class="header-top">
                <div class="container">
                    <div class="row align-items-center">
                        <div class="col-lg-6 col-sm-6 col-6 header-top-left">

                        </div>
                        <div class="col-lg-6 col-sm-6 col-6 header-top-right">

                        </div>
                    </div>			  					
                </div>
            </div>
            <div class="container main-menu">
                <div class="row align-items-center justify-content-between d-flex">
                    <div id="logo">
                        <a href="index.html"><img src="img/logo.png" alt="" title="" /></a>
                    </div>
                    <nav id="nav-menu-container">
                        <ul class="nav-menu">
                            <li>   <a href="userhome.jsp">Home</a></li>
                            <li>   <a href="utravelview.jsp">Travel Agency</a></li>


                            <li>  <a href="placeview.jsp">Places</a></li>
                            <li>  <a href="testimony.jsp">Testimony</a></li>
                            <li>   <a href="uvbooking.jsp">Bookings</a></li>
                            <li>   <a href="logout.jsp">Logout</a></li>
                        </ul>
                    </nav><!-- #nav-menu-container -->					      		  
                </div>
            </div>
        </header><!-- #header -->

        <!-- start banner Area -->
        <section class="relative about-banner">	
            <div class="overlay overlay-bg"></div>
            <div class="container">				
                <div class="row d-flex align-items-center justify-content-center">
                    <div class="about-content col-lg-12">
                        <h1 class="text-white">
                      TESTIMONIALS			
                        </h1>	

                    </div>	
                </div>
            </div>
        </section>
        <!-- End banner Area -->				  

        <!-- Start contact-page Area -->
        <section class="contact-page-area section-gap">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12 mt-30">

                        <div class="row">

                            <div class="col-lg-6 form-group">
                                <%
                                    String pkid = request.getParameter("pkid");
                                    ResultSet rs = DB.executeQuery("select * from tbl_package where pkid=" + pkid);
                                    rs.next();
                                %>
                                <form action="testimonyaction.jsp" class="form-area contact-form text-left" >
                                   <p style="color:black"> Name<input type="text" class="common-input mb-20  form-control"  name="tname" required/>
                                    Place<input type="text" class="common-input mb-20  form-control"  name="tplace" required/>
                                    Testimony<textarea rows="3" class="common-textarea  form-control"   cols="10" name="testim" required/></textarea><br>
                              
                                    <input type="submit" class="genric-btn primary" style="width:100%" value="POST"/>
                                </form>
                            </div>
                        </div>

                    </div>
                </div>
            </div>	
        </section>
        <!-- End contact-page Area -->

        <!-- start footer Area -->		


        <div class="copyrights">
            <div class="container">
                <div class="row footer-bottom d-flex justify-content-between align-items-center">
                    <p class="col-lg-8 col-sm-12 footer-text m-0">
                        Copyright &copy; All rights reserved.
                    </p>
                    <div class="col-lg-4 col-sm-12 footer-social">
                        <a href="#"><i class="fa fa-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter"></i></a>
                        <a href="#"><i class="fa fa-dribbble"></i></a>
                        <a href="#"><i class="fa fa-behance"></i></a>
                    </div>
                </div>
            </div>
        </div>

        <!-- End footer Area -->	

        <script src="js/vendor/jquery-2.2.4.min.js"></script>
        <script src="js/popper.min.js"></script>
        <script src="js/vendor/bootstrap.min.js"></script>			
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBhOdIF3Y9382fqJYt5I_sswSrEw5eihAA"></script>		
        <script src="js/jquery-ui.js"></script>					
        <script src="js/easing.min.js"></script>			
        <script src="js/hoverIntent.js"></script>
        <script src="js/superfish.min.js"></script>	
        <script src="js/jquery.ajaxchimp.min.js"></script>
        <script src="js/jquery.magnific-popup.min.js"></script>						
        <script src="js/jquery.nice-select.min.js"></script>					
        <script src="js/owl.carousel.min.js"></script>							
        <script src="js/mail-script.js"></script>	
        <script src="js/main.js"></script>	
    </body>

</html>

