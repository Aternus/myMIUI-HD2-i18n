.class public Lcom/android/browser/ui/MiRenBrowserActivity;
.super Lcom/android/browser/ui/WebViewHolderActivity;
.source "MiRenBrowserActivity.java"

# interfaces
.implements Landroid/webkit/DownloadListener;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/ui/MiRenBrowserActivity$CustomViewApiWrapper;,
        Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;,
        Lcom/android/browser/ui/MiRenBrowserActivity$Consts;,
        Lcom/android/browser/ui/MiRenBrowserActivity$FuncButtonTypeEnum;
    }
.end annotation


# static fields
.field public static final BUTTON_SHOW_TIMER_DELAY:I = 0xbb8

.field private static final COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams; = null

.field private static final EXIT_DELAY_FOR_CLEAR_CACHE:I = 0x3a98

.field private static final FEEDBACK_EMAILS:[Ljava/lang/String; = null

.field static final FILE_SELECTED:I = 0x4

.field private static final FIRST_VISITED:Ljava/lang/String; = "firstVisited"

.field private static final FIRST_VISITED_R77:Ljava/lang/String; = "firstVisited77"

.field public static final FOCUS_NODE_HREF:I = 0x4

.field public static final FULL_SCREEN_MODE:I = 0x1

.field public static final GO_BACK:I = 0xe

.field public static final GO_FORWARD:I = 0xf

.field public static final HIDE_NAV_BUTTON:I = 0x64

.field public static final LOCK_ICON_MIXED:I = 0x2

.field public static final LOCK_ICON_SECURE:I = 0x1

.field public static final LOCK_ICON_UNSECURE:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "browser/BrowserActivity"

.field public static final NEWTAB_TIMER_DELAY:I = 0xbb8

.field public static final NEXT_TAB:I = 0x10

.field public static final NORMAL_SCREEN_MODE:I = 0x3

.field private static final PLUGIN_PERMISSION:Ljava/lang/String; = "android.webkit.permission.PLUGIN"

.field public static final PREVIOUS_TAB:I = 0x11

.field public static final REFRESH_NAV_BUTTON_STATUS:I = 0x9

.field private static final RELEASE_PROCESS_LOCK:I = 0xc

.field public static final SCROLL_TIMER_DELAY:I = 0x0

.field private static final SHOW_PAGE_INFO_CONTEXT_MENU_ID:I = 0xd

.field public static isInTest:Z

.field private static sGoogleApps:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private curBrightness:F

.field private curNightMode:Z

.field private mActivityPaused:Z

.field private mBackBtn:Landroid/widget/ImageButton;

.field private mBookmarkBtn:Landroid/widget/ImageButton;

.field private mContentLayoutInitialized:Z

.field private mCustomView:Landroid/view/View;

.field private mCustomViewApiWrapper:Lcom/android/browser/ui/MiRenBrowserActivity$CustomViewApiWrapper;

.field private mCustomViewContainer:Landroid/widget/FrameLayout;

.field private mDefaultVideoPoster:Landroid/graphics/Bitmap;

.field private mDummyWebView:Landroid/webkit/WebView;

.field private mFakeTitleView:Lcom/android/browser/ui/TitleView;

.field private mFakeTitleViewLayout:Landroid/widget/LinearLayout;

.field private mForwardBtn:Landroid/widget/ImageButton;

.field private mFullScreenBtn:Landroid/widget/ImageButton;

.field private mHandler:Landroid/os/Handler;

.field private mHomeBtn:Landroid/widget/ImageButton;

.field private mHttpAuthHandler:Landroid/webkit/HttpAuthHandler;

.field private mHttpAuthenticationDialog:Landroid/app/AlertDialog;

.field private mIsNetworkUp:Z

.field private mLoadingFrameLayout:Landroid/widget/FrameLayout;

.field private mLoadingFullScreenBtn:Landroid/widget/ImageView;

.field private mLoadingProgressBar:Landroid/widget/ProgressBar;

.field private mMenuBar:Landroid/view/View;

.field private mMixLockIcon:Landroid/graphics/drawable/Drawable;

.field private mNetworkStateChangedFilter:Landroid/content/IntentFilter;

.field private mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mNetworkStateRegistered:Z

.field private mOriLockBtn:Landroid/widget/OrientationLockButton;

.field private mPackageInstallationReceiver:Landroid/content/BroadcastReceiver;

.field private mPageInfoDialog:Landroid/app/AlertDialog;

.field private mPageInfoFromShowSSLCertificateOnError:Z

.field private mPageInfoView:Lcom/android/browser/controller/Tab;

.field private mSSLCertificateDialog:Landroid/app/AlertDialog;

.field private mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

.field private mSSLCertificateOnErrorError:Landroid/net/http/SslError;

.field private mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

.field private mSSLCertificateOnErrorTab:Lcom/android/browser/controller/Tab;

.field private mSSLCertificateView:Lcom/android/browser/controller/Tab;

.field private mSecLockIcon:Landroid/graphics/drawable/Drawable;

.field private mSettings:Lcom/android/browser/controller/BrowserSettings;

.field private mShowStatusBar:Z

.field private mSubWindowFrameLayout:Landroid/widget/FrameLayout;

.field private mSystemAllowGeolocationOrigins:Lcom/android/browser/controller/SystemAllowGeolocationOrigins;

.field private mTabController:Lcom/android/browser/controller/TabController;

.field private mTimer:Ljava/util/Timer;

.field private mUploadMessage:Ljava/lang/Object;

.field private mVideoProgressView:Landroid/view/View;

.field private mViewFlipper:Lcom/android/browser/ui/MiRenViewFlipperWrapper;

.field private mWebViewPaddingBottom:I

.field private mWebViewPaddingTop:I

.field private mWebViewPaddingTopNoUrlBar:I

.field private preScreenMode:I

.field public screenMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 143
    sput-boolean v3, Lcom/android/browser/ui/MiRenBrowserActivity;->isInTest:Z

    .line 208
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "mirenbrowser@gmail.com"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/browser/ui/MiRenBrowserActivity;->FEEDBACK_EMAILS:[Ljava/lang/String;

    .line 235
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/browser/ui/MiRenBrowserActivity;->sGoogleApps:Ljava/util/Set;

    .line 236
    sget-object v0, Lcom/android/browser/ui/MiRenBrowserActivity;->sGoogleApps:Ljava/util/Set;

    const-string v1, "com.google.android.youtube"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 239
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    sput-object v0, Lcom/android/browser/ui/MiRenBrowserActivity;->COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-direct {p0}, Lcom/android/browser/ui/WebViewHolderActivity;-><init>()V

    .line 161
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTimer:Ljava/util/Timer;

    .line 165
    iput-boolean v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mContentLayoutInitialized:Z

    .line 166
    iput v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->screenMode:I

    .line 173
    iput-boolean v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mActivityPaused:Z

    .line 174
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mShowStatusBar:Z

    .line 179
    iput-boolean v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mNetworkStateRegistered:Z

    .line 286
    new-instance v0, Lcom/android/browser/ui/MiRenBrowserActivity$2;

    invoke-direct {v0, p0}, Lcom/android/browser/ui/MiRenBrowserActivity$2;-><init>(Lcom/android/browser/ui/MiRenBrowserActivity;)V

    iput-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mHandler:Landroid/os/Handler;

    .line 2885
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/ui/MiRenBrowserActivity;)Lcom/android/browser/controller/TabController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/browser/ui/MiRenBrowserActivity;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mDummyWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/browser/ui/MiRenBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->onFullScreenModeButtonClick()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/browser/ui/MiRenBrowserActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/browser/ui/MiRenBrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mPageInfoDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/android/browser/ui/MiRenBrowserActivity;Lcom/android/browser/controller/Tab;)Lcom/android/browser/controller/Tab;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mPageInfoView:Lcom/android/browser/controller/Tab;

    return-object p1
.end method

.method static synthetic access$1400(Lcom/android/browser/ui/MiRenBrowserActivity;)Lcom/android/browser/controller/Tab;
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSSLCertificateOnErrorTab:Lcom/android/browser/controller/Tab;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/browser/ui/MiRenBrowserActivity;Lcom/android/browser/controller/Tab;)Lcom/android/browser/controller/Tab;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSSLCertificateOnErrorTab:Lcom/android/browser/controller/Tab;

    return-object p1
.end method

.method static synthetic access$1500(Lcom/android/browser/ui/MiRenBrowserActivity;)Landroid/webkit/SslErrorHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/browser/ui/MiRenBrowserActivity;Landroid/webkit/SslErrorHandler;)Landroid/webkit/SslErrorHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/browser/ui/MiRenBrowserActivity;)Landroid/net/http/SslError;
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSSLCertificateOnErrorError:Landroid/net/http/SslError;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/browser/ui/MiRenBrowserActivity;Landroid/net/http/SslError;)Landroid/net/http/SslError;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSSLCertificateOnErrorError:Landroid/net/http/SslError;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/browser/ui/MiRenBrowserActivity;Lcom/android/browser/controller/Tab;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/android/browser/ui/MiRenBrowserActivity;->showSSLCertificate(Lcom/android/browser/controller/Tab;)V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/browser/ui/MiRenBrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSSLCertificateDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1902(Lcom/android/browser/ui/MiRenBrowserActivity;Lcom/android/browser/controller/Tab;)Lcom/android/browser/controller/Tab;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSSLCertificateView:Lcom/android/browser/controller/Tab;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/browser/ui/MiRenBrowserActivity;Lcom/android/browser/controller/Tab;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Lcom/android/browser/ui/MiRenBrowserActivity;->showPageInfo(Lcom/android/browser/controller/Tab;Z)V

    return-void
.end method

