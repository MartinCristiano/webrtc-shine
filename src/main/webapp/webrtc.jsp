<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="assets/ico/favicon.ico">

    <title>SHINE</title>

    <!-- Bootstrap core CSS -->
    <link href="assets/css/bootstrap.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="assets/css/style.css" rel="stylesheet">
    <link href="assets/css/font-awesome.min.css" rel="stylesheet">
    <link href="css/text-set.css" rel="stylesheet">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

	  <script src="js/retrieveMediaList.js"></script>
  </head>

  <body>

    <!-- Fixed navbar -->
    <%@include file="navbar.jsp" %>
    <script type="text/javascript">
	 	$('#webrtc_link').addClass('active');
	</script>

	<!-- *****************************************************************************************************************
	 HEADERWRAP
	 ***************************************************************************************************************** -->
	<div id="headerwrap">
	    <div class="container">
			<div class="row">
				<div class="shine-header">
					<span id="janus-logo"></span>
					<h1>Watch video content using WebRTC streaming technology</h1>
				</div>
			</div><!-- /row -->
	    </div> <!-- /container -->
	</div><!-- /headerwrap -->

	<!-- *****************************************************************************************************************
	 SERVICE LOGOS
	 ***************************************************************************************************************** -->

	 
	<!-- *****************************************************************************************************************
	 PORTFOLIO SECTION
	 ***************************************************************************************************************** -->


	<!-- *****************************************************************************************************************
	 MIDDLE CONTENT
	 ***************************************************************************************************************** -->

	<div id="service">
		<div class="container">
			<div id="medialist" class="row centered" style="background-color: rgba(0,90,255,0.15);">

			</div>
		</div><! --/container -->
	</div><! --/service -->
	<!-- *****************************************************************************************************************
	 TESTIMONIALS
	 ***************************************************************************************************************** -->
	 <%--<div id="twrap">--%>
	 	<%--<div class="container centered">--%>
	 		<%--<div class="row">--%>
	 			<%--<div class="col-lg-8 col-lg-offset-2">--%>
	 			<%--<i class="fa fa-comment-o"></i>--%>
	 			<%--<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p>--%>
	 			<%--<h4><br/>Marcel Newman</h4>--%>
	 			<%--<p>WEB DESIGNER - BLACKTIE.CO</p>--%>
	 			<%--</div>--%>
	 		<%--</div><! --/row -->--%>
	 	<%--</div><! --/container -->--%>
	 <%--</div><! --/twrap -->--%>
	 
	<!-- *****************************************************************************************************************
	 CONTRIBUTORS
	 ***************************************************************************************************************** -->
	 <div id="cwrap">
		 <div class="container">
		 	<div class="row centered">
		 		<h3>PROMOTER</h3>
				<div class="col-md-4">
				</div>
	 		 	<div class="col-md-4">
			 		<a href="http://www.esa.int/ESA"><img src="img/contributors/ESA.png" class="img-responsive" style="width:100%; height:auto;"></a>
			 	</div>
				<div class="col-md-4">
				</div>		
		 	</div> 
		 	<div class="row centered">
			 	<h3>CONTRACTORS</h3>
			 	<div class="col-lg-3 col-md-3 col-sm-3">
			 		<a href="https://www.consorzio-cini.it/index.php/it/"><img src="img/contributors/CINI.png" class="img-responsive"></a>
			 	</div>
			 	<div class="col-lg-3 col-md-3 col-sm-3">
			 		<a href="http://www.isticom.it/"><img src="img/contributors/ISCOM.png" class="img-responsive" style="width:90%; height:auto;"></a>
			 	</div>
			 	<div class="col-lg-3 col-md-3 col-sm-3">
			 		<a href="http://www.itslab.it/index.php/it/"><img src="img/contributors/ITSLAB.jpg" class="img-responsive" style="width:50%; height:auto;"></a>
			 	</div>
			 	<div class="col-lg-3 col-md-3 col-sm-3">
			 		<a href="http://www.nitel.it/"><img src="img/contributors/NITEL.jpg" class="img-responsive" style="width:70%; height:auto;"></a>
			 	</div>
		 	</div><! --/row -->
		 </div><! --/container -->
	 </div><! --/cwrap -->

	<!-- *****************************************************************************************************************
	 FOOTER
	 ***************************************************************************************************************** -->
	 <div id="footerwrap">
	 	<div class="container">
		 	<div class="row">
		 		<div class="col-lg-4">
		 			<h4>About</h4>
		 			<div class="hline-w"></div>
		 			<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.</p>
		 		</div>
		 		<div class="col-lg-4">
		 			<h4>Social Links</h4>
		 			<div class="hline-w"></div>
		 			<p>
		 				<a href="#"><i class="fa fa-dribbble"></i></a>
		 				<a href="#"><i class="fa fa-facebook"></i></a>
		 				<a href="#"><i class="fa fa-twitter"></i></a>
		 				<a href="#"><i class="fa fa-instagram"></i></a>
		 				<a href="#"><i class="fa fa-tumblr"></i></a>
		 			</p>
		 		</div>
		 		<div class="col-lg-4">
		 			<h4>Our Bunker</h4>
		 			<div class="hline-w"></div>
		 			<p>
		 				Some Ave, 987,<br/>
		 				23890, New York,<br/>
		 				United States.<br/>
		 			</p>
		 		</div>
		 	
		 	</div><! --/row -->
	 	</div><! --/container -->
	 </div><! --/footerwrap -->
	 
    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    
    <script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/retina-1.1.0.js"></script>
	<script src="assets/js/jquery.hoverdir.js"></script>
	<script src="assets/js/jquery.hoverex.min.js"></script>
	<script src="assets/js/jquery.prettyPhoto.js"></script>
  	<script src="assets/js/jquery.isotope.min.js"></script>
  	<script src="assets/js/custom.js"></script>

	<!--<script src="js/home-page-scripts.js"></script>-->

  </body>
</html>
