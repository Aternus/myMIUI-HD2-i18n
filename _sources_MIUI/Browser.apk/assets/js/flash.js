function detectFlash(){

    // detect the "flash" tags
    var flashEles = document.getElementsByTagName("object");
    for (var i = 0; i < flashEles.length; i++){
        if (flashEles[i]){
            if( flashEles[i].getAttribute("type") != null && flashEles[i].getAttribute("type") == "application/x-shockwave-flash"){
                window.mirenvideo.onFlashDetected();
                return;
            }
        }
    }

    // detect the "embed" tags
    flashEles = document.getElementsByTagName("embed");
    for (var i = 0; i < flashEles.length; i++){
        if (flashEles[i]){
            if( flashEles[i].getAttribute("type") != null && flashEles[i].getAttribute("type") == "application/x-shockwave-flash"){
                window.mirenvideo.onFlashDetected();
                return;
            }
        }
    }
}
