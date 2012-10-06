// detect the meta and page type
function detectForumIdentity(){
	if (window.forumTypeDetector == null)
	    return;
    
	var metaEles = window.parent.document.getElementsByTagName("meta");
	for (var i = 0; i < metaEles.length; i++){
		if (metaEles[i].getAttribute("name") == "generator"){
			var content = metaEles[i].getAttribute("content");
			window.forumTypeDetector.onIdentityDetected(content);
			return;		
		}
	}
	window.forumTypeDetector.onIdentityDetected(" ");
}

