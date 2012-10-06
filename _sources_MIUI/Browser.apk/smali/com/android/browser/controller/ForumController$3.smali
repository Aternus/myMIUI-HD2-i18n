.class Lcom/android/browser/controller/ForumController$3;
.super Landroid/webkit/WebViewClient;
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
    .line 341
    iput-object p1, p0, Lcom/android/browser/controller/ForumController$3;->this$0:Lcom/android/browser/controller/ForumController;

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
    .line 366
    iget-object v0, p0, Lcom/android/browser/controller/ForumController$3;->this$0:Lcom/android/browser/controller/ForumController;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    #setter for: Lcom/android/browser/controller/ForumController;->mTitle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/browser/controller/ForumController;->access$402(Lcom/android/browser/controller/ForumController;Ljava/lang/String;)Ljava/lang/String;

    .line 367
    iget-object v0, p0, Lcom/android/browser/controller/ForumController$3;->this$0:Lcom/android/browser/controller/ForumController;

    #getter for: Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v0}, Lcom/android/browser/controller/ForumController;->access$100(Lcom/android/browser/controller/ForumController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->getListener()Lcom/android/browser/ui/MiRenWebViewListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/browser/ui/MiRenWebViewListener;->isViewVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/browser/controller/ForumController$3;->this$0:Lcom/android/browser/controller/ForumController;

    #getter for: Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v0}, Lcom/android/browser/controller/ForumController;->access$100(Lcom/android/browser/controller/ForumController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->getListener()Lcom/android/browser/ui/MiRenWebViewListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/browser/ui/MiRenWebViewListener;->updateHistory(Ljava/lang/String;)V

    .line 370
    :cond_0
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .parameter "view"
    .parameter "url"

    .prologue
    .line 352
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 354
    iget-object v2, p0, Lcom/android/browser/controller/ForumController$3;->this$0:Lcom/android/browser/controller/ForumController;

    move-object v0, p1

    check-cast v0, Lcom/android/browser/ui/MiRenWebViewBase;

    move-object v1, v0

    #calls: Lcom/android/browser/controller/ForumController;->detectForum(Lcom/android/browser/ui/MiRenWebViewBase;)V
    invoke-static {v2, v1}, Lcom/android/browser/controller/ForumController;->access$300(Lcom/android/browser/controller/ForumController;Lcom/android/browser/ui/MiRenWebViewBase;)V

    .line 355
    iget-object v1, p0, Lcom/android/browser/controller/ForumController$3;->this$0:Lcom/android/browser/controller/ForumController;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/browser/controller/ForumController;->mTitle:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/browser/controller/ForumController;->access$402(Lcom/android/browser/controller/ForumController;Ljava/lang/String;)Ljava/lang/String;

    .line 356
    iget-object v1, p0, Lcom/android/browser/controller/ForumController$3;->this$0:Lcom/android/browser/controller/ForumController;

    #setter for: Lcom/android/browser/controller/ForumController;->mUrl:Ljava/lang/String;
    invoke-static {v1, p2}, Lcom/android/browser/controller/ForumController;->access$202(Lcom/android/browser/controller/ForumController;Ljava/lang/String;)Ljava/lang/String;

    .line 357
    iget-object v1, p0, Lcom/android/browser/controller/ForumController$3;->this$0:Lcom/android/browser/controller/ForumController;

    #getter for: Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v1}, Lcom/android/browser/controller/ForumController;->access$100(Lcom/android/browser/controller/ForumController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/ui/MiRenWebViewCore;->getListener()Lcom/android/browser/ui/MiRenWebViewListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/browser/ui/MiRenWebViewListener;->updateTitle()V

    .line 361
    iget-object v1, p0, Lcom/android/browser/controller/ForumController$3;->this$0:Lcom/android/browser/controller/ForumController;

    #getter for: Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v1}, Lcom/android/browser/controller/ForumController;->access$100(Lcom/android/browser/controller/ForumController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBaseUrl(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\');"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;)V

    .line 362
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 344
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 346
    iget-object v0, p0, Lcom/android/browser/controller/ForumController$3;->this$0:Lcom/android/browser/controller/ForumController;

    #setter for: Lcom/android/browser/controller/ForumController;->mUrl:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/android/browser/controller/ForumController;->access$202(Lcom/android/browser/controller/ForumController;Ljava/lang/String;)Ljava/lang/String;

    .line 347
    iget-object v0, p0, Lcom/android/browser/controller/ForumController$3;->this$0:Lcom/android/browser/controller/ForumController;

    #getter for: Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v0}, Lcom/android/browser/controller/ForumController;->access$100(Lcom/android/browser/controller/ForumController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->getListener()Lcom/android/browser/ui/MiRenWebViewListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/browser/ui/MiRenWebViewListener;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 348
    return-void
.end method
