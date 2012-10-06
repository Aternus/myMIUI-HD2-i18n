function detectHTML5Video(){

	// detect the "video" tags
	var videoEles = document.getElementsByTagName("video");
    for (var i = 0; i < videoEles.length; i++){
		if (videoEles[i]){
			if( videoEles[i].getAttribute("src") != null){
				window.mirenvideo.onVideoDetected(videoEles[i].getAttribute("src"), getElementViewLeft(videoEles[i]), getElementViewTop(videoEles[i]));
			}
			else{
				var srcEles = videoEles[i].getElementsByTagName("source");
				if (srcEles && srcEles.length > 0 && srcEles[0].getAttribute("src") != null){
					window.mirenvideo.onVideoDetected(srcEles[0].getAttribute("src"), getElementViewLeft(srcEles[0]), getElementViewTop(srcEles[0]));
				}			
			}
		}
	}

	// detect the "embed" tags
    videoEles = document.getElementsByTagName("embed");
    for (var i = 0; i < videoEles.length; i++){
		if (videoEles[i]){
			if( videoEles[i].getAttribute("src") != null 
				&& videoEles[i].getAttribute("type").indexOf("video") != -1){
				window.mirenvideo.onVideoDetected(videoEles[i].getAttribute("src"), getElementViewLeft(videoEles[i]), getElementViewTop(videoEles[i]));
			}
		}
	}
}

function getElementViewLeft(element){
	var actualLeft = element.offsetLeft;
	var current = element.offsetParent;
	while (current !== null){
		actualLeft += current.offsetLeft;
		current = current.offsetParent;
	}	
	
	return actualLeft;
}

function getElementViewTop(element){
	var actualTop = element.offsetTop;
	var current = element.offsetParent;
	while (current !== null){
		actualTop += current. offsetTop;
		current = current.offsetParent;
	}

	return actualTop;
}

