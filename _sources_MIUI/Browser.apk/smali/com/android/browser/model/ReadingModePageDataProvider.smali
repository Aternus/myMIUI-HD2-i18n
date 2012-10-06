.class public Lcom/android/browser/model/ReadingModePageDataProvider;
.super Ljava/lang/Object;
.source "ReadingModePageDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/model/ReadingModePageDataProvider$JSTask;,
        Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;,
        Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;
    }
.end annotation


# static fields
.field private static LOGTAG:Ljava/lang/String;

.field private static final MSG_EXECUTE_QUERY:I


# instance fields
.field private mAdsXPath:Ljava/lang/String;

.field mCallback:Landroid/os/Handler$Callback;

.field private mComments:Ljava/lang/String;

.field private mCommentsXPath:Ljava/lang/String;

.field private mContent:Ljava/lang/String;

.field private mContentXPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mController:Lcom/android/browser/controller/ReadingController;

.field private mCurrentContentPathCount:I

.field private mCurrentNextLinkPathCount:I

.field private mCurrentTitlePathCount:I

.field private mFirstPage:Ljava/lang/String;

.field private mImageUrl:Ljava/lang/String;

.field private mNextLinkXPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNextUrl:Ljava/lang/String;

.field private mTaskQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/browser/model/ReadingModePageDataProvider$JSTask;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;

.field private mTitleXPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mView:Lcom/android/browser/ui/MiRenWebViewBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-string v0, "com.android.browser.model.ReadingModePageDataProvider"

    sput-object v0, Lcom/android/browser/model/ReadingModePageDataProvider;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/browser/controller/ReadingController;)V
    .locals 2
    .parameter "controller"

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mView:Lcom/android/browser/ui/MiRenWebViewBase;

    .line 30
    iput v1, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mCurrentContentPathCount:I

    .line 31
    iput v1, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mCurrentTitlePathCount:I

    .line 32
    iput v1, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mCurrentNextLinkPathCount:I

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mTaskQueue:Ljava/util/LinkedList;

    .line 42
    new-instance v0, Lcom/android/browser/model/ReadingModePageDataProvider$1;

    invoke-direct {v0, p0}, Lcom/android/browser/model/ReadingModePageDataProvider$1;-><init>(Lcom/android/browser/model/ReadingModePageDataProvider;)V

    iput-object v0, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mCallback:Landroid/os/Handler$Callback;

    .line 55
    iput-object p1, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mController:Lcom/android/browser/controller/ReadingController;

    .line 56
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/model/ReadingModePageDataProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/browser/model/ReadingModePageDataProvider;->executeQuery()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/browser/model/ReadingModePageDataProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mNextUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/browser/model/ReadingModePageDataProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mImageUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/android/browser/model/ReadingModePageDataProvider;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/model/ReadingModePageDataProvider;)Lcom/android/browser/controller/ReadingController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 20
    iget-object v0, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mController:Lcom/android/browser/controller/ReadingController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/browser/model/ReadingModePageDataProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/browser/model/ReadingModePageDataProvider;->tryNextContentPath()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/browser/model/ReadingModePageDataProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/browser/model/ReadingModePageDataProvider;->onTaskComplete()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/browser/model/ReadingModePageDataProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/browser/model/ReadingModePageDataProvider;->tryNextTitlePath()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/browser/model/ReadingModePageDataProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/android/browser/model/ReadingModePageDataProvider;->tryNextLinkPath()V

    return-void
.end method

