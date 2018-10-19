// $(document).ready(function() {
// 	jQuery.get(window.location.href.split('dash.jsp')[0] + 'MediaList.xml', function(data) {
// 		var num = 1;
// 		$("name",data).each(function( index ) {
// //			  console.log( index + ": " + $( this ).text().replace(/[^a-zA-Z0-9-.]/g,' ') );
// //			  alert( index + ": " + $( this ).text() );
// 			//Save item inside sessionStorage(HTML5)
// 			sessionStorage.setItem('t' + num,$( this ).text().slice(0, -4).concat('.mpd'));
// 			//Create item on page
// 			// $("#medialist").append('<div class="row dashlist"><div class="col-sm-4"><h3 id="titlet' + num + '">' + $( this ).text().replace(/_/g, " ").slice(0, -4) + '</h3><p><button type="button" class="btn btn-primary btn-lg" id="t' + num + '" onclick="onImageClick(this)">Play</button></p></div><div class="col-sm-8"><img id="t' + num + '" class="img-thumbnail" width="300px" height="auto" src="thumbnails/'+ $( this ).text().slice(0, -4).concat('.jpg') +'" onclick="onImageClick(this)"></div></div><hr class="separator">')
// 			$("#medialist").append('<div class="row dashlist"><div class="col-sm-4"><h3 id="titlet' + num + '">' + $( this ).text().replace(/_/g, " ").slice(0, -4) + '</h3><p><button type="button" class="btn btn-primary btn-lg" id="' + $( this ).text() + '" onclick="onImageClick(this)">Play</button></p></div><div class="col-sm-8"><img id="' + $( this ).text() + '" class="img-thumbnail" width="300px" height="auto" src="thumbnails/'+ $( this ).text().slice(0, -4).concat('.jpg') +'" onclick="onImageClick(this)"></div></div><hr class="separator">')
// 			  num++;
// 		});

        $(document).ready(function() {
            $.get("media/search/findByStreamingType?streaming_type=DASH", function(data) {
                console.log("retrieve data", data);

                var num = 1;

                $(data._embedded.media).each(function( index ) {
//			  console.log( index + ": " + $( this ).text().replace(/[^a-zA-Z0-9-.]/g,' ') );
//			  alert( index + ": " + $( this ).text() );
                    //Save item inside sessionStorage(HTML5)
                    //Create item on page
                    // $("#medialist").append('<div class="row dashlist"><div class="col-sm-4"><h3 id="titlet' + num + '">' + $( this ).text().replace(/_/g, " ").slice(0, -4) + '</h3><p><button type="button" class="btn btn-primary btn-lg" id="t' + num + '" onclick="onImageClick(this)">Play</button></p></div><div class="col-sm-8"><img id="t' + num + '" class="img-thumbnail" width="300px" height="auto" src="thumbnails/'+ $( this ).text().slice(0, -4).concat('.jpg') +'" onclick="onImageClick(this)"></div></div><hr class="separator">')
                    console.log(this.name.split('.')[0]);
                    $("#medialist").append(
                        '<div class="row stream-list"><div class="col-sm-4"><h3 id="titlet' + num + '">' + this.name.replace(/_/g, " ").slice(0, -4) + '</h3>' +
                        '<p><button type="button" class="btn btn-primary btn-lg" id="' + this.name + '" onclick="onImageClick(this)"">Play</button>' +
                        '</p></div><div class="col-sm-8"><img id="' + this.name + '" class="img-thumbnail" width="300px" height="auto" src="thumbnails/'+ this.name.split('.')[0].concat('.jpg') +'" onclick="onImageClick(this)"></div></div><hr class="separator">');
                    num++;
                });
            });
        });


