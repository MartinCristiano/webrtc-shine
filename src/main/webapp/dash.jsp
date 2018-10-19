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
    <link href="css/grid-options.css" rel="stylesheet">
	<link href="css/videodash.css rel="stylesheet">

	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
	<script src="js/shaka-player.js"></script>

    
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
	 	$('#dash_link').addClass('active');
	</script>

	<div id="headerwrap">
		<div class="container">
			<div class="row">
				<div class="shine-header">
					<span id="shaka-logo"></span>
					<span id="dash-logo"></span>
					<h1>Here you can see content in DASH streaming technology.</h1>
					<h4>Choose a video from the list below.</h4>
				</div>
			</div><!-- /row -->
		</div> <!-- /container -->
	</div><!-- /headerwrap -->
	<!-- *****************************************************************************************************************
	 SERVICE
	 ***************************************************************************************************************** -->
	<div id="service">
	    <div class="container">
			<div class="row" centered>
				<div class="col-lg-8 col-lg-offset-2">

				</div>
			</div><!-- /row -->
	    </div> <!-- /container -->
	</div><!-- /headerwrap -->
	
	<!-- *****************************************************************************************************************
	 CONTENTS
	 ***************************************************************************************************************** -->


	<!-- *****************************************************************************************************************
	 SERVICE LOGOS
	 ***************************************************************************************************************** -->
<style>
#box-pieno
{
	background: #fff;
	border-collapse: collapse;
	font-family: "Arial", "Verdana", Sans-Serif;
	font-size: 14px;
	width: 620px;
	text-align: left;
}
#box-pieno th
{
	background: #c3d6e0;
	border-top: 4px solid #EDF6FA;
	color: #FFFFFF;
	font-size: 14px;
	font-weight: normal;
	padding: 14px;
}
#box-pieno td
{
	border: 1px solid #FFFFFF;
	background: #EDF6FA;
	color: #394A57;
	padding: 14px;
}
#box-pieno tbody td:hover 
{
	background: #FFF;
	color: #394A57;
}

#hidden {  
	
	 
	display: none;  
	
}  

#border {

border: 1px solid #000000; 
 width: 900px;
 -moz-border-radius: 15px; 
line-height:13px;
 font-family: georgia;
 font-size: 20px;
 color: #cdcdcd;
 padding:30px;


}


      body {
#        background-color: #4a8;
        color: #000;
      }
      h1, h2 {
        text-align: center;
      }
      #thumbContainer {
        display: table;
        margin: auto;
      }
      .thumbRow {
        display: table-row;
      }
      .thumbCell {
        display: table-cell;
        width: 270px;
        padding: 10px;
      }
      .thumbCell img {
        width: 270px;
        height: 180px;
        border: 5px ridge #07a;
        margin: 0;
      }
      #videoOverlay {
        background-color: rgba(0, 0, 0, 0.5);
        position: fixed;
        top: 2px;
        left: 2px;
        right: 2px;
        bottom: 2px;
        z-index: 1;
        overflow: hidden;
        text-align: center;
        /* Hidden until needed. */
        display: none;
      }
      #closeButton {
        position: relative;
        margin-top: 100px;
        z-index: 2;
      }
      #vcenterWrapper {
        position: absolute;
        width: 0;
        height: 0;
        /* Move the top-left corner of this div to the center. */
        top: 50%;
        left: 50%;
      }
      #video {
        width: 640px;
        height: 480px;
        position: relative;
        /* Center the video inside the overlay. */
        top: -240px;
        left: -320px;
      }

.button {
    background-color: #a91818; /* bordeaux */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
}


</style>

	<div id="videoOverlay">
      <div id="vcenterWrapper">
        <video id="video"
               crossorigin="anonymous"
               controls autoplay>
          Your browser does not support HTML5 video.
        </video>
      </div>
      <button id="closeButton" class="button"  onclick="closeVideo()">Close Video</button>
    </div>
	<div class="loadOverlay">
		<div class="loader dash-loader"></div>
		<button id="closeLoader" class="button"  onclick="closeLoader()">Close</button>
	</div>
	 <div id="service">
	 	<div class="container">
 			<div id="medialist" class="row centered" style="background-color: rgba(0,90,255,0.15);">
<!-- 
	<div class="row dashlist">
	  	<div class="col-sm-4">
	  	<h3>Lynyrd Skynyrd - Free Bird</h3>
	  	</div>
	  	<div class="col-sm-8">
		<img id="t1" class="img-thumbnail" width="300px" height="auto" src="http://cps-static.rovicorp.com/3/JPG_500/MI0003/741/MI0003741083.jpg?partner=allrovi.com" onclick="onImageClick(this)">
		</div>
	</div>
	
	      <hr class="separator">
	
	<div class="row dashlist">
	  	<div class="col-sm-4">
	  	<h3>Face Off - John Travolta & Nicolas Cage </h3>
	  	</div>
	  	<div class="col-sm-8">
		<img id="t1" class="img-thumbnail" width="300px" height="auto" src="http://www.film.it/typo3temp/pics/361e24660d.jpg" onclick="onImageClick(this)">
	</div>
		
		 --> 				
	</div>
	 	</div><! --/container -->
	 </div><! --/service -->
	 
	 
	 

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



	<script language="JavaScript">
        $('.loadOverlay').hide();
	function toggle(id) {  
		var state = document.getElementById(id).style.display;  
		if (state == 'block') {  
			document.getElementById(id).style.display = 'none';  
		} else {  
			document.getElementById(id).style.display = 'block';  
		}  
	}
	</script>
	
	
	

    
	


	<script src="js/retrieveDashList.js"></script>
	<script src="js/dashplay.js"></script>
  </body>
</html>