.method static synthetic access$2002(Lcom/android/browser/ui/MiRenBrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2102(Lcom/android/browser/ui/MiRenBrowserActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2202(Lcom/android/browser/ui/MiRenBrowserActivity;Landroid/webkit/HttpAuthHandler;)Landroid/webkit/HttpAuthHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mHttpAuthHandler:Landroid/webkit/HttpAuthHandler;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/android/browser/ui/MiRenBrowserActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/browser/ui/MiRenBrowserActivity;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mCustomView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$2400()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/android/browser/ui/MiRenBrowserActivity;->COVER_SCREEN_GRAVITY_CENTER:Landroid/widget/FrameLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/browser/ui/MiRenBrowserActivity;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/Set;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/android/browser/ui/MiRenBrowserActivity;->sGoogleApps:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/browser/ui/MiRenBrowserActivity;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 141
    invoke-direct {p0, p1, p2}, Lcom/android/browser/ui/MiRenBrowserActivity;->packageChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/browser/ui/MiRenBrowserActivity;Ljava/util/Set;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/android/browser/ui/MiRenBrowserActivity;->addPackageNames(Ljava/util/Set;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/browser/ui/MiRenBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->startDownloaderService()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/browser/ui/MiRenBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->registerNetworkState()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/browser/ui/MiRenBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->retainIconsOnStartup()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/browser/ui/MiRenBrowserActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->setBackForwardButtonVisibility()V

    return-void
.end method

.method private addPackageNames(Ljava/util/Set;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 637
    .local p1, packageNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 643
    :cond_0
    :goto_0
    return-void

    .line 639
    :cond_1
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/browser/controller/Tab;->addPackageNames(Ljava/util/Set;)V

    goto :goto_0
.end method

.method private static encodePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "path"

    .prologue
    const/16 v9, 0x5d

    const/16 v8, 0x5b

    .line 2248
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 2250
    .local v2, chars:[C
    const/4 v5, 0x0

    .line 2251
    .local v5, needed:Z
    move-object v0, v2

    .local v0, arr$:[C
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-char v1, v0, v3

    .line 2252
    .local v1, c:C
    if-eq v1, v8, :cond_0

    if-ne v1, v9, :cond_2

    .line 2253
    :cond_0
    const/4 v5, 0x1

    .line 2257
    .end local v1           #c:C
    :cond_1
    if-nez v5, :cond_3

    move-object v7, p0

    .line 2271
    :goto_1
    return-object v7

    .line 2251
    .restart local v1       #c:C
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2261
    .end local v1           #c:C
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2262
    .local v6, sb:Ljava/lang/StringBuilder;
    move-object v0, v2

    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_6

    aget-char v1, v0, v3

    .line 2263
    .restart local v1       #c:C
    if-eq v1, v8, :cond_4

    if-ne v1, v9, :cond_5

    .line 2264
    :cond_4
    const/16 v7, 0x25

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2265
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2262
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2267
    :cond_5
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 2271
    .end local v1           #c:C
    :cond_6
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method private findErrorStringByErrorCode(Landroid/net/http/SslError;)I
    .locals 1
    .parameter "error"

    .prologue
    .line 2674
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0900a6

    .line 2678
    :goto_0
    return v0

    .line 2675
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0900a7

    goto :goto_0

    .line 2676
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0900a8

    goto :goto_0

    .line 2677
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0900a9

    goto :goto_0

    .line 2678
    :cond_3
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static fixUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "inUrl"

    .prologue
    .line 1613
    const/16 v4, 0x3a

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 1614
    .local v2, colon:I
    const/4 v0, 0x1

    .line 1615
    .local v0, allLower:Z
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 1616
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 1617
    .local v1, ch:C
    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1626
    .end local v1           #ch:C
    :cond_0
    const-string v4, "http://"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "https://"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1634
    :cond_1
    :goto_1
    return-object p0

    .line 1620
    .restart local v1       #ch:C
    :cond_2
    invoke-static {v1}, Ljava/lang/Character;->isLowerCase(C)Z

    move-result v4

    and-int/2addr v0, v4

    .line 1621
    const/4 v4, 0x1

    sub-int v4, v2, v4

    if-ne v3, v4, :cond_3

    if-nez v0, :cond_3

    .line 1622
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1615
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1628
    .end local v1           #ch:C
    :cond_4
    const-string v4, "http:"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "https:"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1629
    :cond_5
    const-string v4, "http:/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "https:/"

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1630
    :cond_6
    const-string v4, "/"

    const-string v5, "//"

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 1632
    :cond_7
    const-string v4, ":"

    const-string v5, "://"

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method public static fixUserTypedUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "url"

    .prologue
    .line 1596
    invoke-static {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1597
    invoke-static {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1599
    const-string v0, "&source=android-browser-suggest&"

    .line 1600
    .local v0, searchSource:Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1601
    const-string v1, "&source=android-browser-type&"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 1604
    :cond_0
    return-object p0
.end method

.method private formatCertificateDate(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .parameter "certificateDate"

    .prologue
    const-string v2, ""

    .line 2731
    if-nez p1, :cond_0

    .line 2732
    const-string v1, ""

    move-object v1, v2

    .line 2738
    :goto_0
    return-object v1

    .line 2734
    :cond_0
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 2735
    .local v0, formattedDate:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 2736
    const-string v1, ""

    move-object v1, v2

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 2738
    goto :goto_0
.end method

.method private getInstalledPackages()V
    .locals 2

    .prologue
    .line 600
    new-instance v0, Lcom/android/browser/ui/MiRenBrowserActivity$5;

    invoke-direct {v0, p0}, Lcom/android/browser/ui/MiRenBrowserActivity$5;-><init>(Lcom/android/browser/ui/MiRenBrowserActivity;)V

    .line 622
    .local v0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/util/Set<Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 623
    return-void
.end method

.method private getUrlDataFromIntent(Landroid/content/Intent;)Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;
    .locals 28
    .parameter "intent"

    .prologue
    .line 1492
    const-string v6, ""

    .line 1493
    .local v6, url:Ljava/lang/String;
    const/4 v8, -0x1

    .line 1494
    .local v8, mode:I
    const-wide/16 v9, -0x1

    .line 1495
    .local v9, id:J
    const/4 v7, 0x0

    .line 1496
    .local v7, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_8

    .line 1497
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    .line 1498
    .local v13, action:Ljava/lang/String;
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1499
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Lcom/android/browser/ui/MiRenBrowserActivity;->smartUrlFilter(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 1500
    const-string v5, "mode"

    const/4 v8, -0x1

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .end local v8           #mode:I
    move-result v8

    .line 1502
    .restart local v8       #mode:I
    const-string v5, "id"

    const-wide/16 v26, -0x1

    move-object/from16 v0, p1

    move-object v1, v5

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v9

    .line 1503
    if-eqz v6, :cond_0

    const-string v5, "content:"

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1505
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveType(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v20

    .line 1506
    .local v20, mimeType:Ljava/lang/String;
    if-eqz v20, :cond_0

    .line 1507
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "?"

    .end local v6           #url:Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1510
    .end local v20           #mimeType:Ljava/lang/String;
    .restart local v6       #url:Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    const-string v5, "http"

    invoke-virtual {v6, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1511
    const-string v5, "com.android.browser.headers"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v22

    .line 1513
    .local v22, pairs:Landroid/os/Bundle;
    if-eqz v22, :cond_1

    invoke-virtual/range {v22 .. v22}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1514
    invoke-virtual/range {v22 .. v22}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .line 1515
    .local v18, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/HashMap;

    .end local v7           #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1516
    .restart local v7       #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1517
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/String;

    .line 1518
    .local v19, key:Ljava/lang/String;
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v7

    move-object/from16 v1, v19

    move-object v2, v5

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1523
    .end local v18           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v19           #key:Ljava/lang/String;
    .end local v22           #pairs:Landroid/os/Bundle;
    :cond_1
    invoke-static {v6}, Lcom/android/browser/model/MiRenProtocolUrlMapper;->getMappedRealUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 1525
    new-instance v5, Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;

    invoke-direct {v5, v6, v8, v9, v10}, Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;-><init>(Ljava/lang/String;IJ)V

    .line 1589
    .end local v13           #action:Ljava/lang/String;
    :goto_1
    return-object v5

    .line 1527
    .restart local v13       #action:Ljava/lang/String;
    :cond_2
    const-string v5, "android.intent.action.SEARCH"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1531
    :cond_3
    const-string v5, "query"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1532
    .local v23, queryurl:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Lcom/android/browser/model/MiRenProtocolUrlMapper;->getMappedRealUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1534
    new-instance v5, Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;

    invoke-direct {v5, v6}, Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 1537
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v6

    .line 1538
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1539
    move-object/from16 v6, v23

    .line 1541
    :cond_5
    if-eqz v6, :cond_8

    .line 1547
    invoke-static {v6}, Lcom/android/browser/ui/MiRenBrowserActivity;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1548
    invoke-static {v6}, Lcom/android/browser/ui/MiRenBrowserActivity;->smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1549
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v15

    .line 1550
    .local v15, cr:Landroid/content/ContentResolver;
    const/16 v16, 0x0

    .line 1552
    .local v16, currentMode:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/controller/Tab;->getMode()I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v16

    .line 1557
    :goto_2
    const/4 v5, 0x1

    move/from16 v0, v16

    move v1, v5

    if-ne v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/controller/Tab;->getLoadedUrl()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 1559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/controller/Tab;->getLoadedUrl()Ljava/lang/String;

    move-result-object v21

    .line 1562
    .local v21, newUrl:Ljava/lang/String;
    :goto_3
    move/from16 v12, v16

    .line 1563
    .local v12, _mode:I
    new-instance v5, Lcom/android/browser/ui/MiRenBrowserActivity$17;

    move-object v0, v5

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v3, v21

    move v4, v12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/ui/MiRenBrowserActivity$17;-><init>(Lcom/android/browser/ui/MiRenBrowserActivity;Landroid/content/ContentResolver;Ljava/lang/String;I)V

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Void;

    invoke-virtual {v5, v11}, Lcom/android/browser/ui/MiRenBrowserActivity$17;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1570
    const-string v24, "&source=android-browser-suggest&"

    .line 1572
    .local v24, searchSource:Ljava/lang/String;
    move-object v0, v6

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1573
    const/16 v25, 0x0

    .line 1574
    .local v25, source:Ljava/lang/String;
    const-string v5, "app_data"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v14

    .line 1576
    .local v14, appData:Landroid/os/Bundle;
    if-eqz v14, :cond_6

    .line 1577
    const-string v5, "source"

    invoke-virtual {v14, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1579
    :cond_6
    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1580
    const-string v25, "unknown"

    .line 1582
    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "&source=android-"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, "&"

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v6

    move-object/from16 v1, v24

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 1589
    .end local v12           #_mode:I
    .end local v13           #action:Ljava/lang/String;
    .end local v14           #appData:Landroid/os/Bundle;
    .end local v15           #cr:Landroid/content/ContentResolver;
    .end local v16           #currentMode:I
    .end local v21           #newUrl:Ljava/lang/String;
    .end local v23           #queryurl:Ljava/lang/String;
    .end local v24           #searchSource:Ljava/lang/String;
    .end local v25           #source:Ljava/lang/String;
    :cond_8
    new-instance v5, Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;

    move-object/from16 v11, p1

    invoke-direct/range {v5 .. v11}, Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;-><init>(Ljava/lang/String;Ljava/util/Map;IJLandroid/content/Intent;)V

    goto/16 :goto_1

    .line 1553
    .restart local v13       #action:Ljava/lang/String;
    .restart local v15       #cr:Landroid/content/ContentResolver;
    .restart local v16       #currentMode:I
    .restart local v23       #queryurl:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object/from16 v17, v5

    .line 1554
    .local v17, e:Ljava/lang/NullPointerException;
    const-string v5, "browser/BrowserActivity"

    const-string v11, ""

    move-object v0, v5

    move-object v1, v11

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 1561
    .end local v17           #e:Ljava/lang/NullPointerException;
    :cond_9
    move-object/from16 v21, v6

    .restart local v21       #newUrl:Ljava/lang/String;
    goto :goto_3
.end method

.method private getWebViewTouchIconUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/Tab;->getWebViewTouchIconUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleWebSearchIntent(Landroid/content/Intent;)Z
    .locals 5
    .parameter "intent"

    .prologue
    .line 1403
    if-nez p1, :cond_0

    .line 1404
    const/4 v3, 0x0

    .line 1422
    :goto_0
    return v3

    .line 1406
    :cond_0
    const/4 v2, 0x0

    .line 1407
    .local v2, url:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1413
    .local v0, action:Ljava/lang/String;
    const-string v3, "android.intent.action.VIEW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1414
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1415
    .local v1, data:Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 1416
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1422
    .end local v1           #data:Landroid/net/Uri;
    :cond_1
    :goto_1
    const-string v3, "app_data"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "intent_extra_data_key"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/android/browser/ui/MiRenBrowserActivity;->handleWebSearchRequest(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z

    move-result v3

    goto :goto_0

    .line 1417
    :cond_2
    const-string v3, "android.intent.action.SEARCH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1420
    :cond_3
    const-string v3, "query"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private handleWebSearchRequest(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Z
    .locals 3
    .parameter "inUrl"
    .parameter "appData"
    .parameter "extraData"

    .prologue
    const/4 v2, 0x0

    .line 1437
    if-nez p1, :cond_0

    move v1, v2

    .line 1453
    :goto_0
    return v1

    .line 1442
    :cond_0
    invoke-static {p1}, Lcom/android/browser/ui/MiRenBrowserActivity;->fixUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1447
    .local v0, url:Ljava/lang/String;
    sget-object v1, Lcom/android/browser/api_v8/PatternsInternal;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/browser/api_v8/PatternsInternal;->ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->parseUrlShortcut(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v1, v2

    .line 1450
    goto :goto_0

    :cond_2
    move v1, v2

    .line 1453
    goto :goto_0
.end method

.method private inflateCertificateView(Landroid/net/http/SslCertificate;)Landroid/view/View;
    .locals 14
    .parameter "certificate"

    .prologue
    .line 2688
    if-nez p1, :cond_0

    .line 2689
    const/4 v0, 0x0

    .line 2722
    .end local p0
    :goto_0
    return-object v0

    .line 2692
    .restart local p0
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 2694
    .local v9, factory:Landroid/view/LayoutInflater;
    const v0, 0x7f030018

    const/4 v1, 0x0

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 2697
    .local v6, certificateView:Landroid/view/View;
    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v13

    .line 2698
    .local v13, issuedTo:Landroid/net/http/SslCertificate$DName;
    if-eqz v13, :cond_1

    .line 2699
    const v0, 0x7f0d0050

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2700
    const v0, 0x7f0d0052

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2701
    const v0, 0x7f0d0054

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2705
    :cond_1
    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getIssuedBy()Landroid/net/http/SslCertificate$DName;

    move-result-object v10

    .line 2706
    .local v10, issuedBy:Landroid/net/http/SslCertificate$DName;
    if-eqz v10, :cond_2

    .line 2707
    const v0, 0x7f0d0056

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2708
    const v0, 0x7f0d0058

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/net/http/SslCertificate$DName;->getOName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2709
    const v0, 0x7f0d005a

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/net/http/SslCertificate$DName;->getUName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2712
    :cond_2
    sget-object v0, Lcom/android/browser/util/ReflectUtil$LogFlag;->LogError:Lcom/android/browser/util/ReflectUtil$LogFlag;

    const-class v1, Landroid/net/http/SslCertificate;

    const-string v2, "getValidNotBeforeDate"

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/browser/util/ReflectUtil;->invokeMethod(Lcom/android/browser/util/ReflectUtil$LogFlag;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Date;

    .line 2714
    .local v11, issuedDate:Ljava/util/Date;
    sget-object v0, Lcom/android/browser/util/ReflectUtil$LogFlag;->LogError:Lcom/android/browser/util/ReflectUtil$LogFlag;

    const-class v1, Landroid/net/http/SslCertificate;

    const-string v2, "getValidNotAfterDate"

    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/android/browser/util/ReflectUtil;->invokeMethod(Lcom/android/browser/util/ReflectUtil$LogFlag;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Date;

    .line 2716
    .local v7, expiresDate:Ljava/util/Date;
    if-nez v11, :cond_3

    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getValidNotBefore()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 2717
    .local v12, issuedOn:Ljava/lang/String;
    :goto_1
    if-nez v7, :cond_4

    invoke-virtual {p1}, Landroid/net/http/SslCertificate;->getValidNotAfter()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 2719
    .local v8, expiresOn:Ljava/lang/String;
    :goto_2
    const v0, 0x7f0d005d

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2720
    const v0, 0x7f0d005f

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    invoke-virtual {p0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object v0, v6

    .line 2722
    goto/16 :goto_0

    .line 2716
    .end local v8           #expiresOn:Ljava/lang/String;
    .end local v12           #issuedOn:Ljava/lang/String;
    .restart local p0
    :cond_3
    invoke-direct {p0, v11}, Lcom/android/browser/ui/MiRenBrowserActivity;->formatCertificateDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    goto :goto_1

    .line 2717
    .restart local v12       #issuedOn:Ljava/lang/String;
    :cond_4
    invoke-direct {p0, v7}, Lcom/android/browser/ui/MiRenBrowserActivity;->formatCertificateDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_2
.end method

.method private initAsync(Z)V
    .locals 2
    .parameter "firstLaunch"

    .prologue
    .line 789
    if-eqz p1, :cond_0

    .line 791
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSettings:Lcom/android/browser/controller/BrowserSettings;

    const-string v1, "miui:home"

    invoke-virtual {v0, p0, v1}, Lcom/android/browser/controller/BrowserSettings;->setHomePage(Landroid/content/Context;Ljava/lang/String;)V

    .line 794
    :cond_0
    invoke-direct {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->initWebViewLayout()V

    .line 796
    if-nez p1, :cond_1

    .line 798
    invoke-direct {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->registerNetworkState()V

    .line 801
    :cond_1
    new-instance v0, Lcom/android/browser/ui/MiRenBrowserActivity$7;

    invoke-direct {v0, p0, p1}, Lcom/android/browser/ui/MiRenBrowserActivity$7;-><init>(Lcom/android/browser/ui/MiRenBrowserActivity;Z)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity$7;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 867
    return-void
.end method

.method private initFirstStep()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 490
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSettings:Lcom/android/browser/controller/BrowserSettings;

    .line 491
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSettings:Lcom/android/browser/controller/BrowserSettings;

    invoke-virtual {v0, p0}, Lcom/android/browser/controller/BrowserSettings;->setActivity(Lcom/android/browser/ui/MiRenBrowserActivity;)V

    .line 493
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080061

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSecLockIcon:Landroid/graphics/drawable/Drawable;

    .line 494
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSecLockIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSecLockIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSecLockIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSecLockIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 496
    :cond_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x108005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mMixLockIcon:Landroid/graphics/drawable/Drawable;

    .line 497
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mMixLockIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 498
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mMixLockIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mMixLockIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mMixLockIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 500
    :cond_1
    invoke-direct {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->initializeNetworkStateChangeFilter()V

    .line 501
    invoke-direct {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->initializePackageInstallationEventHooker()V

    .line 502
    return-void
.end method

.method private initTitleView()V
    .locals 0

    .prologue
    .line 1930
    return-void
.end method

.method private initWebView(Lcom/android/browser/controller/Tab;Z)V
    .locals 1
    .parameter "tab"
    .parameter "useHomePage"

    .prologue
    .line 1920
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/browser/controller/Tab;->onSwitchTab(Z)V

    .line 1921
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->refreshNavButtonStatus()V

    .line 1922
    invoke-direct {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->initTitleView()V

    .line 1923
    if-eqz p2, :cond_0

    .line 1924
    invoke-virtual {p0, p1}, Lcom/android/browser/ui/MiRenBrowserActivity;->gotoNavigationHomePage(Lcom/android/browser/controller/Tab;)V

    .line 1926
    :cond_0
    return-void
.end method

.method private initWebViewLayout()V
    .locals 11

    .prologue
    const/16 v7, 0x44

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 697
    new-instance v6, Lcom/android/browser/ui/MiRenBrowserActivity$CustomViewApiWrapper;

    invoke-direct {v6, p0}, Lcom/android/browser/ui/MiRenBrowserActivity$CustomViewApiWrapper;-><init>(Lcom/android/browser/ui/MiRenBrowserActivity;)V

    iput-object v6, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mCustomViewApiWrapper:Lcom/android/browser/ui/MiRenBrowserActivity$CustomViewApiWrapper;

    .line 699
    const/16 v6, 0x84

    iput v6, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mWebViewPaddingTop:I

    .line 700
    iput v7, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mWebViewPaddingTopNoUrlBar:I

    .line 701
    iput v7, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mWebViewPaddingBottom:I

    .line 703
    const v6, 0x7f0d001e

    invoke-virtual {p0, v6}, Lcom/android/browser/ui/MiRenBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSubWindowFrameLayout:Landroid/widget/FrameLayout;

    .line 704
    const v6, 0x7f0d002a

    invoke-virtual {p0, v6}, Lcom/android/browser/ui/MiRenBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mCustomViewContainer:Landroid/widget/FrameLayout;

    .line 705
    const v6, 0x7f0d001d

    invoke-virtual {p0, v6}, Lcom/android/browser/ui/MiRenBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/browser/ui/MiRenViewFlipperWrapper;

    iput-object v6, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mViewFlipper:Lcom/android/browser/ui/MiRenViewFlipperWrapper;

    .line 708
    const v6, 0x7f0d001f

    invoke-virtual {p0, v6}, Lcom/android/browser/ui/MiRenBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mMenuBar:Landroid/view/View;

    .line 709
    const v6, 0x7f0d0020

    invoke-virtual {p0, v6}, Lcom/android/browser/ui/MiRenBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mBackBtn:Landroid/widget/ImageButton;

    .line 710
    const v6, 0x7f0d0021

    invoke-virtual {p0, v6}, Lcom/android/browser/ui/MiRenBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mForwardBtn:Landroid/widget/ImageButton;

    .line 711
    const v6, 0x7f0d0022

    invoke-virtual {p0, v6}, Lcom/android/browser/ui/MiRenBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mHomeBtn:Landroid/widget/ImageButton;

    .line 712
    const v6, 0x7f0d0023

    invoke-virtual {p0, v6}, Lcom/android/browser/ui/MiRenBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mBookmarkBtn:Landroid/widget/ImageButton;

    .line 713
    const v6, 0x7f0d0024

    invoke-virtual {p0, v6}, Lcom/android/browser/ui/MiRenBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mFullScreenBtn:Landroid/widget/ImageButton;

    .line 716
    const v6, 0x7f0d0026

    invoke-virtual {p0, v6}, Lcom/android/browser/ui/MiRenBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mLoadingFrameLayout:Landroid/widget/FrameLayout;

    .line 718
    const v6, 0x7f0d0027

    invoke-virtual {p0, v6}, Lcom/android/browser/ui/MiRenBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ProgressBar;

    iput-object v6, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mLoadingProgressBar:Landroid/widget/ProgressBar;

    .line 720
    const v6, 0x7f0d0028

    invoke-virtual {p0, v6}, Lcom/android/browser/ui/MiRenBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mLoadingFullScreenBtn:Landroid/widget/ImageView;

    .line 722
    const v6, 0x7f0d0025

    invoke-virtual {p0, v6}, Lcom/android/browser/ui/MiRenBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/OrientationLockButton;

    iput-object v6, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mOriLockBtn:Landroid/widget/OrientationLockButton;

    .line 724
    const v6, 0x7f0d0029

    invoke-virtual {p0, v6}, Lcom/android/browser/ui/MiRenBrowserActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    iput-object v6, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mFakeTitleViewLayout:Landroid/widget/LinearLayout;

    .line 727
    invoke-direct {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->registerNavButtonEvents()V

    .line 729
    new-instance v6, Lcom/android/browser/ui/TitleView;

    invoke-direct {v6, p0}, Lcom/android/browser/ui/TitleView;-><init>(Lcom/android/browser/ui/MiRenBrowserActivity;)V

    iput-object v6, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mFakeTitleView:Lcom/android/browser/ui/TitleView;

    .line 730
    iget-object v6, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mFakeTitleViewLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mFakeTitleView:Lcom/android/browser/ui/TitleView;

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 731
    iget-object v6, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mFakeTitleView:Lcom/android/browser/ui/TitleView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Lcom/android/browser/ui/TitleView;->setVisibility(I)V

    .line 733
    new-instance v6, Lcom/android/browser/controller/TabController;

    invoke-direct {v6, p0}, Lcom/android/browser/controller/TabController;-><init>(Lcom/android/browser/ui/MiRenBrowserActivity;)V

    iput-object v6, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    .line 735
    iget-object v6, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mFakeTitleView:Lcom/android/browser/ui/TitleView;

    const v7, 0x7f0d0074

    invoke-virtual {v6, v7}, Lcom/android/browser/ui/TitleView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    .line 737
    .local v3, mFakeAddBtn:Landroid/widget/ImageButton;
    new-instance v6, Lcom/android/browser/ui/MiRenBrowserActivity$6;

    invoke-direct {v6, p0}, Lcom/android/browser/ui/MiRenBrowserActivity$6;-><init>(Lcom/android/browser/ui/MiRenBrowserActivity;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 744
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 745
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 746
    const-string v6, "mode"

    invoke-virtual {v2, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 749
    .local v4, mode:I
    invoke-virtual {p0, v9}, Lcom/android/browser/ui/MiRenBrowserActivity;->addTab(Z)Lcom/android/browser/controller/Tab;

    .line 751
    if-eq v4, v8, :cond_3

    .line 752
    iget-object v6, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v6}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v6

    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Lcom/android/browser/controller/Tab;->doNavigationWithSuggestedMode(Ljava/lang/String;I)V

    .line 763
    .end local v4           #mode:I
    :goto_0
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 764
    .local v0, action:Ljava/lang/String;
    const-string v6, "android.speech.action.VOICE_SEARCH_RESULTS"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 766
    invoke-direct {p0, v2}, Lcom/android/browser/ui/MiRenBrowserActivity;->getUrlDataFromIntent(Landroid/content/Intent;)Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;

    move-result-object v5

    .line 767
    .local v5, urlData:Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;
    invoke-virtual {v5}, Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 768
    new-instance v5, Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;

    .end local v5           #urlData:Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;
    const-string v6, "miui:home"

    invoke-direct {v5, v6}, Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;-><init>(Ljava/lang/String;)V

    .line 771
    .restart local v5       #urlData:Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;
    :cond_0
    const-string v6, "com.android.browser.application_id"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 772
    .local v1, appId:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 773
    iget-object v6, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v6}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/android/browser/controller/Tab;->setCallingApplicationId(Ljava/lang/String;)V

    .line 774
    invoke-direct {p0, v5}, Lcom/android/browser/ui/MiRenBrowserActivity;->loadUrlDataIn(Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;)V

    .line 778
    .end local v1           #appId:Ljava/lang/String;
    .end local v5           #urlData:Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;
    :cond_1
    const/4 v6, 0x3

    invoke-virtual {p0, v6, v9}, Lcom/android/browser/ui/MiRenBrowserActivity;->switchScreenMode(IZ)V

    .line 781
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/browser/ui/MiRenBrowserActivity;->handleWebSearchIntent(Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 782
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->finish()V

    .line 785
    :cond_2
    iput-boolean v10, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mContentLayoutInitialized:Z

    .line 786
    return-void

    .line 755
    .end local v0           #action:Ljava/lang/String;
    .restart local v4       #mode:I
    :cond_3
    iget-object v6, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v6}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v6

    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/browser/controller/Tab;->doNavigation(Ljava/lang/String;)V

    goto :goto_0

    .line 760
    .end local v4           #mode:I
    :cond_4
    invoke-virtual {p0, v10}, Lcom/android/browser/ui/MiRenBrowserActivity;->addTab(Z)Lcom/android/browser/controller/Tab;

    goto :goto_0
.end method

.method private initializeNetworkStateChangeFilter()V
    .locals 4

    .prologue
    .line 506
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/browser/ui/MiRenBrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 507
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 508
    .local v1, info:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    .line 509
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mIsNetworkUp:Z

    .line 515
    :cond_0
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    iput-object v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    .line 516
    iget-object v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 517
    new-instance v2, Lcom/android/browser/ui/MiRenBrowserActivity$3;

    invoke-direct {v2, p0}, Lcom/android/browser/ui/MiRenBrowserActivity$3;-><init>(Lcom/android/browser/ui/MiRenBrowserActivity;)V

    iput-object v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 540
    invoke-direct {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getInstalledPackages()V

    .line 541
    return-void
.end method

.method private initializePackageInstallationEventHooker()V
    .locals 2

    .prologue
    .line 549
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 550
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 551
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 552
    new-instance v1, Lcom/android/browser/ui/MiRenBrowserActivity$4;

    invoke-direct {v1, p0}, Lcom/android/browser/ui/MiRenBrowserActivity$4;-><init>(Lcom/android/browser/ui/MiRenBrowserActivity;)V

    iput-object v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mPackageInstallationReceiver:Landroid/content/BroadcastReceiver;

    .line 596
    iget-object v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mPackageInstallationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 597
    return-void
.end method

.method private loadUrlDataIn(Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;)V
    .locals 3
    .parameter "urlData"

    .prologue
    .line 1478
    iget-object v0, p1, Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->updateUrl(Ljava/lang/String;)V

    .line 1479
    iget v0, p1, Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;->mMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1480
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    iget-object v1, p1, Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    iget v2, p1, Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;->mMode:I

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/controller/Tab;->doNavigationWithSuggestedMode(Ljava/lang/String;I)V

    .line 1481
    iget v0, p1, Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1482
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    iget-wide v1, p1, Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/controller/Tab;->setBookmarkDBId(J)V

    .line 1489
    :cond_0
    :goto_0
    return-void

    .line 1485
    :cond_1
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;->loadIn(Lcom/android/browser/controller/Tab;)V

    goto :goto_0
.end method

.method private onBackKeyDown()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1198
    iget-object v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v2}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    move v2, v3

    .line 1243
    :goto_0
    return v2

    .line 1202
    :cond_1
    iget-object v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v2}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    .line 1203
    .local v0, currentTab:Lcom/android/browser/controller/Tab;
    invoke-virtual {v0}, Lcom/android/browser/controller/Tab;->IsInSelectionMode()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1204
    invoke-virtual {v0}, Lcom/android/browser/controller/Tab;->endTextSelection()V

    .line 1205
    const v2, 0x7f090116

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    move v2, v4

    .line 1206
    goto :goto_0

    .line 1209
    :cond_2
    iget-object v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mCustomView:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 1211
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getCustomViewApiWrapper()Lcom/android/browser/ui/MiRenBrowserActivity$CustomViewApiWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/ui/MiRenBrowserActivity$CustomViewApiWrapper;->onHideCustomView()V

    move v2, v4

    .line 1212
    goto :goto_0

    .line 1215
    :cond_3
    iget-object v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mFakeTitleView:Lcom/android/browser/ui/TitleView;

    if-nez v2, :cond_4

    move v2, v3

    .line 1216
    goto :goto_0

    .line 1218
    :cond_4
    iget-object v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mFakeTitleView:Lcom/android/browser/ui/TitleView;

    invoke-virtual {v2}, Lcom/android/browser/ui/TitleView;->getMode()I

    move-result v1

    .line 1219
    .local v1, fakeTitleViewMode:I
    if-eq v1, v4, :cond_5

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    const/4 v2, 0x5

    if-ne v1, v2, :cond_6

    .line 1222
    :cond_5
    iget-object v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mFakeTitleView:Lcom/android/browser/ui/TitleView;

    invoke-virtual {v2, v3}, Lcom/android/browser/ui/TitleView;->switchMode(I)V

    move v2, v4

    .line 1223
    goto :goto_0

    .line 1226
    :cond_6
    const/4 v2, 0x4

    if-ne v1, v2, :cond_7

    .line 1227
    iget-object v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mFakeTitleView:Lcom/android/browser/ui/TitleView;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/browser/ui/TitleView;->switchMode(I)V

    move v2, v4

    .line 1228
    goto :goto_0

    .line 1231
    :cond_7
    invoke-virtual {v0}, Lcom/android/browser/controller/Tab;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1232
    invoke-virtual {v0}, Lcom/android/browser/controller/Tab;->goBack()V

    .line 1233
    invoke-direct {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->setBackForwardButtonVisibility()V

    :goto_1
    move v2, v4

    .line 1243
    goto :goto_0

    .line 1234
    :cond_8
    invoke-virtual {v0}, Lcom/android/browser/controller/Tab;->isCalledFromOtherApp()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1235
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/browser/controller/Tab;->setCallingApplicationId(Ljava/lang/String;)V

    .line 1236
    invoke-virtual {p0, v4}, Lcom/android/browser/ui/MiRenBrowserActivity;->moveTaskToBack(Z)Z

    goto :goto_1

    .line 1237
    :cond_9
    iget-object v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v2}, Lcom/android/browser/controller/TabController;->getTabCount()I

    move-result v2

    if-le v2, v4, :cond_a

    .line 1238
    invoke-virtual {p0, v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->removeTab(Lcom/android/browser/controller/Tab;)V

    goto :goto_1

    .line 1240
    :cond_a
    invoke-static {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->showAlertDialogBeforeExiting(Landroid/app/Activity;)V

    goto :goto_1
.end method

.method private onBrightnessClick()V
    .locals 3

    .prologue
    .line 441
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-class v2, Lcom/android/browser/ui/BrightnessSettingActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 442
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 443
    return-void
.end method

.method private onFullScreenModeButtonClick()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1311
    iget v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->screenMode:I

    if-ne v1, v3, :cond_0

    .line 1312
    const/4 v1, 0x3

    invoke-virtual {p0, v1, v2}, Lcom/android/browser/ui/MiRenBrowserActivity;->switchScreenMode(IZ)V

    .line 1321
    :goto_0
    return-void

    .line 1314
    :cond_0
    iget-object v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v1}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    .line 1315
    .local v0, currentTab:Lcom/android/browser/controller/Tab;
    invoke-virtual {v0}, Lcom/android/browser/controller/Tab;->IsInSelectionMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1316
    const v1, 0x7f090115

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1319
    :cond_1
    invoke-virtual {p0, v3, v2}, Lcom/android/browser/ui/MiRenBrowserActivity;->switchScreenMode(IZ)V

    goto :goto_0
.end method

.method private packageChanged(Ljava/lang/String;Z)V
    .locals 1
    .parameter "packageName"
    .parameter "wasAdded"

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    if-nez v0, :cond_1

    .line 634
    :cond_0
    :goto_0
    return-void

    .line 629
    :cond_1
    if-eqz p2, :cond_2

    .line 630
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/browser/controller/Tab;->addPackageName(Ljava/lang/String;)V

    goto :goto_0

    .line 632
    :cond_2
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/browser/controller/Tab;->removePackageName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static parseUrlShortcut(Ljava/lang/String;)I
    .locals 5
    .parameter "url"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1712
    if-nez p0, :cond_0

    move v0, v2

    .line 1728
    :goto_0
    return v0

    .line 1716
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 1717
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_1
    move v0, v2

    .line 1728
    goto :goto_0

    :sswitch_0
    move v0, v3

    .line 1719
    goto :goto_0

    :sswitch_1
    move v0, v4

    .line 1721
    goto :goto_0

    .line 1723
    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 1725
    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 1717
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_2
        0x67 -> :sswitch_0
        0x6c -> :sswitch_3
        0x77 -> :sswitch_1
    .end sparse-switch
.end method

.method private registerNavButtonEvents()V
    .locals 2

    .prologue
    .line 1325
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mBackBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/browser/ui/MiRenBrowserActivity$11;

    invoke-direct {v1, p0}, Lcom/android/browser/ui/MiRenBrowserActivity$11;-><init>(Lcom/android/browser/ui/MiRenBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1332
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mForwardBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/browser/ui/MiRenBrowserActivity$12;

    invoke-direct {v1, p0}, Lcom/android/browser/ui/MiRenBrowserActivity$12;-><init>(Lcom/android/browser/ui/MiRenBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1339
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mHomeBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/browser/ui/MiRenBrowserActivity$13;

    invoke-direct {v1, p0}, Lcom/android/browser/ui/MiRenBrowserActivity$13;-><init>(Lcom/android/browser/ui/MiRenBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1345
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mBookmarkBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/browser/ui/MiRenBrowserActivity$14;

    invoke-direct {v1, p0}, Lcom/android/browser/ui/MiRenBrowserActivity$14;-><init>(Lcom/android/browser/ui/MiRenBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1352
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mFullScreenBtn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/browser/ui/MiRenBrowserActivity$15;

    invoke-direct {v1, p0}, Lcom/android/browser/ui/MiRenBrowserActivity$15;-><init>(Lcom/android/browser/ui/MiRenBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1359
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mLoadingFullScreenBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/browser/ui/MiRenBrowserActivity$16;

    invoke-direct {v1, p0}, Lcom/android/browser/ui/MiRenBrowserActivity$16;-><init>(Lcom/android/browser/ui/MiRenBrowserActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1365
    return-void
.end method

.method private registerNetworkState()V
    .locals 3

    .prologue
    .line 646
    iget-boolean v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mActivityPaused:Z

    if-eqz v0, :cond_1

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 648
    :cond_1
    iget-boolean v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mContentLayoutInitialized:Z

    if-eqz v0, :cond_0

    .line 651
    iget-boolean v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mNetworkStateRegistered:Z

    if-nez v0, :cond_0

    .line 653
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v0

    .line 654
    :try_start_0
    iget-boolean v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mNetworkStateRegistered:Z

    if-eqz v1, :cond_2

    .line 655
    monitor-exit v0

    goto :goto_0

    .line 661
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 658
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mNetworkStateChangedFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/android/browser/ui/MiRenBrowserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 659
    invoke-static {}, Landroid/webkit/WebView;->enablePlatformNotifications()V

    .line 660
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mNetworkStateRegistered:Z

    .line 661
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private resetTitleIconAndProgress()V
    .locals 3

    .prologue
    .line 1991
    iget-object v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v2}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1999
    :cond_0
    :goto_0
    return-void

    .line 1994
    :cond_1
    iget-object v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v2}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    .line 1995
    .local v0, currentTab:Lcom/android/browser/controller/Tab;
    invoke-virtual {v0}, Lcom/android/browser/controller/Tab;->getLoadedUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/browser/ui/MiRenBrowserActivity;->updateUrl(Ljava/lang/String;)V

    .line 1996
    invoke-virtual {p0, v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->updateUrlTitle(Lcom/android/browser/controller/Tab;)V

    .line 1997
    invoke-virtual {v0}, Lcom/android/browser/controller/Tab;->getProgress()I

    move-result v1

    .line 1998
    .local v1, progress:I
    invoke-virtual {v0, v1}, Lcom/android/browser/controller/Tab;->onProgressChanged(I)V

    goto :goto_0
.end method

.method private retainIconsOnStartup()V
    .locals 7

    .prologue
    .line 2159
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v1

    .line 2160
    .local v1, db:Landroid/webkit/WebIconDatabase;
    const-string v5, "icons"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/browser/ui/MiRenBrowserActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/webkit/WebIconDatabase;->open(Ljava/lang/String;)V

    .line 2161
    const/4 v0, 0x0

    .line 2163
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Lcom/android/browser/api_v8/BrowserInternal;->getAllBookmarks(Landroid/content/ContentResolver;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 2164
    if-nez v0, :cond_1

    .line 2179
    if-eqz v0, :cond_0

    .line 2180
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2182
    :cond_0
    :goto_0
    return-void

    .line 2166
    :cond_1
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2167
    const-string v5, "url"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 2170
    .local v4, urlIndex:I
    :cond_2
    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2171
    .local v3, url:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2174
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-nez v5, :cond_2

    .line 2179
    .end local v3           #url:Ljava/lang/String;
    .end local v4           #urlIndex:I
    :cond_3
    if-eqz v0, :cond_0

    .line 2180
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2173
    .restart local v3       #url:Ljava/lang/String;
    .restart local v4       #urlIndex:I
    :cond_4
    :try_start_2
    invoke-virtual {v1, v3}, Landroid/webkit/WebIconDatabase;->retainIconForPageUrl(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 2176
    .end local v3           #url:Ljava/lang/String;
    .end local v4           #urlIndex:I
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 2177
    .local v2, e:Ljava/lang/IllegalStateException;
    :try_start_3
    const-string v5, "browser/BrowserActivity"

    const-string v6, "retainIconsOnStartup"

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2179
    if-eqz v0, :cond_0

    .line 2180
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2179
    .end local v2           #e:Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v5

    if-eqz v0, :cond_5

    .line 2180
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v5
.end method

.method private setBackForwardButtonVisibility()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1247
    iget-object v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v1}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    .line 1248
    .local v0, currentTab:Lcom/android/browser/controller/Tab;
    invoke-virtual {v0}, Lcom/android/browser/controller/Tab;->canGoForward()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1249
    iget-object v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mForwardBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1254
    :goto_0
    invoke-virtual {v0}, Lcom/android/browser/controller/Tab;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1255
    iget-object v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mBackBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1259
    :goto_1
    return-void

    .line 1251
    :cond_0
    iget-object v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mForwardBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_0

    .line 1257
    :cond_1
    iget-object v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mBackBtn:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V

    goto :goto_1
.end method

.method public static final sharePage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "c"
    .parameter "title"
    .parameter "url"

    .prologue
    .line 2330
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2331
    .local v0, send:Landroid/content/Intent;
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2332
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2334
    const v1, 0x7f09009c

    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2338
    :goto_0
    return-void

    .line 2335
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static showAlertDialogBeforeExiting(Landroid/app/Activity;)V
    .locals 12
    .parameter "activity"

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x1

    .line 250
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 251
    .local v2, context:Landroid/content/Context;
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/android/browser/controller/BrowserSettings;->getExitConfirmation(Landroid/content/Context;)Z

    move-result v4

    .line 252
    .local v4, exitConfirm:Z
    if-eqz v4, :cond_0

    instance-of v8, p0, Lcom/android/browser/ui/MiRenBrowserActivity;

    if-nez v8, :cond_1

    .line 253
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 284
    :goto_0
    return-void

    .line 256
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 257
    .local v6, inflater:Landroid/view/LayoutInflater;
    const v8, 0x7f03000e

    invoke-virtual {v6, v8, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 259
    .local v3, dialogView:Landroid/view/View;
    const v8, 0x7f0d002e

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    .line 260
    .local v7, userChoiceCheckBox:Landroid/widget/CheckBox;
    const v8, 0x7f0d002f

    invoke-virtual {v3, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    .line 262
    .local v5, exitConfirmCheckBox:Landroid/widget/CheckBox;
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v8

    invoke-virtual {v8, v2}, Lcom/android/browser/controller/BrowserSettings;->getAutoClearCacheOnExit(Landroid/content/Context;)Z

    move-result v1

    .line 263
    .local v1, clearCache:Z
    invoke-virtual {v7, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 264
    if-nez v4, :cond_2

    move v8, v9

    :goto_1
    invoke-virtual {v5, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 266
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 267
    .local v0, ad:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f090003

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f09002d

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f09000f

    new-instance v10, Lcom/android/browser/ui/MiRenBrowserActivity$1;

    invoke-direct {v10, v2, v7, v5, p0}, Lcom/android/browser/ui/MiRenBrowserActivity$1;-><init>(Landroid/content/Context;Landroid/widget/CheckBox;Landroid/widget/CheckBox;Landroid/app/Activity;)V

    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f090019

    invoke-virtual {v8, v9, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 264
    .end local v0           #ad:Landroid/app/AlertDialog$Builder;
    :cond_2
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private showMenuBar(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 2036
    if-eqz p1, :cond_0

    .line 2037
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mMenuBar:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2041
    :goto_0
    return-void

    .line 2039
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mMenuBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showPageInfo(Lcom/android/browser/controller/Tab;Z)V
    .locals 8
    .parameter "tab"
    .parameter "fromShowSSLCertificateOnError"

    .prologue
    .line 2466
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 2469
    .local v1, factory:Landroid/view/LayoutInflater;
    const v5, 0x7f030013

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 2471
    .local v2, pageInfoView:Landroid/view/View;
    const/4 v4, 0x0

    .line 2472
    .local v4, url:Ljava/lang/String;
    const/4 v3, 0x0

    .line 2474
    .local v3, title:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2475
    invoke-virtual {p1}, Lcom/android/browser/controller/Tab;->getLoadedUrl()Ljava/lang/String;

    move-result-object v4

    .line 2476
    invoke-virtual {p1}, Lcom/android/browser/controller/Tab;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 2479
    :cond_0
    if-nez v4, :cond_1

    .line 2480
    const-string v4, ""

    .line 2482
    :cond_1
    if-nez v3, :cond_2

    .line 2483
    const-string v3, ""

    .line 2486
    :cond_2
    const v5, 0x7f0d0040

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2487
    const v5, 0x7f0d003e

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2489
    iput-object p1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mPageInfoView:Lcom/android/browser/controller/Tab;

    .line 2490
    iput-boolean p2, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mPageInfoFromShowSSLCertificateOnError:Z

    .line 2492
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f09009f

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x108009b

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f09000f

    new-instance v7, Lcom/android/browser/ui/MiRenBrowserActivity$20;

    invoke-direct {v7, p0, p2}, Lcom/android/browser/ui/MiRenBrowserActivity$20;-><init>(Lcom/android/browser/ui/MiRenBrowserActivity;Z)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/browser/ui/MiRenBrowserActivity$19;

    invoke-direct {v6, p0, p2}, Lcom/android/browser/ui/MiRenBrowserActivity$19;-><init>(Lcom/android/browser/ui/MiRenBrowserActivity;Z)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 2533
    .local v0, alertDialogBuilder:Landroid/app/AlertDialog$Builder;
    if-nez p2, :cond_3

    invoke-virtual {p1}, Lcom/android/browser/controller/Tab;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 2536
    :cond_3
    const v5, 0x7f0900a5

    new-instance v6, Lcom/android/browser/ui/MiRenBrowserActivity$21;

    invoke-direct {v6, p0, p2, p1}, Lcom/android/browser/ui/MiRenBrowserActivity$21;-><init>(Lcom/android/browser/ui/MiRenBrowserActivity;ZLcom/android/browser/controller/Tab;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2562
    :cond_4
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mPageInfoDialog:Landroid/app/AlertDialog;

    .line 2563
    return-void
.end method

.method private showSSLCertificate(Lcom/android/browser/controller/Tab;)V
    .locals 7
    .parameter "tab"

    .prologue
    .line 2571
    invoke-virtual {p1}, Lcom/android/browser/controller/Tab;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/browser/ui/MiRenBrowserActivity;->inflateCertificateView(Landroid/net/http/SslCertificate;)Landroid/view/View;

    move-result-object v0

    .line 2572
    .local v0, certificateView:Landroid/view/View;
    if-nez v0, :cond_0

    .line 2605
    :goto_0
    return-void

    .line 2576
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 2577
    .local v1, factory:Landroid/view/LayoutInflater;
    const v4, 0x7f0d004c

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 2579
    .local v3, placeholder:Landroid/widget/LinearLayout;
    const v4, 0x7f030019

    invoke-virtual {v1, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 2580
    .local v2, ll:Landroid/widget/LinearLayout;
    const v4, 0x7f0d0060

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0900ab

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 2582
    iput-object p1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSSLCertificateView:Lcom/android/browser/controller/Tab;

    .line 2583
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0900aa

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f02003d

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f09000f

    new-instance v6, Lcom/android/browser/ui/MiRenBrowserActivity$23;

    invoke-direct {v6, p0, p1}, Lcom/android/browser/ui/MiRenBrowserActivity$23;-><init>(Lcom/android/browser/ui/MiRenBrowserActivity;Lcom/android/browser/controller/Tab;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/browser/ui/MiRenBrowserActivity$22;

    invoke-direct {v5, p0, p1}, Lcom/android/browser/ui/MiRenBrowserActivity$22;-><init>(Lcom/android/browser/ui/MiRenBrowserActivity;Lcom/android/browser/controller/Tab;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSSLCertificateDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private static smartUrlFilter(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "inUri"

    .prologue
    .line 1638
    if-eqz p0, :cond_0

    .line 1639
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1641
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "url"

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v10, 0x2

    const-string v9, "%s"

    .line 1656
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 1657
    .local v1, inUrl:Ljava/lang/String;
    const/16 v7, 0x20

    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    move v0, v12

    .line 1659
    .local v0, hasSpace:Z
    :goto_0
    sget-object v7, Lcom/android/browser/api_v8/PatternsInternal;->ACCEPTED_URI_SCHEMA:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 1660
    .local v3, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1662
    invoke-virtual {v3, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 1663
    .local v5, scheme:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    .line 1664
    .local v2, lcScheme:Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1665
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1667
    :cond_0
    if-eqz v0, :cond_1

    .line 1668
    const-string v7, " "

    const-string v8, "%20"

    invoke-virtual {v1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v7, v1

    .line 1707
    .end local v2           #lcScheme:Ljava/lang/String;
    .end local v5           #scheme:Ljava/lang/String;
    :goto_1
    return-object v7

    .end local v0           #hasSpace:Z
    .end local v3           #matcher:Ljava/util/regex/Matcher;
    :cond_2
    move v0, v11

    .line 1657
    goto :goto_0

    .line 1672
    .restart local v0       #hasSpace:Z
    .restart local v3       #matcher:Ljava/util/regex/Matcher;
    :cond_3
    if-eqz v0, :cond_5

    .line 1675
    invoke-static {v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->parseUrlShortcut(Ljava/lang/String;)I

    move-result v6

    .line 1676
    .local v6, shortcut:I
    if-eqz v6, :cond_4

    .line 1677
    invoke-virtual {v1, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 1678
    .local v4, query:Ljava/lang/String;
    packed-switch v6, :pswitch_data_0

    .line 1700
    .end local v4           #query:Ljava/lang/String;
    .end local v6           #shortcut:I
    :cond_4
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/browser/controller/BrowserSettings;->getDefaultSearchEngine()I

    move-result v7

    if-nez v7, :cond_6

    .line 1701
    invoke-static {v11, v1}, Lcom/android/browser/model/MiRenUrlDataProvider;->getSearchUrl(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 1680
    .restart local v4       #query:Ljava/lang/String;
    .restart local v6       #shortcut:I
    :pswitch_0
    const-string v7, "http://www.google.com/m?q=%s"

    const-string v8, "%s"

    invoke-static {v4, v7, v9}, Landroid/webkit/URLUtil;->composeSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 1683
    :pswitch_1
    const-string v7, "http://en.wikipedia.org/w/index.php?search=%s&go=Go"

    const-string v8, "%s"

    invoke-static {v4, v7, v9}, Landroid/webkit/URLUtil;->composeSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 1686
    :pswitch_2
    const-string v7, "http://dictionary.reference.com/search?q=%s"

    const-string v8, "%s"

    invoke-static {v4, v7, v9}, Landroid/webkit/URLUtil;->composeSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 1690
    :pswitch_3
    const-string v7, "http://www.google.com/m/search?site=local&q=%s&near=mountain+view"

    const-string v8, "%s"

    invoke-static {v4, v7, v9}, Landroid/webkit/URLUtil;->composeSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 1695
    .end local v4           #query:Ljava/lang/String;
    .end local v6           #shortcut:I
    :cond_5
    sget-object v7, Lcom/android/browser/api_v8/PatternsInternal;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1696
    invoke-static {v1}, Landroid/webkit/URLUtil;->guessUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 1702
    :cond_6
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/browser/controller/BrowserSettings;->getDefaultSearchEngine()I

    move-result v7

    if-ne v7, v10, :cond_7

    .line 1703
    invoke-static {v10, v1}, Lcom/android/browser/model/MiRenUrlDataProvider;->getSearchUrl(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 1704
    :cond_7
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/browser/controller/BrowserSettings;->getDefaultSearchEngine()I

    move-result v7

    if-ne v7, v13, :cond_8

    .line 1705
    invoke-static {v13, v1}, Lcom/android/browser/model/MiRenUrlDataProvider;->getSearchUrl(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 1707
    :cond_8
    const-string v7, "http://www.google.com/m?q=%s"

    const-string v8, "%s"

    invoke-static {v1, v7, v9}, Landroid/webkit/URLUtil;->composeSearchUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 1678
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private startDownloaderService()V
    .locals 3

    .prologue
    .line 882
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 883
    .local v0, serviceIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.providers.downloads.DownloadService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 884
    invoke-virtual {p0, v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 885
    return-void
.end method

.method private unregisterNetworkState()V
    .locals 2

    .prologue
    .line 665
    iget-boolean v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mNetworkStateRegistered:Z

    if-nez v0, :cond_0

    .line 677
    :goto_0
    return-void

    .line 668
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    monitor-enter v0

    .line 669
    :try_start_0
    iget-boolean v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mNetworkStateRegistered:Z

    if-nez v1, :cond_1

    .line 670
    monitor-exit v0

    goto :goto_0

    .line 676
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 673
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mNetworkStateIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 674
    invoke-static {}, Landroid/webkit/WebView;->disablePlatformNotifications()V

    .line 675
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mNetworkStateRegistered:Z

    .line 676
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private updateLockIconImage(I)V
    .locals 2
    .parameter "lockIconType"

    .prologue
    .line 2026
    const/4 v0, 0x0

    .line 2027
    .local v0, d:Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 2028
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSecLockIcon:Landroid/graphics/drawable/Drawable;

    .line 2032
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mFakeTitleView:Lcom/android/browser/ui/TitleView;

    invoke-virtual {v1, v0}, Lcom/android/browser/ui/TitleView;->setLock(Landroid/graphics/drawable/Drawable;)V

    .line 2033
    return-void

    .line 2029
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 2030
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mMixLockIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public OnFuncBtnClicked()V
    .locals 1

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/Tab;->OnFuncBtnClicked()V

    .line 1382
    return-void
.end method

.method public addTab(Z)Lcom/android/browser/controller/Tab;
    .locals 7
    .parameter "useHomePage"

    .prologue
    const/4 v4, 0x1

    .line 1839
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    .line 1840
    .local v1, start:J
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3, v4, v4}, Lcom/android/browser/ui/MiRenBrowserActivity;->addTab(ZLcom/android/browser/controller/Tab;ZZ)Lcom/android/browser/controller/Tab;

    move-result-object v0

    .line 1841
    .local v0, ret:Lcom/android/browser/controller/Tab;
    const-string v3, "browser/BrowserActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adding a new tab takes time (in ms): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    return-object v0
.end method

.method public addTab(ZLcom/android/browser/controller/Tab;)Lcom/android/browser/controller/Tab;
    .locals 1
    .parameter "useHomePage"
    .parameter "parentTab"

    .prologue
    const/4 v0, 0x1

    .line 1855
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->addTab(ZLcom/android/browser/controller/Tab;ZZ)Lcom/android/browser/controller/Tab;

    move-result-object v0

    return-object v0
.end method

.method public addTab(ZLcom/android/browser/controller/Tab;ZZ)Lcom/android/browser/controller/Tab;
    .locals 2
    .parameter "useHomePage"
    .parameter "parentTab"
    .parameter "switchToForground"
    .parameter "useBufferedTab"

    .prologue
    .line 1865
    iget-object v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    if-nez v1, :cond_0

    .line 1866
    const/4 v1, 0x0

    .line 1876
    :goto_0
    return-object v1

    .line 1868
    :cond_0
    iget-object v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/browser/controller/TabController;->addTab(ZLcom/android/browser/controller/Tab;ZZ)Lcom/android/browser/controller/Tab;

    move-result-object v0

    .line 1870
    .local v0, newTab:Lcom/android/browser/controller/Tab;
    invoke-direct {p0, v0, p1}, Lcom/android/browser/ui/MiRenBrowserActivity;->initWebView(Lcom/android/browser/controller/Tab;Z)V

    .line 1872
    if-eqz p3, :cond_1

    .line 1873
    invoke-virtual {p0, v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->switchToTab(Lcom/android/browser/controller/Tab;)V

    :cond_1
    move-object v1, v0

    .line 1876
    goto :goto_0
.end method

.method public addTab(ZZ)Lcom/android/browser/controller/Tab;
    .locals 2
    .parameter "useHomePage"
    .parameter "switchToForground"

    .prologue
    .line 1848
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->addTab(ZLcom/android/browser/controller/Tab;ZZ)Lcom/android/browser/controller/Tab;

    move-result-object v0

    return-object v0
.end method

.method public addTabNoBuffer(ZLcom/android/browser/controller/Tab;)Lcom/android/browser/controller/Tab;
    .locals 2
    .parameter "useHomePage"
    .parameter "parentTab"

    .prologue
    .line 1859
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->addTab(ZLcom/android/browser/controller/Tab;ZZ)Lcom/android/browser/controller/Tab;

    move-result-object v0

    return-object v0
.end method

.method public deleteHomeQuickAccessItem(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 910
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 911
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {p0, v0, p1}, Lcom/android/browser/api_v8/Bookmarks;->removeFromBookmarkBySimilarUrl(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 912
    new-instance v1, Lcom/android/browser/ui/MiRenBrowserActivity$9;

    invoke-direct {v1, p0}, Lcom/android/browser/ui/MiRenBrowserActivity$9;-><init>(Lcom/android/browser/ui/MiRenBrowserActivity;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/browser/ui/MiRenBrowserActivity$9;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 919
    return-void
.end method

.method public doAddBookmark()V
    .locals 12

    .prologue
    const/4 v6, 0x1

    .line 1283
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/Tab;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 1284
    .local v3, title:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/Tab;->getLoadedUrl()Ljava/lang/String;

    move-result-object v2

    .line 1285
    .local v2, url:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/Tab;->getMode()I

    move-result v7

    .line 1286
    .local v7, mode:I
    invoke-direct {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getWebViewTouchIconUrl()Ljava/lang/String;

    move-result-object v11

    .line 1287
    .local v11, touchIconUrl:Ljava/lang/String;
    const-string v0, "browser/BrowserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "touch icon url: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/Tab;->createScreenshot()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1290
    .local v4, thumbnail:Landroid/graphics/Bitmap;
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/browser/api_v8/Bookmarks;->addBookmark(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ZI)J

    move-result-wide v9

    .line 1292
    .local v9, id:J
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Lcom/android/browser/controller/Tab;->onBookmarkAdded(J)V

    .line 1294
    if-eqz v11, :cond_0

    .line 1295
    new-instance v8, Lcom/android/browser/api_v8/DownloadTouchIcon;

    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {v8, v0, v2}, Lcom/android/browser/api_v8/DownloadTouchIcon;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1297
    .local v8, downloadTouchIcon:Lcom/android/browser/api_v8/DownloadTouchIcon;
    new-array v0, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v11, v0, v1

    invoke-virtual {v8, v0}, Lcom/android/browser/api_v8/DownloadTouchIcon;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1299
    .end local v8           #downloadTouchIcon:Lcom/android/browser/api_v8/DownloadTouchIcon;
    :cond_0
    return-void
.end method

.method public doAddBookmarkWithTitleUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "title"
    .parameter "url"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 1267
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/Tab;->getMode()I

    move-result v7

    .line 1268
    .local v7, mode:I
    invoke-direct {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getWebViewTouchIconUrl()Ljava/lang/String;

    move-result-object v11

    .line 1269
    .local v11, touchIconUrl:Ljava/lang/String;
    const-string v0, "browser/BrowserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "touch icon url: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p1

    move-object v5, v4

    invoke-static/range {v0 .. v7}, Lcom/android/browser/api_v8/Bookmarks;->addBookmark(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ZI)J

    move-result-wide v9

    .line 1273
    .local v9, id:J
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Lcom/android/browser/controller/Tab;->onBookmarkAdded(J)V

    .line 1275
    if-eqz v11, :cond_0

    .line 1276
    new-instance v8, Lcom/android/browser/api_v8/DownloadTouchIcon;

    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {v8, v0, p2}, Lcom/android/browser/api_v8/DownloadTouchIcon;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1278
    .local v8, downloadTouchIcon:Lcom/android/browser/api_v8/DownloadTouchIcon;
    new-array v0, v6, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v11, v0, v1

    invoke-virtual {v8, v0}, Lcom/android/browser/api_v8/DownloadTouchIcon;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1280
    .end local v8           #downloadTouchIcon:Lcom/android/browser/api_v8/DownloadTouchIcon;
    :cond_0
    return-void
.end method

.method public doRemoveBookmark(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 1302
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/android/browser/api_v8/Bookmarks;->removeFromBookmarkByUrl(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)V

    .line 1303
    return-void
.end method

.method public getCustomViewApiWrapper()Lcom/android/browser/ui/MiRenBrowserActivity$CustomViewApiWrapper;
    .locals 1

    .prologue
    .line 2860
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mCustomViewApiWrapper:Lcom/android/browser/ui/MiRenBrowserActivity$CustomViewApiWrapper;

    return-object v0
.end method

.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 2838
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mDefaultVideoPoster:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 2839
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020033

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mDefaultVideoPoster:Landroid/graphics/Bitmap;

    .line 2841
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mDefaultVideoPoster:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getDummyWebview()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 1182
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mDummyWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public getFakeTitleView()Lcom/android/browser/ui/TitleView;
    .locals 1

    .prologue
    .line 2396
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mFakeTitleView:Lcom/android/browser/ui/TitleView;

    return-object v0
.end method

.method public getFullScreenButton()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 2877
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mFullScreenBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getSubWindowContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 2185
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSubWindowFrameLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getTabController()Lcom/android/browser/controller/TabController;
    .locals 1

    .prologue
    .line 2388
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    return-object v0
.end method

.method public getTitleViewHeight()I
    .locals 1

    .prologue
    .line 1933
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mFakeTitleView:Lcom/android/browser/ui/TitleView;

    invoke-virtual {v0}, Lcom/android/browser/ui/TitleView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getTitleViewMode()I
    .locals 1

    .prologue
    .line 2348
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mFakeTitleView:Lcom/android/browser/ui/TitleView;

    invoke-virtual {v0}, Lcom/android/browser/ui/TitleView;->getMode()I

    move-result v0

    return v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 3

    .prologue
    .line 2852
    iget-object v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mVideoProgressView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 2853
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 2854
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030022

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mVideoProgressView:Landroid/view/View;

    .line 2856
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mVideoProgressView:Landroid/view/View;

    return-object v1
.end method

.method public getViewFlipper()Lcom/android/browser/ui/MiRenViewFlipperWrapper;
    .locals 1

    .prologue
    .line 2392
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mViewFlipper:Lcom/android/browser/ui/MiRenViewFlipperWrapper;

    return-object v0
.end method

.method public gotoNavigationHomePage(Lcom/android/browser/controller/Tab;)V
    .locals 2
    .parameter "thisTab"

    .prologue
    .line 1385
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getTabCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1387
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSettings:Lcom/android/browser/controller/BrowserSettings;

    invoke-virtual {v1}, Lcom/android/browser/controller/BrowserSettings;->getHomePage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/controller/Tab;->doNavigation(Ljava/lang/String;)V

    .line 1392
    :goto_0
    return-void

    .line 1390
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    const-string v1, "miui:home"

    invoke-virtual {v0, v1}, Lcom/android/browser/controller/Tab;->doNavigation(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hideStatusBar(Z)V
    .locals 2
    .parameter "bForce"

    .prologue
    .line 2404
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSettings:Lcom/android/browser/controller/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/controller/BrowserSettings;->getShowStatusBarAlways()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2405
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2406
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2407
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mShowStatusBar:Z

    .line 2409
    :cond_1
    return-void
.end method

.method public isHideUrlBar()Z
    .locals 1

    .prologue
    .line 2106
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mFakeTitleView:Lcom/android/browser/ui/TitleView;

    invoke-virtual {v0}, Lcom/android/browser/ui/TitleView;->isHideUrlBar()Z

    move-result v0

    return v0
.end method

.method isNetworkUp()Z
    .locals 1

    .prologue
    .line 693
    iget-boolean v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mIsNetworkUp:Z

    return v0
.end method

.method public isShowStatusBar()Z
    .locals 1

    .prologue
    .line 2425
    iget-boolean v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mShowStatusBar:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    const/4 v3, 0x0

    .line 2372
    packed-switch p1, :pswitch_data_0

    .line 2384
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v1}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/browser/controller/Tab;->requestFocus()V

    .line 2385
    return-void

    .line 2374
    :pswitch_0
    iget-object v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mUploadMessage:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 2375
    if-eqz p3, :cond_1

    const/4 v1, -0x1

    if-eq p2, v1, :cond_3

    :cond_1
    move-object v0, v3

    .line 2377
    .local v0, result:Landroid/net/Uri;
    :goto_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v2, 0x4

    if-le v1, v2, :cond_2

    .line 2378
    iget-object v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mUploadMessage:Ljava/lang/Object;

    invoke-static {v1, v0}, Lcom/android/browser/util/ValueCallbackHelper;->onReceiveValue(Ljava/lang/Object;Landroid/net/Uri;)V

    .line 2379
    :cond_2
    iput-object v3, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mUploadMessage:Ljava/lang/Object;

    goto :goto_0

    .line 2375
    .end local v0           #result:Landroid/net/Uri;
    :cond_3
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    move-object v0, v1

    goto :goto_1

    .line 2372
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 1194
    invoke-direct {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->onBackKeyDown()Z

    .line 1195
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 8
    .parameter "newConfig"

    .prologue
    const/4 v2, 0x0

    .line 981
    invoke-super {p0, p1}, Lcom/android/browser/ui/WebViewHolderActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 982
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget-object v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mOriLockBtn:Landroid/widget/OrientationLockButton;

    invoke-virtual {v1}, Landroid/widget/OrientationLockButton;->getOrienation()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 983
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mOriLockBtn:Landroid/widget/OrientationLockButton;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Landroid/widget/OrientationLockButton;->setOrientation(I)V

    .line 985
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    if-eqz v0, :cond_0

    .line 986
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Lcom/android/browser/controller/TabController;->onConfigurationChanged(I)V

    .line 989
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mPageInfoDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 990
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mPageInfoDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 991
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mPageInfoView:Lcom/android/browser/controller/Tab;

    iget-boolean v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mPageInfoFromShowSSLCertificateOnError:Z

    invoke-direct {p0, v0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->showPageInfo(Lcom/android/browser/controller/Tab;Z)V

    .line 993
    :cond_1
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSSLCertificateDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 994
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSSLCertificateDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 995
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSSLCertificateView:Lcom/android/browser/controller/Tab;

    invoke-direct {p0, v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->showSSLCertificate(Lcom/android/browser/controller/Tab;)V

    .line 997
    :cond_2
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 998
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 999
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSSLCertificateOnErrorTab:Lcom/android/browser/controller/Tab;

    iget-object v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

    iget-object v3, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSSLCertificateOnErrorError:Landroid/net/http/SslError;

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/browser/ui/MiRenBrowserActivity;->showSSLCertificateOnError(Lcom/android/browser/controller/Tab;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 1002
    :cond_3
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 1003
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0d003b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1005
    .local v5, name:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0d003d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1007
    .local v6, password:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v7

    .line 1008
    .local v7, focusId:I
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1009
    iget-object v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mHttpAuthHandler:Landroid/webkit/HttpAuthHandler;

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/browser/ui/MiRenBrowserActivity;->showHttpAuthentication(Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1012
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #password:Ljava/lang/String;
    .end local v7           #focusId:I
    :cond_4
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/Tab;->getGuidePopupWindow()Landroid/widget/GuidePopupWindow;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1013
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/Tab;->getGuidePopupWindow()Landroid/widget/GuidePopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/GuidePopupWindow;->dismiss()V

    .line 1015
    :cond_5
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v6, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 2291
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 2292
    .local v0, id:I
    const/4 v3, 0x1

    .line 2293
    .local v3, result:Z
    packed-switch v0, :pswitch_data_0

    .line 2324
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/browser/ui/MiRenBrowserActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    .line 2326
    :goto_0
    return v3

    .line 2303
    :pswitch_1
    iget-object v5, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v0, v7, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2305
    .local v1, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v5}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/browser/controller/Tab;->requestFocusNodeHref(Landroid/os/Message;)V

    goto :goto_0

    .line 2310
    .end local v1           #msg:Landroid/os/Message;
    :pswitch_2
    iget-object v5, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v6, v0, v7, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    .line 2311
    .local v4, sendmsg:Landroid/os/Message;
    invoke-virtual {v4}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "url"

    iget-object v7, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v7}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/browser/controller/Tab;->getLoadedUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2312
    invoke-virtual {v4}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "title"

    iget-object v7, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v7}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/browser/controller/Tab;->getTitle()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2313
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 2317
    .end local v4           #sendmsg:Landroid/os/Message;
    :pswitch_3
    iget-object v5, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xd

    invoke-virtual {v5, v6, v7, v7, v8}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 2319
    .local v2, msgShowpageinfo:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2293
    :pswitch_data_0
    .packed-switch 0x7f0d00a3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v9, "firstVisited77"

    const-string v8, "firstVisited"

    .line 447
    invoke-super {p0, p1}, Lcom/android/browser/ui/WebViewHolderActivity;->onCreate(Landroid/os/Bundle;)V

    .line 449
    const v3, 0x7f03000b

    invoke-virtual {p0, v3}, Lcom/android/browser/ui/MiRenBrowserActivity;->setContentView(I)V

    .line 452
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {p0}, Lcom/android/browser/common/UserInfo;->getUserId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "miuibrowser"

    invoke-static {v3, v4, v5}, Lcom/android/browser/common/ExceptionHandler;->registerExceptionHandler(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    new-instance v3, Lcom/android/browser/ui/MiRenWebView;

    invoke-direct {v3, p0}, Lcom/android/browser/ui/MiRenWebView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mDummyWebView:Landroid/webkit/WebView;

    .line 457
    invoke-static {}, Lcom/android/browser/util/LauncherUtil$ProcessAliveLock;->getInstance()Lcom/android/browser/util/LauncherUtil$ProcessAliveLock;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/browser/util/LauncherUtil$ProcessAliveLock;->acquire(Ljava/lang/String;)V

    .line 459
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 460
    .local v2, pre:Landroid/content/SharedPreferences;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 462
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    const-string v3, "firstVisited"

    invoke-interface {v2, v8, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 464
    invoke-direct {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->initFirstStep()V

    .line 465
    invoke-direct {p0, v7}, Lcom/android/browser/ui/MiRenBrowserActivity;->initAsync(Z)V

    .line 467
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v3

    invoke-static {}, Lcom/android/browser/util/LanguageUtil;->isInternationalVersion()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v7

    :goto_0
    invoke-virtual {v3, p0, v4}, Lcom/android/browser/controller/BrowserSettings;->setWAPSupport(Landroid/content/Context;Z)V

    .line 468
    const-string v3, "firstVisited"

    invoke-interface {v0, v8, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 469
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 471
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 472
    .local v1, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v6}, Landroid/content/pm/PackageManager;->setCompatibilityMode(Ljava/lang/String;Z)V

    .line 484
    .end local v1           #pm:Landroid/content/pm/PackageManager;
    :goto_1
    new-instance v3, Lcom/android/browser/controller/SystemAllowGeolocationOrigins;

    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/browser/controller/SystemAllowGeolocationOrigins;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSystemAllowGeolocationOrigins:Lcom/android/browser/controller/SystemAllowGeolocationOrigins;

    .line 486
    iget-object v3, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSystemAllowGeolocationOrigins:Lcom/android/browser/controller/SystemAllowGeolocationOrigins;

    invoke-virtual {v3}, Lcom/android/browser/controller/SystemAllowGeolocationOrigins;->start()V

    .line 487
    return-void

    :cond_0
    move v4, v6

    .line 467
    goto :goto_0

    .line 474
    :cond_1
    invoke-direct {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->initFirstStep()V

    .line 476
    const-string v3, "firstVisited77"

    invoke-interface {v2, v9, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 477
    const-string v3, "firstVisited77"

    invoke-interface {v0, v9, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 478
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 479
    iget-object v3, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSettings:Lcom/android/browser/controller/BrowserSettings;

    invoke-virtual {v3}, Lcom/android/browser/controller/BrowserSettings;->resetHideButtonsInFullScreen()V

    .line 481
    :cond_2
    invoke-direct {p0, v6}, Lcom/android/browser/ui/MiRenBrowserActivity;->initAsync(Z)V

    goto :goto_1
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 2
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 2279
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/Tab;->getLoadedUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2287
    :cond_0
    :goto_0
    return-void

    .line 2282
    :cond_1
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/Tab;->getLoadedUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file:///android_asset/navigationHome.html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2286
    invoke-super {p0, p1, p2, p3}, Lcom/android/browser/ui/WebViewHolderActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 373
    .local v0, inflator:Landroid/view/MenuInflater;
    const v1, 0x7f0c0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 375
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1131
    const-string v2, "browser/BrowserActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MiRenBrowserActivity.onDestroy: this="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    invoke-super {p0}, Lcom/android/browser/ui/WebViewHolderActivity;->onDestroy()V

    .line 1134
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/browser/controller/BrowserSettings;->getAutoClearCacheOnExit(Landroid/content/Context;)Z

    move-result v0

    .line 1135
    .local v0, clearCacheBeforeExit:Z
    if-eqz v0, :cond_0

    .line 1136
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/browser/controller/BrowserSettings;->clearDatabases(Landroid/content/Context;)V

    .line 1137
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/browser/controller/BrowserSettings;->clearCache(Landroid/content/Context;)V

    .line 1140
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1141
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/browser/controller/BrowserSettings;->setIsInNightMode(Z)V

    .line 1144
    :cond_1
    iget-object v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mUploadMessage:Ljava/lang/Object;

    if-eqz v2, :cond_3

    .line 1145
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x4

    if-le v2, v3, :cond_2

    .line 1146
    iget-object v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mUploadMessage:Ljava/lang/Object;

    invoke-static {v2, v5}, Lcom/android/browser/util/ValueCallbackHelper;->onReceiveValue(Ljava/lang/Object;Landroid/net/Uri;)V

    .line 1147
    :cond_2
    iput-object v5, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mUploadMessage:Ljava/lang/Object;

    .line 1150
    :cond_3
    invoke-static {}, Lcom/android/browser/controller/TabController;->getInstance()Lcom/android/browser/controller/TabController;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/browser/controller/TabController;->setBarconChange(Z)V

    .line 1152
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebIconDatabase;->close()V

    .line 1153
    invoke-static {p0}, Lcom/android/browser/model/ThumbnailStorageManager;->purgeThumbnailStorage(Landroid/content/Context;)V

    .line 1155
    iget-object v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    if-eqz v2, :cond_4

    .line 1156
    iget-object v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v2}, Lcom/android/browser/controller/TabController;->destroy()V

    .line 1157
    iput-object v5, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    .line 1160
    :cond_4
    if-nez v0, :cond_5

    .line 1161
    invoke-static {}, Lcom/android/browser/util/LauncherUtil$ProcessAliveLock;->getInstance()Lcom/android/browser/util/LauncherUtil$ProcessAliveLock;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/browser/util/LauncherUtil$ProcessAliveLock;->release(Ljava/lang/String;)V

    .line 1162
    iget-object v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mDummyWebView:Landroid/webkit/WebView;

    invoke-virtual {v2}, Landroid/webkit/WebView;->destroy()V

    .line 1174
    :goto_0
    iget-object v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mPackageInstallationReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Lcom/android/browser/ui/MiRenBrowserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1177
    iget-object v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSystemAllowGeolocationOrigins:Lcom/android/browser/controller/SystemAllowGeolocationOrigins;

    invoke-virtual {v2}, Lcom/android/browser/controller/SystemAllowGeolocationOrigins;->stop()V

    .line 1178
    iput-object v5, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSystemAllowGeolocationOrigins:Lcom/android/browser/controller/SystemAllowGeolocationOrigins;

    .line 1179
    return-void

    .line 1169
    :cond_5
    iget-object v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 1170
    .local v1, msg:Landroid/os/Message;
    const/16 v2, 0xc

    iput v2, v1, Landroid/os/Message;->what:I

    .line 1171
    iget-object v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x3a98

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 10
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimetype"
    .parameter "contentLength"

    .prologue
    .line 2209
    if-eqz p3, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "attachment"

    const/4 v4, 0x0

    const/16 v5, 0xa

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2214
    :cond_0
    new-instance v8, Landroid/content/Intent;

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2215
    .local v8, intent:Landroid/content/Intent;
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v8, v0, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2216
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/high16 v1, 0x1

    invoke-virtual {v0, v8, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    .line 2218
    .local v7, info:Landroid/content/pm/ResolveInfo;
    if-eqz v7, :cond_2

    .line 2219
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    .line 2222
    .local v9, myName:Landroid/content/ComponentName;
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2229
    :cond_1
    :try_start_0
    invoke-virtual {p0, v8}, Lcom/android/browser/ui/MiRenBrowserActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2242
    .end local v7           #info:Landroid/content/pm/ResolveInfo;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #myName:Landroid/content/ComponentName;
    :goto_0
    return-void

    .line 2231
    .restart local v7       #info:Landroid/content/pm/ResolveInfo;
    .restart local v8       #intent:Landroid/content/Intent;
    .restart local v9       #myName:Landroid/content/ComponentName;
    :catch_0
    move-exception v6

    .line 2232
    .local v6, ex:Landroid/content/ActivityNotFoundException;
    const-string v0, "browser/BrowserActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activity not found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " over "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2240
    .end local v6           #ex:Landroid/content/ActivityNotFoundException;
    .end local v7           #info:Landroid/content/pm/ResolveInfo;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v9           #myName:Landroid/content/ComponentName;
    :cond_2
    invoke-virtual/range {p0 .. p6}, Lcom/android/browser/ui/MiRenBrowserActivity;->onDownloadStartNoStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public onFeedBackBtnClicked()V
    .locals 7

    .prologue
    .line 1368
    iget-object v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v2}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/controller/Tab;->createScreenshotToFile()Ljava/lang/String;

    move-result-object v0

    .line 1369
    .local v0, fileName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1370
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1371
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.SUBJECT"

    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900c0

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1372
    const-string v2, "android.intent.extra.EMAIL"

    sget-object v3, Lcom/android/browser/ui/MiRenBrowserActivity;->FEEDBACK_EMAILS:[Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 1373
    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900c1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v6}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/browser/controller/Tab;->getLoadedUrl()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1374
    const-string v2, "android.intent.extra.STREAM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1375
    const-string v2, "image/jpg"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1376
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/browser/ui/MiRenBrowserActivity;->startActivity(Landroid/content/Intent;)V

    .line 1378
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    if-eqz v0, :cond_0

    .line 1188
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->onLowMemory()V

    .line 1190
    :cond_0
    return-void
.end method

.method public onNetworkToggle(Z)V
    .locals 1
    .parameter "up"

    .prologue
    .line 684
    iget-boolean v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mIsNetworkUp:Z

    if-ne p1, v0, :cond_0

    .line 690
    :goto_0
    return-void

    .line 688
    :cond_0
    iput-boolean p1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mIsNetworkUp:Z

    .line 689
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/browser/controller/Tab;->onNetworkToggle(Z)V

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 12
    .parameter "intent"

    .prologue
    const-string v11, "android.intent.action.VIEW"

    const-string v10, "android.intent.action.SEARCH"

    .line 1020
    iget-object v9, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v9}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v3

    .line 1021
    .local v3, current:Lcom/android/browser/controller/Tab;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1022
    .local v0, action:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result v4

    .line 1023
    .local v4, flags:I
    const-string v9, "android.intent.action.MAIN"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const/high16 v9, 0x10

    and-int/2addr v9, v4

    if-eqz v9, :cond_1

    .line 1111
    :cond_0
    :goto_0
    return-void

    .line 1029
    :cond_1
    const-string v9, "search"

    invoke-virtual {p0, v9}, Lcom/android/browser/ui/MiRenBrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/SearchManager;

    invoke-virtual {v9}, Landroid/app/SearchManager;->stopSearch()V

    .line 1030
    const-string v9, "android.speech.action.VOICE_SEARCH_RESULTS"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1033
    .local v1, activateVoiceSearch:Z
    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "android.intent.action.SEARCH"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "android.intent.action.MEDIA_SEARCH"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "android.intent.action.WEB_SEARCH"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    if-eqz v1, :cond_7

    .line 1038
    :cond_2
    invoke-virtual {v3}, Lcom/android/browser/controller/Tab;->isInVoiceSearchMode()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1039
    invoke-virtual {v3}, Lcom/android/browser/controller/Tab;->getVoiceDisplayTitle()Ljava/lang/String;

    move-result-object v7

    .line 1040
    .local v7, title:Ljava/lang/String;
    if-eqz v7, :cond_3

    const-string v9, "query"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1046
    :cond_3
    const-string v9, "android.intent.action.SEARCH"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v3}, Lcom/android/browser/controller/Tab;->voiceSearchSourceIsGoogle()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1048
    new-instance v5, Landroid/content/Intent;

    const-string v9, "com.android.common.speech.LOG_EVENT"

    invoke-direct {v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1050
    .local v5, logIntent:Landroid/content/Intent;
    const-string v9, "extra_event"

    const/4 v10, 0x3

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1052
    const-string v9, "value"

    invoke-virtual {p1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1055
    invoke-virtual {p0, v5}, Lcom/android/browser/ui/MiRenBrowserActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1064
    .end local v5           #logIntent:Landroid/content/Intent;
    .end local v7           #title:Ljava/lang/String;
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/browser/ui/MiRenBrowserActivity;->handleWebSearchIntent(Landroid/content/Intent;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1068
    invoke-direct {p0, p1}, Lcom/android/browser/ui/MiRenBrowserActivity;->getUrlDataFromIntent(Landroid/content/Intent;)Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;

    move-result-object v8

    .line 1069
    .local v8, urlData:Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;
    invoke-virtual {v8}, Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1070
    new-instance v8, Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;

    .end local v8           #urlData:Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;
    const-string v9, "miui:home"

    invoke-direct {v8, v9}, Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;-><init>(Ljava/lang/String;)V

    .line 1083
    .restart local v8       #urlData:Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;
    :cond_5
    const-string v9, "com.android.browser.application_id"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1084
    .local v2, appId:Ljava/lang/String;
    if-nez v2, :cond_6

    const-string v9, "android.intent.action.VIEW"

    invoke-virtual {v11, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1085
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getOneUniqueAppID()Ljava/lang/String;

    move-result-object v2

    .line 1089
    :cond_6
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_8

    const/high16 v9, 0x40

    and-int/2addr v9, v4

    if-eqz v9, :cond_8

    .line 1091
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/browser/ui/MiRenBrowserActivity;->addTab(Z)Lcom/android/browser/controller/Tab;

    move-result-object v6

    .line 1092
    .local v6, tab:Lcom/android/browser/controller/Tab;
    if-eqz v6, :cond_0

    .line 1095
    invoke-virtual {v6, v2}, Lcom/android/browser/controller/Tab;->setCallingApplicationId(Ljava/lang/String;)V

    .line 1096
    invoke-direct {p0, v8}, Lcom/android/browser/ui/MiRenBrowserActivity;->loadUrlDataIn(Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;)V

    .line 1110
    .end local v2           #appId:Ljava/lang/String;
    .end local v6           #tab:Lcom/android/browser/controller/Tab;
    .end local v8           #urlData:Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;
    :cond_7
    :goto_1
    invoke-super {p0, p1}, Lcom/android/browser/ui/WebViewHolderActivity;->onNewIntent(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1098
    .restart local v2       #appId:Ljava/lang/String;
    .restart local v8       #urlData:Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;
    :cond_8
    invoke-virtual {v8}, Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v9, v8, Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;->mUrl:Ljava/lang/String;

    const-string v10, "about:debug"

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 1099
    iget-object v9, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v9}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/browser/controller/Tab;->debugDump()V

    goto/16 :goto_0

    .line 1106
    :cond_9
    invoke-direct {p0, v8}, Lcom/android/browser/ui/MiRenBrowserActivity;->loadUrlDataIn(Lcom/android/browser/ui/MiRenBrowserActivity$UrlData;)V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const/4 v7, 0x1

    .line 389
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 436
    const/4 v5, 0x0

    :goto_0
    return v5

    .line 391
    :pswitch_0
    iget-object v5, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v5}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/controller/Tab;->goHome()V

    move v5, v7

    .line 392
    goto :goto_0

    .line 395
    :pswitch_1
    iget-object v5, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v5}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/controller/Tab;->search()V

    move v5, v7

    .line 396
    goto :goto_0

    .line 399
    :pswitch_2
    iget-object v5, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v5}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/controller/Tab;->startTextSelection()V

    .line 400
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->refreshNavButtonStatus()V

    move v5, v7

    .line 401
    goto :goto_0

    .line 404
    :pswitch_3
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-class v6, Lcom/android/browser/ui/BookmarkCenter;

    invoke-virtual {v5, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 405
    .local v0, intent_fav:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->startActivity(Landroid/content/Intent;)V

    move v5, v7

    .line 406
    goto :goto_0

    .line 409
    .end local v0           #intent_fav:Landroid/content/Intent;
    :pswitch_4
    invoke-static {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->showAlertDialogBeforeExiting(Landroid/app/Activity;)V

    move v5, v7

    .line 410
    goto :goto_0

    .line 413
    :pswitch_5
    invoke-direct {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->onBrightnessClick()V

    move v5, v7

    .line 414
    goto :goto_0

    .line 417
    :pswitch_6
    new-instance v1, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW_DOWNLOADS"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 418
    .local v1, pageView:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 419
    const-string v5, "intent_extra_application_packagename"

    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    invoke-virtual {p0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->startActivity(Landroid/content/Intent;)V

    move v5, v7

    .line 421
    goto :goto_0

    .line 424
    .end local v1           #pageView:Landroid/content/Intent;
    :pswitch_7
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/android/browser/ui/BrowserSettingActivity;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 425
    .local v2, settings:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/browser/ui/MiRenBrowserActivity;->startActivity(Landroid/content/Intent;)V

    move v5, v7

    .line 426
    goto :goto_0

    .line 429
    .end local v2           #settings:Landroid/content/Intent;
    :pswitch_8
    iget-object v5, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v5}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/controller/Tab;->getLoadedUrl()Ljava/lang/String;

    move-result-object v4

    .line 430
    .local v4, url:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 431
    iget-object v5, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v5}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/controller/Tab;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 432
    .local v3, title:Ljava/lang/String;
    invoke-static {p0, v3, v4}, Lcom/android/browser/ui/MiRenBrowserActivity;->sharePage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .end local v3           #title:Ljava/lang/String;
    :cond_0
    move v5, v7

    .line 434
    goto/16 :goto_0

    .line 389
    :pswitch_data_0
    .packed-switch 0x7f0d00b0
        :pswitch_0
        :pswitch_3
        :pswitch_7
        :pswitch_4
        :pswitch_6
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_8
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 937
    invoke-super {p0}, Lcom/android/browser/ui/WebViewHolderActivity;->onPause()V

    .line 939
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mActivityPaused:Z

    .line 941
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mOriLockBtn:Landroid/widget/OrientationLockButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/OrientationLockButton;->enableListener(Z)V

    .line 942
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 943
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/Tab;->onActivityPause()V

    .line 946
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 948
    invoke-direct {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->unregisterNetworkState()V

    .line 950
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->stopSync()V

    .line 951
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 380
    iget v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->screenMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSettings:Lcom/android/browser/controller/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/controller/BrowserSettings;->getHideStatusBarAlways()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->switchScreenMode(IZ)V

    .line 384
    :cond_1
    invoke-super {p0, p1}, Lcom/android/browser/ui/WebViewHolderActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 1123
    invoke-super {p0, p1}, Lcom/android/browser/ui/WebViewHolderActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1124
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    if-eqz v0, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0, p1}, Lcom/android/browser/controller/TabController;->onRestoreState(Landroid/os/Bundle;)V

    .line 1127
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 955
    invoke-super {p0}, Lcom/android/browser/ui/WebViewHolderActivity;->onResume()V

    .line 957
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mActivityPaused:Z

    .line 958
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->refreshNavButtonStatus()V

    .line 959
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setPriority(I)V

    .line 961
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mOriLockBtn:Landroid/widget/OrientationLockButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OrientationLockButton;->enableListener(Z)V

    .line 963
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/Tab;->onActivityResume()V

    .line 967
    :cond_0
    invoke-direct {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->registerNetworkState()V

    .line 969
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->startSync()V

    .line 971
    invoke-static {p0}, Lcom/android/browser/util/SystemSettingsUtil;->applyDayOrNightModeSetting(Landroid/app/Activity;)V

    .line 972
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter "outState"

    .prologue
    .line 1115
    invoke-super {p0, p1}, Lcom/android/browser/ui/WebViewHolderActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1116
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    if-eqz v0, :cond_0

    .line 1117
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0, p1}, Lcom/android/browser/controller/TabController;->onSaveState(Landroid/os/Bundle;)V

    .line 1119
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 871
    invoke-super {p0}, Lcom/android/browser/ui/WebViewHolderActivity;->onStart()V

    .line 877
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->refreshThumbnailData()V

    .line 878
    return-void
.end method

.method public openEditHomeItemDialog(Ljava/lang/String;)V
    .locals 7
    .parameter "url"

    .prologue
    const/4 v6, 0x0

    .line 888
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 889
    .local v2, cr:Landroid/content/ContentResolver;
    invoke-static {p0, v2, p1}, Lcom/android/browser/api_v8/Bookmarks;->getBookmarkIdFromUrl(Landroid/content/Context;Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    .line 890
    .local v3, id:I
    invoke-static {p0, v2, v3}, Lcom/android/browser/api_v8/Bookmarks;->getTitle(Landroid/content/Context;Landroid/content/ContentResolver;I)Ljava/lang/String;

    move-result-object v0

    .line 892
    .local v0, bookmarkTitle:Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 893
    .local v1, bundle:Landroid/os/Bundle;
    const-string v4, "websiteId"

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    const-string v4, "url"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    const-string v4, "title"

    invoke-virtual {v1, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    const-string v4, "folderId"

    invoke-static {v2}, Lcom/android/browser/model/BrowserHistoryDataProvider;->getOneClickSystemFolderId(Landroid/content/ContentResolver;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 897
    const-string v4, "entryMode"

    invoke-virtual {v1, v4, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 898
    const/4 v4, 0x1

    invoke-static {p0, v4, v1}, Lcom/android/browser/ui/BookmarkDialogs;->setupAddOrEditBookmarkDialog(Landroid/content/Context;ZLandroid/os/Bundle;)Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 900
    new-instance v4, Lcom/android/browser/ui/MiRenBrowserActivity$8;

    invoke-direct {v4, p0}, Lcom/android/browser/ui/MiRenBrowserActivity$8;-><init>(Lcom/android/browser/ui/MiRenBrowserActivity;)V

    new-array v5, v6, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, Lcom/android/browser/ui/MiRenBrowserActivity$8;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 907
    return-void
.end method

.method public openFileChooser(Ljava/lang/Object;)V
    .locals 3
    .parameter "uploadMsg"

    .prologue
    .line 2359
    iget-object v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mUploadMessage:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 2367
    :goto_0
    return-void

    .line 2360
    :cond_0
    iput-object p1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mUploadMessage:Ljava/lang/Object;

    .line 2361
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2362
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2363
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2364
    const v1, 0x7f09009e

    invoke-virtual {p0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/android/browser/ui/MiRenBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public openUrlInNewTab(Ljava/lang/String;Z)V
    .locals 3
    .parameter "url"
    .parameter "backgroundTab"

    .prologue
    const/4 v2, 0x0

    .line 2865
    if-eqz p2, :cond_0

    .line 2866
    invoke-virtual {p0, v2, v2}, Lcom/android/browser/ui/MiRenBrowserActivity;->addTab(ZZ)Lcom/android/browser/controller/Tab;

    move-result-object v0

    .line 2867
    .local v0, newTab:Lcom/android/browser/controller/Tab;
    const v1, 0x7f090032

    invoke-virtual {p0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 2873
    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/browser/controller/Tab;->doNavigation(Ljava/lang/String;)V

    .line 2874
    return-void

    .line 2870
    .end local v0           #newTab:Lcom/android/browser/controller/Tab;
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/browser/ui/MiRenBrowserActivity;->addTab(Z)Lcom/android/browser/controller/Tab;

    move-result-object v0

    .restart local v0       #newTab:Lcom/android/browser/controller/Tab;
    goto :goto_0
.end method

.method public postRefreshNavHomeStatusMessage()V
    .locals 3

    .prologue
    .line 975
    iget-object v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 976
    .local v0, message:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 977
    return-void
.end method

.method public refreshNavButtonStatus()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 2110
    iget-object v3, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v3}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v3

    if-nez v3, :cond_1

    .line 2131
    :cond_0
    :goto_0
    return-void

    .line 2113
    :cond_1
    iget-object v3, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v3}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v1

    .line 2114
    .local v1, currentTab:Lcom/android/browser/controller/Tab;
    invoke-virtual {v1}, Lcom/android/browser/controller/Tab;->getLoadedUrl()Ljava/lang/String;

    move-result-object v0

    .line 2115
    .local v0, currentLoadedUrl:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/browser/model/MiRenProtocolUrlMapper;->isHomePage(Ljava/lang/String;)Z

    move-result v2

    .line 2118
    .local v2, isHomePage:Z
    invoke-direct {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->setBackForwardButtonVisibility()V

    .line 2120
    if-nez v2, :cond_3

    .line 2121
    iget-object v3, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mHomeBtn:Landroid/widget/ImageButton;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2122
    iget-object v3, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mFakeTitleView:Lcom/android/browser/ui/TitleView;

    invoke-virtual {v1}, Lcom/android/browser/controller/Tab;->getFuncBtnType()Lcom/android/browser/ui/MiRenBrowserActivity$FuncButtonTypeEnum;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/browser/ui/TitleView;->refeshFuncBtn(Lcom/android/browser/ui/MiRenBrowserActivity$FuncButtonTypeEnum;)V

    .line 2124
    iget-object v3, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mLoadingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Lcom/android/browser/controller/Tab;->isLoading()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    :goto_1
    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_2
    move v4, v6

    goto :goto_1

    .line 2127
    :cond_3
    iget-object v3, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mHomeBtn:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 2129
    iget-object v3, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mLoadingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0
.end method

.method public refreshThumbnailData()V
    .locals 2

    .prologue
    .line 926
    new-instance v0, Lcom/android/browser/ui/MiRenBrowserActivity$10;

    invoke-direct {v0, p0}, Lcom/android/browser/ui/MiRenBrowserActivity$10;-><init>(Lcom/android/browser/ui/MiRenBrowserActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity$10;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 933
    return-void
.end method

.method public removeTab(Lcom/android/browser/controller/Tab;)V
    .locals 1
    .parameter "tab"

    .prologue
    .line 1884
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0, p1}, Lcom/android/browser/controller/TabController;->removeTab(Lcom/android/browser/controller/Tab;)V

    .line 1885
    return-void
.end method

.method public resetLockIcon(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 2007
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2008
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/browser/controller/Tab;->resetLockIcon(Ljava/lang/String;)V

    .line 2010
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->updateLockIconImage(I)V

    .line 2011
    return-void
.end method

.method public resetTitleAndRevertLockIcon()V
    .locals 1

    .prologue
    .line 1980
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1985
    :cond_0
    :goto_0
    return-void

    .line 1982
    :cond_1
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/Tab;->revertLockIcon()V

    .line 1983
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->updateLockIconToLatest()V

    .line 1984
    invoke-direct {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->resetTitleIconAndProgress()V

    goto :goto_0
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "host"
    .parameter "realm"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 2826
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/browser/controller/Tab;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2827
    return-void
.end method

.method public showHttpAuthentication(Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11
    .parameter "handler"
    .parameter "host"
    .parameter "realm"
    .parameter "title"
    .parameter "name"
    .parameter "password"
    .parameter "focusId"

    .prologue
    .line 2747
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    .line 2748
    .local v9, factory:Landroid/view/LayoutInflater;
    const v2, 0x7f030012

    const/4 v3, 0x0

    invoke-virtual {v9, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 2750
    .local v4, v:Landroid/view/View;
    if-eqz p5, :cond_0

    .line 2751
    const v2, 0x7f0d003b

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    move-object v0, v2

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2753
    :cond_0
    if-eqz p6, :cond_1

    .line 2754
    const v2, 0x7f0d003d

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p5

    .end local p5
    check-cast p5, Landroid/widget/EditText;

    invoke-virtual/range {p5 .. p6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2757
    :cond_1
    move-object v10, p4

    .line 2758
    .local v10, titleText:Ljava/lang/String;
    if-nez v10, :cond_2

    .line 2759
    const v2, 0x7f0900b4

    invoke-virtual {p0, v2}, Lcom/android/browser/ui/MiRenBrowserActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "%s1"

    if-nez p2, :cond_3

    const-string v5, ""

    :goto_0
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%s2"

    if-nez p3, :cond_4

    const-string v5, ""

    :goto_1
    invoke-virtual {v2, v3, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v10

    .line 2763
    :cond_2
    iput-object p1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mHttpAuthHandler:Landroid/webkit/HttpAuthHandler;

    .line 2764
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    const v9, 0x7f0900b7

    new-instance v2, Lcom/android/browser/ui/MiRenBrowserActivity$29;

    .end local v9           #factory:Landroid/view/LayoutInflater;
    move-object v3, p0

    move-object v5, p2

    move-object v6, p3

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/browser/ui/MiRenBrowserActivity$29;-><init>(Lcom/android/browser/ui/MiRenBrowserActivity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/HttpAuthHandler;)V

    invoke-virtual {v8, v9, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f090012

    new-instance v5, Lcom/android/browser/ui/MiRenBrowserActivity$28;

    invoke-direct {v5, p0, p1}, Lcom/android/browser/ui/MiRenBrowserActivity$28;-><init>(Lcom/android/browser/ui/MiRenBrowserActivity;Landroid/webkit/HttpAuthHandler;)V

    invoke-virtual {v2, v3, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/browser/ui/MiRenBrowserActivity$27;

    invoke-direct {v3, p0, p1}, Lcom/android/browser/ui/MiRenBrowserActivity$27;-><init>(Lcom/android/browser/ui/MiRenBrowserActivity;Landroid/webkit/HttpAuthHandler;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 2803
    .local v8, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 2805
    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 2806
    if-eqz p7, :cond_5

    .line 2807
    move-object v0, v8

    move/from16 v1, p7

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 2811
    :goto_2
    iput-object v8, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mHttpAuthenticationDialog:Landroid/app/AlertDialog;

    .line 2812
    return-void

    .end local v8           #dialog:Landroid/app/AlertDialog;
    .restart local v9       #factory:Landroid/view/LayoutInflater;
    :cond_3
    move-object v5, p2

    .line 2759
    goto :goto_0

    :cond_4
    move-object v5, p3

    goto :goto_1

    .line 2809
    .end local v9           #factory:Landroid/view/LayoutInflater;
    .restart local v8       #dialog:Landroid/app/AlertDialog;
    :cond_5
    const v2, 0x7f0d003b

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    goto :goto_2
.end method

.method public showSSLCertificateOnError(Lcom/android/browser/controller/Tab;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 8
    .parameter "tab"
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 2617
    invoke-virtual {p3}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/browser/ui/MiRenBrowserActivity;->inflateCertificateView(Landroid/net/http/SslCertificate;)Landroid/view/View;

    move-result-object v0

    .line 2618
    .local v0, certificateView:Landroid/view/View;
    if-nez v0, :cond_0

    .line 2671
    :goto_0
    return-void

    .line 2622
    :cond_0
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 2624
    .local v2, factory:Landroid/view/LayoutInflater;
    const v5, 0x7f0d004c

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 2626
    .local v4, placeholder:Landroid/widget/LinearLayout;
    invoke-direct {p0, p3}, Lcom/android/browser/ui/MiRenBrowserActivity;->findErrorStringByErrorCode(Landroid/net/http/SslError;)I

    move-result v1

    .line 2627
    .local v1, errorStringId:I
    if-lez v1, :cond_1

    .line 2628
    const v5, 0x7f03001a

    invoke-virtual {v2, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 2629
    .local v3, ll:Landroid/widget/LinearLayout;
    const v5, 0x7f0d0061

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(I)V

    .line 2632
    .end local v3           #ll:Landroid/widget/LinearLayout;
    :cond_1
    iput-object p2, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSSLCertificateOnErrorHandler:Landroid/webkit/SslErrorHandler;

    .line 2633
    iput-object p1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSSLCertificateOnErrorTab:Lcom/android/browser/controller/Tab;

    .line 2634
    iput-object p3, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSSLCertificateOnErrorError:Landroid/net/http/SslError;

    .line 2635
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f0900aa

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f02003c

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f09000f

    new-instance v7, Lcom/android/browser/ui/MiRenBrowserActivity$26;

    invoke-direct {v7, p0, p1, p2, p3}, Lcom/android/browser/ui/MiRenBrowserActivity$26;-><init>(Lcom/android/browser/ui/MiRenBrowserActivity;Lcom/android/browser/controller/Tab;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0900a0

    new-instance v7, Lcom/android/browser/ui/MiRenBrowserActivity$25;

    invoke-direct {v7, p0, p1}, Lcom/android/browser/ui/MiRenBrowserActivity$25;-><init>(Lcom/android/browser/ui/MiRenBrowserActivity;Lcom/android/browser/controller/Tab;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Lcom/android/browser/ui/MiRenBrowserActivity$24;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/android/browser/ui/MiRenBrowserActivity$24;-><init>(Lcom/android/browser/ui/MiRenBrowserActivity;Lcom/android/browser/controller/Tab;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSSLCertificateOnErrorDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public showStatusBar(Z)V
    .locals 2
    .parameter "bForce"

    .prologue
    .line 2416
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSettings:Lcom/android/browser/controller/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/controller/BrowserSettings;->getHideStatusBarAlways()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2417
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2418
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 2419
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mShowStatusBar:Z

    .line 2422
    :goto_0
    return-void

    .line 2421
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->hideStatusBar(Z)V

    goto :goto_0
.end method

.method public startTimer(II)V
    .locals 1
    .parameter "delay"
    .parameter "mode"

    .prologue
    .line 2134
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->startTimer(IIZ)V

    .line 2135
    return-void
.end method

.method public startTimer(IIZ)V
    .locals 4
    .parameter "delay"
    .parameter "mode"
    .parameter "forceCancel"

    .prologue
    .line 2138
    new-instance v0, Lcom/android/browser/ui/MiRenBrowserActivity$18;

    invoke-direct {v0, p0, p2}, Lcom/android/browser/ui/MiRenBrowserActivity$18;-><init>(Lcom/android/browser/ui/MiRenBrowserActivity;I)V

    .line 2146
    .local v0, task:Ljava/util/TimerTask;
    if-eqz p3, :cond_0

    .line 2147
    iget-object v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 2148
    :cond_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTimer:Ljava/util/Timer;

    .line 2149
    iget-object v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTimer:Ljava/util/Timer;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 2150
    return-void
.end method

.method public stopTimer(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 2153
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2154
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->switchScreenMode(IZ)V

    .line 2155
    return-void
.end method

.method public switchBackForwardTab(Z)V
    .locals 5
    .parameter "forward"

    .prologue
    const/4 v4, 0x1

    .line 1905
    iget-object v3, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v3}, Lcom/android/browser/controller/TabController;->getCurrentIndex()I

    move-result v0

    .line 1906
    .local v0, currentTabIdx:I
    iget-object v3, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v3}, Lcom/android/browser/controller/TabController;->getTabCount()I

    move-result v1

    .line 1908
    .local v1, tabCount:I
    const/4 v2, 0x0

    .line 1909
    .local v2, targetTab:Lcom/android/browser/controller/Tab;
    if-eqz p1, :cond_2

    sub-int v3, v1, v4

    if-ge v0, v3, :cond_2

    .line 1910
    iget-object v3, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Lcom/android/browser/controller/TabController;->getTabAt(I)Lcom/android/browser/controller/Tab;

    move-result-object v2

    .line 1915
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 1916
    invoke-virtual {p0, v2}, Lcom/android/browser/ui/MiRenBrowserActivity;->switchToTab(Lcom/android/browser/controller/Tab;)V

    .line 1917
    :cond_1
    return-void

    .line 1912
    :cond_2
    if-nez p1, :cond_0

    if-lez v0, :cond_0

    .line 1913
    iget-object v3, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    sub-int v4, v0, v4

    invoke-virtual {v3, v4}, Lcom/android/browser/controller/TabController;->getTabAt(I)Lcom/android/browser/controller/Tab;

    move-result-object v2

    goto :goto_0
.end method

.method public switchScreenMode(IZ)V
    .locals 7
    .parameter "mode"
    .parameter "autoMode"

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2048
    if-eqz p2, :cond_1

    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/BrowserSettings;->getAutoEnterFullscreen()Z

    move-result v0

    if-nez v0, :cond_1

    if-eq p1, v5, :cond_1

    .line 2103
    :cond_0
    :goto_0
    return-void

    .line 2054
    :cond_1
    iget v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->screenMode:I

    if-eq v0, p1, :cond_0

    .line 2057
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/BrowserSettings;->getShowExitFullScreenTip()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->screenMode:I

    if-eq v0, v4, :cond_2

    if-ne p1, v4, :cond_2

    .line 2059
    const v0, 0x7f0900bf

    invoke-virtual {p0, v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2060
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p0, v3}, Lcom/android/browser/controller/BrowserSettings;->setShowExitFullScreenTip(Landroid/content/Context;Z)V

    .line 2063
    :cond_2
    packed-switch p1, :pswitch_data_0

    .line 2085
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mFakeTitleView:Lcom/android/browser/ui/TitleView;

    invoke-virtual {v0, v3}, Lcom/android/browser/ui/TitleView;->setVisibility(I)V

    .line 2086
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSettings:Lcom/android/browser/controller/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/controller/BrowserSettings;->getAlwaysShowTabBar()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2087
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mFakeTitleView:Lcom/android/browser/ui/TitleView;

    invoke-virtual {v0}, Lcom/android/browser/ui/TitleView;->showUrlbar()V

    .line 2090
    :cond_3
    invoke-virtual {p0, v3}, Lcom/android/browser/ui/MiRenBrowserActivity;->showStatusBar(Z)V

    .line 2091
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mViewFlipper:Lcom/android/browser/ui/MiRenViewFlipperWrapper;

    iget v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mWebViewPaddingTop:I

    iget v2, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mWebViewPaddingBottom:I

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->setPadding(IIII)V

    .line 2094
    invoke-direct {p0, v4}, Lcom/android/browser/ui/MiRenBrowserActivity;->showMenuBar(Z)V

    .line 2095
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mLoadingFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2097
    iput v5, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->screenMode:I

    .line 2102
    :goto_1
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->refreshNavButtonStatus()V

    goto :goto_0

    .line 2065
    :pswitch_0
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSettings:Lcom/android/browser/controller/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/controller/BrowserSettings;->getAlwaysShowTabBar()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2066
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mFakeTitleView:Lcom/android/browser/ui/TitleView;

    invoke-virtual {v0, v3}, Lcom/android/browser/ui/TitleView;->setVisibility(I)V

    .line 2067
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mFakeTitleView:Lcom/android/browser/ui/TitleView;

    invoke-virtual {v0}, Lcom/android/browser/ui/TitleView;->hideUrlbar()V

    .line 2072
    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/browser/ui/MiRenBrowserActivity;->hideStatusBar(Z)V

    .line 2073
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mSettings:Lcom/android/browser/controller/BrowserSettings;

    invoke-virtual {v0}, Lcom/android/browser/controller/BrowserSettings;->getAlwaysShowTabBar()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2074
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mViewFlipper:Lcom/android/browser/ui/MiRenViewFlipperWrapper;

    iget v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mWebViewPaddingTopNoUrlBar:I

    invoke-virtual {v0, v3, v1, v3, v3}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->setPadding(IIII)V

    .line 2078
    :goto_3
    invoke-direct {p0, v3}, Lcom/android/browser/ui/MiRenBrowserActivity;->showMenuBar(Z)V

    .line 2079
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mLoadingFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2081
    iput v4, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->screenMode:I

    goto :goto_1

    .line 2069
    :cond_4
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mFakeTitleView:Lcom/android/browser/ui/TitleView;

    invoke-virtual {v0, v6}, Lcom/android/browser/ui/TitleView;->setVisibility(I)V

    goto :goto_2

    .line 2076
    :cond_5
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mViewFlipper:Lcom/android/browser/ui/MiRenViewFlipperWrapper;

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->setPadding(IIII)V

    goto :goto_3

    .line 2063
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public switchTitleViewMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 2341
    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    .line 2342
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->switchScreenMode(IZ)V

    .line 2344
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mFakeTitleView:Lcom/android/browser/ui/TitleView;

    invoke-virtual {v0, p1}, Lcom/android/browser/ui/TitleView;->switchMode(I)V

    .line 2345
    return-void
.end method

.method public switchToTab(Lcom/android/browser/controller/Tab;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 1888
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0, p1}, Lcom/android/browser/controller/TabController;->switchToTab(Lcom/android/browser/controller/Tab;)V

    .line 1889
    invoke-direct {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->initTitleView()V

    .line 1891
    iget v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->screenMode:I

    invoke-virtual {p0, v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->stopTimer(I)V

    .line 1892
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/Tab;->getLoadedUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/Tab;->getLoadedUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/browser/model/MiRenProtocolUrlMapper;->isHomePage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1894
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->switchScreenMode(IZ)V

    .line 1896
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/Tab;->getLoadedUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->updateUrl(Ljava/lang/String;)V

    .line 1897
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->updateTitle(Lcom/android/browser/controller/Tab;)V

    .line 1898
    invoke-virtual {p0, p1}, Lcom/android/browser/ui/MiRenBrowserActivity;->updateUrlTitle(Lcom/android/browser/controller/Tab;)V

    .line 1899
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->updateLockIconToLatest()V

    .line 1901
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->refreshNavButtonStatus()V

    .line 1902
    return-void
.end method

.method public updateBookmark(JLjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "id"
    .parameter "url"
    .parameter "title"

    .prologue
    .line 1306
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object v0, p0

    move-wide v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/browser/api_v8/Bookmarks;->updateUrlAndTitleById(Landroid/content/Context;JLandroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    return-void
.end method

.method public updateLockIconToLatest()V
    .locals 1

    .prologue
    .line 2017
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    if-nez v0, :cond_1

    .line 2020
    :cond_0
    :goto_0
    return-void

    .line 2019
    :cond_1
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/Tab;->getLockIconType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->updateLockIconImage(I)V

    goto :goto_0
.end method

.method public updateProgress(I)V
    .locals 1
    .parameter "progress"

    .prologue
    .line 1947
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/browser/controller/Tab;->updateProgress(I)V

    .line 1948
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mLoadingProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 1949
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->refreshNavButtonStatus()V

    .line 1950
    return-void
.end method

.method public updateTitle(Lcom/android/browser/controller/Tab;)V
    .locals 3
    .parameter "tab"

    .prologue
    .line 1937
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mFakeTitleView:Lcom/android/browser/ui/TitleView;

    invoke-virtual {p1}, Lcom/android/browser/controller/Tab;->getIndex()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/browser/controller/Tab;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/ui/TitleView;->setTitle(ILjava/lang/String;)V

    .line 1938
    invoke-virtual {p0, p1}, Lcom/android/browser/ui/MiRenBrowserActivity;->updateUrlTitle(Lcom/android/browser/controller/Tab;)V

    .line 1939
    return-void
.end method

.method public updateTitle(Ljava/lang/String;Lcom/android/browser/controller/Tab;)V
    .locals 2
    .parameter "title"
    .parameter "tab"

    .prologue
    .line 1942
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mFakeTitleView:Lcom/android/browser/ui/TitleView;

    invoke-virtual {p2}, Lcom/android/browser/controller/Tab;->getIndex()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/browser/ui/TitleView;->setTitle(ILjava/lang/String;)V

    .line 1943
    invoke-virtual {p0, p2}, Lcom/android/browser/ui/MiRenBrowserActivity;->updateUrlTitle(Lcom/android/browser/controller/Tab;)V

    .line 1944
    return-void
.end method

.method public updateUrl(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 1953
    iget-object v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mFakeTitleView:Lcom/android/browser/ui/TitleView;

    if-eqz v1, :cond_1

    .line 1954
    iget-object v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v1}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    .line 1955
    .local v0, tab:Lcom/android/browser/controller/Tab;
    invoke-virtual {v0}, Lcom/android/browser/controller/Tab;->isLoading()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/browser/controller/Tab;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1956
    :cond_0
    iget-object v1, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mFakeTitleView:Lcom/android/browser/ui/TitleView;

    invoke-virtual {v0}, Lcom/android/browser/controller/Tab;->getLoadedUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/browser/ui/TitleView;->setUrl(Ljava/lang/String;)V

    .line 1959
    .end local v0           #tab:Lcom/android/browser/controller/Tab;
    :cond_1
    return-void
.end method

.method public updateUrlTitle(Lcom/android/browser/controller/Tab;)V
    .locals 2
    .parameter "tab"

    .prologue
    .line 1962
    invoke-virtual {p1}, Lcom/android/browser/controller/Tab;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/browser/controller/Tab;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0, p1}, Lcom/android/browser/controller/TabController;->isCurrentTab(Lcom/android/browser/controller/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1965
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mFakeTitleView:Lcom/android/browser/ui/TitleView;

    invoke-virtual {p1}, Lcom/android/browser/controller/Tab;->getLoadedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/TitleView;->setUrl(Ljava/lang/String;)V

    .line 1967
    iget-object v0, p0, Lcom/android/browser/ui/MiRenBrowserActivity;->mFakeTitleView:Lcom/android/browser/ui/TitleView;

    invoke-virtual {p1}, Lcom/android/browser/controller/Tab;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/TitleView;->setUrlTitle(Ljava/lang/String;)V

    .line 1969
    :cond_0
    return-void
.end method
