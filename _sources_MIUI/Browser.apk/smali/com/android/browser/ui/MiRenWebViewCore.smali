.class public Lcom/android/browser/ui/MiRenWebViewCore;
.super Lcom/android/browser/ui/MiRenWebViewBase;
.source "MiRenWebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface;,
        Lcom/android/browser/ui/MiRenWebViewCore$MiRenWebChromeClient;,
        Lcom/android/browser/ui/MiRenWebViewCore$MiRenWebBackForwardListClient;,
        Lcom/android/browser/ui/MiRenWebViewCore$ErrorDialog;
    }
.end annotation


# static fields
.field public static final BROWSER_MODE_FORUM:I = 0x3

.field public static final BROWSER_MODE_FORUM_AVAILABLE:I = 0x4

.field public static final BROWSER_MODE_INVALID:I = -0x1

.field public static final BROWSER_MODE_NORMAL:I = 0x0

.field public static final BROWSER_MODE_READING:I = 0x1

.field public static final BROWSER_MODE_SIMPLE:I = 0x5

.field public static final BROWSER_MODE_WAP:I = 0x2

.field private static final Js_Fix_PasswordInputControlStyle:Ljava/lang/String; = "javascript:var inputCollection = document.getElementsByTagName(\"input\"); for (var i=0; i<inputCollection.length; i++) {if (inputCollection[i].type!=\'password\') continue; inputCollection[i].style.height = \'%dpx\'; inputCollection[i].style.fontSize = \'%dpx\'; }"

.field private static final LOG_TAG:Ljava/lang/String; = "com.android.browser.ui.MiRenWebViewCore"

.field private static final MAX_RETRY:I = 0x2

.field private static final RETRY_INTERVAL:I = 0x1388

.field private static final SCHEME_WTAI:Ljava/lang/String; = "wtai://wp/"

.field private static final SCHEME_WTAI_AP:Ljava/lang/String; = "wtai://wp/ap;"

.field private static final SCHEME_WTAI_MC:Ljava/lang/String; = "wtai://wp/mc;"

.field private static final SCHEME_WTAI_SD:Ljava/lang/String; = "wtai://wp/sd;"

.field private static sForumPageData:Ljava/lang/String;

.field private static sReadingPageData:Ljava/lang/String;

.field private static sSimplePageData:Ljava/lang/String;

.field private static final sXunleiRelocationPattern:Ljava/util/regex/Pattern;


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mDialogListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mFallbackFromSpecialMode:Z

.field private mFirstRenderNotified:Z

.field protected mForumController:Lcom/android/browser/controller/ForumController;

.field private mHasFlash:Z

.field private mHiddenViewDrawingMode:Z

.field private mIsLoading:Z

.field private mLoadForumModeDirectly:Z

.field private mLoadReadingModeDirectly:Z

.field protected mLoadedUrl:Ljava/lang/String;

.field private mLoadingUnhandledUrl:Z

.field protected mMode:I

.field private mNeedRevaildate:Z

.field private mOriginalUrl:Ljava/lang/String;

.field private mProgress:I

.field private mQueuedErrors:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/browser/ui/MiRenWebViewCore$ErrorDialog;",
            ">;"
        }
    .end annotation
.end field

.field protected mReadingModeController:Lcom/android/browser/controller/ReadingModeController;

.field protected mRefererMode:I

.field protected mRefererUrl:Ljava/lang/String;

.field private mSimpleController:Lcom/android/browser/controller/SimpleModeController;

.field protected mSwitchView:Z

.field private mVideoBtns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mWaitForPageFinish:Z

.field private mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

.field private mWebChromeClient:Landroid/webkit/WebChromeClient;

.field protected mWebListener:Lcom/android/browser/ui/MiRenWebViewListener;

.field private mWebViewClient:Landroid/webkit/WebViewClient;

.field public serialNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 150
    const-string v0, "location.href(\\s*)=(\\s*).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/browser/ui/MiRenWebViewCore;->sXunleiRelocationPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 159
    invoke-direct {p0, p1}, Lcom/android/browser/ui/MiRenWebViewBase;-><init>(Landroid/content/Context;)V

    .line 101
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mProgress:I

    .line 102
    iput-boolean v1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mIsLoading:Z

    .line 107
    iput-object v3, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mReadingModeController:Lcom/android/browser/controller/ReadingModeController;

    .line 109
    iput-object v3, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mSimpleController:Lcom/android/browser/controller/SimpleModeController;

    .line 123
    iput v1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->serialNumber:I

    .line 124
    iput-boolean v1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mHasFlash:Z

    .line 126
    iput-boolean v1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mLoadReadingModeDirectly:Z

    .line 127
    iput-boolean v1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mLoadForumModeDirectly:Z

    .line 129
    iput v1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mMode:I

    .line 131
    iput-boolean v1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mFallbackFromSpecialMode:Z

    .line 136
    iput-boolean v2, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mNeedRevaildate:Z

    .line 137
    iput-boolean v1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mWaitForPageFinish:Z

    .line 138
    iput-boolean v1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mFirstRenderNotified:Z

    .line 139
    iput-boolean v1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mLoadingUnhandledUrl:Z

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mVideoBtns:Ljava/util/ArrayList;

    .line 259
    iput-boolean v2, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mSwitchView:Z

    .line 1149
    new-instance v0, Lcom/android/browser/ui/MiRenWebViewCore$3;

    invoke-direct {v0, p0}, Lcom/android/browser/ui/MiRenWebViewCore$3;-><init>(Lcom/android/browser/ui/MiRenWebViewCore;)V

    iput-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mDialogListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 1294
    new-instance v0, Lcom/android/browser/ui/MiRenWebViewCore$5;

    invoke-direct {v0, p0}, Lcom/android/browser/ui/MiRenWebViewCore$5;-><init>(Lcom/android/browser/ui/MiRenWebViewCore;)V

    iput-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 160
    invoke-direct {p0, p1}, Lcom/android/browser/ui/MiRenWebViewCore;->init(Landroid/content/Context;)V

    .line 161
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 172
    invoke-direct {p0, p1, p2}, Lcom/android/browser/ui/MiRenWebViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 101
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mProgress:I

    .line 102
    iput-boolean v1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mIsLoading:Z

    .line 107
    iput-object v3, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mReadingModeController:Lcom/android/browser/controller/ReadingModeController;

    .line 109
    iput-object v3, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mSimpleController:Lcom/android/browser/controller/SimpleModeController;

    .line 123
    iput v1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->serialNumber:I

    .line 124
    iput-boolean v1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mHasFlash:Z

    .line 126
    iput-boolean v1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mLoadReadingModeDirectly:Z

    .line 127
    iput-boolean v1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mLoadForumModeDirectly:Z

    .line 129
    iput v1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mMode:I

    .line 131
    iput-boolean v1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mFallbackFromSpecialMode:Z

    .line 136
    iput-boolean v2, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mNeedRevaildate:Z

    .line 137
    iput-boolean v1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mWaitForPageFinish:Z

    .line 138
    iput-boolean v1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mFirstRenderNotified:Z

    .line 139
    iput-boolean v1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mLoadingUnhandledUrl:Z

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mVideoBtns:Ljava/util/ArrayList;

    .line 259
    iput-boolean v2, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mSwitchView:Z

    .line 1149
    new-instance v0, Lcom/android/browser/ui/MiRenWebViewCore$3;

    invoke-direct {v0, p0}, Lcom/android/browser/ui/MiRenWebViewCore$3;-><init>(Lcom/android/browser/ui/MiRenWebViewCore;)V

    iput-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mDialogListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 1294
    new-instance v0, Lcom/android/browser/ui/MiRenWebViewCore$5;

    invoke-direct {v0, p0}, Lcom/android/browser/ui/MiRenWebViewCore$5;-><init>(Lcom/android/browser/ui/MiRenWebViewCore;)V

    iput-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 173
    invoke-direct {p0, p1}, Lcom/android/browser/ui/MiRenWebViewCore;->init(Landroid/content/Context;)V

    .line 174
    return-void
.end method

