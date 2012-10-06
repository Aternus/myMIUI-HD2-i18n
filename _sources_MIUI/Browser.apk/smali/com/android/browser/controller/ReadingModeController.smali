.class public Lcom/android/browser/controller/ReadingModeController;
.super Ljava/lang/Object;
.source "ReadingModeController.java"

# interfaces
.implements Lcom/android/browser/controller/ReadingController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/controller/ReadingModeController$ReadingData;,
        Lcom/android/browser/controller/ReadingModeController$ReadingDataRunnable;,
        Lcom/android/browser/controller/ReadingModeController$UiCallRunnable;,
        Lcom/android/browser/controller/ReadingModeController$ReadingJSInterface;,
        Lcom/android/browser/controller/ReadingModeController$BackgroundWebViewClient;
    }
.end annotation


# static fields
.field private static LOGTAG:Ljava/lang/String; = null

.field private static final MAX_RETRY:I = 0x2

.field private static final PAGES_TO_NOTIFY_CACHE:I = 0xa

.field private static final RETRY_INTERVAL:I = 0x1388


# instance fields
.field mBackgroundProvider:Lcom/android/browser/model/ReadingModePageDataProvider;

.field private mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

.field private mBaseUrl:Ljava/lang/String;

.field private mCacheController:Lcom/android/browser/controller/ReadingModeCacheController;

.field private mCanceled:Z

.field private mCurrentTitle:Ljava/lang/String;

.field private mCurrentUrl:Ljava/lang/String;

.field private mDelayLoadScript:Ljava/lang/String;

.field mForegroundProvider:Lcom/android/browser/model/ReadingModePageDataProvider;

.field private mId:J

.field private mLoadOriginalPage:Z

.field private mNextUrl:Ljava/lang/String;

.field private mNotify:Z

.field mPageDataProvider:Lcom/android/browser/model/ReadingModePageDataProvider;

.field private mPreviousPageInCache:Z

.field private mReadPages:I

.field private mReadingData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/controller/ReadingModeController$ReadingData;",
            ">;"
        }
    .end annotation
.end field

.field private mRetry:I

.field private mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

.field private mRuleProvider:Lcom/android/browser/model/ReadingModeRuleProvider;

.field private mShowReading:Z

.field private mUserAgent:Ljava/lang/String;

.field private mView:Lcom/android/browser/ui/MiRenWebViewCore;

.field private mWmlParser:Lcom/android/browser/util/WMLParserSax;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "com.android.browser.controller.ReadingModeController"

    sput-object v0, Lcom/android/browser/controller/ReadingModeController;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/browser/ui/MiRenWebViewCore;)V
    .locals 4
    .parameter "view"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mReadingData:Ljava/util/ArrayList;

    .line 68
    iput-boolean v2, p0, Lcom/android/browser/controller/ReadingModeController;->mNotify:Z

    .line 69
    iput-boolean v2, p0, Lcom/android/browser/controller/ReadingModeController;->mCanceled:Z

    .line 71
    iput-object v3, p0, Lcom/android/browser/controller/ReadingModeController;->mWmlParser:Lcom/android/browser/util/WMLParserSax;

    .line 72
    new-instance v0, Lcom/android/browser/controller/ReadingModeCacheController;

    invoke-direct {v0}, Lcom/android/browser/controller/ReadingModeCacheController;-><init>()V

    iput-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mCacheController:Lcom/android/browser/controller/ReadingModeCacheController;

    .line 74
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/browser/controller/ReadingModeController;->mId:J

    .line 76
    iput v2, p0, Lcom/android/browser/controller/ReadingModeController;->mRetry:I

    .line 77
    iput v2, p0, Lcom/android/browser/controller/ReadingModeController;->mReadPages:I

    .line 78
    iput-boolean v2, p0, Lcom/android/browser/controller/ReadingModeController;->mPreviousPageInCache:Z

    .line 82
    new-instance v0, Lcom/android/browser/model/ReadingModePageDataProvider;

    invoke-direct {v0, p0}, Lcom/android/browser/model/ReadingModePageDataProvider;-><init>(Lcom/android/browser/controller/ReadingController;)V

    iput-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mForegroundProvider:Lcom/android/browser/model/ReadingModePageDataProvider;

    .line 84
    new-instance v0, Lcom/android/browser/model/ReadingModePageDataProvider;

    invoke-direct {v0, p0}, Lcom/android/browser/model/ReadingModePageDataProvider;-><init>(Lcom/android/browser/controller/ReadingController;)V

    iput-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mBackgroundProvider:Lcom/android/browser/model/ReadingModePageDataProvider;

    .line 87
    iput-object v3, p0, Lcom/android/browser/controller/ReadingModeController;->mPageDataProvider:Lcom/android/browser/model/ReadingModePageDataProvider;

    .line 90
    iput-object p1, p0, Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;

    .line 91
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;

    new-instance v1, Lcom/android/browser/controller/ReadingModeController$ReadingJSInterface;

    invoke-direct {v1, p0}, Lcom/android/browser/controller/ReadingModeController$ReadingJSInterface;-><init>(Lcom/android/browser/controller/ReadingModeController;)V

    const-string v2, "controller"

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/ui/MiRenWebViewCore;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mForegroundProvider:Lcom/android/browser/model/ReadingModePageDataProvider;

    invoke-virtual {v0, p1}, Lcom/android/browser/model/ReadingModePageDataProvider;->init(Lcom/android/browser/ui/MiRenWebViewBase;)V

    .line 93
    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/android/browser/controller/ReadingModeController;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/browser/controller/ReadingModeController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/browser/controller/ReadingModeController;)Lcom/android/browser/util/WMLParserSax;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mWmlParser:Lcom/android/browser/util/WMLParserSax;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/browser/controller/ReadingModeController;Lcom/android/browser/util/WMLParserSax;)Lcom/android/browser/util/WMLParserSax;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/browser/controller/ReadingModeController;->mWmlParser:Lcom/android/browser/util/WMLParserSax;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/browser/controller/ReadingModeController;)Lcom/android/browser/ui/MiRenWebViewBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/browser/controller/ReadingModeController;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mReadingData:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/browser/controller/ReadingModeController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mCurrentTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/browser/controller/ReadingModeController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/browser/controller/ReadingModeController;->mCurrentTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/browser/controller/ReadingModeController;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/android/browser/controller/ReadingModeController;->mId:J

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/android/browser/controller/ReadingModeController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/browser/controller/ReadingModeController;->mLoadOriginalPage:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/browser/controller/ReadingModeController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/browser/controller/ReadingModeController;->mLoadOriginalPage:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/browser/controller/ReadingModeController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mDelayLoadScript:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/browser/controller/ReadingModeController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/browser/controller/ReadingModeController;->mDelayLoadScript:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/browser/controller/ReadingModeController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/browser/controller/ReadingModeController;->mNotify:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/browser/controller/ReadingModeController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-boolean p1, p0, Lcom/android/browser/controller/ReadingModeController;->mNotify:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/android/browser/controller/ReadingModeController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/browser/controller/ReadingModeController;->mReadPages:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/browser/controller/ReadingModeController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/android/browser/controller/ReadingModeController;->mReadPages:I

    return p1
