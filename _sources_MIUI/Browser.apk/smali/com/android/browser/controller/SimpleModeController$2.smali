.class Lcom/android/browser/controller/SimpleModeController$2;
.super Landroid/webkit/WebChromeClient;
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
    .line 115
    iput-object p1, p0, Lcom/android/browser/controller/SimpleModeController$2;->this$0:Lcom/android/browser/controller/SimpleModeController;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1
    .parameter "view"
    .parameter "newProgress"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/browser/controller/SimpleModeController$2;->this$0:Lcom/android/browser/controller/SimpleModeController;

    #getter for: Lcom/android/browser/controller/SimpleModeController;->mFirstPage:Z
    invoke-static {v0}, Lcom/android/browser/controller/SimpleModeController;->access$000(Lcom/android/browser/controller/SimpleModeController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 138
    iget-object v0, p0, Lcom/android/browser/controller/SimpleModeController$2;->this$0:Lcom/android/browser/controller/SimpleModeController;

    #getter for: Lcom/android/browser/controller/SimpleModeController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v0}, Lcom/android/browser/controller/SimpleModeController;->access$200(Lcom/android/browser/controller/SimpleModeController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->getListener()Lcom/android/browser/ui/MiRenWebViewListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/browser/ui/MiRenWebViewListener;->updateProgress(Landroid/webkit/WebView;I)V

    .line 140
    :cond_0
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "title"

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/android/browser/controller/SimpleModeController$2;->this$0:Lcom/android/browser/controller/SimpleModeController;

    #getter for: Lcom/android/browser/controller/SimpleModeController;->mFirstPage:Z
    invoke-static {v0}, Lcom/android/browser/controller/SimpleModeController;->access$000(Lcom/android/browser/controller/SimpleModeController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    const-string v0, "\u7f51\u5740\u65e0\u6cd5\u8bbf\u95ee"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/android/browser/controller/SimpleModeController$2;->this$0:Lcom/android/browser/controller/SimpleModeController;

    const/4 v1, 0x1

    #setter for: Lcom/android/browser/controller/SimpleModeController;->mNotAvailable:Z
    invoke-static {v0, v1}, Lcom/android/browser/controller/SimpleModeController;->access$402(Lcom/android/browser/controller/SimpleModeController;Z)Z

    .line 124
    iget-object v0, p0, Lcom/android/browser/controller/SimpleModeController$2;->this$0:Lcom/android/browser/controller/SimpleModeController;

    #getter for: Lcom/android/browser/controller/SimpleModeController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;
    invoke-static {v0}, Lcom/android/browser/controller/SimpleModeController;->access$600(Lcom/android/browser/controller/SimpleModeController;)Lcom/android/browser/ui/MiRenWebViewBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewBase;->stopLoading()V

    .line 125
    iget-object v0, p0, Lcom/android/browser/controller/SimpleModeController$2;->this$0:Lcom/android/browser/controller/SimpleModeController;

    #getter for: Lcom/android/browser/controller/SimpleModeController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v0}, Lcom/android/browser/controller/SimpleModeController;->access$200(Lcom/android/browser/controller/SimpleModeController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/controller/SimpleModeController$2;->this$0:Lcom/android/browser/controller/SimpleModeController;

    #getter for: Lcom/android/browser/controller/SimpleModeController;->mOriUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/browser/controller/SimpleModeController;->access$300(Lcom/android/browser/controller/SimpleModeController;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenWebViewCore;->onSimpleModeNotAvailable(Ljava/lang/String;)V

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/android/browser/controller/SimpleModeController$2;->this$0:Lcom/android/browser/controller/SimpleModeController;

    #setter for: Lcom/android/browser/controller/SimpleModeController;->mTitle:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/android/browser/controller/SimpleModeController;->access$502(Lcom/android/browser/controller/SimpleModeController;Ljava/lang/String;)Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/android/browser/controller/SimpleModeController$2;->this$0:Lcom/android/browser/controller/SimpleModeController;

    #getter for: Lcom/android/browser/controller/SimpleModeController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v0}, Lcom/android/browser/controller/SimpleModeController;->access$200(Lcom/android/browser/controller/SimpleModeController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->getListener()Lcom/android/browser/ui/MiRenWebViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/browser/ui/MiRenWebViewListener;->updateTitle()V

    goto :goto_0
.end method
