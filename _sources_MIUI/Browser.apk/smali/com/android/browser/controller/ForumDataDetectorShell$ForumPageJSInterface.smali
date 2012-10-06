.class final Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;
.super Ljava/lang/Object;
.source "ForumDataDetectorShell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/controller/ForumDataDetectorShell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ForumPageJSInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/controller/ForumDataDetectorShell;


# direct methods
.method private constructor <init>(Lcom/android/browser/controller/ForumDataDetectorShell;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;->this$0:Lcom/android/browser/controller/ForumDataDetectorShell;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/controller/ForumDataDetectorShell;Lcom/android/browser/controller/ForumDataDetectorShell$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;-><init>(Lcom/android/browser/controller/ForumDataDetectorShell;)V

    return-void
.end method


# virtual methods
.method public addArticleListCommonData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "paging"
    .parameter "newThread"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;->this$0:Lcom/android/browser/controller/ForumDataDetectorShell;

    iget-object v0, v0, Lcom/android/browser/controller/ForumDataDetectorShell;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewBase;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$6;-><init>(Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 318
    return-void
.end method

.method public addNormalThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "title"
    .parameter "link"
    .parameter "icon"
    .parameter "author"
    .parameter "nums"
    .parameter "lastpost"

    .prologue
    .line 341
    iget-object v1, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;->this$0:Lcom/android/browser/controller/ForumDataDetectorShell;

    iget-object v1, v1, Lcom/android/browser/controller/ForumDataDetectorShell;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-virtual {v1}, Lcom/android/browser/ui/MiRenWebViewBase;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    move-object v9, v0

    new-instance v1, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$9;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$9;-><init>(Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 347
    return-void
.end method

.method public addOneSearchResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "title"
    .parameter "link"
    .parameter "author"
    .parameter "nums"
    .parameter "lastPost"

    .prologue
    .line 447
    iget-object v1, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;->this$0:Lcom/android/browser/controller/ForumDataDetectorShell;

    iget-object v1, v1, Lcom/android/browser/controller/ForumDataDetectorShell;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-virtual {v1}, Lcom/android/browser/ui/MiRenWebViewBase;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    move-object v8, v0

    new-instance v1, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$18;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$18;-><init>(Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 453
    return-void
.end method

.method public addPost(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "content"
    .parameter "authorID"
    .parameter "authorIcon"
    .parameter "authorIconOnError"
    .parameter "authorTitle"
    .parameter "floor"
    .parameter "postTime"
    .parameter "fastReply"

    .prologue
    .line 369
    iget-object v1, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;->this$0:Lcom/android/browser/controller/ForumDataDetectorShell;

    iget-object v1, v1, Lcom/android/browser/controller/ForumDataDetectorShell;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-virtual {v1}, Lcom/android/browser/ui/MiRenWebViewBase;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    move-object v11, v0

    new-instance v1, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$11;

    move-object v2, p0

    move-object/from16 v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v1 .. v10}, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$11;-><init>(Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 378
    return-void
.end method

.method public addStickThread(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "title"
    .parameter "link"
    .parameter "icon"
    .parameter "author"
    .parameter "nums"
    .parameter "lastpost"

    .prologue
    .line 331
    iget-object v1, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;->this$0:Lcom/android/browser/controller/ForumDataDetectorShell;

    iget-object v1, v1, Lcom/android/browser/controller/ForumDataDetectorShell;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-virtual {v1}, Lcom/android/browser/ui/MiRenWebViewBase;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    move-object v0, v1

    check-cast v0, Landroid/app/Activity;

    move-object v9, v0

    new-instance v1, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$8;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$8;-><init>(Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 337
    return-void
.end method

.method public addSubforum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "title"
    .parameter "link"
    .parameter "num"

    .prologue
    .line 321
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;->this$0:Lcom/android/browser/controller/ForumDataDetectorShell;

    iget-object v0, v0, Lcom/android/browser/controller/ForumDataDetectorShell;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewBase;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$7;-><init>(Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 327
    return-void
.end method

.method public onAllDataReady()V
    .locals 2

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;->this$0:Lcom/android/browser/controller/ForumDataDetectorShell;

    iget-object v0, v0, Lcom/android/browser/controller/ForumDataDetectorShell;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewBase;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$19;

    invoke-direct {v1, p0}, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$19;-><init>(Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 462
    return-void
.end method

.method public onCategoryDetected(Ljava/lang/String;)V
    .locals 2
    .parameter "categoryTitle"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;->this$0:Lcom/android/browser/controller/ForumDataDetectorShell;

    iget-object v0, v0, Lcom/android/browser/controller/ForumDataDetectorShell;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewBase;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$4;

    invoke-direct {v1, p0, p1}, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$4;-><init>(Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 290
    return-void
.end method

.method public onFastLoginDetected()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;->this$0:Lcom/android/browser/controller/ForumDataDetectorShell;

    iget-object v0, v0, Lcom/android/browser/controller/ForumDataDetectorShell;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewBase;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$2;

    invoke-direct {v1, p0}, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$2;-><init>(Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 262
    return-void
.end method

.method public onForumsDetected(Ljava/lang/String;)V
    .locals 2
    .parameter "forumsString"

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;->this$0:Lcom/android/browser/controller/ForumDataDetectorShell;

    iget-object v0, v0, Lcom/android/browser/controller/ForumDataDetectorShell;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewBase;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$5;

    invoke-direct {v1, p0, p1}, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$5;-><init>(Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 307
    return-void
.end method

.method public onParamDetected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "name"
    .parameter "value"

    .prologue
    .line 241
    move-object v0, p1

    .local v0, _name:Ljava/lang/String;
    move-object v1, p2

    .line 242
    .local v1, _value:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;->this$0:Lcom/android/browser/controller/ForumDataDetectorShell;

    iget-object v2, v2, Lcom/android/browser/controller/ForumDataDetectorShell;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-virtual {v2}, Lcom/android/browser/ui/MiRenWebViewBase;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    check-cast v2, Landroid/app/Activity;

    new-instance v3, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$1;-><init>(Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 251
    return-void
.end method

.method public setArticleDetailCommonData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "paging"
    .parameter "replyBtn"

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;->this$0:Lcom/android/browser/controller/ForumDataDetectorShell;

    iget-object v0, v0, Lcom/android/browser/controller/ForumDataDetectorShell;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewBase;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$10;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$10;-><init>(Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 358
    return-void
.end method

.method public setCommonData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "userMenu"
    .parameter "navBar"
    .parameter "searchBtn"

    .prologue
    .line 268
    move-object v2, p1

    .local v2, _userMenu:Ljava/lang/String;
    move-object v0, p2

    .local v0, _navBar:Ljava/lang/String;
    move-object v1, p3

    .line 269
    .local v1, _searchBtn:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;->this$0:Lcom/android/browser/controller/ForumDataDetectorShell;

    iget-object v3, v3, Lcom/android/browser/controller/ForumDataDetectorShell;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-virtual {v3}, Lcom/android/browser/ui/MiRenWebViewBase;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Landroid/app/Activity;

    check-cast v3, Landroid/app/Activity;

    new-instance v4, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$3;

    invoke-direct {v4, p0, v2, v0, v1}, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$3;-><init>(Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 277
    return-void
.end method

.method public setPostingData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "showMsg"
    .parameter "subject"
    .parameter "content"

    .prologue
    .line 403
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;->this$0:Lcom/android/browser/controller/ForumDataDetectorShell;

    iget-object v0, v0, Lcom/android/browser/controller/ForumDataDetectorShell;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewBase;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$14;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$14;-><init>(Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 413
    return-void
.end method

.method public setShowMessage(Ljava/lang/String;)V
    .locals 2
    .parameter "showMsg"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;->this$0:Lcom/android/browser/controller/ForumDataDetectorShell;

    iget-object v0, v0, Lcom/android/browser/controller/ForumDataDetectorShell;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewBase;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$13;

    invoke-direct {v1, p0, p1}, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$13;-><init>(Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 400
    return-void
.end method

.method public shouldLoginFirst(Ljava/lang/String;)V
    .locals 2
    .parameter "alertMessage"

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;->this$0:Lcom/android/browser/controller/ForumDataDetectorShell;

    iget-object v0, v0, Lcom/android/browser/controller/ForumDataDetectorShell;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewBase;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$15;

    invoke-direct {v1, p0, p1}, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$15;-><init>(Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 423
    return-void
.end method

.method public showFastPost()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;->this$0:Lcom/android/browser/controller/ForumDataDetectorShell;

    iget-object v0, v0, Lcom/android/browser/controller/ForumDataDetectorShell;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewBase;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$12;

    invoke-direct {v1, p0}, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$12;-><init>(Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 387
    return-void
.end method

.method public showSearch()V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;->this$0:Lcom/android/browser/controller/ForumDataDetectorShell;

    iget-object v0, v0, Lcom/android/browser/controller/ForumDataDetectorShell;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewBase;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$16;

    invoke-direct {v1, p0}, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$16;-><init>(Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 432
    return-void
.end method

.method public showSearchResultString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "resultString"
    .parameter "paging"

    .prologue
    .line 435
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;->this$0:Lcom/android/browser/controller/ForumDataDetectorShell;

    iget-object v0, v0, Lcom/android/browser/controller/ForumDataDetectorShell;->mWebView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewBase;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$17;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface$17;-><init>(Lcom/android/browser/controller/ForumDataDetectorShell$ForumPageJSInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 443
    :cond_1
    return-void
.end method