.method static synthetic access$302(Lcom/android/browser/ui/MiRenWebViewCore;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mLoadingUnhandledUrl:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/browser/ui/MiRenWebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->processNextError()V

    return-void
.end method

.method static synthetic access$500()Ljava/util/regex/Pattern;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/android/browser/ui/MiRenWebViewCore;->sXunleiRelocationPattern:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/browser/ui/MiRenWebViewCore;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 86
    invoke-direct {p0, p1, p2}, Lcom/android/browser/ui/MiRenWebViewCore;->queueError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/browser/ui/MiRenWebViewCore;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mVideoBtns:Ljava/util/ArrayList;

    return-object v0
.end method

.method private hackXunlei(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 1194
    new-instance v0, Lcom/android/browser/ui/MiRenWebViewCore$4;

    invoke-direct {v0, p0, p1}, Lcom/android/browser/ui/MiRenWebViewCore$4;-><init>(Lcom/android/browser/ui/MiRenWebViewCore;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenWebViewCore$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1250
    return-void
.end method

.method private hideZoomControls()V
    .locals 2

    .prologue
    .line 1077
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->getZoomButtonsController()Landroid/widget/ZoomButtonsController;

    move-result-object v0

    .line 1078
    .local v0, zoom:Landroid/widget/ZoomButtonsController;
    if-nez v0, :cond_0

    .line 1091
    :goto_0
    return-void

    .line 1081
    :cond_0
    new-instance v1, Lcom/android/browser/ui/MiRenWebViewCore$2;

    invoke-direct {v1, p0}, Lcom/android/browser/ui/MiRenWebViewCore$2;-><init>(Lcom/android/browser/ui/MiRenWebViewCore;)V

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setOnZoomListener(Landroid/widget/ZoomButtonsController$OnZoomListener;)V

    goto :goto_0
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 181
    iput-object p1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mContext:Landroid/content/Context;

    .line 182
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->initializeOptions()V

    .line 183
    invoke-direct {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->hideZoomControls()V

    .line 184
    new-instance v0, Lcom/android/browser/controller/ReadingModeController;

    invoke-direct {v0, p0}, Lcom/android/browser/controller/ReadingModeController;-><init>(Lcom/android/browser/ui/MiRenWebViewCore;)V

    iput-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mReadingModeController:Lcom/android/browser/controller/ReadingModeController;

    .line 185
    new-instance v0, Lcom/android/browser/controller/ForumController;

    invoke-direct {v0, p0}, Lcom/android/browser/controller/ForumController;-><init>(Lcom/android/browser/ui/MiRenWebViewCore;)V

    iput-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mForumController:Lcom/android/browser/controller/ForumController;

    .line 186
    new-instance v0, Lcom/android/browser/controller/SimpleModeController;

    invoke-direct {v0, p0}, Lcom/android/browser/controller/SimpleModeController;-><init>(Lcom/android/browser/ui/MiRenWebViewCore;)V

    iput-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mSimpleController:Lcom/android/browser/controller/SimpleModeController;

    .line 188
    new-instance v0, Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface;

    invoke-direct {v0, p0, v2}, Lcom/android/browser/ui/MiRenWebViewCore$VideoJSInterface;-><init>(Lcom/android/browser/ui/MiRenWebViewCore;Lcom/android/browser/ui/MiRenWebViewCore$1;)V

    const-string v1, "mirenvideo"

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/ui/MiRenWebViewCore;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    new-instance v0, Lcom/android/browser/ui/MiRenWebViewCore$MiRenWebChromeClient;

    invoke-direct {v0, p0, v2}, Lcom/android/browser/ui/MiRenWebViewCore$MiRenWebChromeClient;-><init>(Lcom/android/browser/ui/MiRenWebViewCore;Lcom/android/browser/ui/MiRenWebViewCore$1;)V

    iput-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 192
    new-instance v0, Lcom/android/browser/ui/MiRenWebViewCore$MiRenWebBackForwardListClient;

    invoke-direct {v0, p0, v2}, Lcom/android/browser/ui/MiRenWebViewCore$MiRenWebBackForwardListClient;-><init>(Lcom/android/browser/ui/MiRenWebViewCore;Lcom/android/browser/ui/MiRenWebViewCore$1;)V

    iput-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    .line 194
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mWebViewClient:Landroid/webkit/WebViewClient;

    invoke-virtual {p0, v0}, Lcom/android/browser/ui/MiRenWebViewCore;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 195
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {p0, v0}, Lcom/android/browser/ui/MiRenWebViewCore;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 196
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    invoke-virtual {p0, v0}, Lcom/android/browser/ui/MiRenWebViewCore;->setWebBackForwardListClient(Landroid/webkit/WebBackForwardListClient;)V

    .line 201
    new-instance v0, Lcom/android/browser/ui/MiRenWebViewCore$1;

    invoke-direct {v0, p0}, Lcom/android/browser/ui/MiRenWebViewCore$1;-><init>(Lcom/android/browser/ui/MiRenWebViewCore;)V

    invoke-virtual {p0, v0}, Lcom/android/browser/ui/MiRenWebViewCore;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 209
    return-void
.end method

.method private loadForumPageData()V
    .locals 5

    .prologue
    .line 1054
    :try_start_0
    iget-object v3, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 1055
    .local v0, am:Landroid/content/res/AssetManager;
    const-string v3, "forum.html"

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 1056
    .local v2, is:Ljava/io/InputStream;
    if-eqz v2, :cond_0

    .line 1057
    invoke-static {v2}, Lcom/android/browser/common/Strings;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/browser/ui/MiRenWebViewCore;->sForumPageData:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1062
    .end local v0           #am:Landroid/content/res/AssetManager;
    .end local v2           #is:Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-void

    .line 1059
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1060
    .local v1, e:Ljava/io/IOException;
    const-string v3, "com.android.browser.ui.MiRenWebViewCore"

    const-string v4, "Error while opening the file"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private loadReadingPageData()V
    .locals 5

    .prologue
    .line 1041
    :try_start_0
    iget-object v3, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 1042
    .local v0, am:Landroid/content/res/AssetManager;
    const-string v3, "ReadingMode.html"

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 1043
    .local v2, is:Ljava/io/InputStream;
    if-eqz v2, :cond_0

    .line 1044
    invoke-static {v2}, Lcom/android/browser/common/Strings;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/browser/ui/MiRenWebViewCore;->sReadingPageData:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1049
    .end local v0           #am:Landroid/content/res/AssetManager;
    .end local v2           #is:Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-void

    .line 1046
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1047
    .local v1, e:Ljava/io/IOException;
    const-string v3, "com.android.browser.ui.MiRenWebViewCore"

    const-string v4, "Error while opening the file"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private loadSimplePageData()V
    .locals 5

    .prologue
    .line 1066
    :try_start_0
    iget-object v3, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 1067
    .local v0, am:Landroid/content/res/AssetManager;
    const-string v3, "simple.html"

    invoke-virtual {v0, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 1068
    .local v2, is:Ljava/io/InputStream;
    if-eqz v2, :cond_0

    .line 1069
    invoke-static {v2}, Lcom/android/browser/common/Strings;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/browser/ui/MiRenWebViewCore;->sSimplePageData:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1074
    .end local v0           #am:Landroid/content/res/AssetManager;
    .end local v2           #is:Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-void

    .line 1071
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1072
    .local v1, e:Ljava/io/IOException;
    const-string v3, "com.android.browser.ui.MiRenWebViewCore"

    const-string v4, "Error while opening the file"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private loadUrlFromHttpHeaderInfo(Ljava/lang/String;I)V
    .locals 3
    .parameter "url"
    .parameter "suggestedMode"

    .prologue
    .line 529
    iget-boolean v1, p0, Lcom/android/browser/ui/MiRenWebViewBase;->mDestroyed:Z

    if-eqz v1, :cond_0

    .line 556
    :goto_0
    return-void

    .line 532
    :cond_0
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/controller/BrowserSettings;->getReadingModeOption()Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;

    move-result-object v1

    sget-object v2, Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;->ENTER_AUTOMATICALLY:Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mFallbackFromSpecialMode:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mReadingModeController:Lcom/android/browser/controller/ReadingModeController;

    invoke-virtual {v1, p1}, Lcom/android/browser/controller/ReadingModeController;->isReadingModeSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 537
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Lcom/android/browser/ui/MiRenWebViewCore;->loadUrlInSpecialMode(Ljava/lang/String;I)V

    .line 538
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/android/browser/ui/MiRenWebViewCore;->setProgress(I)V

    goto :goto_0

    .line 543
    :cond_1
    const/4 v0, 0x0

    .line 545
    .local v0, mode:I
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/controller/BrowserSettings;->getForumModeOption()Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;

    move-result-object v1

    sget-object v2, Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;->ENTER_AUTOMATICALLY:Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;

    if-ne v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mFallbackFromSpecialMode:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mForumController:Lcom/android/browser/controller/ForumController;

    invoke-virtual {v1, p1}, Lcom/android/browser/controller/ForumController;->isForumSupported(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_3

    .line 549
    :cond_2
    const/4 v0, 0x3

    .line 552
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mFallbackFromSpecialMode:Z

    .line 554
    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Lcom/android/browser/ui/MiRenWebViewCore;->setProgress(I)V

    .line 555
    invoke-virtual {p0, p1, v0}, Lcom/android/browser/ui/MiRenWebViewCore;->loadUrlInSpecialMode(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private loadUrlWithPreprocess(Ljava/lang/String;IZ)V
    .locals 12
    .parameter "url"
    .parameter "suggestedMode"
    .parameter "fallbackFromSimpleMode"

    .prologue
    .line 343
    if-nez p1, :cond_0

    .line 344
    const-string v10, "file:///android_asset/mindex.html"

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/android/browser/ui/MiRenWebViewCore;->loadUrlInSpecialMode(Ljava/lang/String;I)V

    .line 429
    :goto_0
    return-void

    .line 348
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 350
    .local v7, uri:Landroid/net/Uri;
    iget-object v10, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/browser/util/DownloadHelpers;->isWifiAvailable(Landroid/content/Context;)Z

    move-result v3

    .line 351
    .local v3, isWiFiOn:Z
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/browser/controller/BrowserSettings;->getSimpleModeChoice()Lcom/android/browser/controller/BrowserSettings$SimpleModeOption;

    move-result-object v5

    .line 353
    .local v5, simpleModeOption:Lcom/android/browser/controller/BrowserSettings$SimpleModeOption;
    if-nez p3, :cond_a

    sget-object v10, Lcom/android/browser/controller/BrowserSettings$SimpleModeOption;->SIMPLE_MODE_ON:Lcom/android/browser/controller/BrowserSettings$SimpleModeOption;

    if-eq v5, v10, :cond_1

    if-nez v3, :cond_a

    sget-object v10, Lcom/android/browser/controller/BrowserSettings$SimpleModeOption;->SIMPLE_MODE_ON_FOR_NON_WIFI:Lcom/android/browser/controller/BrowserSettings$SimpleModeOption;

    if-ne v5, v10, :cond_a

    .line 357
    :cond_1
    move-object v8, p1

    .line 358
    .local v8, urlForSimpleMode:Ljava/lang/String;
    const/4 v9, 0x1

    .line 361
    .local v9, useSimpleMode:Z
    iget-object v10, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mRefererUrl:Ljava/lang/String;

    if-eqz v10, :cond_2

    iget v10, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mRefererMode:I

    const/4 v11, 0x5

    if-eq v10, v11, :cond_2

    .line 362
    iget-object v10, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mRefererUrl:Ljava/lang/String;

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 363
    .local v4, refererUri:Landroid/net/Uri;
    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-virtual {v4}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v10

    const-string v11, "m.baidu.com"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 364
    const/4 v9, 0x0

    .line 368
    .end local v4           #refererUri:Landroid/net/Uri;
    :cond_2
    if-eqz v9, :cond_3

    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v10

    const-string v11, "m.baidu.com"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 369
    const-string v10, "src"

    invoke-virtual {v7, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 370
    .local v6, srcUrl:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 371
    invoke-static {v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 375
    .end local v6           #srcUrl:Ljava/lang/String;
    :cond_3
    if-eqz v9, :cond_5

    if-eqz v3, :cond_5

    .line 376
    const-string v10, "://"

    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_4

    .line 377
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "http://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 379
    :cond_4
    iget-object v10, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mReadingModeController:Lcom/android/browser/controller/ReadingModeController;

    invoke-virtual {v10, v8}, Lcom/android/browser/controller/ReadingModeController;->isReadingModeSupported(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 381
    const/4 v9, 0x0

    .line 385
    :cond_5
    if-eqz v9, :cond_6

    iget-object v10, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mContext:Landroid/content/Context;

    invoke-static {v10, v8}, Lcom/android/browser/util/MiRenWebViewUtils;->isMobileSite(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 387
    const/4 v10, 0x5

    invoke-virtual {p0, v8, v10}, Lcom/android/browser/ui/MiRenWebViewCore;->loadUrlInSpecialMode(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 391
    :cond_6
    move-object p1, v8

    .line 392
    const/4 p2, 0x0

    .line 406
    .end local v8           #urlForSimpleMode:Ljava/lang/String;
    .end local v9           #useSimpleMode:Z
    :cond_7
    :goto_1
    move-object v0, p1

    .line 408
    .local v0, _url:Ljava/lang/String;
    iget v10, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mMode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_8

    invoke-virtual {v7}, Landroid/net/Uri;->isRelative()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 409
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->getLoadedUrl()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/browser/common/Network;->parseURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    .line 410
    .local v2, baseUri:Ljava/net/URI;
    invoke-virtual {v2, p1}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    .line 411
    .local v1, absoluteUri:Ljava/net/URI;
    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 415
    .end local v1           #absoluteUri:Ljava/net/URI;
    .end local v2           #baseUri:Ljava/net/URI;
    :cond_8
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->markLoadingStartedStatus()V

    .line 416
    invoke-virtual {v7}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/browser/ui/MiRenWebViewCore;->setUrl(Ljava/lang/String;)V

    .line 418
    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11}, Lcom/android/browser/ui/MiRenWebViewCore;->updateProgress(ILjava/lang/String;)V

    .line 420
    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_9

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    const-string v11, "http"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v10

    const-string v11, "https"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 424
    :cond_9
    const/4 v10, 0x0

    invoke-virtual {p0, p1, v10}, Lcom/android/browser/ui/MiRenWebViewCore;->loadUrlInSpecialMode(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 396
    .end local v0           #_url:Ljava/lang/String;
    :cond_a
    iget v10, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mRefererMode:I

    const/4 v11, 0x5

    if-ne v10, v11, :cond_7

    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_7

    invoke-virtual {v7}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v10

    const-string v11, "m.baidu.com"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 399
    const-string v10, "src"

    invoke-virtual {v7, v10}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 400
    .restart local v6       #srcUrl:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 401
    const-string v10, "://"

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_7

    .line 402
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "http://"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1

    .line 428
    .end local v6           #srcUrl:Ljava/lang/String;
    .restart local v0       #_url:Ljava/lang/String;
    :cond_b
    invoke-direct {p0, p1, p2}, Lcom/android/browser/ui/MiRenWebViewCore;->loadUrlFromHttpHeaderInfo(Ljava/lang/String;I)V

    goto/16 :goto_0
.end method

.method private processNextError()V
    .locals 1

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mQueuedErrors:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 1147
    :goto_0
    return-void

    .line 1141
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 1142
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 1143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mQueuedErrors:Ljava/util/LinkedList;

    goto :goto_0

    .line 1146
    :cond_1
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/ui/MiRenWebViewCore$ErrorDialog;

    invoke-direct {p0, v0}, Lcom/android/browser/ui/MiRenWebViewCore;->showError(Lcom/android/browser/ui/MiRenWebViewCore$ErrorDialog;)V

    goto :goto_0
.end method

.method private queueError(ILjava/lang/String;)V
    .locals 5
    .parameter "err"
    .parameter "desc"

    .prologue
    .line 1158
    iget-object v3, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mQueuedErrors:Ljava/util/LinkedList;

    if-nez v3, :cond_0

    .line 1159
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mQueuedErrors:Ljava/util/LinkedList;

    .line 1161
    :cond_0
    iget-object v3, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/browser/ui/MiRenWebViewCore$ErrorDialog;

    .line 1162
    .local v0, d:Lcom/android/browser/ui/MiRenWebViewCore$ErrorDialog;
    iget v3, v0, Lcom/android/browser/ui/MiRenWebViewCore$ErrorDialog;->mError:I

    if-ne v3, p1, :cond_1

    .line 1178
    .end local v0           #d:Lcom/android/browser/ui/MiRenWebViewCore$ErrorDialog;
    :cond_2
    :goto_0
    return-void

    .line 1167
    :cond_3
    new-instance v1, Lcom/android/browser/ui/MiRenWebViewCore$ErrorDialog;

    const/16 v3, -0xe

    if-ne p1, v3, :cond_4

    const v3, 0x7f090102

    :goto_1
    invoke-direct {v1, p0, v3, p2, p1}, Lcom/android/browser/ui/MiRenWebViewCore$ErrorDialog;-><init>(Lcom/android/browser/ui/MiRenWebViewCore;ILjava/lang/String;I)V

    .line 1172
    .local v1, errDialog:Lcom/android/browser/ui/MiRenWebViewCore$ErrorDialog;
    iget-object v3, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 1175
    iget-object v3, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mQueuedErrors:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mWebListener:Lcom/android/browser/ui/MiRenWebViewListener;

    invoke-interface {v3}, Lcom/android/browser/ui/MiRenWebViewListener;->isCurrent()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1176
    invoke-direct {p0, v1}, Lcom/android/browser/ui/MiRenWebViewCore;->showError(Lcom/android/browser/ui/MiRenWebViewCore$ErrorDialog;)V

    goto :goto_0

    .line 1167
    .end local v1           #errDialog:Lcom/android/browser/ui/MiRenWebViewCore$ErrorDialog;
    :cond_4
    const v3, 0x7f090101

    goto :goto_1
.end method

.method private showError(Lcom/android/browser/ui/MiRenWebViewCore$ErrorDialog;)V
    .locals 4
    .parameter "errDialog"

    .prologue
    .line 1181
    iget-object v1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mWebListener:Lcom/android/browser/ui/MiRenWebViewListener;

    invoke-interface {v1}, Lcom/android/browser/ui/MiRenWebViewListener;->isCurrent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1182
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v2, p1, Lcom/android/browser/ui/MiRenWebViewCore$ErrorDialog;->mTitle:I

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/browser/ui/MiRenWebViewCore$ErrorDialog;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f090011

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1187
    .local v0, d:Landroid/app/AlertDialog;
    iget-object v1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mDialogListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1188
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 1190
    .end local v0           #d:Landroid/app/AlertDialog;
    :cond_0
    return-void
.end method


# virtual methods
.method public clearView()V
    .locals 2

    .prologue
    const-string v1, "about:blank"

    .line 263
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mLoadedUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "about:blank"

    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mLoadedUrl:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 274
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mLoadedUrl:Ljava/lang/String;

    .line 267
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mMode:I

    .line 270
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mForumController:Lcom/android/browser/controller/ForumController;

    invoke-virtual {v0}, Lcom/android/browser/controller/ForumController;->reset()V

    .line 271
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mReadingModeController:Lcom/android/browser/controller/ReadingModeController;

    invoke-virtual {v0}, Lcom/android/browser/controller/ReadingModeController;->reset()V

    .line 272
    const-string v0, "about:blank"

    invoke-super {p0, v1}, Lcom/android/browser/ui/MiRenWebViewBase;->loadUrl(Ljava/lang/String;)V

    .line 273
    invoke-super {p0}, Lcom/android/browser/ui/MiRenWebViewBase;->clearView()V

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 970
    invoke-super {p0}, Lcom/android/browser/ui/MiRenWebViewBase;->destroy()V

    .line 971
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mReadingModeController:Lcom/android/browser/controller/ReadingModeController;

    invoke-virtual {v0}, Lcom/android/browser/controller/ReadingModeController;->onWebViewDestroy()V

    .line 972
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mForumController:Lcom/android/browser/controller/ForumController;

    invoke-virtual {v0}, Lcom/android/browser/controller/ForumController;->onWebViewDestroy()V

    .line 973
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mSimpleController:Lcom/android/browser/controller/SimpleModeController;

    invoke-virtual {v0}, Lcom/android/browser/controller/SimpleModeController;->onWebViewDestroy()V

    .line 974
    return-void
.end method

.method public disableRevalidate()V
    .locals 1

    .prologue
    .line 919
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mNeedRevaildate:Z

    .line 920
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 936
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mWebListener:Lcom/android/browser/ui/MiRenWebViewListener;

    invoke-static {p1, v0, p0, v1}, Lcom/android/browser/ui/KeyEventDispatcher;->dispatchKeyEvent(Landroid/view/KeyEvent;Landroid/content/Context;Landroid/view/View;Lcom/android/browser/ui/MiRenWebViewListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 937
    invoke-super {p0, p1}, Lcom/android/browser/ui/MiRenWebViewBase;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 940
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getListener()Lcom/android/browser/ui/MiRenWebViewListener;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mWebListener:Lcom/android/browser/ui/MiRenWebViewListener;

    return-object v0
.end method

.method public getLoadedUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 773
    iget v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 774
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mReadingModeController:Lcom/android/browser/controller/ReadingModeController;

    invoke-virtual {v0}, Lcom/android/browser/controller/ReadingModeController;->getCurrentUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mOriginalUrl:Ljava/lang/String;

    .line 792
    :goto_0
    return-object v0

    .line 777
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mReadingModeController:Lcom/android/browser/controller/ReadingModeController;

    invoke-virtual {v0}, Lcom/android/browser/controller/ReadingModeController;->getCurrentUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 778
    :cond_1
    iget v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 779
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mForumController:Lcom/android/browser/controller/ForumController;

    invoke-virtual {v0}, Lcom/android/browser/controller/ForumController;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 780
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mOriginalUrl:Ljava/lang/String;

    goto :goto_0

    .line 782
    :cond_2
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mForumController:Lcom/android/browser/controller/ForumController;

    invoke-virtual {v0}, Lcom/android/browser/controller/ForumController;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 783
    :cond_3
    iget v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_5

    .line 784
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mSimpleController:Lcom/android/browser/controller/SimpleModeController;

    invoke-virtual {v0}, Lcom/android/browser/controller/SimpleModeController;->getUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 785
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mOriginalUrl:Ljava/lang/String;

    goto :goto_0

    .line 787
    :cond_4
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mSimpleController:Lcom/android/browser/controller/SimpleModeController;

    invoke-virtual {v0}, Lcom/android/browser/controller/SimpleModeController;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 789
    :cond_5
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mLoadedUrl:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 790
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mLoadedUrl:Ljava/lang/String;

    .line 792
    :cond_6
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mLoadedUrl:Ljava/lang/String;

    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 571
    iget v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mMode:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 629
    iget v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mProgress:I

    return v0
.end method

.method public getReadingModeController()Lcom/android/browser/controller/ReadingModeController;
    .locals 1

    .prologue
    .line 597
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mReadingModeController:Lcom/android/browser/controller/ReadingModeController;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 805
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->getLoadedUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->getLoadedUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miui:home"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 806
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mContext:Landroid/content/Context;

    const v1, 0x7f0900c3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 818
    :goto_0
    return-object v0

    .line 808
    :cond_0
    iget v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 809
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mReadingModeController:Lcom/android/browser/controller/ReadingModeController;

    invoke-virtual {v0}, Lcom/android/browser/controller/ReadingModeController;->getCurrentTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 811
    :cond_1
    iget v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 812
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mForumController:Lcom/android/browser/controller/ForumController;

    invoke-virtual {v0}, Lcom/android/browser/controller/ForumController;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 814
    :cond_2
    iget v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 815
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mSimpleController:Lcom/android/browser/controller/SimpleModeController;

    invoke-virtual {v0}, Lcom/android/browser/controller/SimpleModeController;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 818
    :cond_3
    invoke-super {p0}, Lcom/android/browser/ui/MiRenWebViewBase;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getUrlAsReferer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 797
    iget v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mMode:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 798
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->getLoadedUrl()Ljava/lang/String;

    move-result-object v0

    .line 800
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mSimpleController:Lcom/android/browser/controller/SimpleModeController;

    invoke-virtual {v0}, Lcom/android/browser/controller/SimpleModeController;->getRealUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getVerticalScrollRange()I
    .locals 1

    .prologue
    .line 1100
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method public getWebChromeClient()Landroid/webkit/WebChromeClient;
    .locals 1

    .prologue
    .line 961
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    return-object v0
.end method

.method public getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 965
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mWebViewClient:Landroid/webkit/WebViewClient;

    return-object v0
.end method

.method public hasFlash()Z
    .locals 1

    .prologue
    .line 1899
    iget-boolean v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mHasFlash:Z

    return v0
.end method

.method public initializeOptions()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 245
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 246
    .local v0, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 247
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 250
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 251
    invoke-virtual {p0, v1}, Lcom/android/browser/ui/MiRenWebViewCore;->setLongClickable(Z)V

    .line 252
    return-void
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 1030
    invoke-super {p0}, Lcom/android/browser/ui/MiRenWebViewBase;->invalidate()V

    .line 1031
    iget-boolean v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mIsLoading:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mFirstRenderNotified:Z

    if-eqz v0, :cond_1

    .line 1037
    :cond_0
    :goto_0
    return-void

    .line 1033
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mFirstRenderNotified:Z

    .line 1034
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mWebListener:Lcom/android/browser/ui/MiRenWebViewListener;

    if-eqz v0, :cond_0

    .line 1035
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mWebListener:Lcom/android/browser/ui/MiRenWebViewListener;

    invoke-interface {v0, p0}, Lcom/android/browser/ui/MiRenWebViewListener;->onFirstRender(Landroid/webkit/WebView;)V

    goto :goto_0
.end method

.method protected isHomePage()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1094
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mLoadedUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1095
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mLoadedUrl:Ljava/lang/String;

    const-string v1, "miui:home"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mLoadedUrl:Ljava/lang/String;

    const-string v1, "miui:sites"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 1096
    :goto_0
    return v0

    .line 1095
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1096
    goto :goto_0
.end method

.method public isLoading()Z
    .locals 2

    .prologue
    .line 754
    iget-boolean v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mIsLoading:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->getProgress()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->getProgress()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoadingUnhandledUrl()Z
    .locals 1

    .prologue
    .line 1108
    iget-boolean v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mLoadingUnhandledUrl:Z

    return v0
.end method

.method public isTextSelectionMode()Z
    .locals 1

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->isInSelectionMode()Z

    move-result v0

    return v0
.end method

.method public loadAdSweep()V
    .locals 0

    .prologue
    .line 611
    return-void
.end method

.method public loadDataInSpecialMode(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6
    .parameter "baseUrl"
    .parameter "data"
    .parameter "mode"

    .prologue
    .line 559
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    :goto_0
    return-void

    .line 561
    :cond_0
    iput p3, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mMode:I

    .line 562
    const/4 v3, 0x0

    const-string v4, "utf-8"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/browser/ui/MiRenWebViewCore;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mWebViewClient:Landroid/webkit/WebViewClient;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, p1, v1}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 8
    .parameter "url"

    .prologue
    const/4 v7, 0x1

    .line 278
    iget-boolean v5, p0, Lcom/android/browser/ui/MiRenWebViewBase;->mDestroyed:Z

    if-eqz v5, :cond_0

    .line 319
    :goto_0
    return-void

    .line 283
    :cond_0
    iget-object v5, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mVideoBtns:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3

    .line 284
    iget-object v5, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mVideoBtns:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 285
    .local v4, view:Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-ne v5, p0, :cond_1

    .line 286
    invoke-virtual {p0, v4}, Lcom/android/browser/ui/MiRenWebViewCore;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 289
    .end local v4           #view:Landroid/view/View;
    :cond_2
    iget-object v5, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mVideoBtns:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 292
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_3
    invoke-static {p1}, Lcom/android/browser/model/MiRenProtocolUrlMapper;->getMappedRealUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 293
    .local v2, mappedUrl:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 294
    iget v5, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mMode:I

    if-eq v5, v7, :cond_4

    .line 296
    iput-object p1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mLoadedUrl:Ljava/lang/String;

    .line 298
    :cond_4
    move-object p1, v2

    .line 309
    :cond_5
    :goto_2
    iget-object v5, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mRefererUrl:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    iget-object v5, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mRefererUrl:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/browser/model/MiRenProtocolUrlMapper;->getMappedRealUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_7

    .line 313
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 314
    .local v0, extraHdr:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "Referer"

    iget-object v6, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mRefererUrl:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    invoke-virtual {p0, p1, v0}, Lcom/android/browser/ui/MiRenWebViewCore;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 300
    .end local v0           #extraHdr:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 301
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 302
    .local v3, uri:Landroid/net/Uri;
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string v6, "javascript"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    iget v5, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mMode:I

    if-eq v5, v7, :cond_5

    .line 304
    iput-object p1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mLoadedUrl:Ljava/lang/String;

    goto :goto_2

    .line 317
    .end local v3           #uri:Landroid/net/Uri;
    :cond_7
    invoke-super {p0, p1}, Lcom/android/browser/ui/MiRenWebViewBase;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public loadUrlInSpecialMode(Ljava/lang/String;I)V
    .locals 9
    .parameter "url"
    .parameter "mode"

    .prologue
    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v2, "Mozilla/5.0 (iPad; U; CPU OS 3_2 like Mac OS X; zh-cn) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B367 Safari/531.21.10"

    const-string v4, "utf-8"

    .line 442
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/BrowserSettings;->getLoadImageMode()Lcom/android/browser/controller/BrowserSettings$LoadImageModeOption;

    move-result-object v0

    sget-object v1, Lcom/android/browser/controller/BrowserSettings$LoadImageModeOption;->LOAD_IMAGE_MODE_ON_FOR_WIFI:Lcom/android/browser/controller/BrowserSettings$LoadImageModeOption;

    if-ne v0, v1, :cond_0

    .line 443
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/browser/util/DownloadHelpers;->isWifiAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 444
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 448
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/browser/ui/MiRenWebViewBase;->mDestroyed:Z

    if-eqz v0, :cond_3

    .line 526
    :cond_1
    :goto_1
    return-void

    .line 446
    :cond_2
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    goto :goto_0

    .line 451
    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 454
    iget-boolean v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mNeedRevaildate:Z

    if-eqz v0, :cond_5

    .line 455
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 461
    :goto_2
    iput-boolean v7, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mNeedRevaildate:Z

    .line 463
    iget v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mMode:I

    if-ne v0, v7, :cond_4

    .line 464
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mReadingModeController:Lcom/android/browser/controller/ReadingModeController;

    invoke-virtual {v0}, Lcom/android/browser/controller/ReadingModeController;->cancelLoad()V

    .line 466
    :cond_4
    iput p2, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mMode:I

    .line 468
    packed-switch p2, :pswitch_data_0

    .line 517
    :pswitch_0
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/BrowserSettings;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mozilla/5.0 (iPad; U; CPU OS 3_2 like Mac OS X; zh-cn) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B367 Safari/531.21.10"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "ipad.xunlei.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 519
    invoke-direct {p0, p1}, Lcom/android/browser/ui/MiRenWebViewCore;->hackXunlei(Ljava/lang/String;)V

    goto :goto_1

    .line 459
    :cond_5
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    goto :goto_2

    .line 470
    :pswitch_1
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mForumController:Lcom/android/browser/controller/ForumController;

    invoke-virtual {v0}, Lcom/android/browser/controller/ForumController;->reset()V

    .line 471
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/BrowserSettings;->getUserAgent()Ljava/lang/String;

    move-result-object v6

    .line 472
    .local v6, ua:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "Mozilla/5.0 (iPad; U; CPU OS 3_2 like Mac OS X; zh-cn) AppleWebKit/531.21.10 (KHTML, like Gecko) Version/4.0.4 Mobile/7B367 Safari/531.21.10"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "ipad.xunlei.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 474
    invoke-direct {p0, p1}, Lcom/android/browser/ui/MiRenWebViewCore;->hackXunlei(Ljava/lang/String;)V

    .line 524
    .end local v6           #ua:Ljava/lang/String;
    :cond_6
    :goto_3
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/BrowserSettings;->getTextSize()Landroid/webkit/WebSettings$TextSize;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/browser/ui/MiRenWebViewCore;->onTextSizeSettingChange(Landroid/webkit/WebSettings$TextSize;)V

    .line 525
    iput-boolean v8, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mFirstRenderNotified:Z

    goto/16 :goto_1

    .line 476
    .restart local v6       #ua:Ljava/lang/String;
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/browser/ui/MiRenWebViewCore;->loadUrl(Ljava/lang/String;)V

    goto :goto_3

    .line 481
    .end local v6           #ua:Ljava/lang/String;
    :pswitch_2
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mForumController:Lcom/android/browser/controller/ForumController;

    invoke-virtual {v0}, Lcom/android/browser/controller/ForumController;->reset()V

    .line 482
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mReadingModeController:Lcom/android/browser/controller/ReadingModeController;

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/controller/ReadingModeController;->setBookmarkDBId(J)V

    .line 483
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mReadingModeController:Lcom/android/browser/controller/ReadingModeController;

    invoke-virtual {v0, p1}, Lcom/android/browser/controller/ReadingModeController;->setLoadedUrl(Ljava/lang/String;)V

    .line 484
    iput-boolean v7, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mWaitForPageFinish:Z

    .line 485
    sget-object v0, Lcom/android/browser/ui/MiRenWebViewCore;->sReadingPageData:Ljava/lang/String;

    if-nez v0, :cond_8

    .line 486
    invoke-direct {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->loadReadingPageData()V

    .line 488
    :cond_8
    sget-object v2, Lcom/android/browser/ui/MiRenWebViewCore;->sReadingPageData:Ljava/lang/String;

    const-string v0, "utf-8"

    move-object v0, p0

    move-object v1, p1

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/browser/ui/MiRenWebViewCore;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    iput-boolean v7, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mLoadReadingModeDirectly:Z

    .line 490
    iput-object p1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mOriginalUrl:Ljava/lang/String;

    .line 491
    sget-boolean v0, Lcom/android/browser/ui/MiRenBrowserActivity;->isInTest:Z

    if-nez v0, :cond_6

    .line 492
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09007d

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 496
    :pswitch_3
    iput-boolean v7, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mLoadForumModeDirectly:Z

    .line 497
    iput-boolean v7, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mWaitForPageFinish:Z

    .line 498
    sget-object v0, Lcom/android/browser/ui/MiRenWebViewCore;->sForumPageData:Ljava/lang/String;

    if-nez v0, :cond_9

    .line 499
    invoke-direct {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->loadForumPageData()V

    .line 501
    :cond_9
    sget-object v2, Lcom/android/browser/ui/MiRenWebViewCore;->sForumPageData:Ljava/lang/String;

    const-string v0, "utf-8"

    move-object v0, p0

    move-object v1, p1

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/browser/ui/MiRenWebViewCore;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    iput-object p1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mOriginalUrl:Ljava/lang/String;

    goto :goto_3

    .line 506
    :pswitch_4
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mForumController:Lcom/android/browser/controller/ForumController;

    invoke-virtual {v0}, Lcom/android/browser/controller/ForumController;->reset()V

    .line 507
    iput-boolean v7, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mWaitForPageFinish:Z

    .line 509
    sget-object v0, Lcom/android/browser/ui/MiRenWebViewCore;->sSimplePageData:Ljava/lang/String;

    if-nez v0, :cond_a

    .line 510
    invoke-direct {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->loadSimplePageData()V

    .line 512
    :cond_a
    sget-object v2, Lcom/android/browser/ui/MiRenWebViewCore;->sSimplePageData:Ljava/lang/String;

    const-string v0, "utf-8"

    move-object v0, p0

    move-object v1, p1

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/browser/ui/MiRenWebViewCore;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    iput-object p1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mOriginalUrl:Ljava/lang/String;

    goto :goto_3

    .line 522
    :cond_b
    invoke-virtual {p0, p1}, Lcom/android/browser/ui/MiRenWebViewCore;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 468
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public loadUrlWithPreprocess(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 334
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/browser/ui/MiRenWebViewCore;->loadUrlWithPreprocess(Ljava/lang/String;I)V

    .line 335
    return-void
.end method

.method public loadUrlWithPreprocess(Ljava/lang/String;I)V
    .locals 1
    .parameter "url"
    .parameter "suggestedMode"

    .prologue
    .line 338
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/browser/ui/MiRenWebViewCore;->loadUrlWithPreprocess(Ljava/lang/String;IZ)V

    .line 339
    return-void
.end method

.method public markLoadingFinishedStatus()V
    .locals 1

    .prologue
    .line 763
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mIsLoading:Z

    .line 764
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mProgress:I

    .line 765
    return-void
.end method

.method public markLoadingStartedStatus()V
    .locals 1

    .prologue
    .line 758
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mIsLoading:Z

    .line 759
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mProgress:I

    .line 760
    return-void
.end method

.method public notifyPageFinished(Ljava/lang/String;)V
    .locals 12
    .parameter "url"

    .prologue
    const/4 v10, 0x0

    const/16 v7, 0xa

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v11, "\');"

    .line 646
    const-string v5, "about:"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 733
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->markLoadingFinishedStatus()V

    .line 656
    iget-object v5, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mWebListener:Lcom/android/browser/ui/MiRenWebViewListener;

    invoke-interface {v5, p0, p1}, Lcom/android/browser/ui/MiRenWebViewListener;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 657
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/controller/BrowserSettings;->getTextSize()Landroid/webkit/WebSettings$TextSize;

    move-result-object v2

    .line 658
    .local v2, size:Landroid/webkit/WebSettings$TextSize;
    iget v5, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mMode:I

    if-ne v5, v9, :cond_6

    .line 659
    iget-boolean v5, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mWaitForPageFinish:Z

    if-eqz v5, :cond_0

    .line 661
    iget-boolean v5, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mLoadReadingModeDirectly:Z

    if-eqz v5, :cond_2

    .line 662
    iget-object v5, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mReadingModeController:Lcom/android/browser/controller/ReadingModeController;

    iget-object v6, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mOriginalUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/browser/controller/ReadingModeController;->onEnterReadingModeDirectly(Ljava/lang/String;)Z

    move-result v3

    .line 663
    .local v3, successful:Z
    iput-boolean v8, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mLoadReadingModeDirectly:Z

    .line 664
    if-nez v3, :cond_3

    sget-boolean v5, Lcom/android/browser/ui/MiRenBrowserActivity;->isInTest:Z

    if-nez v5, :cond_3

    .line 666
    iput-boolean v8, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mWaitForPageFinish:Z

    .line 667
    iget-object v5, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mOriginalUrl:Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/browser/ui/MiRenWebViewCore;->loadUrlWithPreprocess(Ljava/lang/String;)V

    .line 668
    iget v5, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mProgress:I

    invoke-virtual {p0, v5, v10}, Lcom/android/browser/ui/MiRenWebViewCore;->updateProgress(ILjava/lang/String;)V

    goto :goto_0

    .line 673
    .end local v3           #successful:Z
    :cond_2
    iget-object v5, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mReadingModeController:Lcom/android/browser/controller/ReadingModeController;

    invoke-virtual {v5}, Lcom/android/browser/controller/ReadingModeController;->setReadingModeOn()V

    .line 675
    :cond_3
    iget-object v5, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mOriginalUrl:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mLoadedUrl:Ljava/lang/String;

    .line 676
    iget-object v5, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mLoadedUrl:Ljava/lang/String;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 677
    .local v4, uri:Landroid/net/Uri;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 678
    .local v0, baseUrl:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setBaseUrl(\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\');"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;)V

    .line 680
    sget-object v5, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    if-eq v2, v5, :cond_4

    .line 681
    iget-object v5, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mReadingModeController:Lcom/android/browser/controller/ReadingModeController;

    invoke-virtual {v5, v2}, Lcom/android/browser/controller/ReadingModeController;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 683
    :cond_4
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/controller/BrowserSettings;->getIsInNightMode()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 684
    iget-object v5, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mReadingModeController:Lcom/android/browser/controller/ReadingModeController;

    invoke-virtual {v5}, Lcom/android/browser/controller/ReadingModeController;->updateNightMode()V

    .line 686
    :cond_5
    iget v5, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mProgress:I

    invoke-virtual {p0, v5, v10}, Lcom/android/browser/ui/MiRenWebViewCore;->updateProgress(ILjava/lang/String;)V

    .line 687
    iput-boolean v8, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mWaitForPageFinish:Z

    goto/16 :goto_0

    .line 690
    .end local v0           #baseUrl:Ljava/lang/String;
    .end local v4           #uri:Landroid/net/Uri;
    :cond_6
    iget v5, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mMode:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_8

    .line 691
    iget-boolean v5, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mWaitForPageFinish:Z

    if-eqz v5, :cond_0

    .line 694
    iget-object v5, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mOriginalUrl:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mLoadedUrl:Ljava/lang/String;

    .line 695
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setBaseUrl(\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mOriginalUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\');"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;)V

    .line 696
    iget-boolean v5, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mLoadForumModeDirectly:Z

    if-eqz v5, :cond_7

    .line 697
    iget-object v5, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mForumController:Lcom/android/browser/controller/ForumController;

    iget-object v6, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mOriginalUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/browser/controller/ForumController;->enterForumModeDirectly(Ljava/lang/String;)V

    .line 701
    :goto_1
    iput-boolean v8, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mWaitForPageFinish:Z

    goto/16 :goto_0

    .line 700
    :cond_7
    iget-object v5, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mForumController:Lcom/android/browser/controller/ForumController;

    invoke-virtual {v5}, Lcom/android/browser/controller/ForumController;->show()V

    goto :goto_1

    .line 704
    :cond_8
    iget v5, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mMode:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_9

    .line 705
    iget-boolean v5, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mWaitForPageFinish:Z

    if-eqz v5, :cond_0

    .line 708
    iget-object v5, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mOriginalUrl:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mLoadedUrl:Ljava/lang/String;

    .line 709
    iget-object v5, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mSimpleController:Lcom/android/browser/controller/SimpleModeController;

    iget-object v6, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mOriginalUrl:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/browser/controller/SimpleModeController;->Navigate(Ljava/lang/String;)V

    .line 710
    iput-boolean v8, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mWaitForPageFinish:Z

    goto/16 :goto_0

    .line 714
    :cond_9
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/controller/BrowserSettings;->getReadingModeOption()Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;

    move-result-object v5

    sget-object v6, Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;->OFF:Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;

    if-eq v5, v6, :cond_a

    .line 715
    iget-object v5, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mReadingModeController:Lcom/android/browser/controller/ReadingModeController;

    invoke-virtual {v5}, Lcom/android/browser/controller/ReadingModeController;->queryReadingHTML()V

    .line 717
    :cond_a
    iget v5, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mProgress:I

    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->getLoadedUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lcom/android/browser/ui/MiRenWebViewCore;->updateProgress(ILjava/lang/String;)V

    .line 719
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/controller/BrowserSettings;->getForumModeOption()Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;

    move-result-object v5

    sget-object v6, Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;->OFF:Lcom/android/browser/controller/BrowserSettings$SpecialModeOption;

    if-eq v5, v6, :cond_b

    .line 720
    iget-object v5, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mForumController:Lcom/android/browser/controller/ForumController;

    invoke-virtual {v5, p0}, Lcom/android/browser/controller/ForumController;->checkForumAvailable(Lcom/android/browser/ui/MiRenWebViewBase;)V

    .line 726
    :cond_b
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x8

    if-ge v5, v6, :cond_0

    .line 727
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getDefaultFontSize()I

    move-result v1

    .line 728
    .local v1, fontSize:I
    if-ge v1, v7, :cond_c

    move v1, v7

    .line 729
    :cond_c
    const-string v5, "javascript:var inputCollection = document.getElementsByTagName(\"input\"); for (var i=0; i<inputCollection.length; i++) {if (inputCollection[i].type!=\'password\') continue; inputCollection[i].style.height = \'%dpx\'; inputCollection[i].style.fontSize = \'%dpx\'; }"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    mul-int/lit8 v7, v1, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/browser/ui/MiRenWebViewCore;->loadUrl(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public notifyPageStarted(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 637
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->markLoadingStartedStatus()V

    .line 638
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mWebListener:Lcom/android/browser/ui/MiRenWebViewListener;

    invoke-interface {v0, p1, p2}, Lcom/android/browser/ui/MiRenWebViewListener;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 639
    return-void
.end method

.method public onBookmarkAdded(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 601
    iget v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 602
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mReadingModeController:Lcom/android/browser/controller/ReadingModeController;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/controller/ReadingModeController;->setBookmarkDBId(J)V

    .line 604
    :cond_0
    return-void
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 0
    .parameter "url"
    .parameter "databaseIdentifier"
    .parameter "currentQuota"
    .parameter "estimatedSize"
    .parameter "totalUsedQuota"
    .parameter "quotaUpdater"

    .prologue
    .line 1115
    return-void
.end method

.method public onForumModeAvailable(Z)V
    .locals 0
    .parameter "available"

    .prologue
    .line 996
    return-void
.end method

.method public onForumModeNotAvailable()V
    .locals 1

    .prologue
    .line 990
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mFallbackFromSpecialMode:Z

    .line 991
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mLoadedUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/browser/ui/MiRenWebViewCore;->loadUrlWithPreprocess(Ljava/lang/String;)V

    .line 992
    return-void
.end method

.method public onNightModeSettingChange()V
    .locals 2

    .prologue
    .line 591
    iget v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 592
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mReadingModeController:Lcom/android/browser/controller/ReadingModeController;

    invoke-virtual {v0}, Lcom/android/browser/controller/ReadingModeController;->updateNightMode()V

    .line 594
    :cond_0
    return-void
.end method

.method public onPageDataFinish()V
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mWebListener:Lcom/android/browser/ui/MiRenWebViewListener;

    invoke-interface {v0}, Lcom/android/browser/ui/MiRenWebViewListener;->onPageDataFinished()V

    .line 178
    return-void
.end method

.method public onReadingModeDataReady(Z)V
    .locals 4
    .parameter "available"

    .prologue
    const/4 v3, 0x1

    .line 978
    iget v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mMode:I

    if-ne v0, v3, :cond_1

    if-nez p1, :cond_1

    .line 981
    sget-boolean v0, Lcom/android/browser/ui/MiRenBrowserActivity;->isInTest:Z

    if-nez v0, :cond_0

    .line 982
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f09007f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 983
    :cond_0
    iput-boolean v3, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mFallbackFromSpecialMode:Z

    .line 984
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mLoadedUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/browser/ui/MiRenWebViewCore;->loadUrlWithPreprocess(Ljava/lang/String;)V

    .line 986
    :cond_1
    return-void
.end method

.method public onSimpleModeNotAvailable(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 575
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/browser/ui/MiRenWebViewCore;->loadUrlWithPreprocess(Ljava/lang/String;IZ)V

    .line 576
    return-void
.end method

.method public onSwitchToBackground()V
    .locals 1

    .prologue
    .line 882
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 889
    :cond_0
    :goto_0
    return-void

    .line 885
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->onPause()V

    .line 886
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mReadingModeController:Lcom/android/browser/controller/ReadingModeController;

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mReadingModeController:Lcom/android/browser/controller/ReadingModeController;

    invoke-virtual {v0}, Lcom/android/browser/controller/ReadingModeController;->onWebViewPause()V

    goto :goto_0
.end method

.method public onSwitchToFront()V
    .locals 1

    .prologue
    .line 871
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    :goto_0
    return-void

    .line 874
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mReadingModeController:Lcom/android/browser/controller/ReadingModeController;

    if-eqz v0, :cond_1

    .line 875
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mReadingModeController:Lcom/android/browser/controller/ReadingModeController;

    invoke-virtual {v0}, Lcom/android/browser/controller/ReadingModeController;->onWebViewResume()V

    .line 878
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->onResume()V

    goto :goto_0
.end method

.method public onTextSizeSettingChange(Landroid/webkit/WebSettings$TextSize;)V
    .locals 2
    .parameter "size"

    .prologue
    .line 580
    iget v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 581
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    sget-object v1, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 582
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mReadingModeController:Lcom/android/browser/controller/ReadingModeController;

    invoke-virtual {v0, p1}, Lcom/android/browser/controller/ReadingModeController;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    .line 588
    :goto_0
    return-void

    .line 585
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setTextSize(Landroid/webkit/WebSettings$TextSize;)V

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mHiddenViewDrawingMode:Z

    if-eqz v0, :cond_0

    .line 232
    const/16 v0, 0x8

    if-ne p2, v0, :cond_0

    .line 235
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 238
    :cond_0
    return-void
.end method

.method public pauseTimers()V
    .locals 1

    .prologue
    .line 853
    invoke-super {p0}, Lcom/android/browser/ui/MiRenWebViewBase;->pauseTimers()V

    .line 854
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mReadingModeController:Lcom/android/browser/controller/ReadingModeController;

    if-eqz v0, :cond_0

    .line 855
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mReadingModeController:Lcom/android/browser/controller/ReadingModeController;

    invoke-virtual {v0}, Lcom/android/browser/controller/ReadingModeController;->onBrowserPause()V

    .line 857
    :cond_0
    return-void
.end method

.method public reload()V
    .locals 3

    .prologue
    .line 925
    iget v1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mMode:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mMode:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 926
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->getLoadedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/browser/ui/MiRenWebViewCore;->loadUrlWithPreprocess(Ljava/lang/String;)V

    .line 932
    :goto_0
    return-void

    .line 929
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->getLoadedUrl()Ljava/lang/String;

    move-result-object v0

    .line 930
    .local v0, url:Ljava/lang/String;
    iget v1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mMode:I

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/ui/MiRenWebViewCore;->loadUrlInSpecialMode(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1119
    iget-boolean v0, p0, Lcom/android/browser/ui/MiRenWebViewBase;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 1120
    const/4 v0, 0x0

    .line 1121
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/browser/ui/MiRenWebViewBase;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public resetLoadedUrl()V
    .locals 1

    .prologue
    .line 826
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mLoadedUrl:Ljava/lang/String;

    .line 827
    return-void
.end method

.method public resumeTimers()V
    .locals 1

    .prologue
    .line 861
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 867
    :cond_0
    :goto_0
    return-void

    .line 863
    :cond_1
    invoke-super {p0}, Lcom/android/browser/ui/MiRenWebViewBase;->resumeTimers()V

    .line 864
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mReadingModeController:Lcom/android/browser/controller/ReadingModeController;

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mReadingModeController:Lcom/android/browser/controller/ReadingModeController;

    invoke-virtual {v0}, Lcom/android/browser/controller/ReadingModeController;->onBrowserResume()V

    goto :goto_0
.end method

.method public setEmbeddedTitleBarView(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 1021
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1022
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1024
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/browser/ui/MiRenWebViewCore;->setEmbeddedTitleBar(Landroid/view/View;)V

    .line 1025
    return-void
.end method

.method public setHiddenViewDrawingMode()V
    .locals 1

    .prologue
    .line 227
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mHiddenViewDrawingMode:Z

    .line 228
    return-void
.end method

.method public setListener(Lcom/android/browser/ui/MiRenWebViewListener;)V
    .locals 0
    .parameter "tab"

    .prologue
    .line 1104
    iput-object p1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mWebListener:Lcom/android/browser/ui/MiRenWebViewListener;

    .line 1105
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 915
    iput p1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mMode:I

    .line 916
    return-void
.end method

.method public setProgress(I)V
    .locals 0
    .parameter "progress"

    .prologue
    .line 620
    iput p1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mProgress:I

    .line 621
    return-void
.end method

.method public setReferer(Ljava/lang/String;I)V
    .locals 0
    .parameter "refererUrl"
    .parameter "refererMode"

    .prologue
    .line 944
    iput-object p1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mRefererUrl:Ljava/lang/String;

    .line 945
    iput p2, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mRefererMode:I

    .line 946
    return-void
.end method

.method public setTextSelectionMode(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 212
    if-eqz p1, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->setUpSelect()V

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->selectionDone()V

    goto :goto_0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 830
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 831
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 832
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string v3, "javascript"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 849
    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    return-void

    .line 836
    :cond_1
    iget v2, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 841
    invoke-static {p1}, Lcom/android/browser/model/MiRenProtocolUrlMapper;->getMappedMiRenUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 842
    .local v0, mirenUrl:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 843
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mLoadedUrl:Ljava/lang/String;

    .line 848
    :goto_1
    iget-object v2, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mWebListener:Lcom/android/browser/ui/MiRenWebViewListener;

    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->getLoadedUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/browser/ui/MiRenWebViewListener;->updateUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 845
    :cond_2
    iput-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mLoadedUrl:Ljava/lang/String;

    goto :goto_1
.end method

.method public showForumMode(Z)V
    .locals 3
    .parameter "show"

    .prologue
    const/4 v2, 0x3

    .line 999
    if-eqz p1, :cond_1

    .line 1000
    iget v1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mMode:I

    if-eq v1, v2, :cond_0

    .line 1001
    iget-object v1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mForumController:Lcom/android/browser/controller/ForumController;

    invoke-virtual {v1}, Lcom/android/browser/controller/ForumController;->beginTransform()V

    .line 1002
    iput v2, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mMode:I

    .line 1011
    :cond_0
    :goto_0
    return-void

    .line 1006
    :cond_1
    iget-object v1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mForumController:Lcom/android/browser/controller/ForumController;

    invoke-virtual {v1}, Lcom/android/browser/controller/ForumController;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 1007
    .local v0, url:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1009
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/ui/MiRenWebViewCore;->loadUrlInSpecialMode(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public showForumPage()V
    .locals 1

    .prologue
    .line 1014
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mWaitForPageFinish:Z

    .line 1015
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->getLoadedUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mOriginalUrl:Ljava/lang/String;

    .line 1016
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mLoadForumModeDirectly:Z

    .line 1017
    const-string v0, "miui:forum"

    invoke-virtual {p0, v0}, Lcom/android/browser/ui/MiRenWebViewCore;->loadUrl(Ljava/lang/String;)V

    .line 1018
    return-void
.end method

.method public showReadingMode(Z)V
    .locals 5
    .parameter "show"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v4, "miui:reading"

    .line 892
    if-eqz p1, :cond_1

    .line 893
    iget v1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mMode:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mReadingModeController:Lcom/android/browser/controller/ReadingModeController;

    invoke-virtual {v1}, Lcom/android/browser/controller/ReadingModeController;->isReadingModeDataAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 894
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->getLoadedUrl()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mOriginalUrl:Ljava/lang/String;

    .line 895
    iput v2, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mMode:I

    .line 896
    iput-boolean v2, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mWaitForPageFinish:Z

    .line 897
    const-string v1, "miui:reading"

    invoke-virtual {p0, v4}, Lcom/android/browser/ui/MiRenWebViewCore;->loadUrl(Ljava/lang/String;)V

    .line 898
    const-string v1, "miui:reading"

    invoke-virtual {p0, v4}, Lcom/android/browser/ui/MiRenWebViewCore;->loadUrl(Ljava/lang/String;)V

    .line 899
    sget-boolean v1, Lcom/android/browser/ui/MiRenBrowserActivity;->isInTest:Z

    if-nez v1, :cond_0

    .line 900
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09007d

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 912
    :cond_0
    :goto_0
    return-void

    .line 905
    :cond_1
    iput-boolean v2, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mFallbackFromSpecialMode:Z

    .line 906
    iget-object v1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mReadingModeController:Lcom/android/browser/controller/ReadingModeController;

    invoke-virtual {v1}, Lcom/android/browser/controller/ReadingModeController;->getCurrentUrl()Ljava/lang/String;

    move-result-object v0

    .line 907
    .local v0, url:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mReadingModeController:Lcom/android/browser/controller/ReadingModeController;

    invoke-virtual {v1}, Lcom/android/browser/controller/ReadingModeController;->setReadingModeOff()V

    .line 908
    invoke-virtual {p0, v0}, Lcom/android/browser/ui/MiRenWebViewCore;->loadUrlWithPreprocess(Ljava/lang/String;)V

    .line 909
    sget-boolean v1, Lcom/android/browser/ui/MiRenBrowserActivity;->isInTest:Z

    if-nez v1, :cond_0

    .line 910
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f09007e

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public stopLoading()V
    .locals 2

    .prologue
    .line 737
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 746
    :goto_0
    return-void

    .line 739
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenWebViewCore;->markLoadingFinishedStatus()V

    .line 740
    iget v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 741
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mForumController:Lcom/android/browser/controller/ForumController;

    invoke-virtual {v0}, Lcom/android/browser/controller/ForumController;->stopLoading()V

    goto :goto_0

    .line 744
    :cond_1
    invoke-super {p0}, Lcom/android/browser/ui/MiRenWebViewBase;->stopLoading()V

    goto :goto_0
.end method

.method public updateProgress(ILjava/lang/String;)V
    .locals 1
    .parameter "progress"
    .parameter "title"

    .prologue
    .line 949
    if-lez p1, :cond_0

    .line 950
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, p0, p1}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 951
    iput p1, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mProgress:I

    .line 954
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mWebListener:Lcom/android/browser/ui/MiRenWebViewListener;

    invoke-interface {v0, p0, p1}, Lcom/android/browser/ui/MiRenWebViewListener;->updateProgress(Landroid/webkit/WebView;I)V

    .line 955
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 956
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore;->mWebListener:Lcom/android/browser/ui/MiRenWebViewListener;

    invoke-interface {v0, p2}, Lcom/android/browser/ui/MiRenWebViewListener;->updateUrl(Ljava/lang/String;)V

    .line 958
    :cond_1
    return-void
.end method
