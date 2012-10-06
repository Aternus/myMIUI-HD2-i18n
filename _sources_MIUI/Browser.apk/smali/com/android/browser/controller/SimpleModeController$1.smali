.class Lcom/android/browser/controller/SimpleModeController$1;
.super Landroid/webkit/WebViewClient;
.source "SimpleModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/controller/SimpleModeController;->Navigate(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/controller/SimpleModeController;


# direct methods
.method constructor <init>(Lcom/android/browser/controller/SimpleModeController;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/browser/controller/SimpleModeController$1;->this$0:Lcom/android/browser/controller/SimpleModeController;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 2
    .parameter "view"
    .parameter "url"
    .parameter "isReload"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/browser/controller/SimpleModeController$1;->this$0:Lcom/android/browser/controller/SimpleModeController;

    #getter for: Lcom/android/browser/controller/SimpleModeController;->mFirstPage:Z
    invoke-static {v0}, Lcom/android/browser/controller/SimpleModeController;->access$000(Lcom/android/browser/controller/SimpleModeController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/browser/controller/SimpleModeController$1;->this$0:Lcom/android/browser/controller/SimpleModeController;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/browser/controller/SimpleModeController;->mTitle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/browser/controller/SimpleModeController;->access$502(Lcom/android/browser/controller/SimpleModeController;Ljava/lang/String;)Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/android/browser/controller/SimpleModeController$1;->this$0:Lcom/android/browser/controller/SimpleModeController;

    #getter for: Lcom/android/browser/controller/SimpleModeController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v0}, Lcom/android/browser/controller/SimpleModeController;->access$200(Lcom/android/browser/controller/SimpleModeController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->getListener()Lcom/android/browser/ui/MiRenWebViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/controller/SimpleModeController$1;->this$0:Lcom/android/browser/controller/SimpleModeController;

    #getter for: Lcom/android/browser/controller/SimpleModeController;->mOriUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/browser/controller/SimpleModeController;->access$300(Lcom/android/browser/controller/SimpleModeController;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/browser/ui/MiRenWebViewListener;->updateHistory(Ljava/lang/String;)V

    .line 112
    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 3
    .parameter "view"
    .parameter "url"

    .prologue
    .line 91
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/android/browser/controller/SimpleModeController$1;->this$0:Lcom/android/browser/controller/SimpleModeController;

    #getter for: Lcom/android/browser/controller/SimpleModeController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v0}, Lcom/android/browser/controller/SimpleModeController;->access$200(Lcom/android/browser/controller/SimpleModeController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/android/browser/controller/SimpleModeController$1;->this$0:Lcom/android/browser/controller/SimpleModeController;

    #getter for: Lcom/android/browser/controller/SimpleModeController;->mNotAvailable:Z
    invoke-static {v0}, Lcom/android/browser/controller/SimpleModeController;->access$400(Lcom/android/browser/controller/SimpleModeController;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/android/browser/controller/SimpleModeController$1;->this$0:Lcom/android/browser/controller/SimpleModeController;

    #getter for: Lcom/android/browser/controller/SimpleModeController;->mFirstPage:Z
    invoke-static {v0}, Lcom/android/browser/controller/SimpleModeController;->access$000(Lcom/android/browser/controller/SimpleModeController;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/android/browser/controller/SimpleModeController$1;->this$0:Lcom/android/browser/controller/SimpleModeController;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/browser/controller/SimpleModeController;->mTitle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/browser/controller/SimpleModeController;->access$502(Lcom/android/browser/controller/SimpleModeController;Ljava/lang/String;)Ljava/lang/String;

    .line 98
    iget-object v0, p0, Lcom/android/browser/controller/SimpleModeController$1;->this$0:Lcom/android/browser/controller/SimpleModeController;

    #setter for: Lcom/android/browser/controller/SimpleModeController;->mTargetUrl:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/android/browser/controller/SimpleModeController;->access$102(Lcom/android/browser/controller/SimpleModeController;Ljava/lang/String;)Ljava/lang/String;

    .line 99
    iget-object v0, p0, Lcom/android/browser/controller/SimpleModeController$1;->this$0:Lcom/android/browser/controller/SimpleModeController;

    #getter for: Lcom/android/browser/controller/SimpleModeController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v0}, Lcom/android/browser/controller/SimpleModeController;->access$200(Lcom/android/browser/controller/SimpleModeController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->getListener()Lcom/android/browser/ui/MiRenWebViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/browser/ui/MiRenWebViewListener;->updateTitle()V

    .line 100
    iget-object v0, p0, Lcom/android/browser/controller/SimpleModeController$1;->this$0:Lcom/android/browser/controller/SimpleModeController;

    #getter for: Lcom/android/browser/controller/SimpleModeController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v0}, Lcom/android/browser/controller/SimpleModeController;->access$200(Lcom/android/browser/controller/SimpleModeController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->getListener()Lcom/android/browser/ui/MiRenWebViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/controller/SimpleModeController$1;->this$0:Lcom/android/browser/controller/SimpleModeController;

    #getter for: Lcom/android/browser/controller/SimpleModeController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v1}, Lcom/android/browser/controller/SimpleModeController;->access$200(Lcom/android/browser/controller/SimpleModeController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/controller/SimpleModeController$1;->this$0:Lcom/android/browser/controller/SimpleModeController;

    #getter for: Lcom/android/browser/controller/SimpleModeController;->mOriUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/browser/controller/SimpleModeController;->access$300(Lcom/android/browser/controller/SimpleModeController;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/browser/ui/MiRenWebViewListener;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/android/browser/controller/SimpleModeController$1;->this$0:Lcom/android/browser/controller/SimpleModeController;

    const/4 v1, 0x0

    #setter for: Lcom/android/browser/controller/SimpleModeController;->mFirstPage:Z
    invoke-static {v0, v1}, Lcom/android/browser/controller/SimpleModeController;->access$002(Lcom/android/browser/controller/SimpleModeController;Z)Z

    .line 103
    iget-object v0, p0, Lcom/android/browser/controller/SimpleModeController$1;->this$0:Lcom/android/browser/controller/SimpleModeController;

    invoke-virtual {v0}, Lcom/android/browser/controller/SimpleModeController;->detectContent()V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 82
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 83
    iget-object v0, p0, Lcom/android/browser/controller/SimpleModeController$1;->this$0:Lcom/android/browser/controller/SimpleModeController;

    #getter for: Lcom/android/browser/controller/SimpleModeController;->mFirstPage:Z
    invoke-static {v0}, Lcom/android/browser/controller/SimpleModeController;->access$000(Lcom/android/browser/controller/SimpleModeController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/android/browser/controller/SimpleModeController$1;->this$0:Lcom/android/browser/controller/SimpleModeController;

    #setter for: Lcom/android/browser/controller/SimpleModeController;->mTargetUrl:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/android/browser/controller/SimpleModeController;->access$102(Lcom/android/browser/controller/SimpleModeController;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    iget-object v0, p0, Lcom/android/browser/controller/SimpleModeController$1;->this$0:Lcom/android/browser/controller/SimpleModeController;

    #getter for: Lcom/android/browser/controller/SimpleModeController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v0}, Lcom/android/browser/controller/SimpleModeController;->access$200(Lcom/android/browser/controller/SimpleModeController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->getListener()Lcom/android/browser/ui/MiRenWebViewListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/controller/SimpleModeController$1;->this$0:Lcom/android/browser/controller/SimpleModeController;

    #getter for: Lcom/android/browser/controller/SimpleModeController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v1}, Lcom/android/browser/controller/SimpleModeController;->access$200(Lcom/android/browser/controller/SimpleModeController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/controller/SimpleModeController$1;->this$0:Lcom/android/browser/controller/SimpleModeController;

    #getter for: Lcom/android/browser/controller/SimpleModeController;->mOriUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/browser/controller/SimpleModeController;->access$300(Lcom/android/browser/controller/SimpleModeController;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/browser/ui/MiRenWebViewListener;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 87
    :cond_0
    return-void
.end method
