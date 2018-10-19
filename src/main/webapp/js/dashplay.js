    var video;
    var player;
    var estimator;

    function initPlayer() {
      // Install polyfills.
      shaka.polyfill.installAll();

      // Get the video element.
      video = document.getElementById('video');

      // Construct the Player to wrap around it.
      player = new shaka.player.Player(video);

      // Attach the player to the window so that it can be easily debugged.
      window.player = player;

      // Listen for errors from the Player.
      player.addEventListener('error', function(event) {
        console.error(event);
      });

      // Construct a persistent bandwidth estimator to pass to video sources.
      // This will allow second and subsequent playbacks to benefit from
      // earlier bandwidth estimations and avoid starting at a low-quality
      // stream.
      estimator = new shaka.util.EWMABandwidthEstimator();
    }

    /**
     * @param {!HTMLImageElement} image
     */
	// Create a new request
	function newXMLHttpRequest() {
		var request = null;
		var browser = navigator.userAgent.toUpperCase();
		if(typeof(XMLHttpRequest) === "function" || typeof(XMLHttpRequest) === "object") {
			request = new XMLHttpRequest();
		} else if(window.ActiveXObject && browserUtente.indexOf("MSIE 4") < 0) {
			if(browser.indexOf("MSIE 5") < 0) {
				request = new ActiveXObject("Msxml2.XMLHTTP");
			} else {
				request = new ActiveXObject("Microsoft.XMLHTTP");
			}
		}
		return request;
	}

    function onImageClick(image) {
	    $('.loadOverlay').show();

      // Disregard any bandwidth data older than one hour.  The user may have
      // changed networks if they are on a laptop or mobile device.
      if (estimator.getDataAge() >= 3600) {
        estimator = new shaka.util.EWMABandwidthEstimator();
      }
      // Construct a DashVideoSource to represent the DASH manifest and provide
      // a callback to interpret the ContentProtection elements (if any).

      // Send a request to balancer to know cache url.
      
     //  var req = newXMLHttpRequest();
	// req.onreadystatechange = function() {
	// 	if (req.readyState == 4) {
	// 		if (req.status == 200) {
	// 			//alert(req.responseText);
	// 			openPlayer(req.responseText);
     //            //console.log('response', req.responseText);
	// 		}
	// 	}
	// };
	// req.open("GET", "http://localhost:8687/ESA_Destination_Moon.mpd?=152876202250", true);
	// // req.open("GET", "http://localhost:8687/" + image.id, true);
     // //    req.open("GET", "http://ServerBalancer/" + image.id, true);
	// req.send(null);
        openPlayer(image.id);
	return false;

}
//MPDURLS

	function openPlayer(name){
		// var idImage = balancerResponse.split('/')[1];
		// var cacheAddress = balancerResponse.split('/')[2];
		// var mpdUrl = 'http://' + cacheAddress + ':9501/' + sessionStorage.getItem(idImage);
		// var mpdUrl = 'http://' + cacheAddress + ':9501/' + $("#title"+ idImage).text().replace(/ /g,"_").concat(".mpd");
        console.log(name);
        var mpdUrl = "mpddash/"+name.split('.')[0]+".mpd";
       // console.log('mpd',mpdUrl);
		var source = new shaka.player.DashVideoSource(mpdUrl, interpretContentProtection, estimator);

	      // Show the video player overlay.

        // Load the source into the Player.
        player.load(source).then(function() {
            $('.loadOverlay').hide();
            // This runs if the asynchronous load is successful.
            console.log('The video has now been loaded!');
            var overlay = document.getElementById('videoOverlay');
            overlay.style.display = 'block';
        }).catch(onError);  // onError is executed if the asynchronous load fails.

    }
    function onError(error) {
        // Log the error.
        console.error('Error code', error.code, 'object', error,'*****************');
        //alert('Error loading video try again');
    }

    /**
     * @param {string} schemeIdUri The ContentProtection's scheme ID URI.
     * @param {!Element} contentProtection The ContentProtection element.
     * @return {!Array.<shaka.player.DrmInfo.Config>} An array of Config
     *     objects or null if the element is not understood by this application.
     */
    function interpretContentProtection(schemeIdUri, contentProtection) {
      // This is the UUID which is used by edash-packager to represent
      // Widevine.  This is the only scheme we are expecting for this
      // application.
      if (schemeIdUri == 'urn:uuid:edef8ba9-79d6-4ace-a3c8-27dcd51d21ed') {
        // We will use Widevine's testing license server.  In a real app,
        // you would run your own front-end service for this.
        var licenseServerUrl = 'https://widevine-proxy.appspot.com/proxy';

        // The EME key system identifier for Widevine.
        var keySystem = 'com.widevine.alpha';

        return [{
          'keySystem': keySystem,
          'licenseServerUrl': licenseServerUrl
        }];
      }

      console.warn('Unrecognized scheme: ' + schemeIdUri);
      return null;
    }

    function closeVideo() {
      // Unload the video source.
      player.unload();

      // Hide the video player overlay.
      var overlay = document.getElementById('videoOverlay');
      overlay.style.display = 'none';
    }
    function closeLoader() {
        $('.loadOverlay').hide();

    }
    document.addEventListener('DOMContentLoaded', initPlayer);

