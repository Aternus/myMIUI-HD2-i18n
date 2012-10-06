.class Lcom/android/browser/controller/ForumController$ForumJSInterface;
.super Ljava/lang/Object;
.source "ForumController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/controller/ForumController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForumJSInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/controller/ForumController;


# direct methods
.method private constructor <init>(Lcom/android/browser/controller/ForumController;)V
    .locals 0
    .parameter

    .prologue
    .line 784
    iput-object p1, p0, Lcom/android/browser/controller/ForumController$ForumJSInterface;->this$0:Lcom/android/browser/controller/ForumController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/controller/ForumController;Lcom/android/browser/controller/ForumController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 784
    invoke-direct {p0, p1}, Lcom/android/browser/controller/ForumController$ForumJSInterface;-><init>(Lcom/android/browser/controller/ForumController;)V

    return-void
.end method


# virtual methods
.method public doFastLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "userName"
    .parameter "password"

    .prologue
    .line 886
    move-object v1, p1

    .line 887
    .local v1, _userName:Ljava/lang/String;
    move-object v0, p2

    .line 888
    .local v0, _password:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/browser/controller/ForumController$ForumJSInterface;->this$0:Lcom/android/browser/controller/ForumController;

    #getter for: Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v2}, Lcom/android/browser/controller/ForumController;->access$100(Lcom/android/browser/controller/ForumController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Lcom/android/browser/controller/ForumController$ForumJSInterface$5;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/browser/controller/ForumController$ForumJSInterface$5;-><init>(Lcom/android/browser/controller/ForumController$ForumJSInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 899
    return-void
.end method

.method public doFastPosting(Ljava/lang/String;)V
    .locals 3
    .parameter "content"

    .prologue
    .line 860
    move-object v0, p1

    .line 861
    .local v0, _content:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/browser/controller/ForumController$ForumJSInterface;->this$0:Lcom/android/browser/controller/ForumController;

    #getter for: Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v1}, Lcom/android/browser/controller/ForumController;->access$100(Lcom/android/browser/controller/ForumController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    check-cast v1, Landroid/app/Activity;

    new-instance v2, Lcom/android/browser/controller/ForumController$ForumJSInterface$4;

    invoke-direct {v2, p0, v0}, Lcom/android/browser/controller/ForumController$ForumJSInterface$4;-><init>(Lcom/android/browser/controller/ForumController$ForumJSInterface;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 882
    return-void
.end method

.method public doLogging(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "userName"
    .parameter "password"

    .prologue
    .line 810
    move-object v1, p1

    .line 811
    .local v1, _userName:Ljava/lang/String;
    move-object v0, p2

    .line 812
    .local v0, _password:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/browser/controller/ForumController$ForumJSInterface;->this$0:Lcom/android/browser/controller/ForumController;

    #getter for: Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v2}, Lcom/android/browser/controller/ForumController;->access$100(Lcom/android/browser/controller/ForumController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Lcom/android/browser/controller/ForumController$ForumJSInterface$2;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/browser/controller/ForumController$ForumJSInterface$2;-><init>(Lcom/android/browser/controller/ForumController$ForumJSInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 831
    return-void
.end method

.method public doPosting(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "subject"
    .parameter "content"

    .prologue
    .line 834
    move-object v1, p1

    .line 835
    .local v1, _subject:Ljava/lang/String;
    move-object v0, p2

    .line 836
    .local v0, _content:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/browser/controller/ForumController$ForumJSInterface;->this$0:Lcom/android/browser/controller/ForumController;

    #getter for: Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v2}, Lcom/android/browser/controller/ForumController;->access$100(Lcom/android/browser/controller/ForumController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Lcom/android/browser/controller/ForumController$ForumJSInterface$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/browser/controller/ForumController$ForumJSInterface$3;-><init>(Lcom/android/browser/controller/ForumController$ForumJSInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 857
    return-void
.end method

.method public doSearch(Ljava/lang/String;)V
    .locals 2
    .parameter "keyword"

    .prologue
    .line 902
    iget-object v0, p0, Lcom/android/browser/controller/ForumController$ForumJSInterface;->this$0:Lcom/android/browser/controller/ForumController;

    #getter for: Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v0}, Lcom/android/browser/controller/ForumController;->access$100(Lcom/android/browser/controller/ForumController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/browser/controller/ForumController$ForumJSInterface$6;

    invoke-direct {v1, p0, p1}, Lcom/android/browser/controller/ForumController$ForumJSInterface$6;-><init>(Lcom/android/browser/controller/ForumController$ForumJSInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 913
    return-void
.end method

.method public onForumNavigate(Ljava/lang/String;)V
    .locals 6
    .parameter "href"

    .prologue
    .line 788
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 789
    .local v2, forumUri:Ljava/net/URI;
    invoke-virtual {v2}, Ljava/net/URI;->isAbsolute()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "file:///android_asset"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 790
    :cond_0
    new-instance v0, Ljava/net/URI;

    iget-object v4, p0, Lcom/android/browser/controller/ForumController$ForumJSInterface;->this$0:Lcom/android/browser/controller/ForumController;

    #getter for: Lcom/android/browser/controller/ForumController;->mUrl:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/browser/controller/ForumController;->access$200(Lcom/android/browser/controller/ForumController;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 791
    .local v0, baseUri:Ljava/net/URI;
    invoke-virtual {v0, v2}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v2

    .line 793
    .end local v0           #baseUri:Ljava/net/URI;
    :cond_1
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    .line 794
    .local v3, url:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/browser/controller/ForumController$ForumJSInterface;->this$0:Lcom/android/browser/controller/ForumController;

    #getter for: Lcom/android/browser/controller/ForumController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-static {v4}, Lcom/android/browser/controller/ForumController;->access$100(Lcom/android/browser/controller/ForumController;)Lcom/android/browser/ui/MiRenWebViewCore;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    check-cast v4, Landroid/app/Activity;

    new-instance v5, Lcom/android/browser/controller/ForumController$ForumJSInterface$1;

    invoke-direct {v5, p0, v3}, Lcom/android/browser/controller/ForumController$ForumJSInterface$1;-><init>(Lcom/android/browser/controller/ForumController$ForumJSInterface;Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 807
    .end local v2           #forumUri:Ljava/net/URI;
    .end local v3           #url:Ljava/lang/String;
    :goto_0
    return-void

    .line 803
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 805
    .local v1, e:Ljava/net/URISyntaxException;
    invoke-virtual {v1}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0
.end method