.end method

.method static synthetic access$1908(Lcom/android/browser/controller/ReadingModeController;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/browser/controller/ReadingModeController;->mReadPages:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/browser/controller/ReadingModeController;->mReadPages:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/browser/controller/ReadingModeController;)Lcom/android/browser/model/ReadingModeRuleProvider$Rule;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/browser/controller/ReadingModeController;)Lcom/android/browser/controller/ReadingModeCacheController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mCacheController:Lcom/android/browser/controller/ReadingModeCacheController;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/browser/controller/ReadingModeController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-boolean v0, p0, Lcom/android/browser/controller/ReadingModeController;->mCanceled:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/browser/controller/ReadingModeController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/browser/controller/ReadingModeController;->mRetry:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/browser/controller/ReadingModeController;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput p1, p0, Lcom/android/browser/controller/ReadingModeController;->mRetry:I

    return p1
.end method

.method static synthetic access$408(Lcom/android/browser/controller/ReadingModeController;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 50
    iget v0, p0, Lcom/android/browser/controller/ReadingModeController;->mRetry:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/browser/controller/ReadingModeController;->mRetry:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/browser/controller/ReadingModeController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/android/browser/controller/ReadingModeController;->getNextPage()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/browser/controller/ReadingModeController;)Lcom/android/browser/ui/MiRenWebViewCore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/browser/controller/ReadingModeController;Ljava/net/URI;Lcom/android/browser/controller/ReadingModeController$ReadingData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/android/browser/controller/ReadingModeController;->getNextPageFromHost(Ljava/net/URI;Lcom/android/browser/controller/ReadingModeController$ReadingData;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/browser/controller/ReadingModeController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mCurrentUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/browser/controller/ReadingModeController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/browser/controller/ReadingModeController;->mCurrentUrl:Ljava/lang/String;

    return-object p1
.end method

.method private clearData(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 457
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeController;->mReadingData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 458
    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeController;->mReadingData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/controller/ReadingModeController$ReadingData;

    .line 459
    .local v0, data:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    iget-object v2, v0, Lcom/android/browser/controller/ReadingModeController$ReadingData;->url:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 464
    .end local v0           #data:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    :cond_0
    return-void

    .line 462
    .restart local v0       #data:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    :cond_1
    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeController;->mReadingData:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method private createBackgroundView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 468
    iget-object v1, p0, Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-static {v1}, Lcom/android/browser/util/MiRenWebViewUtils;->createBackgroundWebView(Lcom/android/browser/ui/MiRenWebViewCore;)Lcom/android/browser/ui/MiRenWebViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/controller/ReadingModeController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    .line 469
    iget-object v1, p0, Lcom/android/browser/controller/ReadingModeController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    if-nez v1, :cond_0

    .line 480
    :goto_0
    return-void

    .line 472
    :cond_0
    iget-object v1, p0, Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v1}, Lcom/android/browser/ui/MiRenWebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgent()I

    move-result v0

    .line 473
    .local v0, userAgent:I
    if-eqz v0, :cond_1

    .line 474
    iget-object v1, p0, Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v1}, Lcom/android/browser/ui/MiRenWebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/controller/ReadingModeController;->mUserAgent:Ljava/lang/String;

    .line 479
    :goto_1
    iget-object v1, p0, Lcom/android/browser/controller/ReadingModeController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    new-instance v2, Lcom/android/browser/controller/ReadingModeController$BackgroundWebViewClient;

    invoke-direct {v2, p0, v3}, Lcom/android/browser/controller/ReadingModeController$BackgroundWebViewClient;-><init>(Lcom/android/browser/controller/ReadingModeController;Lcom/android/browser/controller/ReadingModeController$1;)V

    invoke-virtual {v1, v2}, Lcom/android/browser/ui/MiRenWebViewBase;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    goto :goto_0

    .line 477
    :cond_1
    iput-object v3, p0, Lcom/android/browser/controller/ReadingModeController;->mUserAgent:Ljava/lang/String;

    goto :goto_1
.end method

