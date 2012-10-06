.class Lcom/android/browser/model/ReadingModePageDataProvider$JSTask;
.super Ljava/lang/Object;
.source "ReadingModePageDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/model/ReadingModePageDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JSTask"
.end annotation


# instance fields
.field private mFileName:Ljava/lang/String;

.field private mFunction:Ljava/lang/String;

.field private mParams:Ljava/lang/String;

.field private mState:Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;

.field private mView:Lcom/android/browser/ui/MiRenWebViewBase;

.field final synthetic this$0:Lcom/android/browser/model/ReadingModePageDataProvider;


# direct methods
.method public constructor <init>(Lcom/android/browser/model/ReadingModePageDataProvider;Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "view"
    .parameter "fileName"
    .parameter "funcName"
    .parameter "params"

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/browser/model/ReadingModePageDataProvider$JSTask;->this$0:Lcom/android/browser/model/ReadingModePageDataProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    iput-object p2, p0, Lcom/android/browser/model/ReadingModePageDataProvider$JSTask;->mView:Lcom/android/browser/ui/MiRenWebViewBase;

    .line 370
    iput-object p3, p0, Lcom/android/browser/model/ReadingModePageDataProvider$JSTask;->mFileName:Ljava/lang/String;

    .line 371
    iput-object p4, p0, Lcom/android/browser/model/ReadingModePageDataProvider$JSTask;->mFunction:Ljava/lang/String;

    .line 372
    iput-object p5, p0, Lcom/android/browser/model/ReadingModePageDataProvider$JSTask;->mParams:Ljava/lang/String;

    .line 373
    sget-object v0, Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;->State_Normal:Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;

    iput-object v0, p0, Lcom/android/browser/model/ReadingModePageDataProvider$JSTask;->mState:Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;

    .line 374
    return-void
.end method


# virtual methods
.method public cancelTask()V
    .locals 1

    .prologue
    .line 386
    sget-object v0, Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;->State_Canceled:Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;

    iput-object v0, p0, Lcom/android/browser/model/ReadingModePageDataProvider$JSTask;->mState:Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;

    .line 387
    return-void
.end method

.method public execute()V
    .locals 4

    .prologue
    .line 377
    iget-object v0, p0, Lcom/android/browser/model/ReadingModePageDataProvider$JSTask;->mView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewBase;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 383
    :goto_0
    return-void

    .line 381
    :cond_0
    iget-object v0, p0, Lcom/android/browser/model/ReadingModePageDataProvider$JSTask;->mView:Lcom/android/browser/ui/MiRenWebViewBase;

    iget-object v1, p0, Lcom/android/browser/model/ReadingModePageDataProvider$JSTask;->mFileName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/browser/model/ReadingModePageDataProvider$JSTask;->mFunction:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/browser/model/ReadingModePageDataProvider$JSTask;->mParams:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/android/browser/util/JavaScriptUtils;->callJSFunctionFromAsset(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    sget-object v0, Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;->State_Executing:Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;

    iput-object v0, p0, Lcom/android/browser/model/ReadingModePageDataProvider$JSTask;->mState:Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;

    goto :goto_0
.end method

.method public getState()Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/android/browser/model/ReadingModePageDataProvider$JSTask;->mState:Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;

    return-object v0
.end method

.method public getView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/android/browser/model/ReadingModePageDataProvider$JSTask;->mView:Lcom/android/browser/ui/MiRenWebViewBase;

    return-object v0
.end method
