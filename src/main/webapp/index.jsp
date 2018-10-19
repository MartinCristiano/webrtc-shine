<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

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
<div class="navbar navbar-default navbar-fixed-top" role="navigation">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="index.html"><span class="glyphicon glyphicon-film"></span> SHINE</a>
		</div>
		<div class="navbar-collapse collapse navbar-right">
			<ul class="nav navbar-nav">
				<li class="active"><a href="index.html">HOME</a></li>


				<ul class="nav navbar-nav navbar-right">
					<li class="dropdown">
						<a href="registration"><span class="glyphicon glyphicon-user"></span> Register</a>
					</li>
					<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-log-in"></span>  Log In<span class="caret"></span></a>
						<ul class="dropdown-menu dropdown-lr animated slideInRight" role="menu"  style="width: 300px">
							<div class="col-lg-12">
								<div class="text-center"><h3 style="color:#FFFFFF"><b>Log In</b></h3></div>
								<form id="login-form" role="form", method="POST" action="${contextPath}/login" class="form-signin">
									<div class="form-group ${error != null ? 'has-error' : ''}">
										<span>${message}</span>
										<input name="username" type="text" class="form-control" placeholder="Username"
											   autofocus="true"/>
										<input name="password" type="password" class="form-control" placeholder="Password"/>
										<span>${error}</span>
										<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-xs-6 col-xs-offset-3">
												<input type="submit" name="submit" id="button" tabindex="4" class="form-control btn btn-success" value="Log In">
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-lg-12">
												<div class="text-center">
													<a href="#" tabindex="5" class="forgot-password">Forgot Password?</a>
												</div>
											</div>
										</div>
									</div>
									<!--<input type="hidden" class="hide" name="token" id="token" value="a465a2791ae0bae853cf4bf485dbe1b6">-->
								</form>
							</div>
						</ul>
					</li>
				</ul>
			</ul>
		</div><!--/.nav-collapse -->
	</div>
</div>

<!-- *****************************************************************************************************************
 HEADERWRAP
 ***************************************************************************************************************** -->
<div id="headerwrap" style="min-height: 800px;">
	<div class="container">
		<div class="row">
			<div class="col-sm-3 col-sm-offset-2">
				<p><img src="img/shine_logo.png" style="width:240px; height:auto; display:block; margin-left:auto; margin-right:auto"></p>
			</div>
			<div class="col-sm-5">
				<h1>Welcome in the Home Page of SHINE project!</h1>
				<h3>Secure Hybrid In Network caching Environment.</h3>
				<h5>Clicking on the button on the navbar, you can register/login yourself.</h5>
			</div>
			<div class="col-lg-8 col-lg-offset-2 himg">
				<img src="img/shine_architecture.png" class="img-responsive">
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
			<div class="col-md-6">
				<i class="fa fa-heart-o"></i>
				<h4>MPEG-DASH</h4>
				<p>Dynamic Adaptive Streaming over HTTP (DASH), also known as <b>MPEG-DASH</b>, is an adaptive bitrate streaming technique that enables high quality streaming of media content over the Internet delivered from conventional HTTP web servers.</p>
				<p><br/><a target="_blank" href="https://en.wikipedia.org/wiki/Dynamic_Adaptive_Streaming_over_HTTP" class="btn btn-theme">More Info</a></p>
			</div>
			<div class="col-md-6">
				<i class="fa fa-flask"></i>
				<h4>WebRTC</h4>
				<p><b>WebRTC ("Web Real-Time Communication")</b> is a collection of communications protocols and application programming interfaces that enable real-time communication over peer-to-peer connections.</p>
				<p><br/><a target="_blank" href="https://en.wikipedia.org/wiki/WebRTC" class="btn btn-theme">More Info</a></p>
			</div>
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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="assets/js/bootstrap.min.js"></script>
	<script src="assets/js/retina-1.1.0.js"></script>
	<script src="assets/js/jquery.hoverdir.js"></script>
	<script src="assets/js/jquery.hoverex.min.js"></script>
	<script src="assets/js/jquery.prettyPhoto.js"></script>
	<script src="assets/js/jquery.isotope.min.js"></script>
	<script src="assets/js/custom.js"></script>

	<!--<script src="js/home-page-scripts.js"></script>-->
	<!--<script src="js/login.js"></script>-->


</body>
</html>
