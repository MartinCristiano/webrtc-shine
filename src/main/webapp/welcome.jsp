<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

  </head>

  <body>

    <!-- Fixed navbar -->
    <%@include file="navbar.jsp" %>
    <script type="text/javascript">
	 	$('#home_page_link').addClass('active');
	</script>

	<!-- *****************************************************************************************************************
	 HEADERWRAP
	 ***************************************************************************************************************** -->
	<div id="headerwrap">
	    <div class="container">
			<div class="row">
				<div>
					<img src="img/shine-logo.png" class="img-responsive">
				</div>
				<div class="shine-header">
					Secure Hybrid In Network caching Environment.
				</div>
			</div><!-- /row -->
	    </div> <!-- /container -->
	</div><!-- /headerwrap -->

	<!-- *****************************************************************************************************************
	 SERVICE LOGOS
	 ***************************************************************************************************************** -->

	<div id="service">
		<div class="container">
			<div class="row centered">
				<div class="col" style="margin: 10px 10px 60px 10px">
				<h1>${pageContext.request.userPrincipal.name} now you're logged in!</h1>
					<h3>You can choose a streaming technology from the navigation bar.</h3>
				</div>

				<div class="col-lg-8 col-lg-offset-2 img" style="margin-bottom: 30px">
					<img src="img/shine-scenario.png" class="img-responsive">
				</div>
				<div class="col-md-6">
					<span id="dash-icon"></span>
					<h4>MPEG-DASH</h4>
					<p>Dynamic Adaptive Streaming over HTTP (DASH), also known as <b>MPEG-DASH</b>, is an adaptive bitrate streaming technique that enables high quality streaming of media content over the Internet delivered from conventional HTTP web servers.</p>
					<p><br/><a target="_blank" href="https://en.wikipedia.org/wiki/Dynamic_Adaptive_Streaming_over_HTTP" class="btn btn-theme">More Info</a></p>
				</div>
				<div class="col-md-6">
					<span id="webrtc-icon"></span>
					<h4>WebRTC</h4>
					<p><b>WebRTC ("Web Real-Time Communication")</b> is a collection of communications protocols and application programming interfaces that enable real-time communication over peer-to-peer connections.</p>
					<p><br/><a target="_blank" href="https://en.wikipedia.org/wiki/WebRTC" class="btn btn-theme">More Info</a></p>
				</div>
			</div><! --/container -->
		</div><! --/service -->
	 
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
			 		<a target="_blank" href="http://www.esa.int/ESA"><img src="img/contributors/ESA.png" class="img-responsive" style="width:320px; height:auto; display:block; margin-left:auto; margin-right:auto"></a>
			 	</div>
				<div class="col-md-4">
				</div>		
		 	</div>
		 	<div class="row centered">
			 	<h3>CONTRACTOR</h3>
			 	<div class="col-md-4">
			 	</div>
			 	<div class="col-md-4">
			 		<a target="_blank" href="https://www.consorzio-cini.it/index.php/it/"><img src="img/contributors/CINI.png" class="img-responsive" style="width:320px; height:auto; display:block; margin-left:auto; margin-right:auto"></a>
			 	</div>
			 	<div class="col-md-4">
			 	</div>
		 	</div><! --/row -->
		 	<div class="row centered">
			 	<h3>SUBCONTRACTORS</h3>
			 	<div class="col-md-4">
			 		<a target="_blank" href="http://www.isticom.it/"><img src="img/contributors/ISCOM.png" class="img-responsive" style="width:320px; height:auto; display:block; margin-left:auto; margin-right:auto"></a>
			 	</div>
			 	<div class="col-md-4">
			 		<a target="_blank" href="http://www.itslab.it/index.php/it/"><img src="img/contributors/ITSLAB.jpg" class="img-responsive" style="width:140px; height:auto; display:block; margin-left:auto; margin-right:auto"></a>
			 	</div>
			 	<div class="col-md-4">
			 		<a target="_blank" href="http://www.nitel.it/"><img src="img/contributors/NITEL.jpg" class="img-responsive" style="width:280px; height:auto; display:block; margin-left:auto; margin-right:auto"></a>
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
		 			<p>If you want more information about the project click <a target="_blank" href="https://artes.esa.int/projects/shine-secure-hybrid-network-caching-environment">here</a> to visit <b>SHINE project</b> page on ESA's website.</p>
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
		 				CINI, University of Napoli - Department of Electrical<br/>
		 				Engineering and Information Technology (DIETI),<br/>
		 				University of Napoli Federico II, Via Claudio 21<br/>
		 				Napoli, Italy<br/>
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

    <script>// Portfolio
(function($) {
	"use strict";
	var $container = $('.portfolio'),
		$items = $container.find('.portfolio-item'),
		portfolioLayout = 'fitRows';
		
		if( $container.hasClass('portfolio-centered') ) {
			portfolioLayout = 'masonry';
		}
				
		$container.isotope({
			filter: '*',
			animationEngine: 'best-available',
			layoutMode: portfolioLayout,
			animationOptions: {
			duration: 750,
			easing: 'linear',
			queue: false
		},
		masonry: {
		}
		}, refreshWaypoints());
		
		function refreshWaypoints() {
			setTimeout(function() {
			}, 1000);   
		}
				
		$('nav.portfolio-filter ul a').on('click', function() {
				var selector = $(this).attr('data-filter');
				$container.isotope({ filter: selector }, refreshWaypoints());
				$('nav.portfolio-filter ul a').removeClass('active');
				$(this).addClass('active');
				return false;
		});
		
		function getColumnNumber() { 
			var winWidth = $(window).width(), 
			columnNumber = 1;
		
			if (winWidth > 1200) {
				columnNumber = 5;
			} else if (winWidth > 950) {
				columnNumber = 4;
			} else if (winWidth > 600) {
				columnNumber = 3;
			} else if (winWidth > 400) {
				columnNumber = 2;
			} else if (winWidth > 250) {
				columnNumber = 1;
			}
				return columnNumber;
			}       
			
			function setColumns() {
				var winWidth = $(window).width(), 
				columnNumber = getColumnNumber(), 
				itemWidth = Math.floor(winWidth / columnNumber);
				
				$container.find('.portfolio-item').each(function() { 
					$(this).css( { 
					width : itemWidth + 'px' 
				});
			});
		}
		
		function setPortfolio() { 
			setColumns();
			$container.isotope('reLayout');
		}
			
		$container.imagesLoaded(function () { 
			setPortfolio();
		});
		
		$(window).on('resize', function () { 
		setPortfolio();          
	});
})(jQuery);
</script>
  </body>
</html>
