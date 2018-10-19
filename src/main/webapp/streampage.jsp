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


    <link href="acornmediaplayer/acornmediaplayer.base.css" rel="stylesheet" type="text/css">
    <!-- Themes -->
    <link href="acornmediaplayer/themes/access/acorn.access.css" rel="stylesheet" type="text/css">
    <link href="acornmediaplayer/themes/darkglass/acorn.darkglass.css" rel="stylesheet" type="text/css">
    <link href="acornmediaplayer/themes/barebones/acorn.barebones.css" rel="stylesheet" type="text/css">

    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/sockjs-client/sockjs.min.js"></script>
    <script src="/webjars/stomp-websocket/stomp.min.js"></script>
    <!--<script src="/webjars/requirejs/require.min.js"></script>-->
    <!--<script src="/app.js"></script>-->

    <script src="/streaming.bundle.js"></script>
    <script src="lib/easytimer/dist/easytimer.js"></script>


    <script src="lib/jquery-ui-1.10.0.custom.min.js"></script>
    <script src="lib/modernizr.custom.js"></script>
    <script src="acornmediaplayer/jquery.acornmediaplayer.js"></script>
    <script src="//afarkas.github.io/webshim/js-webshim/minified/polyfiller.js"></script>
    <script>
        if(window.webshims) {
            webshims.polyfill('mediaelement');
        }
    </script>
    <style>
        video::-webkit-media-controls {
            display:none !important;
        }
    </style>
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
<div id="headerwrap-webrtc">
    <div class="container">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
                <h3>WebRTC Streaming.</h3>
                <h1>Streaming <b><%= request.getParameter("name").replaceAll("_"," ") %></b>!</h1>
            </div>
        </div><!-- /row -->
    </div> <!-- /container -->
</div><!-- /headerwrap -->
<noscript><h2 style="color: #ff0000">Seems your browser doesn't support Javascript! Websocket relies on Javascript being
    enabled. Please enable
    Javascript and reload this page!</h2></noscript>
<div id="main-content" class="container">
<!--    <div class="row">
        <div class="col-md-6">
            <form class="form-inline">
                <div class="form-group">
                    <label for="connect">WebSocket connection:</label>
                    <button id="connect" class="btn btn-default" type="submit">Connect</button>
                    <button id="disconnect" class="btn btn-default" type="submit" disabled="disabled">Disconnect
                    </button>
                </div>
            </form>
        </div>
        <div class="col-md-6">
            <form class="form-inline">
                <div class="form-group">
                    <label for="name">Insert command</label>
                    <input type="text" id="name" class="form-control" placeholder="Your commad here...">
                    <label for="seek">Insert seek</label>
                    <input type="text" id="seek" class="form-control" placeholder="Seek value here...">
                </div>
                <button id="send" class="btn btn-default" type="submit">Send</button>
            </form>
        </div>
    </div>-->

<!--    <div class="row">
        <button id="listButton" class="btn btn-primary btn-sm" disabled="disabled">List Streams</button>
    </div>
    <div class="row">
        <div class="col-12" id="listHolder"></div>
    </div>-->



    <div class="row">
        <div class="col-12">
            <video id="video"></video>
            <!--<button id="stopStreamButton" class="btn btn-primary btn-sm">Stop Stream</button>-->
            <!--<button id="pauseStreamButton" class="btn btn-primary btn-sm">Pause Stream</button>-->
            <!--<button id="startStreamButton" class="btn btn-primary btn-sm">Start Stream</button>-->
            <!--<button id= "forward" type="button" class="btn btn-primary btn-sm">Forward</button>-->
        </div>
        <div class="col-md-2 col-md-offset-5">
            <div class="loader"></div>
        </div>
    </div>
<!--    <div class="row">
        <div class="col-md-12">
            <table id="conversation" class="table table-striped">
                <thead>
                <tr>
                    <th>Command sent:</th>
                </tr>
                </thead>
                <tbody id="cmd-gstreamer">
                </tbody>
            </table>
        </div>
    </div>-->
    <div id="startValuesAndTargetExample">
        <div class="values"></div>
        <div class="progress_bar">.</div>
    </div>
</div>


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