.method static synthetic access$702(Lcom/android/browser/model/ReadingModePageDataProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mComments:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$802(Lcom/android/browser/model/ReadingModePageDataProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mContent:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/android/browser/model/ReadingModePageDataProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    iput-object p1, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method private executeQuery()V
    .locals 4

    .prologue
    .line 98
    iget-object v2, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mContentXPaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 99
    iget-object v2, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mController:Lcom/android/browser/controller/ReadingController;

    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Lcom/android/browser/controller/ReadingController;->onReadingDataReady(Lcom/android/browser/model/ReadingModePageDataProvider;Z)V

    .line 126
    :goto_0
    return-void

    .line 102
    :cond_0
    invoke-direct {p0}, Lcom/android/browser/model/ReadingModePageDataProvider;->tryNextContentPath()V

    .line 103
    iget-object v2, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mTitleXPaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 104
    invoke-direct {p0}, Lcom/android/browser/model/ReadingModePageDataProvider;->tryNextTitlePath()V

    .line 107
    :cond_1
    const/4 v0, 0x0

    .line 108
    .local v0, isFirstPage:Z
    iget-object v2, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mFirstPage:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-virtual {v2}, Lcom/android/browser/ui/MiRenWebViewBase;->getUrl()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mFirstPage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 109
    const/4 v0, 0x1

    .line 111
    :cond_2
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mNextLinkXPaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    .line 113
    iget v2, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mCurrentNextLinkPathCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mCurrentNextLinkPathCount:I

    .line 115
    :cond_3
    iget-object v2, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mNextLinkXPaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    iget v2, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mCurrentNextLinkPathCount:I

    iget-object v3, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mNextLinkXPaths:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 117
    invoke-direct {p0}, Lcom/android/browser/model/ReadingModePageDataProvider;->tryNextLinkPath()V

    .line 120
    :cond_4
    iget-object v2, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mCommentsXPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 121
    invoke-direct {p0}, Lcom/android/browser/model/ReadingModePageDataProvider;->tryToGetComments()V

    .line 124
    :cond_5
    iget-object v2, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/model/ReadingModePageDataProvider$JSTask;

    .line 125
    .local v1, task:Lcom/android/browser/model/ReadingModePageDataProvider$JSTask;
    invoke-virtual {v1}, Lcom/android/browser/model/ReadingModePageDataProvider$JSTask;->execute()V

    goto :goto_0
.end method

.method private insertJSTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "fileName"
    .parameter "funcName"
    .parameter "params"

    .prologue
    .line 228
    new-instance v0, Lcom/android/browser/model/ReadingModePageDataProvider$JSTask;

    iget-object v2, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mView:Lcom/android/browser/ui/MiRenWebViewBase;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/browser/model/ReadingModePageDataProvider$JSTask;-><init>(Lcom/android/browser/model/ReadingModePageDataProvider;Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    .local v0, task:Lcom/android/browser/model/ReadingModePageDataProvider$JSTask;
    iget-object v1, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 230
    return-void
.end method

.method private onTaskComplete()V
    .locals 3

    .prologue
    .line 233
    iget-object v1, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    iget-object v1, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/model/ReadingModePageDataProvider$JSTask;

    .line 239
    .local v0, task:Lcom/android/browser/model/ReadingModePageDataProvider$JSTask;
    iget-object v1, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/android/browser/model/ReadingModePageDataProvider$JSTask;->getState()Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;

    move-result-object v1

    sget-object v2, Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;->State_Canceled:Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;

    if-eq v1, v2, :cond_3

    invoke-virtual {v0}, Lcom/android/browser/model/ReadingModePageDataProvider$JSTask;->getView()Landroid/webkit/WebView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mView:Lcom/android/browser/ui/MiRenWebViewBase;

    if-ne v1, v2, :cond_3

    .line 243
    iget-object v1, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mController:Lcom/android/browser/controller/ReadingController;

    iget-object v2, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mContent:Ljava/lang/String;

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    invoke-interface {v1, p0, v2}, Lcom/android/browser/controller/ReadingController;->onReadingDataReady(Lcom/android/browser/model/ReadingModePageDataProvider;Z)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 245
    :cond_3
    iget-object v1, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 246
    iget-object v1, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #task:Lcom/android/browser/model/ReadingModePageDataProvider$JSTask;
    check-cast v0, Lcom/android/browser/model/ReadingModePageDataProvider$JSTask;

    .line 248
    .restart local v0       #task:Lcom/android/browser/model/ReadingModePageDataProvider$JSTask;
    :goto_2
    invoke-virtual {v0}, Lcom/android/browser/model/ReadingModePageDataProvider$JSTask;->getState()Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;

    move-result-object v1

    sget-object v2, Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;->State_Canceled:Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 249
    iget-object v1, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    .line 250
    iget-object v1, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #task:Lcom/android/browser/model/ReadingModePageDataProvider$JSTask;
    check-cast v0, Lcom/android/browser/model/ReadingModePageDataProvider$JSTask;

    .restart local v0       #task:Lcom/android/browser/model/ReadingModePageDataProvider$JSTask;
    goto :goto_2

    .line 252
    :cond_4
    invoke-virtual {v0}, Lcom/android/browser/model/ReadingModePageDataProvider$JSTask;->getState()Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;

    move-result-object v1

    sget-object v2, Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;->State_Normal:Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;

    if-ne v1, v2, :cond_0

    .line 253
    invoke-virtual {v0}, Lcom/android/browser/model/ReadingModePageDataProvider$JSTask;->execute()V

    goto :goto_0
.end method

.method private tryNextContentPath()V
    .locals 5

    .prologue
    const-string v4, "\'"

    .line 176
    iget v1, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mCurrentContentPathCount:I

    iget-object v2, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mContentXPaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 178
    sget-object v1, Lcom/android/browser/model/ReadingModePageDataProvider;->LOGTAG:Ljava/lang/String;

    const-string v2, "content not found"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mContent:Ljava/lang/String;

    .line 193
    :goto_0
    return-void

    .line 182
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mContentXPaths:Ljava/util/ArrayList;

    iget v3, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mCurrentContentPathCount:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\',\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mAdsXPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const-string v1, "js/xpath.js"

    const-string v2, "getContentHTMLFromXPath"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/android/browser/model/ReadingModePageDataProvider;->insertJSTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget v1, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mCurrentContentPathCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mCurrentContentPathCount:I

    goto :goto_0
.end method

.method private tryNextLinkPath()V
    .locals 6

    .prologue
    const-string v5, "\'"

    .line 215
    iget v0, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mCurrentNextLinkPathCount:I

    iget-object v1, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mNextLinkXPaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 216
    sget-object v0, Lcom/android/browser/model/ReadingModePageDataProvider;->LOGTAG:Ljava/lang/String;

    const-string v1, "link not found"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mNextUrl:Ljava/lang/String;

    .line 225
    :goto_0
    return-void

    .line 220
    :cond_0
    const-string v1, "js/xpath.js"

    const-string v2, "getNextLinkFromXPath"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mNextLinkXPaths:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mCurrentNextLinkPathCount:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/browser/model/ReadingModePageDataProvider;->insertJSTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget v0, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mCurrentNextLinkPathCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mCurrentNextLinkPathCount:I

    goto :goto_0
.end method

.method private tryNextTitlePath()V
    .locals 6

    .prologue
    const-string v5, "\'"

    .line 196
    iget v0, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mCurrentTitlePathCount:I

    iget-object v1, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mTitleXPaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 197
    sget-object v0, Lcom/android/browser/model/ReadingModePageDataProvider;->LOGTAG:Ljava/lang/String;

    const-string v1, "title not found"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mTitle:Ljava/lang/String;

    .line 212
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mTitleXPaths:Ljava/util/ArrayList;

    iget v1, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mCurrentTitlePathCount:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 202
    const-string v1, "js/xpath.js"

    const-string v2, "getTitleHTMLFromXPath"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mTitleXPaths:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mCurrentTitlePathCount:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\'"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/browser/model/ReadingModePageDataProvider;->insertJSTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget v0, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mCurrentTitlePathCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mCurrentTitlePathCount:I

    goto :goto_0

    .line 209
    :cond_1
    iget v0, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mCurrentTitlePathCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mCurrentTitlePathCount:I

    .line 210
    invoke-direct {p0}, Lcom/android/browser/model/ReadingModePageDataProvider;->tryNextTitlePath()V

    goto :goto_0
.end method

.method private tryToGetComments()V
    .locals 5

    .prologue
    const-string v4, "\'"

    .line 169
    const-string v0, "js/xpath.js"

    const-string v1, "getCommentsHTMLFromXPath"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mCommentsXPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/android/browser/model/ReadingModePageDataProvider;->insertJSTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void
.end method


# virtual methods
.method public cancelQuery()V
    .locals 4

    .prologue
    .line 157
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 158
    iget-object v2, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/model/ReadingModePageDataProvider$JSTask;

    .line 159
    .local v1, task:Lcom/android/browser/model/ReadingModePageDataProvider$JSTask;
    invoke-virtual {v1}, Lcom/android/browser/model/ReadingModePageDataProvider$JSTask;->getState()Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;

    move-result-object v2

    sget-object v3, Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;->State_Executing:Lcom/android/browser/model/ReadingModePageDataProvider$TaskStateEnum;

    if-eq v2, v3, :cond_0

    .line 160
    iget-object v2, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mTaskQueue:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 162
    :cond_0
    invoke-virtual {v1}, Lcom/android/browser/model/ReadingModePageDataProvider$JSTask;->cancelTask()V

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    .end local v1           #task:Lcom/android/browser/model/ReadingModePageDataProvider$JSTask;
    :cond_1
    return-void
.end method

.method public doQuery(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter "commentsXPath"
    .parameter "firstPage"
    .parameter "adsXPath"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, contentXPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, titleXPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p3, nextLinkXPaths:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 76
    iget-object v2, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mView:Lcom/android/browser/ui/MiRenWebViewBase;

    if-nez v2, :cond_0

    .line 95
    :goto_0
    return-void

    .line 79
    :cond_0
    iput-object p1, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mContentXPaths:Ljava/util/ArrayList;

    .line 80
    iput-object p2, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mTitleXPaths:Ljava/util/ArrayList;

    .line 81
    iput-object p3, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mNextLinkXPaths:Ljava/util/ArrayList;

    .line 82
    iput-object p4, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mCommentsXPath:Ljava/lang/String;

    .line 83
    iput v3, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mCurrentContentPathCount:I

    .line 84
    iput v3, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mCurrentTitlePathCount:I

    .line 85
    iput v3, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mCurrentNextLinkPathCount:I

    .line 86
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mImageUrl:Ljava/lang/String;

    .line 87
    iput-object p5, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mFirstPage:Ljava/lang/String;

    .line 88
    if-nez p6, :cond_1

    const-string v2, ""

    :goto_1
    iput-object v2, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mAdsXPath:Ljava/lang/String;

    .line 91
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 92
    .local v0, handle:Landroid/os/Handler;
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 93
    .local v1, message:Landroid/os/Message;
    iput v3, v1, Landroid/os/Message;->what:I

    .line 94
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .end local v0           #handle:Landroid/os/Handler;
    .end local v1           #message:Landroid/os/Message;
    :cond_1
    move-object v2, p6

    .line 88
    goto :goto_1
.end method

.method public getComments()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mComments:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getNextLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mNextUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPageTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewBase;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewBase;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Lcom/android/browser/ui/MiRenWebViewBase;)V
    .locals 3
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 59
    iget-object v0, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mView:Lcom/android/browser/ui/MiRenWebViewBase;

    if-eq v0, p1, :cond_0

    .line 60
    iput-object p1, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mView:Lcom/android/browser/ui/MiRenWebViewBase;

    .line 61
    new-instance v0, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;

    invoke-direct {v0, p0, v2}, Lcom/android/browser/model/ReadingModePageDataProvider$BackgroundViewJSInterface;-><init>(Lcom/android/browser/model/ReadingModePageDataProvider;Lcom/android/browser/model/ReadingModePageDataProvider$1;)V

    const-string v1, "reading"

    invoke-virtual {p1, v0, v1}, Lcom/android/browser/ui/MiRenWebViewBase;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    :cond_0
    iput-object v2, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mContent:Ljava/lang/String;

    .line 64
    iput-object v2, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mTitle:Ljava/lang/String;

    .line 65
    iput-object v2, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mNextUrl:Ljava/lang/String;

    .line 66
    iput-object v2, p0, Lcom/android/browser/model/ReadingModePageDataProvider;->mFirstPage:Ljava/lang/String;

    .line 67
    return-void
.end method
