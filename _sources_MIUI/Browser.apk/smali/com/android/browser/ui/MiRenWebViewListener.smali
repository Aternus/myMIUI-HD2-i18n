.class public interface abstract Lcom/android/browser/ui/MiRenWebViewListener;
.super Ljava/lang/Object;
.source "MiRenWebViewListener.java"


# virtual methods
.method public abstract getDefaultVideoPoster()Landroid/graphics/Bitmap;
.end method

.method public abstract getVideoLoadingProgressView()Landroid/view/View;
.end method

.method public abstract isClosed()Z
.end method

.method public abstract isCurrent()Z
.end method

.method public abstract isViewVisible(Landroid/view/View;)Z
.end method

.method public abstract notifyDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end method

.method public abstract onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
.end method

.method public abstract onFirstRender(Landroid/webkit/WebView;)V
.end method

.method public abstract onGeolocationPermissionsHidePrompt()V
.end method

.method public abstract onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
.end method

.method public abstract onHideCustomView()V
.end method

.method public abstract onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
.end method

.method public abstract onPageDataFinished()V
.end method

.method public abstract onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end method

.method public abstract onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;)V
.end method

.method public abstract onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end method

.method public abstract onRequestFocus(Landroid/webkit/WebView;)V
.end method

.method public abstract onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
.end method

.method public abstract openFileChooser(Landroid/webkit/ValueCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract preNavigation(Ljava/lang/String;)Z
.end method

.method public abstract resetTitleAndRevertLockIcon()V
.end method

.method public abstract showHttpAuthentication(Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract switchTab(Z)V
.end method

.method public abstract updateHistory(Ljava/lang/String;)V
.end method

.method public abstract updateProgress(Landroid/webkit/WebView;I)V
.end method

.method public abstract updateTitle()V
.end method

.method public abstract updateUrl(Ljava/lang/String;)V
.end method
