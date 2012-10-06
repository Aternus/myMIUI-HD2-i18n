.class Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;
.super Ljava/lang/Object;
.source "ReadingModePageDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/model/ReadingModePageDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackgroundViewJSInterface"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/browser/model/ReadingModePageDataProvider;


# direct methods
.method private constructor <init>(Lcom/android/browser/model/ReadingModePageDataProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 258
    iput-object p1, p0, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;->this$0:Lcom/android/browser/model/ReadingModePageDataProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/model/ReadingModePageDataProvider;Lcom/android/browser/model/ReadingModePageDataProvider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 258
    invoke-direct {p0, p1}, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;-><init>(Lcom/android/browser/model/ReadingModePageDataProvider;)V

    return-void
.end method


# virtual methods
.method public commentsPathNotFound()V
    .locals 2

    .prologue
    .line 298
    iget-object v1, p0, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;->this$0:Lcom/android/browser/model/ReadingModePageDataProvider;

    #getter for: Lcom/android/browser/model/ReadingModePageDataProvider;->mController:Lcom/android/browser/controller/ReadingController;
    invoke-static {v1}, Lcom/android/browser/model/ReadingModePageDataProvider;->access$200(Lcom/android/browser/model/ReadingModePageDataProvider;)Lcom/android/browser/controller/ReadingController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/browser/controller/ReadingController;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 299
    .local v0, context:Landroid/content/Context;
    check-cast v0, Landroid/app/Activity;

    .end local v0           #context:Landroid/content/Context;
    new-instance v1, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface$4;

    invoke-direct {v1, p0}, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface$4;-><init>(Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 305
    return-void
.end method

.method public contentPathNotFound(Ljava/lang/String;)V
    .locals 2
    .parameter "xpath"

    .prologue
    .line 261
    iget-object v1, p0, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;->this$0:Lcom/android/browser/model/ReadingModePageDataProvider;

    #getter for: Lcom/android/browser/model/ReadingModePageDataProvider;->mController:Lcom/android/browser/controller/ReadingController;
    invoke-static {v1}, Lcom/android/browser/model/ReadingModePageDataProvider;->access$200(Lcom/android/browser/model/ReadingModePageDataProvider;)Lcom/android/browser/controller/ReadingController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/browser/controller/ReadingController;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 262
    .local v0, context:Landroid/content/Context;
    check-cast v0, Landroid/app/Activity;

    .end local v0           #context:Landroid/content/Context;
    new-instance v1, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface$1;

    invoke-direct {v1, p0}, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface$1;-><init>(Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 271
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 1
    .parameter "log"

    .prologue
    .line 357
    invoke-static {}, Lcom/android/browser/model/ReadingModePageDataProvider;->access$1200()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    return-void
.end method

.method public nextLinkPathNotFound(Ljava/lang/String;)V
    .locals 2
    .parameter "xpath"

    .prologue
    .line 286
    iget-object v1, p0, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;->this$0:Lcom/android/browser/model/ReadingModePageDataProvider;

    #getter for: Lcom/android/browser/model/ReadingModePageDataProvider;->mController:Lcom/android/browser/controller/ReadingController;
    invoke-static {v1}, Lcom/android/browser/model/ReadingModePageDataProvider;->access$200(Lcom/android/browser/model/ReadingModePageDataProvider;)Lcom/android/browser/controller/ReadingController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/browser/controller/ReadingController;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 287
    .local v0, context:Landroid/content/Context;
    check-cast v0, Landroid/app/Activity;

    .end local v0           #context:Landroid/content/Context;
    new-instance v1, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface$3;

    invoke-direct {v1, p0}, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface$3;-><init>(Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 295
    return-void
.end method

.method public onImageLinkFound(Ljava/lang/String;)V
    .locals 1
    .parameter "imageUrl"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;->this$0:Lcom/android/browser/model/ReadingModePageDataProvider;

    #setter for: Lcom/android/browser/model/ReadingModePageDataProvider;->mImageUrl:Ljava/lang/String;
    invoke-static {v0, p1}, Lcom/android/browser/model/ReadingModePageDataProvider;->access$1102(Lcom/android/browser/model/ReadingModePageDataProvider;Ljava/lang/String;)Ljava/lang/String;

    .line 354
    return-void
.end method

.method public setCommentsHTML(Ljava/lang/String;)V
    .locals 2
    .parameter "commentsHTML"

    .prologue
    .line 308
    iget-object v1, p0, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;->this$0:Lcom/android/browser/model/ReadingModePageDataProvider;

    #getter for: Lcom/android/browser/model/ReadingModePageDataProvider;->mController:Lcom/android/browser/controller/ReadingController;
    invoke-static {v1}, Lcom/android/browser/model/ReadingModePageDataProvider;->access$200(Lcom/android/browser/model/ReadingModePageDataProvider;)Lcom/android/browser/controller/ReadingController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/browser/controller/ReadingController;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 309
    .local v0, context:Landroid/content/Context;
    check-cast v0, Landroid/app/Activity;

    .end local v0           #context:Landroid/content/Context;
    new-instance v1, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface$5;

    invoke-direct {v1, p0, p1}, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface$5;-><init>(Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 316
    return-void
.end method

.method public setContentHTML(Ljava/lang/String;)V
    .locals 2
    .parameter "contentHTML"

    .prologue
    .line 319
    iget-object v1, p0, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;->this$0:Lcom/android/browser/model/ReadingModePageDataProvider;

    #getter for: Lcom/android/browser/model/ReadingModePageDataProvider;->mController:Lcom/android/browser/controller/ReadingController;
    invoke-static {v1}, Lcom/android/browser/model/ReadingModePageDataProvider;->access$200(Lcom/android/browser/model/ReadingModePageDataProvider;)Lcom/android/browser/controller/ReadingController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/browser/controller/ReadingController;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 320
    .local v0, context:Landroid/content/Context;
    check-cast v0, Landroid/app/Activity;

    .end local v0           #context:Landroid/content/Context;
    new-instance v1, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface$6;

    invoke-direct {v1, p0, p1}, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface$6;-><init>(Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 328
    return-void
.end method

.method public setNextLinkUrl(Ljava/lang/String;)V
    .locals 2
    .parameter "nextUrl"

    .prologue
    .line 342
    iget-object v1, p0, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;->this$0:Lcom/android/browser/model/ReadingModePageDataProvider;

    #getter for: Lcom/android/browser/model/ReadingModePageDataProvider;->mController:Lcom/android/browser/controller/ReadingController;
    invoke-static {v1}, Lcom/android/browser/model/ReadingModePageDataProvider;->access$200(Lcom/android/browser/model/ReadingModePageDataProvider;)Lcom/android/browser/controller/ReadingController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/browser/controller/ReadingController;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 343
    .local v0, context:Landroid/content/Context;
    check-cast v0, Landroid/app/Activity;

    .end local v0           #context:Landroid/content/Context;
    new-instance v1, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface$8;

    invoke-direct {v1, p0, p1}, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface$8;-><init>(Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 350
    return-void
.end method

.method public setTitleHTML(Ljava/lang/String;)V
    .locals 2
    .parameter "titleHTML"

    .prologue
    .line 331
    iget-object v1, p0, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;->this$0:Lcom/android/browser/model/ReadingModePageDataProvider;

    #getter for: Lcom/android/browser/model/ReadingModePageDataProvider;->mController:Lcom/android/browser/controller/ReadingController;
    invoke-static {v1}, Lcom/android/browser/model/ReadingModePageDataProvider;->access$200(Lcom/android/browser/model/ReadingModePageDataProvider;)Lcom/android/browser/controller/ReadingController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/browser/controller/ReadingController;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 332
    .local v0, context:Landroid/content/Context;
    check-cast v0, Landroid/app/Activity;

    .end local v0           #context:Landroid/content/Context;
    new-instance v1, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface$7;

    invoke-direct {v1, p0, p1}, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface$7;-><init>(Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 339
    return-void
.end method

.method public titlePathNotFound(Ljava/lang/String;)V
    .locals 2
    .parameter "xpath"

    .prologue
    .line 274
    iget-object v1, p0, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;->this$0:Lcom/android/browser/model/ReadingModePageDataProvider;

    #getter for: Lcom/android/browser/model/ReadingModePageDataProvider;->mController:Lcom/android/browser/controller/ReadingController;
    invoke-static {v1}, Lcom/android/browser/model/ReadingModePageDataProvider;->access$200(Lcom/android/browser/model/ReadingModePageDataProvider;)Lcom/android/browser/controller/ReadingController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/browser/controller/ReadingController;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 275
    .local v0, context:Landroid/content/Context;
    check-cast v0, Landroid/app/Activity;

    .end local v0           #context:Landroid/content/Context;
    new-instance v1, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface$2;

    invoke-direct {v1, p0}, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface$2;-><init>(Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 283
    return-void
.end method
