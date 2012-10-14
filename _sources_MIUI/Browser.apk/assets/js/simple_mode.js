function detectSimpleData(){
	var content = getInnerHTMLFromXPath(document.body, "/div");

	var nextLink = getLinkHrefFromXPath(document.body, "//a[@text=\"下页\"]");
	window.simple.onContentDetected(content, nextLink);
}