.method private getNextPage()V
    .locals 9

    .prologue
    .line 483
    iget-object v6, p0, Lcom/android/browser/controller/ReadingModeController;->mNextUrl:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/browser/common/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 537
    :goto_0
    return-void

    .line 490
    :cond_0
    :try_start_0
    iget-object v6, p0, Lcom/android/browser/controller/ReadingModeController;->mReadingData:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_1

    .line 492
    iget-object v6, p0, Lcom/android/browser/controller/ReadingModeController;->mReadingData:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/browser/controller/ReadingModeController;->mReadingData:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x2

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/browser/controller/ReadingModeController$ReadingData;

    .line 493
    .local v5, readData:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    iget-object v6, p0, Lcom/android/browser/controller/ReadingModeController;->mCacheController:Lcom/android/browser/controller/ReadingModeCacheController;

    iget-object v7, v5, Lcom/android/browser/controller/ReadingModeController$ReadingData;->url:Ljava/lang/String;

    invoke-virtual {v6, v7}, Lcom/android/browser/controller/ReadingModeCacheController;->markAsRead(Ljava/lang/String;)V

    .line 496
    .end local v5           #readData:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    :cond_1
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/browser/controller/ReadingModeController;->mCanceled:Z

    .line 497
    new-instance v1, Ljava/net/URI;

    iget-object v6, p0, Lcom/android/browser/controller/ReadingModeController;->mBaseUrl:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 498
    .local v1, baseUri:Ljava/net/URI;
    new-instance v4, Ljava/net/URI;

    iget-object v6, p0, Lcom/android/browser/controller/ReadingModeController;->mNextUrl:Ljava/lang/String;

    invoke-direct {v4, v6}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 499
    .local v4, nextUri:Ljava/net/URI;
    invoke-virtual {v4}, Ljava/net/URI;->isAbsolute()Z

    move-result v6

    if-nez v6, :cond_2

    .line 500
    invoke-virtual {v1, v4}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v4

    .line 504
    :cond_2
    invoke-virtual {v4}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/browser/model/ReadingModeCacheManager;->getCachedData(Ljava/lang/String;)Lcom/android/browser/controller/ReadingModeController$ReadingData;

    move-result-object v2

    .line 505
    .local v2, data:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    if-nez v2, :cond_3

    iget-object v6, p0, Lcom/android/browser/controller/ReadingModeController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    iget v6, v6, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->mcacheKeepAlive:I

    if-lez v6, :cond_3

    .line 506
    move-object v0, v4

    .line 507
    .local v0, _nextUri:Ljava/net/URI;
    new-instance v6, Lcom/android/browser/controller/ReadingModeController$2;

    invoke-direct {v6, p0, v0}, Lcom/android/browser/controller/ReadingModeController$2;-><init>(Lcom/android/browser/controller/ReadingModeController;Ljava/net/URI;)V

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Void;

    invoke-virtual {v6, v7}, Lcom/android/browser/controller/ReadingModeController$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 532
    .end local v0           #_nextUri:Ljava/net/URI;
    .end local v1           #baseUri:Ljava/net/URI;
    .end local v2           #data:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    .end local v4           #nextUri:Ljava/net/URI;
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 533
    .local v3, e:Ljava/net/URISyntaxException;
    sget-object v6, Lcom/android/browser/controller/ReadingModeController;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/net/URISyntaxException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 530
    .end local v3           #e:Ljava/net/URISyntaxException;
    .restart local v1       #baseUri:Ljava/net/URI;
    .restart local v2       #data:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    .restart local v4       #nextUri:Ljava/net/URI;
    :cond_3
    :try_start_1
    invoke-direct {p0, v4, v2}, Lcom/android/browser/controller/ReadingModeController;->getNextPageFromHost(Ljava/net/URI;Lcom/android/browser/controller/ReadingModeController$ReadingData;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 534
    .end local v1           #baseUri:Ljava/net/URI;
    .end local v2           #data:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    .end local v4           #nextUri:Ljava/net/URI;
    :catch_1
    move-exception v6

    move-object v3, v6

    .line 535
    .local v3, e:Ljava/io/IOException;
    sget-object v6, Lcom/android/browser/controller/ReadingModeController;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getNextPageFromHost(Ljava/net/URI;Lcom/android/browser/controller/ReadingModeController$ReadingData;)V
    .locals 12
    .parameter "nextUri"
    .parameter "data"

    .prologue
    const v2, 0x7f090033

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 540
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    if-nez v0, :cond_1

    .line 703
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    if-eqz p2, :cond_5

    .line 548
    iget-object v0, p2, Lcom/android/browser/controller/ReadingModeController$ReadingData;->nextLink:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mNextUrl:Ljava/lang/String;

    .line 550
    iget-boolean v0, p0, Lcom/android/browser/controller/ReadingModeController;->mShowReading:Z

    if-eqz v0, :cond_3

    .line 551
    iget-object v8, p2, Lcom/android/browser/controller/ReadingModeController$ReadingData;->title:Ljava/lang/String;

    .line 552
    .local v8, title:Ljava/lang/String;
    iget-object v0, p2, Lcom/android/browser/controller/ReadingModeController$ReadingData;->content:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/browser/controller/ReadingModeController$ReadingData;->comments:Ljava/lang/String;

    invoke-virtual {p0, v8, v0, v1}, Lcom/android/browser/controller/ReadingModeController;->addNewReadingPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    const/4 v6, 0x0

    .line 555
    .local v6, currentData:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mReadingData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 557
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mReadingData:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/browser/controller/ReadingModeController;->mReadingData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #currentData:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    check-cast v6, Lcom/android/browser/controller/ReadingModeController$ReadingData;

    .line 561
    .restart local v6       #currentData:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    :goto_1
    iget-object v0, v6, Lcom/android/browser/controller/ReadingModeController$ReadingData;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mCurrentUrl:Ljava/lang/String;

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v1}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v6, Lcom/android/browser/controller/ReadingModeController$ReadingData;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mCurrentTitle:Ljava/lang/String;

    .line 565
    iget-wide v0, p0, Lcom/android/browser/controller/ReadingModeController;->mId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 566
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/browser/controller/ReadingModeController;->mId:J

    iget-object v3, p0, Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v3}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/browser/controller/ReadingModeController;->mCurrentUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/browser/controller/ReadingModeController;->mCurrentTitle:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/android/browser/api_v8/Bookmarks;->updateUrlAndTitleById(Landroid/content/Context;JLandroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    :cond_2
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->getListener()Lcom/android/browser/ui/MiRenWebViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/browser/ui/MiRenWebViewListener;->updateTitle()V

    .line 570
    iput-boolean v10, p0, Lcom/android/browser/controller/ReadingModeController;->mNotify:Z

    .line 572
    .end local v6           #currentData:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    .end local v8           #title:Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mReadingData:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 574
    iput-boolean v11, p0, Lcom/android/browser/controller/ReadingModeController;->mPreviousPageInCache:Z

    .line 576
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->onPageDataFinish()V

    goto/16 :goto_0

    .line 559
    .restart local v6       #currentData:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    .restart local v8       #title:Ljava/lang/String;
    :cond_4
    move-object v6, p2

    goto :goto_1

    .line 581
    .end local v6           #currentData:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    .end local v8           #title:Ljava/lang/String;
    :cond_5
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mNextUrl:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/browser/common/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 586
    iget-boolean v0, p0, Lcom/android/browser/controller/ReadingModeController;->mPreviousPageInCache:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/browser/util/DownloadHelpers;->isWifiAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 589
    invoke-virtual {p0}, Lcom/android/browser/controller/ReadingModeController;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0900c5

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 591
    :cond_6
    iput-boolean v10, p0, Lcom/android/browser/controller/ReadingModeController;->mPreviousPageInCache:Z

    .line 594
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    if-eqz v0, :cond_7

    .line 596
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mPageDataProvider:Lcom/android/browser/model/ReadingModePageDataProvider;

    invoke-virtual {v0}, Lcom/android/browser/model/ReadingModePageDataProvider;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mPageDataProvider:Lcom/android/browser/model/ReadingModePageDataProvider;

    invoke-virtual {v0}, Lcom/android/browser/model/ReadingModePageDataProvider;->getPageTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 598
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mPageDataProvider:Lcom/android/browser/model/ReadingModePageDataProvider;

    invoke-virtual {v0}, Lcom/android/browser/model/ReadingModePageDataProvider;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mCurrentUrl:Ljava/lang/String;

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v1}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/controller/ReadingModeController;->mPageDataProvider:Lcom/android/browser/model/ReadingModePageDataProvider;

    invoke-virtual {v1}, Lcom/android/browser/model/ReadingModePageDataProvider;->getPageTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mCurrentTitle:Ljava/lang/String;

    .line 600
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->getListener()Lcom/android/browser/ui/MiRenWebViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/browser/ui/MiRenWebViewListener;->updateTitle()V

    .line 601
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/browser/controller/ReadingModeController;->mId:J

    iget-object v3, p0, Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v3}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/browser/controller/ReadingModeController;->mCurrentUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/browser/controller/ReadingModeController;->mCurrentTitle:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/android/browser/api_v8/Bookmarks;->updateUrlAndTitleById(Landroid/content/Context;JLandroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    :cond_7
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mNextUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 612
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    if-nez v0, :cond_8

    .line 613
    invoke-direct {p0}, Lcom/android/browser/controller/ReadingModeController;->createBackgroundView()V

    .line 614
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mBackgroundProvider:Lcom/android/browser/model/ReadingModePageDataProvider;

    iget-object v1, p0, Lcom/android/browser/controller/ReadingModeController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-virtual {v0, v1}, Lcom/android/browser/model/ReadingModePageDataProvider;->init(Lcom/android/browser/ui/MiRenWebViewBase;)V

    .line 622
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mBackgroundProvider:Lcom/android/browser/model/ReadingModePageDataProvider;

    iput-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mPageDataProvider:Lcom/android/browser/model/ReadingModePageDataProvider;

    .line 623
    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "javascript"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 626
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    iget-object v1, p0, Lcom/android/browser/controller/ReadingModeController;->mBaseUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenWebViewBase;->loadUrl(Ljava/lang/String;)V

    .line 627
    iput-boolean v11, p0, Lcom/android/browser/controller/ReadingModeController;->mLoadOriginalPage:Z

    goto/16 :goto_0

    .line 631
    :cond_8
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    iget-boolean v0, v0, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->isWapSite:Z

    if-eqz v0, :cond_a

    .line 634
    sget-boolean v0, Lcom/android/browser/ui/MiRenBrowserActivity;->isInTest:Z

    if-eqz v0, :cond_9

    .line 635
    sget-object v0, Lcom/android/browser/controller/ReadingModeController;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "is wap site: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/browser/controller/ReadingModeController$ReadingData;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 637
    :cond_9
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v9

    .line 638
    .local v9, url:Ljava/net/URL;
    new-instance v0, Lcom/android/browser/controller/ReadingModeController$3;

    invoke-direct {v0, p0, v9}, Lcom/android/browser/controller/ReadingModeController$3;-><init>(Lcom/android/browser/controller/ReadingModeController;Ljava/net/URL;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/browser/controller/ReadingModeController$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 696
    .end local v9           #url:Ljava/net/URL;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 697
    .local v7, e:Ljava/net/MalformedURLException;
    sget-object v0, Lcom/android/browser/controller/ReadingModeController;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is not valid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 701
    .end local v7           #e:Ljava/net/MalformedURLException;
    :cond_a
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenWebViewBase;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getRuleProvider()Lcom/android/browser/model/ReadingModeRuleProvider;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mRuleProvider:Lcom/android/browser/model/ReadingModeRuleProvider;

    if-nez v0, :cond_1

    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mRuleProvider:Lcom/android/browser/model/ReadingModeRuleProvider;

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/browser/model/ReadingModeRuleProvider;->getInstance(Landroid/content/Context;)Lcom/android/browser/model/ReadingModeRuleProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mRuleProvider:Lcom/android/browser/model/ReadingModeRuleProvider;

    .line 100
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mRuleProvider:Lcom/android/browser/model/ReadingModeRuleProvider;

    return-object v0

    .line 100
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private onEnterFirstPage(Ljava/lang/String;)V
    .locals 6
    .parameter "url"

    .prologue
    const/4 v5, 0x0

    .line 436
    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    if-nez v2, :cond_1

    .line 454
    :cond_0
    :goto_0
    return-void

    .line 438
    :cond_1
    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    iget-boolean v2, v2, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->isCacheable:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v2}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/browser/util/DownloadHelpers;->isWifiAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 439
    invoke-virtual {p0}, Lcom/android/browser/controller/ReadingModeController;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0900c6

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 449
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeController;->mUserAgent:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 450
    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v2}, Lcom/android/browser/ui/MiRenWebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/controller/ReadingModeController;->mUserAgent:Ljava/lang/String;

    .line 452
    :cond_3
    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    iget-boolean v2, v2, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->isCacheable:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v2}, Lcom/android/browser/ui/MiRenWebViewCore;->getListener()Lcom/android/browser/ui/MiRenWebViewListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/browser/ui/MiRenWebViewListener;->isCurrent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 453
    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeController;->mCacheController:Lcom/android/browser/controller/ReadingModeCacheController;

    iget-object v3, p0, Lcom/android/browser/controller/ReadingModeController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    iget-object v4, p0, Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v4}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/browser/controller/ReadingModeController;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/android/browser/controller/ReadingModeCacheController;->startCache(Ljava/lang/String;Lcom/android/browser/model/ReadingModeRuleProvider$Rule;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 442
    :cond_4
    invoke-static {p1}, Lcom/android/browser/model/ReadingModeCacheManager;->getCachedPageNumber(Ljava/lang/String;)I

    move-result v0

    .line 443
    .local v0, cachedPageNum:I
    if-lez v0, :cond_2

    .line 444
    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v2}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0900c7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, text:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/browser/controller/ReadingModeController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method

