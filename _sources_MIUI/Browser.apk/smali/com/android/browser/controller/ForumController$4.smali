.class Lcom/android/browser/controller/ForumController$4;
.super Landroid/webkit/WebChromeClient;
.source "ForumController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/controller/ForumController;->enterForumModeDirectly(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/controller/ForumController;


# direct methods
.method constructor <init>(Lcom/android/browser/controller/ForumController;)V
    .locals 0
    .parameter

    .prologue
    .line 373
    iput-object p1, p0, Lcom/android/browser/controller/ForumController$4;->this$0:Lcom/android/browser/controller/ForumController;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2
    .parameter "view"
    .parameter "newProgress"

    .prologue
    .line 384
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 385
    iget-object v0, p0, Lcom/android/browser/controller/ForumController$4;->this$0:Lcom/android/browser/controller/ForumController;

    #getter for: Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v0}, Lcom/android/browser/controller/ForumController;->access$100(Lcom/android/browser/controller/ForumController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p2, v1}, Lcom/android/browser/ui/MiRenWebViewCore;->updateProgress(ILjava/lang/String;)V

    .line 386
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "title"

    .prologue
    .line 377
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 378
    iget-object v0, p0, Lcom/android/browser/controller/ForumController$4;->this$0:Lcom/android/browser/controller/ForumController;

    #setter for: Lcom/android/browser/controller/ForumController;->mTitle:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/android/browser/controller/ForumController;->access$402(Lcom/android/browser/controller/ForumController;Ljava/lang/String;)Ljava/lang/String;

    .line 379
    iget-object v0, p0, Lcom/android/browser/controller/ForumController$4;->this$0:Lcom/android/browser/controller/ForumController;

    #getter for: Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v0}, Lcom/android/browser/controller/ForumController;->access$100(Lcom/android/browser/controller/ForumController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->getListener()Lcom/android/browser/ui/MiRenWebViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/browser/ui/MiRenWebViewListener;->updateTitle()V

    .line 380
    return-void
.end method