.method public static preprocessWapHTML(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "wapHTML"

    .prologue
    const/4 v8, -0x1

    .line 752
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 754
    .local v1, builder:Ljava/lang/StringBuilder;
    const-string v6, "<br( /)?>"

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 755
    .local v5, lines:[Ljava/lang/String;
    move-object v0, v5

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 756
    .local v4, line:Ljava/lang/String;
    const-string v6, "<a"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v8, :cond_0

    const-string v6, "<button"

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v8, :cond_0

    .line 757
    const-string v6, "\'"

    const-string v7, "\""

    invoke-virtual {v4, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 758
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 759
    const-string v6, "<br>"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 763
    .end local v4           #line:Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method public addNewReadingPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "title"
    .parameter "content"
    .parameter "comments"

    .prologue
    const-string v5, "\';"

    .line 308
    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v2}, Lcom/android/browser/ui/MiRenWebViewCore;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    move-object v0, p1

    .line 313
    .local v0, _title:Ljava/lang/String;
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeController;->mReadingData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeController;->mReadingData:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/browser/controller/ReadingModeController;->mReadingData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/browser/controller/ReadingModeController$ReadingData;

    iget-object v2, v2, Lcom/android/browser/controller/ReadingModeController$ReadingData;->title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 315
    const/4 v0, 0x0

    .line 317
    :cond_2
    invoke-static {p2}, Lcom/android/browser/util/MiRenWebViewUtils;->processImageElements(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 318
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "var contentHTML=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\';"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "appendPage();setContent(contentHTML);"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 319
    .local v1, code:Ljava/lang/String;
    if-eqz v0, :cond_3

    .line 320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "var titleHTML=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\';"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "setTitle(titleHTML);"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 322
    :cond_3
    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeController;->mNextUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "var commentsHTML=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\';"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "setComments(commentsHTML);"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 325
    :cond_4
    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-static {v2, v1}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;)V

    .line 326
    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeController;->mNextUrl:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/browser/common/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 327
    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;

    const-string v3, "hideLoading();"

    invoke-static {v2, v3}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public cancelLoad()V
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mPageDataProvider:Lcom/android/browser/model/ReadingModePageDataProvider;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mPageDataProvider:Lcom/android/browser/model/ReadingModePageDataProvider;

    invoke-virtual {v0}, Lcom/android/browser/model/ReadingModePageDataProvider;->cancelQuery()V

    .line 216
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/controller/ReadingModeController;->mCanceled:Z

    .line 218
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mWmlParser:Lcom/android/browser/util/WMLParserSax;

    if-eqz v0, :cond_1

    .line 219
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mWmlParser:Lcom/android/browser/util/WMLParserSax;

    invoke-virtual {v0}, Lcom/android/browser/util/WMLParserSax;->cancelParsing()V

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    if-eqz v0, :cond_2

    .line 222
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewBase;->stopLoading()V

    .line 224
    :cond_2
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mCacheController:Lcom/android/browser/controller/ReadingModeCacheController;

    if-eqz v0, :cond_3

    .line 225
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mCacheController:Lcom/android/browser/controller/ReadingModeCacheController;

    invoke-virtual {v0}, Lcom/android/browser/controller/ReadingModeCacheController;->stopCache()V

    .line 227
    :cond_3
    return-void
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mBaseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mCurrentTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mCurrentUrl:Ljava/lang/String;

    return-object v0
.end method

.method public isReadingModeDataAvailable()Z
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReadingModeSupported(Ljava/lang/String;)Z
    .locals 2
    .parameter "url"

    .prologue
    .line 144
    invoke-direct {p0}, Lcom/android/browser/controller/ReadingModeController;->getRuleProvider()Lcom/android/browser/model/ReadingModeRuleProvider;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/browser/model/ReadingModeRuleProvider;->getRuleFromUrl(Ljava/lang/String;)Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    move-result-object v0

    .line 145
    .local v0, rule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isWapSite()Z
    .locals 1

    .prologue
    .line 897
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    if-nez v0, :cond_0

    .line 898
    const/4 v0, 0x0

    .line 900
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    iget-boolean v0, v0, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->isWapSite:Z

    goto :goto_0
.end method

.method public onBrowserPause()V
    .locals 0

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/android/browser/controller/ReadingModeController;->onWebViewPause()V

    .line 121
    invoke-static {}, Lcom/android/browser/model/ReadingModeCacheManager;->writeBackCachedList()V

    .line 122
    return-void
.end method

.method public onBrowserResume()V
    .locals 0

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/browser/controller/ReadingModeController;->onWebViewResume()V

    .line 132
    return-void
.end method

.method public onEnterReadingModeDirectly(Ljava/lang/String;)Z
    .locals 5
    .parameter "url"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 150
    invoke-virtual {p0}, Lcom/android/browser/controller/ReadingModeController;->cancelLoad()V

    .line 151
    invoke-direct {p0, p1}, Lcom/android/browser/controller/ReadingModeController;->clearData(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mReadingData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 154
    invoke-direct {p0}, Lcom/android/browser/controller/ReadingModeController;->getRuleProvider()Lcom/android/browser/model/ReadingModeRuleProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/browser/model/ReadingModeRuleProvider;->getRuleFromUrl(Ljava/lang/String;)Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    .line 155
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    if-nez v0, :cond_1

    .line 156
    sget-boolean v0, Lcom/android/browser/ui/MiRenBrowserActivity;->isInTest:Z

    if-eqz v0, :cond_0

    .line 157
    sget-object v0, Lcom/android/browser/controller/ReadingModeController;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL \u4e0d\u5728\u9605\u8bfb\u6a21\u5f0f\u89c4\u5219\u4e2d: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->onPageDataFinish()V

    move v0, v3

    .line 184
    :goto_0
    return v0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    if-eqz v0, :cond_2

    .line 163
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewBase;->destroy()V

    .line 164
    iput-object v4, p0, Lcom/android/browser/controller/ReadingModeController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    .line 167
    :cond_2
    iput-object p1, p0, Lcom/android/browser/controller/ReadingModeController;->mBaseUrl:Ljava/lang/String;

    .line 168
    iput-object p1, p0, Lcom/android/browser/controller/ReadingModeController;->mNextUrl:Ljava/lang/String;

    .line 169
    iput-object p1, p0, Lcom/android/browser/controller/ReadingModeController;->mCurrentUrl:Ljava/lang/String;

    .line 170
    const-string v0, ""

    iput-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mCurrentTitle:Ljava/lang/String;

    .line 171
    iput-boolean v2, p0, Lcom/android/browser/controller/ReadingModeController;->mShowReading:Z

    .line 172
    iput-boolean v2, p0, Lcom/android/browser/controller/ReadingModeController;->mNotify:Z

    .line 173
    iput v3, p0, Lcom/android/browser/controller/ReadingModeController;->mRetry:I

    .line 177
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/android/browser/controller/ReadingModeController$ReadingDataRunnable;

    invoke-direct {v1, p0, v4}, Lcom/android/browser/controller/ReadingModeController$ReadingDataRunnable;-><init>(Lcom/android/browser/controller/ReadingModeController;Lcom/android/browser/controller/ReadingModeController$1;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 178
    invoke-direct {p0, p1}, Lcom/android/browser/controller/ReadingModeController;->onEnterFirstPage(Ljava/lang/String;)V

    :goto_1
    move v0, v2

    .line 184
    goto :goto_0

    .line 182
    :cond_3
    invoke-virtual {p0}, Lcom/android/browser/controller/ReadingModeController;->setReadingModeOn()V

    goto :goto_1
.end method

.method public onReadingDataReady(Lcom/android/browser/model/ReadingModePageDataProvider;Z)V
    .locals 7
    .parameter "provider"
    .parameter "successful"

    .prologue
    const/4 v6, 0x0

    .line 333
    iget-object v4, p0, Lcom/android/browser/controller/ReadingModeController;->mPageDataProvider:Lcom/android/browser/model/ReadingModePageDataProvider;

    if-eq p1, v4, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    if-eqz p2, :cond_7

    .line 340
    iget-object v4, p0, Lcom/android/browser/controller/ReadingModeController;->mPageDataProvider:Lcom/android/browser/model/ReadingModePageDataProvider;

    if-eqz v4, :cond_0

    .line 344
    iget-object v4, p0, Lcom/android/browser/controller/ReadingModeController;->mPageDataProvider:Lcom/android/browser/model/ReadingModePageDataProvider;

    invoke-virtual {v4}, Lcom/android/browser/model/ReadingModePageDataProvider;->getContent()Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, contentHTML:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/browser/controller/ReadingModeController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/browser/controller/ReadingModeController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    iget-boolean v4, v4, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->isWapSite:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/browser/controller/ReadingModeController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    iget-boolean v4, v4, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->isWapLike:Z

    if-eqz v4, :cond_3

    .line 346
    :cond_2
    invoke-static {v1}, Lcom/android/browser/controller/ReadingModeController;->preprocessWapHTML(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 348
    :cond_3
    iget-object v4, p0, Lcom/android/browser/controller/ReadingModeController;->mPageDataProvider:Lcom/android/browser/model/ReadingModePageDataProvider;

    invoke-virtual {v4}, Lcom/android/browser/model/ReadingModePageDataProvider;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 349
    .local v3, titleHTML:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/browser/controller/ReadingModeController;->mPageDataProvider:Lcom/android/browser/model/ReadingModePageDataProvider;

    invoke-virtual {v4}, Lcom/android/browser/model/ReadingModePageDataProvider;->getNextLink()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/browser/controller/ReadingModeController;->mNextUrl:Ljava/lang/String;

    .line 350
    iget-object v4, p0, Lcom/android/browser/controller/ReadingModeController;->mPageDataProvider:Lcom/android/browser/model/ReadingModePageDataProvider;

    invoke-virtual {v4}, Lcom/android/browser/model/ReadingModePageDataProvider;->getComments()Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, commentsHTML:Ljava/lang/String;
    iget-boolean v4, p0, Lcom/android/browser/controller/ReadingModeController;->mShowReading:Z

    if-eqz v4, :cond_4

    .line 353
    invoke-virtual {p0, v3, v1, v0}, Lcom/android/browser/controller/ReadingModeController;->addNewReadingPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    :cond_4
    new-instance v2, Lcom/android/browser/controller/ReadingModeController$ReadingData;

    invoke-direct {v2}, Lcom/android/browser/controller/ReadingModeController$ReadingData;-><init>()V

    .line 358
    .local v2, data:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    iput-object v1, v2, Lcom/android/browser/controller/ReadingModeController$ReadingData;->content:Ljava/lang/String;

    .line 359
    iput-object v3, v2, Lcom/android/browser/controller/ReadingModeController$ReadingData;->title:Ljava/lang/String;

    .line 360
    iput-object v0, v2, Lcom/android/browser/controller/ReadingModeController$ReadingData;->comments:Ljava/lang/String;

    .line 361
    iget-object v4, p0, Lcom/android/browser/controller/ReadingModeController;->mNextUrl:Ljava/lang/String;

    iput-object v4, v2, Lcom/android/browser/controller/ReadingModeController$ReadingData;->nextLink:Ljava/lang/String;

    .line 362
    iget-object v4, p0, Lcom/android/browser/controller/ReadingModeController;->mPageDataProvider:Lcom/android/browser/model/ReadingModePageDataProvider;

    invoke-virtual {v4}, Lcom/android/browser/model/ReadingModePageDataProvider;->getUrl()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/browser/controller/ReadingModeController$ReadingData;->url:Ljava/lang/String;

    .line 363
    iget-object v4, p0, Lcom/android/browser/controller/ReadingModeController;->mPageDataProvider:Lcom/android/browser/model/ReadingModePageDataProvider;

    invoke-virtual {v4}, Lcom/android/browser/model/ReadingModePageDataProvider;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/browser/controller/ReadingModeController$ReadingData;->imageUrl:Ljava/lang/String;

    .line 365
    iget-object v4, p0, Lcom/android/browser/controller/ReadingModeController;->mReadingData:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 366
    iget-object v4, p0, Lcom/android/browser/controller/ReadingModeController;->mReadingData:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_5

    .line 367
    iput-boolean v6, p0, Lcom/android/browser/controller/ReadingModeController;->mNotify:Z

    .line 369
    :cond_5
    iget-object v4, p0, Lcom/android/browser/controller/ReadingModeController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    if-eqz v4, :cond_6

    .line 370
    iget-object v4, p0, Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v4}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/browser/controller/ReadingModeController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    iget v5, v5, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->mcacheKeepAlive:I

    invoke-static {v4, v2, v5}, Lcom/android/browser/util/ReadingDataUtil;->trySendMcacheDataAsync(Landroid/content/Context;Lcom/android/browser/controller/ReadingModeController$ReadingData;I)V

    .line 372
    :cond_6
    iget-object v4, p0, Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v4}, Lcom/android/browser/ui/MiRenWebViewCore;->onPageDataFinish()V

    .line 373
    iget-boolean v4, p0, Lcom/android/browser/controller/ReadingModeController;->mNotify:Z

    if-eqz v4, :cond_0

    .line 374
    iget-object v4, p0, Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v4}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    check-cast v4, Landroid/app/Activity;

    new-instance v5, Lcom/android/browser/controller/ReadingModeController$UiCallRunnable;

    invoke-direct {v5, p0, p2}, Lcom/android/browser/controller/ReadingModeController$UiCallRunnable;-><init>(Lcom/android/browser/controller/ReadingModeController;Z)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 377
    .end local v0           #commentsHTML:Ljava/lang/String;
    .end local v1           #contentHTML:Ljava/lang/String;
    .end local v2           #data:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    .end local v3           #titleHTML:Ljava/lang/String;
    :cond_7
    iget v4, p0, Lcom/android/browser/controller/ReadingModeController;->mRetry:I

    const/4 v5, 0x2

    if-ge v4, v5, :cond_8

    .line 379
    new-instance v4, Lcom/android/browser/controller/ReadingModeController$1;

    invoke-direct {v4, p0}, Lcom/android/browser/controller/ReadingModeController$1;-><init>(Lcom/android/browser/controller/ReadingModeController;)V

    new-array v5, v6, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/android/browser/controller/ReadingModeController$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 410
    :cond_8
    sget-boolean v4, Lcom/android/browser/ui/MiRenBrowserActivity;->isInTest:Z

    if-eqz v4, :cond_9

    .line 411
    sget-object v4, Lcom/android/browser/controller/ReadingModeController;->LOGTAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u5f53\u524d\u9605\u8bfb\u6a21\u5f0f\u4e0d\u53ef\u7528\uff01:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/browser/controller/ReadingModeController;->mCurrentUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :cond_9
    iget-object v4, p0, Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;

    const-string v5, "showRetry();"

    invoke-static {v4, v5}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;)V

    .line 414
    iget-boolean v4, p0, Lcom/android/browser/controller/ReadingModeController;->mNotify:Z

    if-eqz v4, :cond_0

    .line 415
    iget-object v4, p0, Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v4}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Landroid/app/Activity;

    check-cast v4, Landroid/app/Activity;

    new-instance v5, Lcom/android/browser/controller/ReadingModeController$UiCallRunnable;

    invoke-direct {v5, p0, p2}, Lcom/android/browser/controller/ReadingModeController$UiCallRunnable;-><init>(Lcom/android/browser/controller/ReadingModeController;Z)V

    invoke-virtual {v4, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public onWebViewDestroy()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mCacheController:Lcom/android/browser/controller/ReadingModeCacheController;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mCacheController:Lcom/android/browser/controller/ReadingModeCacheController;

    invoke-virtual {v0}, Lcom/android/browser/controller/ReadingModeCacheController;->destroy()V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mCacheController:Lcom/android/browser/controller/ReadingModeCacheController;

    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/controller/ReadingModeController;->cancelLoad()V

    .line 140
    return-void
.end method

.method public onWebViewPause()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mCacheController:Lcom/android/browser/controller/ReadingModeCacheController;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mCacheController:Lcom/android/browser/controller/ReadingModeCacheController;

    invoke-virtual {v0}, Lcom/android/browser/controller/ReadingModeCacheController;->pauseCache()V

    .line 117
    :cond_0
    return-void
.end method

.method public onWebViewResume()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mCacheController:Lcom/android/browser/controller/ReadingModeCacheController;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mCacheController:Lcom/android/browser/controller/ReadingModeCacheController;

    invoke-virtual {v0}, Lcom/android/browser/controller/ReadingModeCacheController;->resumeCache()V

    .line 128
    :cond_0
    return-void
.end method

.method public queryReadingHTML()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x1

    const/4 v3, 0x0

    .line 231
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->getLoadedUrl()Ljava/lang/String;

    move-result-object v7

    .line 235
    .local v7, url:Ljava/lang/String;
    invoke-direct {p0, v7}, Lcom/android/browser/controller/ReadingModeController;->clearData(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mReadingData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 239
    iput-object v7, p0, Lcom/android/browser/controller/ReadingModeController;->mBaseUrl:Ljava/lang/String;

    .line 241
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mForegroundProvider:Lcom/android/browser/model/ReadingModePageDataProvider;

    iput-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mPageDataProvider:Lcom/android/browser/model/ReadingModePageDataProvider;

    .line 242
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewBase;->destroy()V

    .line 244
    iput-object v1, p0, Lcom/android/browser/controller/ReadingModeController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    .line 246
    :cond_0
    iput-object v1, p0, Lcom/android/browser/controller/ReadingModeController;->mNextUrl:Ljava/lang/String;

    .line 248
    invoke-direct {p0}, Lcom/android/browser/controller/ReadingModeController;->getRuleProvider()Lcom/android/browser/model/ReadingModeRuleProvider;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/browser/model/ReadingModeRuleProvider;->getRuleFromUrl(Ljava/lang/String;)Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    .line 249
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    if-nez v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v0, v3}, Lcom/android/browser/ui/MiRenWebViewCore;->onReadingModeDataReady(Z)V

    .line 274
    :goto_0
    return-void

    .line 253
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v1}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090033

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v1}, Lcom/android/browser/ui/MiRenWebViewCore;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mCurrentTitle:Ljava/lang/String;

    .line 254
    iput v3, p0, Lcom/android/browser/controller/ReadingModeController;->mRetry:I

    .line 256
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mPageDataProvider:Lcom/android/browser/model/ReadingModePageDataProvider;

    iget-object v1, p0, Lcom/android/browser/controller/ReadingModeController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    iget-object v1, v1, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->contentPaths:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    iget-object v2, v2, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->titlePaths:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/browser/controller/ReadingModeController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    iget-object v3, v3, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->nextLinkUrls:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/browser/controller/ReadingModeController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    iget-object v4, v4, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->comments:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/browser/controller/ReadingModeController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    iget-object v5, v5, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->firstPage:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/browser/controller/ReadingModeController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    iget-object v6, v6, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->ads:Ljava/lang/String;

    invoke-virtual/range {v0 .. v6}, Lcom/android/browser/model/ReadingModePageDataProvider;->doQuery(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iput-boolean v8, p0, Lcom/android/browser/controller/ReadingModeController;->mNotify:Z

    .line 273
    :goto_1
    iput-object v7, p0, Lcom/android/browser/controller/ReadingModeController;->mCurrentUrl:Ljava/lang/String;

    goto :goto_0

    .line 266
    :cond_2
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mReadingData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 267
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v0, v8}, Lcom/android/browser/ui/MiRenWebViewCore;->onReadingModeDataReady(Z)V

    goto :goto_1

    .line 270
    :cond_3
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->onPageDataFinish()V

    .line 271
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v0, v3}, Lcom/android/browser/ui/MiRenWebViewCore;->onReadingModeDataReady(Z)V

    goto :goto_1
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    .line 111
    return-void
.end method

.method public setBookmarkDBId(J)V
    .locals 6
    .parameter "id"

    .prologue
    .line 192
    iget-wide v0, p0, Lcom/android/browser/controller/ReadingModeController;->mId:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mCurrentUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/browser/controller/ReadingModeController;->mId:J

    iget-object v3, p0, Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v3}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/browser/controller/ReadingModeController;->mCurrentUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/browser/controller/ReadingModeController;->mCurrentTitle:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/android/browser/api_v8/Bookmarks;->updateUrlAndTitleById(Landroid/content/Context;JLandroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :cond_0
    iput-wide p1, p0, Lcom/android/browser/controller/ReadingModeController;->mId:J

    .line 198
    return-void
.end method

.method public setLoadedUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/browser/controller/ReadingModeController;->mCurrentUrl:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setReadingModeOff()V
    .locals 1

    .prologue
    .line 298
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/controller/ReadingModeController;->mShowReading:Z

    .line 299
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    if-eqz v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewBase;->stopLoading()V

    .line 301
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/controller/ReadingModeController;->mCanceled:Z

    .line 303
    :cond_0
    return-void
.end method

.method public setReadingModeOn()V
    .locals 6

    .prologue
    .line 278
    iget-object v5, p0, Lcom/android/browser/controller/ReadingModeController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    if-nez v5, :cond_0

    .line 295
    :goto_0
    return-void

    .line 281
    :cond_0
    const/4 v3, 0x0

    .line 282
    .local v3, previousTitle:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    iget-object v5, p0, Lcom/android/browser/controller/ReadingModeController;->mReadingData:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_2

    .line 283
    iget-object v5, p0, Lcom/android/browser/controller/ReadingModeController;->mReadingData:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/browser/controller/ReadingModeController$ReadingData;

    .line 284
    .local v1, data:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    iget-object v0, v1, Lcom/android/browser/controller/ReadingModeController$ReadingData;->content:Ljava/lang/String;

    .line 285
    .local v0, content:Ljava/lang/String;
    iget-object v4, v1, Lcom/android/browser/controller/ReadingModeController$ReadingData;->title:Ljava/lang/String;

    .line 286
    .local v4, title:Ljava/lang/String;
    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 288
    const/4 v4, 0x0

    .line 290
    :cond_1
    move-object v3, v4

    .line 291
    iget-object v5, v1, Lcom/android/browser/controller/ReadingModeController$ReadingData;->comments:Ljava/lang/String;

    invoke-virtual {p0, v4, v0, v5}, Lcom/android/browser/controller/ReadingModeController;->addNewReadingPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/browser/controller/ReadingModeController;->mShowReading:Z

    .line 282
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 294
    .end local v0           #content:Ljava/lang/String;
    .end local v1           #data:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    .end local v4           #title:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/android/browser/controller/ReadingModeController;->mCurrentUrl:Ljava/lang/String;

    invoke-direct {p0, v5}, Lcom/android/browser/controller/ReadingModeController;->onEnterFirstPage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setTextSize(Landroid/webkit/WebSettings$TextSize;)V
    .locals 4
    .parameter "size"

    .prologue
    .line 426
    invoke-static {p1}, Lcom/android/browser/util/MiRenWebViewUtils;->transformTextSizeToString(Landroid/webkit/WebSettings$TextSize;)Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, sizeString:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setTextSize(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;)V

    .line 428
    return-void
.end method

.method public updateNightMode()V
    .locals 4

    .prologue
    .line 431
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/controller/BrowserSettings;->getIsInNightMode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "true"

    move-object v0, v1

    .line 432
    .local v0, nightmodeString:Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/android/browser/controller/ReadingModeController;->mView:Lcom/android/browser/ui/MiRenWebViewCore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNightMode(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;)V

    .line 433
    return-void

    .line 431
    .end local v0           #nightmodeString:Ljava/lang/String;
    :cond_0
    const-string v1, "false"

    move-object v0, v1

    goto :goto_0
.end method
