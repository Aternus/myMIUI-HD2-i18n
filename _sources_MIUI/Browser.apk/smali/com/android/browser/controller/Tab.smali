.class public Lcom/android/browser/controller/Tab;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Lcom/android/browser/ui/MiRenWebViewListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/controller/Tab$5;,
        Lcom/android/browser/controller/Tab$VoiceSearchData;,
        Lcom/android/browser/controller/Tab$MiRenPageDataFinishListener;,
        Lcom/android/browser/controller/Tab$SubWindowChromeClient;,
        Lcom/android/browser/controller/Tab$SubWindowClient;,
        Lcom/android/browser/controller/Tab$OnBarconItemClickListener;,
        Lcom/android/browser/controller/Tab$OnBarconLongClickListener;,
        Lcom/android/browser/controller/Tab$OnSiteItemClickListener;
    }
.end annotation


# static fields
.field private static final BARCONPAGE_ITEM_WIDTH:I = 0x81

.field private static final BARCONPAGE_VERTICAL_SPACE:I = 0xa

.field private static final GUIDE_FULLSCREEN_MODE:Ljava/lang/String; = "guide_fullscreen_mode"

.field private static final LOG_TAG:Ljava/lang/String; = "com.android.browser.controller.tab"

.field private static final VIEW_TYPE_HOMEPAGE:I = 0x1

.field private static final VIEW_TYPE_WEBVIEW:I = 0x0

.field private static final VIEW_TYPE_YELLOW_PAGE:I = 0x2

.field private static final YELLOWPAGE_SITE_PADDING_LEFT:I = 0xf

.field private static final sBlankPage:Ljava/lang/String; = "about:blank"

.field private static final sPersistFileNamePrefix:Ljava/lang/String; = "webview_"

.field private static final sPersistFilePath:Ljava/lang/String; = null

.field private static final sPersistFilePathInRom:Ljava/lang/String; = "/webview_pictures"


# instance fields
.field private mActiveItem:Landroid/view/View;

.field private mAddHistory:Z

.field private mCallingApplicationId:Ljava/lang/String;

.field private mContainer:Landroid/widget/LinearLayout;

.field private mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

.field private mCurrentScreenViewIndex:I

.field private mFlipper:Lcom/android/browser/ui/MiRenViewFlipperWrapper;

.field private mGeolocationPermissionsPrompt:Lcom/android/browser/ui/GeolocationPermissionsPrompt;

.field private mGuidePopupWindow:Landroid/widget/GuidePopupWindow;

.field private mHomeDataChanged:Z

.field private mHomePage:Lcom/android/browser/ui/MiRenHomePageView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsHidden:Z

.field private mIsOrientationPortrait:Z

.field private mListener:Lcom/android/browser/controller/Tab$MiRenPageDataFinishListener;

.field private mLockIconType:I

.field private mNavigationHomeController:Lcom/android/browser/controller/NavigationHomeController;

.field mOnBarconCreateContextMenuListener:Lcom/android/browser/controller/Tab$OnBarconLongClickListener;

.field mOnBarconItemClickListener:Lcom/android/browser/controller/Tab$OnBarconItemClickListener;

.field private mOriWebView:Lcom/android/browser/ui/MiRenWebView;

.field private mPreDefinedUrlViewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPrevLockIconType:I

.field private mShowHomepage:Z

.field private mSiteClickListener:Lcom/android/browser/controller/Tab$OnSiteItemClickListener;

.field private mStateToRestore:Landroid/os/Bundle;

.field private mSubView:Lcom/android/browser/ui/MiRenWebView;

.field private mSubViewContainer:Landroid/view/View;

.field private mTabController:Lcom/android/browser/controller/TabController;

.field private mVoiceSearchData:Lcom/android/browser/controller/Tab$VoiceSearchData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/browser/util/MirenConstants;->PERSIST_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "webview_pictures/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/browser/controller/Tab;->sPersistFilePath:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/browser/controller/TabController;Lcom/android/browser/ui/MiRenBrowserActivity;)V
    .locals 5
    .parameter "controller"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/browser/controller/Tab;->mPreDefinedUrlViewMap:Ljava/util/HashMap;

    .line 112
    iput-boolean v3, p0, Lcom/android/browser/controller/Tab;->mIsHidden:Z

    .line 140
    iput-boolean v4, p0, Lcom/android/browser/controller/Tab;->mAddHistory:Z

    .line 145
    iput-boolean v3, p0, Lcom/android/browser/controller/Tab;->mShowHomepage:Z

    .line 146
    iput-boolean v3, p0, Lcom/android/browser/controller/Tab;->mHomeDataChanged:Z

    .line 149
    new-instance v1, Lcom/android/browser/controller/Tab$OnBarconItemClickListener;

    invoke-direct {v1, p0, v2}, Lcom/android/browser/controller/Tab$OnBarconItemClickListener;-><init>(Lcom/android/browser/controller/Tab;Lcom/android/browser/controller/Tab$1;)V

    iput-object v1, p0, Lcom/android/browser/controller/Tab;->mOnBarconItemClickListener:Lcom/android/browser/controller/Tab$OnBarconItemClickListener;

    .line 150
    new-instance v1, Lcom/android/browser/controller/Tab$OnBarconLongClickListener;

    invoke-direct {v1, p0, v2}, Lcom/android/browser/controller/Tab$OnBarconLongClickListener;-><init>(Lcom/android/browser/controller/Tab;Lcom/android/browser/controller/Tab$1;)V

    iput-object v1, p0, Lcom/android/browser/controller/Tab;->mOnBarconCreateContextMenuListener:Lcom/android/browser/controller/Tab$OnBarconLongClickListener;

    .line 151
    new-instance v1, Lcom/android/browser/controller/Tab$OnSiteItemClickListener;

    invoke-direct {v1, p0, v2}, Lcom/android/browser/controller/Tab$OnSiteItemClickListener;-><init>(Lcom/android/browser/controller/Tab;Lcom/android/browser/controller/Tab$1;)V

    iput-object v1, p0, Lcom/android/browser/controller/Tab;->mSiteClickListener:Lcom/android/browser/controller/Tab$OnSiteItemClickListener;

    .line 210
    iput-object p1, p0, Lcom/android/browser/controller/Tab;->mTabController:Lcom/android/browser/controller/TabController;

    .line 211
    iput-object p2, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    .line 212
    iget-object v1, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Lcom/android/browser/ui/MiRenBrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    iput-object v1, p0, Lcom/android/browser/controller/Tab;->mInflater:Landroid/view/LayoutInflater;

    .line 213
    iput v3, p0, Lcom/android/browser/controller/Tab;->mLockIconType:I

    .line 214
    iput v3, p0, Lcom/android/browser/controller/Tab;->mPrevLockIconType:I

    .line 215
    iget-object v1, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-static {v1}, Lcom/android/browser/controller/NavigationHomeController;->getInstance(Lcom/android/browser/ui/MiRenBrowserActivity;)Lcom/android/browser/controller/NavigationHomeController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/controller/Tab;->mNavigationHomeController:Lcom/android/browser/controller/NavigationHomeController;

    .line 216
    iget-object v1, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 217
    .local v0, config:Landroid/content/res/Configuration;
    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_0

    move v1, v4

    :goto_0
    iput-boolean v1, p0, Lcom/android/browser/controller/Tab;->mIsOrientationPortrait:Z

    .line 218
    iput v4, p0, Lcom/android/browser/controller/Tab;->mCurrentScreenViewIndex:I

    .line 219
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->initTab()V

    .line 220
    return-void

    :cond_0
    move v1, v3

    .line 217
    goto :goto_0
.end method

.method static synthetic access$300(Lcom/android/browser/controller/Tab;)Lcom/android/browser/ui/MiRenBrowserActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/browser/controller/Tab;)Lcom/android/browser/controller/NavigationHomeController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mNavigationHomeController:Lcom/android/browser/controller/NavigationHomeController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/browser/controller/Tab;)Landroid/widget/GuidePopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mGuidePopupWindow:Landroid/widget/GuidePopupWindow;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/browser/controller/Tab;Landroid/widget/GuidePopupWindow;)Landroid/widget/GuidePopupWindow;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/browser/controller/Tab;->mGuidePopupWindow:Landroid/widget/GuidePopupWindow;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/browser/controller/Tab;)Lcom/android/browser/ui/MiRenWebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mSubView:Lcom/android/browser/ui/MiRenWebView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/browser/controller/Tab;Lcom/android/browser/ui/MiRenWebView;)Lcom/android/browser/ui/MiRenWebView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/browser/controller/Tab;->mSubView:Lcom/android/browser/ui/MiRenWebView;

    return-object p1
.end method

.method static synthetic access$702(Lcom/android/browser/controller/Tab;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 101
    iput-object p1, p0, Lcom/android/browser/controller/Tab;->mSubViewContainer:Landroid/view/View;

    return-object p1
.end method

.method private checkPreDefinedNavigation(Ljava/lang/String;)Z
    .locals 2
    .parameter "url"

    .prologue
    const/4 v1, 0x1

    .line 712
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mPreDefinedUrlViewMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    invoke-direct {p0, p1}, Lcom/android/browser/controller/Tab;->showPreDefinedNavigationView(Ljava/lang/String;)V

    move v0, v1

    .line 730
    :goto_0
    return v0

    .line 716
    :cond_0
    const-string v0, "miui:launchReader"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 717
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->getHomePageController()Lcom/android/browser/controller/NavigationHomeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/NavigationHomeController;->launchReadingCenter()V

    move v0, v1

    .line 718
    goto :goto_0

    .line 719
    :cond_1
    const-string v0, "miui:launchBookmarkMostVisited"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 720
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->getHomePageController()Lcom/android/browser/controller/NavigationHomeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/NavigationHomeController;->launchMostVisited()V

    move v0, v1

    .line 721
    goto :goto_0

    .line 722
    :cond_2
    const-string v0, "miui:launchBookmarkFavorite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 723
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->getHomePageController()Lcom/android/browser/controller/NavigationHomeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/NavigationHomeController;->launchFavoriate()V

    move v0, v1

    .line 724
    goto :goto_0

    .line 725
    :cond_3
    const-string v0, "miui:launchBookmarkHistory"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 726
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->getHomePageController()Lcom/android/browser/controller/NavigationHomeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/NavigationHomeController;->launchHistory()V

    move v0, v1

    .line 727
    goto :goto_0

    .line 730
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createSubWindow()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1216
    iget-object v2, p0, Lcom/android/browser/controller/Tab;->mSubView:Lcom/android/browser/ui/MiRenWebView;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1217
    iget-object v2, p0, Lcom/android/browser/controller/Tab;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03000a

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/browser/controller/Tab;->mSubViewContainer:Landroid/view/View;

    .line 1218
    iget-object v2, p0, Lcom/android/browser/controller/Tab;->mSubViewContainer:Landroid/view/View;

    const v3, 0x7f0d0019

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/browser/ui/MiRenWebView;

    iput-object v2, p0, Lcom/android/browser/controller/Tab;->mSubView:Lcom/android/browser/ui/MiRenWebView;

    .line 1219
    iget-object v2, p0, Lcom/android/browser/controller/Tab;->mSubView:Lcom/android/browser/ui/MiRenWebView;

    const/high16 v3, 0x200

    invoke-virtual {v2, v3}, Lcom/android/browser/ui/MiRenWebView;->setScrollBarStyle(I)V

    .line 1221
    iget-object v2, p0, Lcom/android/browser/controller/Tab;->mSubView:Lcom/android/browser/ui/MiRenWebView;

    invoke-virtual {v2, v4}, Lcom/android/browser/ui/MiRenWebView;->setMapTrackballToArrowKeys(Z)V

    .line 1223
    iget-object v2, p0, Lcom/android/browser/controller/Tab;->mSubView:Lcom/android/browser/ui/MiRenWebView;

    invoke-virtual {v2}, Lcom/android/browser/ui/MiRenWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 1224
    iget-object v2, p0, Lcom/android/browser/controller/Tab;->mSubView:Lcom/android/browser/ui/MiRenWebView;

    new-instance v3, Lcom/android/browser/controller/Tab$SubWindowClient;

    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/ui/MiRenWebView;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/browser/controller/Tab$SubWindowClient;-><init>(Landroid/webkit/WebViewClient;)V

    invoke-virtual {v2, v3}, Lcom/android/browser/ui/MiRenWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1225
    iget-object v2, p0, Lcom/android/browser/controller/Tab;->mSubView:Lcom/android/browser/ui/MiRenWebView;

    new-instance v3, Lcom/android/browser/controller/Tab$SubWindowChromeClient;

    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/ui/MiRenWebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/android/browser/controller/Tab$SubWindowChromeClient;-><init>(Lcom/android/browser/controller/Tab;Landroid/webkit/WebChromeClient;)V

    invoke-virtual {v2, v3}, Lcom/android/browser/ui/MiRenWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1228
    iget-object v2, p0, Lcom/android/browser/controller/Tab;->mSubView:Lcom/android/browser/ui/MiRenWebView;

    new-instance v3, Lcom/android/browser/controller/Tab$3;

    invoke-direct {v3, p0}, Lcom/android/browser/controller/Tab$3;-><init>(Lcom/android/browser/controller/Tab;)V

    invoke-virtual {v2, v3}, Lcom/android/browser/ui/MiRenWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 1245
    iget-object v2, p0, Lcom/android/browser/controller/Tab;->mSubView:Lcom/android/browser/ui/MiRenWebView;

    iget-object v3, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v2, v3}, Lcom/android/browser/ui/MiRenWebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1246
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v1

    .line 1247
    .local v1, s:Lcom/android/browser/controller/BrowserSettings;
    iget-object v2, p0, Lcom/android/browser/controller/Tab;->mSubView:Lcom/android/browser/ui/MiRenWebView;

    invoke-virtual {v1, v2}, Lcom/android/browser/controller/BrowserSettings;->addObserver(Lcom/android/browser/ui/MiRenWebViewCore;)Lcom/android/browser/controller/BrowserSettings$Observer;

    move-result-object v2

    invoke-virtual {v2, v1, v6}, Lcom/android/browser/controller/BrowserSettings$Observer;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 1248
    iget-object v2, p0, Lcom/android/browser/controller/Tab;->mSubViewContainer:Landroid/view/View;

    const v3, 0x7f0d001a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 1250
    .local v0, cancel:Landroid/widget/ImageButton;
    new-instance v2, Lcom/android/browser/controller/Tab$4;

    invoke-direct {v2, p0}, Lcom/android/browser/controller/Tab$4;-><init>(Lcom/android/browser/controller/Tab;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move v2, v5

    .line 1258
    .end local v0           #cancel:Landroid/widget/ImageButton;
    .end local v1           #s:Lcom/android/browser/controller/BrowserSettings;
    :goto_0
    return v2

    :cond_0
    move v2, v4

    goto :goto_0
.end method

.method private createWebView()Lcom/android/browser/ui/MiRenWebView;
    .locals 2

    .prologue
    .line 257
    new-instance v0, Lcom/android/browser/ui/MiRenWebView;

    iget-object v1, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-direct {v0, v1}, Lcom/android/browser/ui/MiRenWebView;-><init>(Landroid/content/Context;)V

    .line 258
    .local v0, webView:Lcom/android/browser/ui/MiRenWebView;
    invoke-virtual {v0, p0}, Lcom/android/browser/ui/MiRenWebView;->setListener(Lcom/android/browser/ui/MiRenWebViewListener;)V

    .line 259
    invoke-direct {p0, v0}, Lcom/android/browser/controller/Tab;->initWebView(Lcom/android/browser/ui/MiRenWebView;)V

    .line 260
    return-object v0
.end method

.method private destroyWebView(Lcom/android/browser/ui/MiRenWebView;)V
    .locals 1
    .parameter "webView"

    .prologue
    .line 264
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/browser/controller/BrowserSettings;->deleteObserver(Lcom/android/browser/ui/MiRenWebViewCore;)V

    .line 265
    invoke-virtual {p1}, Lcom/android/browser/ui/MiRenWebView;->destroy()V

    .line 266
    return-void
.end method

.method private fillBarconPage()V
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/4 v7, -0x1

    .line 276
    iget-object v6, p0, Lcom/android/browser/controller/Tab;->mNavigationHomeController:Lcom/android/browser/controller/NavigationHomeController;

    invoke-virtual {v6}, Lcom/android/browser/controller/NavigationHomeController;->getThumbnailAdapter()Landroid/widget/BaseAdapter;

    move-result-object v0

    .line 277
    .local v0, adapter:Landroid/widget/BaseAdapter;
    new-instance v1, Landroid/widget/GridView;

    iget-object v6, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-direct {v1, v6}, Landroid/widget/GridView;-><init>(Landroid/content/Context;)V

    .line 278
    .local v1, barconsView:Landroid/widget/GridView;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 281
    .local v3, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 282
    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 284
    iget-boolean v6, p0, Lcom/android/browser/controller/Tab;->mIsOrientationPortrait:Z

    if-eqz v6, :cond_0

    const/4 v6, 0x3

    move v5, v6

    .line 286
    .local v5, sitesNum:I
    :goto_0
    iget-object v6, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v6}, Lcom/android/browser/ui/MiRenBrowserActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getWidth()I

    move-result v4

    .line 287
    .local v4, screenWidth:I
    mul-int/lit16 v6, v5, 0x81

    sub-int v6, v4, v6

    add-int/lit8 v7, v5, 0x1

    div-int v2, v6, v7

    .line 288
    .local v2, horizontalSpace:I
    invoke-virtual {v1, v5}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 289
    invoke-virtual {v1, v2, v8, v2, v8}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 290
    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 291
    const/16 v6, 0xa

    invoke-virtual {v1, v6}, Landroid/widget/GridView;->setVerticalSpacing(I)V

    .line 292
    const/high16 v6, 0x300

    invoke-virtual {v1, v6}, Landroid/widget/GridView;->setScrollBarStyle(I)V

    .line 293
    iget-object v6, p0, Lcom/android/browser/controller/Tab;->mOnBarconItemClickListener:Lcom/android/browser/controller/Tab$OnBarconItemClickListener;

    invoke-virtual {v1, v6}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 294
    iget-object v6, p0, Lcom/android/browser/controller/Tab;->mOnBarconCreateContextMenuListener:Lcom/android/browser/controller/Tab$OnBarconLongClickListener;

    invoke-virtual {v1, v6}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 295
    iget-object v6, p0, Lcom/android/browser/controller/Tab;->mHomePage:Lcom/android/browser/ui/MiRenHomePageView;

    invoke-virtual {v6, v1}, Lcom/android/browser/ui/MiRenHomePageView;->addView(Landroid/view/View;)V

    .line 296
    return-void

    .line 284
    .end local v2           #horizontalSpace:I
    .end local v4           #screenWidth:I
    .end local v5           #sitesNum:I
    :cond_0
    const/4 v6, 0x5

    move v5, v6

    goto :goto_0
.end method

.method private fillFavorite()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 379
    new-instance v1, Landroid/widget/ExpandableListView;

    iget-object v3, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-direct {v1, v3}, Landroid/widget/ExpandableListView;-><init>(Landroid/content/Context;)V

    .line 380
    .local v1, list:Landroid/widget/ExpandableListView;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 383
    .local v2, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v2}, Landroid/widget/ExpandableListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 384
    iget-object v3, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/android/browser/controller/HistoryAdapter;->getInstance(Landroid/app/Activity;I)Lcom/android/browser/controller/HistoryAdapter;

    move-result-object v0

    .line 386
    .local v0, adapter:Lcom/android/browser/controller/HistoryAdapter;
    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 388
    invoke-virtual {v1}, Landroid/widget/ExpandableListView;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 389
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ExpandableListView;->expandGroup(I)Z

    .line 391
    :cond_0
    new-instance v3, Lcom/android/browser/controller/Tab$1;

    invoke-direct {v3, p0, v0}, Lcom/android/browser/controller/Tab$1;-><init>(Lcom/android/browser/controller/Tab;Lcom/android/browser/controller/HistoryAdapter;)V

    invoke-virtual {v1, v3}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 407
    iget-object v3, p0, Lcom/android/browser/controller/Tab;->mHomePage:Lcom/android/browser/ui/MiRenHomePageView;

    invoke-virtual {v3, v1}, Lcom/android/browser/ui/MiRenHomePageView;->addView(Landroid/view/View;)V

    .line 408
    return-void
.end method

.method private fillYellowPage()V
    .locals 26

    .prologue
    .line 299
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/controller/Tab;->mIsOrientationPortrait:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2

    const/16 v22, 0x5

    move/from16 v20, v22

    .line 301
    .local v20, sitesNumPerRow:I
    :goto_0
    invoke-static {}, Lcom/android/browser/util/LanguageUtil;->isInternationalVersion()Z

    move-result v12

    .line 302
    .local v12, isInternationalVersion:Z
    if-eqz v12, :cond_0

    .line 303
    const/16 v20, 0x3

    .line 306
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    move-object/from16 v22, v0

    const-string v23, "layout_inflater"

    invoke-virtual/range {v22 .. v23}, Lcom/android/browser/ui/MiRenBrowserActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/LayoutInflater;

    .line 307
    .local v11, inflator:Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/Tab;->mNavigationHomeController:Lcom/android/browser/controller/NavigationHomeController;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/browser/controller/NavigationHomeController;->getYellowPageData()Ljava/util/ArrayList;

    move-result-object v9

    .line 308
    .local v9, data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/model/YellowPageDataProvider$Category;>;"
    new-instance v6, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    move-object/from16 v22, v0

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 309
    .local v6, categoryListView:Landroid/widget/LinearLayout;
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v22, -0x1

    const/16 v23, -0x1

    move-object v0, v14

    move/from16 v1, v22

    move/from16 v2, v23

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 312
    .local v14, params:Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v6, v14}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 313
    const/16 v22, 0x1

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 315
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/browser/ui/MiRenBrowserActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/view/Display;->getWidth()I

    move-result v22

    const/16 v23, 0x1e

    sub-int v22, v22, v23

    div-int v19, v22, v20

    .line 318
    .local v19, siteWidth:I
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v22

    move v0, v10

    move/from16 v1, v22

    if-ge v0, v1, :cond_8

    .line 319
    const v22, 0x7f030025

    const/16 v23, 0x0

    move-object v0, v11

    move/from16 v1, v22

    move-object v2, v6

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 320
    .local v8, categoryView:Landroid/widget/LinearLayout;
    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 322
    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/browser/model/YellowPageDataProvider$Category;

    .line 324
    .local v5, category:Lcom/android/browser/model/YellowPageDataProvider$Category;
    const v22, 0x7f0d0090

    move-object v0, v8

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 325
    .local v7, categoryNameView:Landroid/widget/TextView;
    move-object v0, v5

    iget-object v0, v0, Lcom/android/browser/model/YellowPageDataProvider$Category;->_title:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 326
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 327
    const/16 v22, 0xf

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object v0, v7

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 329
    const v22, 0x7f0d0091

    move-object v0, v8

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    .line 330
    .local v17, siteListView:Landroid/widget/LinearLayout;
    const/4 v15, 0x0

    .line 331
    .local v15, rowLayout:Landroid/widget/LinearLayout;
    const/4 v13, 0x0

    .local v13, j:I
    :goto_2
    move-object v0, v5

    iget-object v0, v0, Lcom/android/browser/model/YellowPageDataProvider$Category;->_sites:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move v0, v13

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    .line 332
    move-object v0, v5

    iget-object v0, v0, Lcom/android/browser/model/YellowPageDataProvider$Category;->_sites:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/browser/model/YellowPageDataProvider$Site;

    .line 334
    .local v16, site:Lcom/android/browser/model/YellowPageDataProvider$Site;
    rem-int v22, v13, v20

    if-nez v22, :cond_1

    .line 335
    new-instance v15, Landroid/widget/LinearLayout;

    .end local v15           #rowLayout:Landroid/widget/LinearLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    move-object/from16 v22, v0

    move-object v0, v15

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 336
    .restart local v15       #rowLayout:Landroid/widget/LinearLayout;
    new-instance v22, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v23, -0x1

    const/16 v24, -0x2

    invoke-direct/range {v22 .. v24}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v0, v15

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    const/16 v22, 0x0

    move-object v0, v15

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 340
    move-object/from16 v0, v17

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 343
    :cond_1
    const v22, 0x7f030026

    const/16 v23, 0x0

    move-object v0, v11

    move/from16 v1, v22

    move-object v2, v15

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 344
    .local v18, siteTextView:Landroid/widget/TextView;
    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setWidth(I)V

    .line 345
    move-object v0, v15

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 346
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/browser/model/YellowPageDataProvider$Site;->_title:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 348
    rem-int v22, v13, v20

    if-nez v22, :cond_3

    .line 349
    const v22, 0x7f020081

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 356
    :goto_3
    if-eqz v12, :cond_5

    .line 357
    const/16 v22, 0xf

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 362
    :goto_4
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/browser/model/YellowPageDataProvider$Site;->_url:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string v23, "null"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v22

    if-nez v22, :cond_6

    .line 363
    const v22, 0x7f090109

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v18

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 364
    const v22, 0x7f09010a

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v18

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/Tab;->mSiteClickListener:Lcom/android/browser/controller/Tab$OnSiteItemClickListener;

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 299
    .end local v5           #category:Lcom/android/browser/model/YellowPageDataProvider$Category;
    .end local v6           #categoryListView:Landroid/widget/LinearLayout;
    .end local v7           #categoryNameView:Landroid/widget/TextView;
    .end local v8           #categoryView:Landroid/widget/LinearLayout;
    .end local v9           #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/model/YellowPageDataProvider$Category;>;"
    .end local v10           #i:I
    .end local v11           #inflator:Landroid/view/LayoutInflater;
    .end local v12           #isInternationalVersion:Z
    .end local v13           #j:I
    .end local v14           #params:Landroid/widget/LinearLayout$LayoutParams;
    .end local v15           #rowLayout:Landroid/widget/LinearLayout;
    .end local v16           #site:Lcom/android/browser/model/YellowPageDataProvider$Site;
    .end local v17           #siteListView:Landroid/widget/LinearLayout;
    .end local v18           #siteTextView:Landroid/widget/TextView;
    .end local v19           #siteWidth:I
    .end local v20           #sitesNumPerRow:I
    :cond_2
    const/16 v22, 0xa

    move/from16 v20, v22

    goto/16 :goto_0

    .line 350
    .restart local v5       #category:Lcom/android/browser/model/YellowPageDataProvider$Category;
    .restart local v6       #categoryListView:Landroid/widget/LinearLayout;
    .restart local v7       #categoryNameView:Landroid/widget/TextView;
    .restart local v8       #categoryView:Landroid/widget/LinearLayout;
    .restart local v9       #data:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/model/YellowPageDataProvider$Category;>;"
    .restart local v10       #i:I
    .restart local v11       #inflator:Landroid/view/LayoutInflater;
    .restart local v12       #isInternationalVersion:Z
    .restart local v13       #j:I
    .restart local v14       #params:Landroid/widget/LinearLayout$LayoutParams;
    .restart local v15       #rowLayout:Landroid/widget/LinearLayout;
    .restart local v16       #site:Lcom/android/browser/model/YellowPageDataProvider$Site;
    .restart local v17       #siteListView:Landroid/widget/LinearLayout;
    .restart local v18       #siteTextView:Landroid/widget/TextView;
    .restart local v19       #siteWidth:I
    .restart local v20       #sitesNumPerRow:I
    :cond_3
    rem-int v22, v13, v20

    const/16 v23, 0x1

    sub-int v23, v20, v23

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_4

    move-object v0, v5

    iget-object v0, v0, Lcom/android/browser/model/YellowPageDataProvider$Category;->_sites:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    const/16 v23, 0x1

    sub-int v22, v22, v23

    move v0, v13

    move/from16 v1, v22

    if-eq v0, v1, :cond_4

    .line 351
    const v22, 0x7f020080

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 353
    :cond_4
    const v22, 0x7f020084

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    goto/16 :goto_3

    .line 359
    :cond_5
    const/16 v22, 0x11

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_4

    .line 367
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/browser/ui/MiRenBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    const v23, 0x1060005

    invoke-virtual/range {v22 .. v23}, Landroid/content/res/Resources;->getColor(I)I

    move-result v22

    move-object/from16 v0, v18

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_5

    .line 318
    .end local v16           #site:Lcom/android/browser/model/YellowPageDataProvider$Site;
    .end local v18           #siteTextView:Landroid/widget/TextView;
    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 372
    .end local v5           #category:Lcom/android/browser/model/YellowPageDataProvider$Category;
    .end local v7           #categoryNameView:Landroid/widget/TextView;
    .end local v8           #categoryView:Landroid/widget/LinearLayout;
    .end local v13           #j:I
    .end local v15           #rowLayout:Landroid/widget/LinearLayout;
    .end local v17           #siteListView:Landroid/widget/LinearLayout;
    :cond_8
    new-instance v21, Landroid/widget/ScrollView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    move-object/from16 v22, v0

    invoke-direct/range {v21 .. v22}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 373
    .local v21, yellowPageScrollView:Landroid/widget/ScrollView;
    move-object/from16 v0, v21

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    move-object/from16 v0, v21

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/Tab;->mHomePage:Lcom/android/browser/ui/MiRenHomePageView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenHomePageView;->addView(Landroid/view/View;)V

    .line 376
    return-void
.end method

.method private getCachedView()Lcom/android/browser/ui/MiRenWebView;
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mOriWebView:Lcom/android/browser/ui/MiRenWebView;

    return-object v0
.end method

.method private getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mOriWebView:Lcom/android/browser/ui/MiRenWebView;

    return-object v0
.end method

.method private getTopWindow()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    invoke-direct {v0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    return-object v0
.end method

.method private initHomePage()V
    .locals 2

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->fillYellowPage()V

    .line 270
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->fillBarconPage()V

    .line 271
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->fillFavorite()V

    .line 272
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mHomePage:Lcom/android/browser/ui/MiRenHomePageView;

    iget v1, p0, Lcom/android/browser/controller/Tab;->mCurrentScreenViewIndex:I

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenHomePageView;->setCurrentScreen(I)V

    .line 273
    return-void
.end method

.method private initTab()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, -0x2

    .line 237
    iget-object v1, p0, Lcom/android/browser/controller/Tab;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030024

    invoke-virtual {v1, v2, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/browser/controller/Tab;->mContainer:Landroid/widget/LinearLayout;

    .line 238
    iget-object v1, p0, Lcom/android/browser/controller/Tab;->mContainer:Landroid/widget/LinearLayout;

    const v2, 0x7f0d008e

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/browser/ui/MiRenViewFlipperWrapper;

    iput-object v1, p0, Lcom/android/browser/controller/Tab;->mFlipper:Lcom/android/browser/ui/MiRenViewFlipperWrapper;

    .line 240
    iget-object v1, p0, Lcom/android/browser/controller/Tab;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030023

    invoke-virtual {v1, v2, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/browser/ui/MiRenHomePageView;

    iput-object v1, p0, Lcom/android/browser/controller/Tab;->mHomePage:Lcom/android/browser/ui/MiRenHomePageView;

    .line 241
    iget-object v1, p0, Lcom/android/browser/controller/Tab;->mHomePage:Lcom/android/browser/ui/MiRenHomePageView;

    const/high16 v2, 0x3f80

    invoke-virtual {v1, v2}, Lcom/android/browser/ui/MiRenHomePageView;->setConfirmHorizontalScrollRatio(F)V

    .line 242
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x51

    invoke-direct {v0, v3, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 244
    .local v0, params:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/browser/controller/Tab;->mHomePage:Lcom/android/browser/ui/MiRenHomePageView;

    const v2, 0x7f02007c

    invoke-virtual {v1, v2}, Lcom/android/browser/ui/MiRenHomePageView;->setSeekPointResource(I)V

    .line 245
    iget-object v1, p0, Lcom/android/browser/controller/Tab;->mHomePage:Lcom/android/browser/ui/MiRenHomePageView;

    const v2, 0x7f02007d

    invoke-virtual {v1, v2}, Lcom/android/browser/ui/MiRenHomePageView;->setSeekBarBackgroundResource(I)V

    .line 246
    iget-object v1, p0, Lcom/android/browser/controller/Tab;->mHomePage:Lcom/android/browser/ui/MiRenHomePageView;

    invoke-virtual {v1, v0}, Lcom/android/browser/ui/MiRenHomePageView;->setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 248
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->initHomePage()V

    .line 250
    iget-object v1, p0, Lcom/android/browser/controller/Tab;->mPreDefinedUrlViewMap:Ljava/util/HashMap;

    const-string v2, "miui:home"

    iget-object v3, p0, Lcom/android/browser/controller/Tab;->mHomePage:Lcom/android/browser/ui/MiRenHomePageView;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object v1, p0, Lcom/android/browser/controller/Tab;->mPreDefinedUrlViewMap:Ljava/util/HashMap;

    const-string v2, "file:///android_asset/mindex.html"

    iget-object v3, p0, Lcom/android/browser/controller/Tab;->mHomePage:Lcom/android/browser/ui/MiRenHomePageView;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->createWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/controller/Tab;->mOriWebView:Lcom/android/browser/ui/MiRenWebView;

    .line 254
    return-void
.end method

.method private initWebView(Lcom/android/browser/ui/MiRenWebView;)V
    .locals 3
    .parameter "newView"

    .prologue
    .line 553
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/browser/controller/BrowserSettings;->addObserver(Lcom/android/browser/ui/MiRenWebViewCore;)Lcom/android/browser/controller/BrowserSettings$Observer;

    move-result-object v0

    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/controller/BrowserSettings$Observer;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    .line 554
    invoke-virtual {p1, p0}, Lcom/android/browser/ui/MiRenWebView;->setListener(Lcom/android/browser/ui/MiRenWebViewListener;)V

    .line 555
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {p1, v0}, Lcom/android/browser/ui/MiRenWebView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 556
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/browser/ui/MiRenWebView;->setScrollbarFadingEnabled(Z)V

    .line 557
    const/high16 v0, 0x200

    invoke-virtual {p1, v0}, Lcom/android/browser/ui/MiRenWebView;->setScrollBarStyle(I)V

    .line 558
    return-void
.end method

.method private isHomePage()Z
    .locals 2

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mFlipper:Lcom/android/browser/ui/MiRenViewFlipperWrapper;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->getCurrentDetachedView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/controller/Tab;->mOriWebView:Lcom/android/browser/ui/MiRenWebView;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeSubWindow()V
    .locals 2

    .prologue
    .line 1308
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mSubView:Lcom/android/browser/ui/MiRenWebView;

    if-eqz v0, :cond_0

    .line 1309
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getSubWindowContainer()Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/controller/Tab;->mSubViewContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1311
    :cond_0
    return-void
.end method

.method private showPreDefinedNavigationView(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    const/4 v2, 0x1

    .line 697
    iget-object v1, p0, Lcom/android/browser/controller/Tab;->mPreDefinedUrlViewMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 698
    .local v0, view:Landroid/view/View;
    invoke-direct {p0, v0}, Lcom/android/browser/controller/Tab;->showView(Landroid/view/View;)V

    .line 700
    invoke-virtual {p0, v2}, Lcom/android/browser/controller/Tab;->notifyTabNavigationStarted(Z)V

    .line 701
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->notifyTabNavigationFinished()V

    .line 704
    iput-boolean v2, p0, Lcom/android/browser/controller/Tab;->mShowHomepage:Z

    .line 705
    return-void
.end method

.method private showView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 594
    sget-object v0, Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;->SWITCH_ANIMATION_NONE:Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;

    invoke-direct {p0, p1, v0}, Lcom/android/browser/controller/Tab;->showView(Landroid/view/View;Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;)V

    .line 595
    return-void
.end method

.method private showView(Landroid/view/View;Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;)V
    .locals 2
    .parameter "view"
    .parameter "animation"

    .prologue
    .line 598
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mFlipper:Lcom/android/browser/ui/MiRenViewFlipperWrapper;

    invoke-virtual {v0, p1}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->addDetachedView(Landroid/view/View;)V

    .line 601
    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mFlipper:Lcom/android/browser/ui/MiRenViewFlipperWrapper;

    iget-object v1, p0, Lcom/android/browser/controller/Tab;->mFlipper:Lcom/android/browser/ui/MiRenViewFlipperWrapper;

    invoke-virtual {v1, p1}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->indexOfDetachedView(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->setDisplayedDetachedView(ILcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;)V

    .line 602
    return-void
.end method

.method private switchWebViewToForeground(Z)V
    .locals 3
    .parameter "cleanView"

    .prologue
    .line 605
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 606
    if-eqz p1, :cond_0

    .line 607
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->clearView()V

    .line 609
    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mFlipper:Lcom/android/browser/ui/MiRenViewFlipperWrapper;

    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->addDetachedView(Landroid/view/View;)V

    .line 611
    :cond_1
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mFlipper:Lcom/android/browser/ui/MiRenViewFlipperWrapper;

    iget-object v1, p0, Lcom/android/browser/controller/Tab;->mFlipper:Lcom/android/browser/ui/MiRenViewFlipperWrapper;

    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->indexOfDetachedView(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->setDisplayedDetachedView(I)V

    .line 612
    return-void
.end method


# virtual methods
.method public IsInSelectionMode()Z
    .locals 2

    .prologue
    .line 453
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    .line 454
    .local v0, w:Lcom/android/browser/ui/MiRenWebView;
    if-nez v0, :cond_0

    .line 455
    const/4 v1, 0x0

    .line 457
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->isTextSelectionMode()Z

    move-result v1

    goto :goto_0
.end method

.method public OnFuncBtnClicked()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1014
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v2

    .line 1015
    .local v2, w:Lcom/android/browser/ui/MiRenWebView;
    if-nez v2, :cond_0

    .line 1046
    :goto_0
    return-void

    .line 1018
    :cond_0
    invoke-virtual {v2}, Lcom/android/browser/ui/MiRenWebView;->getFuncButtonType()Lcom/android/browser/ui/MiRenBrowserActivity$FuncButtonTypeEnum;

    move-result-object v0

    .line 1020
    .local v0, mFuncBtnType:Lcom/android/browser/ui/MiRenBrowserActivity$FuncButtonTypeEnum;
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->getMode()I

    move-result v1

    .line 1021
    .local v1, mode:I
    sget-object v3, Lcom/android/browser/controller/Tab$5;->$SwitchMap$com$android$browser$ui$MiRenBrowserActivity$FuncButtonTypeEnum:[I

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenBrowserActivity$FuncButtonTypeEnum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1045
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v3}, Lcom/android/browser/ui/MiRenBrowserActivity;->refreshNavButtonStatus()V

    goto :goto_0

    .line 1024
    :pswitch_0
    if-ne v1, v5, :cond_2

    .line 1025
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/browser/ui/MiRenWebView;->showReadingMode(Z)V

    goto :goto_1

    .line 1027
    :cond_2
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/browser/ui/MiRenWebView;->showReadingMode(Z)V

    goto :goto_1

    .line 1032
    :pswitch_1
    const/4 v3, 0x3

    if-ne v1, v3, :cond_3

    .line 1033
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/browser/ui/MiRenWebView;->showForumMode(Z)V

    goto :goto_1

    .line 1035
    :cond_3
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/browser/ui/MiRenWebView;->showForumMode(Z)V

    goto :goto_1

    .line 1039
    :pswitch_2
    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    .line 1040
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v3

    iget-object v4, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v3, v4}, Lcom/android/browser/controller/BrowserSettings;->setSimpleModeOff(Landroid/content/Context;)V

    .line 1041
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/browser/ui/MiRenWebView;->reload()V

    goto :goto_1

    .line 1021
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public ShowBlankWebview()V
    .locals 2

    .prologue
    .line 640
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCachedView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    .line 641
    .local v0, newView:Lcom/android/browser/ui/MiRenWebView;
    invoke-direct {p0, v0}, Lcom/android/browser/controller/Tab;->showView(Landroid/view/View;)V

    .line 643
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/browser/controller/Tab;->notifyTabNavigationStarted(Z)V

    .line 644
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->notifyTabNavigationFinished()V

    .line 645
    return-void
.end method

.method public activateVoiceSearchMode(Landroid/content/Intent;)V
    .locals 27
    .parameter "intent"

    .prologue
    .line 1753
    const/16 v18, 0x0

    .line 1754
    .local v18, index:I
    const-string v7, "android.speech.extras.VOICE_SEARCH_RESULT_STRINGS"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v23

    .line 1756
    .local v23, results:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v23, :cond_4

    .line 1757
    const-string v7, "android.speech.extras.VOICE_SEARCH_RESULT_URLS"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v26

    .line 1759
    .local v26, urls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "android.speech.extras.VOICE_SEARCH_RESULT_HTML"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 1761
    .local v17, htmls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v7, "android.speech.extras.VOICE_SEARCH_RESULT_HTML_BASE_URLS"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    .line 1765
    .local v11, baseUrls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 1766
    .local v24, size:I
    if-eqz v26, :cond_0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v7

    move/from16 v0, v24

    move v1, v7

    if-eq v0, v1, :cond_1

    .line 1767
    :cond_0
    new-instance v7, Ljava/lang/AssertionError;

    const-string v8, "improper extras passed in Intent"

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 1769
    :cond_1
    if-eqz v17, :cond_2

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v0, v7

    move/from16 v1, v24

    if-ne v0, v1, :cond_2

    if-eqz v11, :cond_2

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v0, v7

    move/from16 v1, v24

    if-eq v0, v1, :cond_3

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3

    .line 1773
    :cond_2
    const/16 v17, 0x0

    .line 1774
    const/4 v11, 0x0

    .line 1776
    :cond_3
    new-instance v7, Lcom/android/browser/controller/Tab$VoiceSearchData;

    move-object v0, v7

    move-object/from16 v1, v23

    move-object/from16 v2, v26

    move-object/from16 v3, v17

    move-object v4, v11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/browser/controller/Tab$VoiceSearchData;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/browser/controller/Tab;->mVoiceSearchData:Lcom/android/browser/controller/Tab$VoiceSearchData;

    .line 1777
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/Tab;->mVoiceSearchData:Lcom/android/browser/controller/Tab$VoiceSearchData;

    move-object v7, v0

    const-string v8, "android.speech.extras.EXTRA_VOICE_SEARCH_RESULT_HTTP_HEADERS"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v8

    iput-object v8, v7, Lcom/android/browser/controller/Tab$VoiceSearchData;->mHeaders:Ljava/util/ArrayList;

    .line 1779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/Tab;->mVoiceSearchData:Lcom/android/browser/controller/Tab$VoiceSearchData;

    move-object v7, v0

    sget-object v8, Lcom/android/browser/controller/Tab$VoiceSearchData;->SOURCE_IS_GOOGLE:Ljava/lang/String;

    const/4 v9, 0x0

    move-object/from16 v0, p1

    move-object v1, v8

    move v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iput-boolean v8, v7, Lcom/android/browser/controller/Tab$VoiceSearchData;->mSourceIsGoogle:Z

    .line 1781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/Tab;->mVoiceSearchData:Lcom/android/browser/controller/Tab$VoiceSearchData;

    move-object v7, v0

    new-instance v8, Landroid/content/Intent;

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v8, v7, Lcom/android/browser/controller/Tab$VoiceSearchData;->mVoiceSearchIntent:Landroid/content/Intent;

    .line 1783
    .end local v11           #baseUrls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v17           #htmls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v24           #size:I
    .end local v26           #urls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_4
    const-string v7, "intent_extra_data_key"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1784
    .local v15, extraData:Ljava/lang/String;
    if-eqz v15, :cond_7

    .line 1785
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    .line 1786
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/Tab;->mVoiceSearchData:Lcom/android/browser/controller/Tab$VoiceSearchData;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/browser/controller/Tab$VoiceSearchData;->mVoiceSearchResults:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    move/from16 v0, v18

    move v1, v7

    if-lt v0, v1, :cond_5

    .line 1787
    new-instance v7, Ljava/lang/AssertionError;

    const-string v8, "index must be less than size of mVoiceSearchResults"

    invoke-direct {v7, v8}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v7

    .line 1789
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/Tab;->mVoiceSearchData:Lcom/android/browser/controller/Tab$VoiceSearchData;

    move-object v7, v0

    iget-boolean v7, v7, Lcom/android/browser/controller/Tab$VoiceSearchData;->mSourceIsGoogle:Z

    if-eqz v7, :cond_6

    .line 1790
    new-instance v22, Landroid/content/Intent;

    const-string v7, "com.android.common.speech.LOG_EVENT"

    move-object/from16 v0, v22

    move-object v1, v7

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1791
    .local v22, logIntent:Landroid/content/Intent;
    const-string v7, "extra_event"

    const/4 v8, 0x2

    move-object/from16 v0, v22

    move-object v1, v7

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1793
    const-string v7, "index"

    move-object/from16 v0, v22

    move-object v1, v7

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1794
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    move-object v7, v0

    move-object v0, v7

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 1796
    .end local v22           #logIntent:Landroid/content/Intent;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/Tab;->mVoiceSearchData:Lcom/android/browser/controller/Tab$VoiceSearchData;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/browser/controller/Tab$VoiceSearchData;->mVoiceSearchIntent:Landroid/content/Intent;

    if-eqz v7, :cond_7

    .line 1799
    new-instance v21, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/Tab;->mVoiceSearchData:Lcom/android/browser/controller/Tab$VoiceSearchData;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/browser/controller/Tab$VoiceSearchData;->mVoiceSearchIntent:Landroid/content/Intent;

    move-object/from16 v0, v21

    move-object v1, v7

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1800
    .local v21, latest:Landroid/content/Intent;
    const-string v7, "intent_extra_data_key"

    move-object/from16 v0, v21

    move-object v1, v7

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1801
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/Tab;->mVoiceSearchData:Lcom/android/browser/controller/Tab$VoiceSearchData;

    move-object v7, v0

    move-object/from16 v0, v21

    move-object v1, v7

    iput-object v0, v1, Lcom/android/browser/controller/Tab$VoiceSearchData;->mVoiceSearchIntent:Landroid/content/Intent;

    .line 1804
    .end local v21           #latest:Landroid/content/Intent;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/Tab;->mVoiceSearchData:Lcom/android/browser/controller/Tab$VoiceSearchData;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/Tab;->mVoiceSearchData:Lcom/android/browser/controller/Tab$VoiceSearchData;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/browser/controller/Tab$VoiceSearchData;->mVoiceSearchResults:Ljava/util/ArrayList;

    move-object v0, v8

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v7

    iput-object v0, v1, Lcom/android/browser/controller/Tab$VoiceSearchData;->mLastVoiceSearchTitle:Ljava/lang/String;

    .line 1805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/Tab;->mVoiceSearchData:Lcom/android/browser/controller/Tab$VoiceSearchData;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/browser/controller/Tab$VoiceSearchData;->mVoiceSearchHtmls:Ljava/util/ArrayList;

    if-eqz v7, :cond_9

    .line 1807
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/Tab;->mVoiceSearchData:Lcom/android/browser/controller/Tab$VoiceSearchData;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/browser/controller/Tab$VoiceSearchData;->mVoiceSearchHtmls:Ljava/util/ArrayList;

    move-object v0, v7

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 1808
    .local v25, uriString:Ljava/lang/String;
    if-eqz v25, :cond_9

    .line 1809
    invoke-static/range {v25 .. v25}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v14

    .line 1810
    .local v14, dataUri:Landroid/net/Uri;
    const-string v7, "inline"

    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1814
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/Tab;->mVoiceSearchData:Lcom/android/browser/controller/Tab$VoiceSearchData;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/browser/controller/Tab$VoiceSearchData;->mVoiceSearchBaseUrls:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/Tab;->mVoiceSearchData:Lcom/android/browser/controller/Tab$VoiceSearchData;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/browser/controller/Tab$VoiceSearchData;->mVoiceSearchBaseUrls:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_8

    move/from16 v8, v18

    :goto_0
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1816
    .local v6, baseUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/Tab;->mVoiceSearchData:Lcom/android/browser/controller/Tab$VoiceSearchData;

    move-object v7, v0

    iput-object v6, v7, Lcom/android/browser/controller/Tab$VoiceSearchData;->mLastVoiceSearchUrl:Ljava/lang/String;

    .line 1818
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/controller/Tab;->getCachedView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v5

    .line 1819
    .local v5, view:Lcom/android/browser/ui/MiRenWebView;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/browser/controller/Tab;->showView(Landroid/view/View;)V

    .line 1821
    const-string v7, "inline"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v25

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "text/html"

    const-string v9, "utf-8"

    move-object v10, v6

    invoke-virtual/range {v5 .. v10}, Lcom/android/browser/ui/MiRenWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1850
    .end local v6           #baseUrl:Ljava/lang/String;
    .end local v14           #dataUri:Landroid/net/Uri;
    .end local v25           #uriString:Ljava/lang/String;
    :goto_1
    return-void

    .line 1814
    .end local v5           #view:Lcom/android/browser/ui/MiRenWebView;
    .restart local v14       #dataUri:Landroid/net/Uri;
    .restart local v25       #uriString:Ljava/lang/String;
    :cond_8
    const/4 v8, 0x0

    goto :goto_0

    .line 1828
    .end local v14           #dataUri:Landroid/net/Uri;
    .end local v25           #uriString:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/Tab;->mVoiceSearchData:Lcom/android/browser/controller/Tab$VoiceSearchData;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/Tab;->mVoiceSearchData:Lcom/android/browser/controller/Tab$VoiceSearchData;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/browser/controller/Tab$VoiceSearchData;->mVoiceSearchUrls:Ljava/util/ArrayList;

    move-object v0, v8

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v7

    iput-object v0, v1, Lcom/android/browser/controller/Tab$VoiceSearchData;->mLastVoiceSearchUrl:Ljava/lang/String;

    .line 1829
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/Tab;->mVoiceSearchData:Lcom/android/browser/controller/Tab$VoiceSearchData;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/browser/controller/Tab$VoiceSearchData;->mLastVoiceSearchUrl:Ljava/lang/String;

    if-nez v7, :cond_a

    .line 1830
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/Tab;->mVoiceSearchData:Lcom/android/browser/controller/Tab$VoiceSearchData;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/Tab;->mVoiceSearchData:Lcom/android/browser/controller/Tab$VoiceSearchData;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/browser/controller/Tab$VoiceSearchData;->mLastVoiceSearchTitle:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/browser/ui/MiRenBrowserActivity;->smartUrlFilter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Lcom/android/browser/controller/Tab$VoiceSearchData;->mLastVoiceSearchUrl:Ljava/lang/String;

    .line 1833
    :cond_a
    const/16 v16, 0x0

    .line 1834
    .local v16, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/Tab;->mVoiceSearchData:Lcom/android/browser/controller/Tab$VoiceSearchData;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/browser/controller/Tab$VoiceSearchData;->mHeaders:Ljava/util/ArrayList;

    if-eqz v7, :cond_c

    .line 1835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/Tab;->mVoiceSearchData:Lcom/android/browser/controller/Tab$VoiceSearchData;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/browser/controller/Tab$VoiceSearchData;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_b

    const/4 v7, 0x0

    move v13, v7

    .line 1836
    .local v13, bundleIndex:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/Tab;->mVoiceSearchData:Lcom/android/browser/controller/Tab$VoiceSearchData;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/browser/controller/Tab$VoiceSearchData;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Bundle;

    .line 1837
    .local v12, bundle:Landroid/os/Bundle;
    if-eqz v12, :cond_c

    invoke-virtual {v12}, Landroid/os/Bundle;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_c

    .line 1838
    invoke-virtual {v12}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .line 1839
    .local v19, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v16, Ljava/util/HashMap;

    .end local v16           #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 1840
    .restart local v16       #headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1841
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Ljava/lang/String;

    .line 1842
    .local v20, key:Ljava/lang/String;
    move-object v0, v12

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object v2, v7

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .end local v12           #bundle:Landroid/os/Bundle;
    .end local v13           #bundleIndex:I
    .end local v19           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v20           #key:Ljava/lang/String;
    :cond_b
    move/from16 v13, v18

    .line 1835
    goto :goto_2

    .line 1847
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/browser/controller/Tab;->getCachedView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v5

    .line 1848
    .restart local v5       #view:Lcom/android/browser/ui/MiRenWebView;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/browser/controller/Tab;->showView(Landroid/view/View;)V

    .line 1849
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/Tab;->mVoiceSearchData:Lcom/android/browser/controller/Tab$VoiceSearchData;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/browser/controller/Tab$VoiceSearchData;->mLastVoiceSearchUrl:Ljava/lang/String;

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/ui/MiRenWebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_1
.end method

.method public addPackageName(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 1163
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    .line 1164
    .local v0, w:Lcom/android/browser/ui/MiRenWebView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1167
    :cond_0
    :goto_0
    return-void

    .line 1166
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/browser/ui/MiRenWebView;->addPackageName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addPackageNames(Ljava/util/Set;)V
    .locals 2
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
    .line 1177
    .local p1, packageNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    .line 1178
    .local v0, w:Lcom/android/browser/ui/MiRenWebView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1181
    :cond_0
    :goto_0
    return-void

    .line 1180
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/browser/ui/MiRenWebView;->addPackageNames(Ljava/util/Set;)V

    goto :goto_0
.end method

.method public attachSubWindow()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 1289
    iget-object v1, p0, Lcom/android/browser/controller/Tab;->mSubView:Lcom/android/browser/ui/MiRenWebView;

    if-eqz v1, :cond_0

    .line 1290
    iget-object v1, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->getSubWindowContainer()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/controller/Tab;->mSubViewContainer:Landroid/view/View;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1293
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 1294
    .local v0, w:Landroid/webkit/WebView;
    if-nez v0, :cond_1

    .line 1298
    .end local v0           #w:Landroid/webkit/WebView;
    :cond_0
    :goto_0
    return-void

    .line 1296
    .restart local v0       #w:Landroid/webkit/WebView;
    :cond_1
    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    goto :goto_0
.end method

.method public canGoBack()Z
    .locals 1

    .prologue
    .line 851
    iget-boolean v0, p0, Lcom/android/browser/controller/Tab;->mShowHomepage:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->isHomePage()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canGoForward()Z
    .locals 1

    .prologue
    .line 855
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->isHomePage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 856
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mOriWebView:Lcom/android/browser/ui/MiRenWebView;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->getLoadedUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 858
    :goto_0
    return v0

    .line 856
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 858
    :cond_1
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mOriWebView:Lcom/android/browser/ui/MiRenWebView;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->canGoForward()Z

    move-result v0

    goto :goto_0
.end method

.method public clearFormData()V
    .locals 3

    .prologue
    .line 1072
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v1

    .line 1073
    .local v1, current:Landroid/webkit/WebView;
    if-eqz v1, :cond_0

    move-object v0, v1

    check-cast v0, Lcom/android/browser/ui/MiRenWebViewCore;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/browser/ui/MiRenWebViewCore;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1074
    invoke-virtual {v1}, Landroid/webkit/WebView;->clearFormData()V

    .line 1076
    :cond_0
    return-void
.end method

.method public createScreenshot()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 1149
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    .line 1150
    .local v0, w:Lcom/android/browser/ui/MiRenWebView;
    if-nez v0, :cond_0

    .line 1151
    const/4 v1, 0x0

    .line 1152
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-static {v1, v0}, Lcom/android/browser/util/MiRenWebViewUtils;->createScreenshot(Landroid/content/Context;Landroid/webkit/WebView;)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0
.end method

.method public createScreenshotToFile()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1142
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    .line 1143
    .local v0, w:Lcom/android/browser/ui/MiRenWebView;
    if-nez v0, :cond_0

    .line 1144
    const/4 v1, 0x0

    .line 1145
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-static {v1, v0}, Lcom/android/browser/util/MiRenWebViewUtils;->createScreenshotToFile(Landroid/content/Context;Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public debugDump()V
    .locals 1

    .prologue
    .line 1135
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    .line 1136
    .local v0, w:Lcom/android/browser/ui/MiRenWebView;
    if-nez v0, :cond_0

    .line 1139
    :goto_0
    return-void

    .line 1138
    :cond_0
    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->debugDump()V

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 1199
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->hasSubWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1200
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->dismissSubWindow()V

    .line 1202
    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mOriWebView:Lcom/android/browser/ui/MiRenWebView;

    if-eqz v0, :cond_1

    .line 1203
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/controller/Tab;->mOriWebView:Lcom/android/browser/ui/MiRenWebView;

    invoke-virtual {v0, v1}, Lcom/android/browser/controller/BrowserSettings;->deleteObserver(Lcom/android/browser/ui/MiRenWebViewCore;)V

    .line 1204
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mOriWebView:Lcom/android/browser/ui/MiRenWebView;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->destroy()V

    .line 1205
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/controller/Tab;->mOriWebView:Lcom/android/browser/ui/MiRenWebView;

    .line 1208
    :cond_1
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mFlipper:Lcom/android/browser/ui/MiRenViewFlipperWrapper;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->removeAllViews()V

    .line 1209
    return-void
.end method

.method public dismissSubWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1270
    iget-object v1, p0, Lcom/android/browser/controller/Tab;->mSubView:Lcom/android/browser/ui/MiRenWebView;

    if-eqz v1, :cond_0

    .line 1271
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->removeSubWindow()V

    .line 1273
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/controller/Tab;->mSubView:Lcom/android/browser/ui/MiRenWebView;

    invoke-virtual {v1, v2}, Lcom/android/browser/controller/BrowserSettings;->deleteObserver(Lcom/android/browser/ui/MiRenWebViewCore;)V

    .line 1274
    iget-object v1, p0, Lcom/android/browser/controller/Tab;->mSubView:Lcom/android/browser/ui/MiRenWebView;

    invoke-virtual {v1}, Lcom/android/browser/ui/MiRenWebView;->destroy()V

    .line 1275
    iput-object v3, p0, Lcom/android/browser/controller/Tab;->mSubView:Lcom/android/browser/ui/MiRenWebView;

    .line 1276
    iput-object v3, p0, Lcom/android/browser/controller/Tab;->mSubViewContainer:Landroid/view/View;

    .line 1278
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getTopWindow()Landroid/webkit/WebView;

    move-result-object v0

    .line 1279
    .local v0, w:Landroid/webkit/WebView;
    if-nez v0, :cond_1

    .line 1283
    .end local v0           #w:Landroid/webkit/WebView;
    :cond_0
    :goto_0
    return-void

    .line 1281
    .restart local v0       #w:Landroid/webkit/WebView;
    :cond_1
    invoke-virtual {v0}, Landroid/webkit/WebView;->requestFocus()Z

    goto :goto_0
.end method

.method public doLoadDataInSpecialMode(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .parameter "baseUrl"
    .parameter "data"
    .parameter "mode"

    .prologue
    .line 636
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/browser/controller/Tab;->doNavigation(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 637
    return-void
.end method

.method public doNavigation(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    const/4 v1, 0x0

    .line 624
    const-string v0, ""

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/android/browser/controller/Tab;->doNavigation(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 625
    return-void
.end method

.method public doNavigation(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 6
    .parameter "url"
    .parameter "data"
    .parameter "mode"
    .parameter "inSpecialMode"

    .prologue
    const/4 v4, 0x1

    const-string v5, "guide_fullscreen_mode"

    .line 648
    sget-boolean v1, Lcom/android/browser/ui/MiRenBrowserActivity;->isInTest:Z

    if-eqz v1, :cond_0

    .line 649
    const-string v1, "com.android.browser.controller.tab"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "begin to load url"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/browser/controller/Tab;->checkPreDefinedNavigation(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 652
    iput-boolean v4, p0, Lcom/android/browser/controller/Tab;->mAddHistory:Z

    .line 654
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->isHomePage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 658
    iget-object v1, p0, Lcom/android/browser/controller/Tab;->mOriWebView:Lcom/android/browser/ui/MiRenWebView;

    invoke-direct {p0, v1}, Lcom/android/browser/controller/Tab;->destroyWebView(Lcom/android/browser/ui/MiRenWebView;)V

    .line 659
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->createWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/browser/controller/Tab;->mOriWebView:Lcom/android/browser/ui/MiRenWebView;

    .line 662
    :cond_1
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mOriWebView:Lcom/android/browser/ui/MiRenWebView;

    .line 664
    .local v0, view:Lcom/android/browser/ui/MiRenWebView;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 665
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/browser/ui/MiRenWebView;->loadDataInSpecialMode(Ljava/lang/String;Ljava/lang/String;I)V

    .line 668
    :cond_2
    if-eqz p4, :cond_4

    .line 669
    invoke-virtual {v0, p1, p3}, Lcom/android/browser/ui/MiRenWebView;->loadUrlInSpecialMode(Ljava/lang/String;I)V

    .line 674
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/browser/controller/Tab;->showView(Landroid/view/View;)V

    .line 676
    iget-object v1, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "guide_fullscreen_mode"

    invoke-interface {v1, v5, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 678
    iget-object v1, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "guide_fullscreen_mode"

    const/4 v2, 0x0

    invoke-interface {v1, v5, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 680
    iget-object v1, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->getFullScreenButton()Landroid/widget/ImageButton;

    move-result-object v1

    new-instance v2, Lcom/android/browser/controller/Tab$2;

    invoke-direct {v2, p0}, Lcom/android/browser/controller/Tab$2;-><init>(Lcom/android/browser/controller/Tab;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->post(Ljava/lang/Runnable;)Z

    .line 694
    .end local v0           #view:Lcom/android/browser/ui/MiRenWebView;
    :cond_3
    return-void

    .line 671
    .restart local v0       #view:Lcom/android/browser/ui/MiRenWebView;
    :cond_4
    invoke-virtual {v0, p1, p3}, Lcom/android/browser/ui/MiRenWebView;->loadUrlWithPreprocess(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public doNavigationInSpecialMode(Ljava/lang/String;I)V
    .locals 2
    .parameter "url"
    .parameter "mode"

    .prologue
    .line 632
    const-string v0, ""

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/browser/controller/Tab;->doNavigation(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 633
    return-void
.end method

.method public doNavigationWithSuggestedMode(Ljava/lang/String;I)V
    .locals 2
    .parameter "url"
    .parameter "mode"

    .prologue
    .line 628
    const-string v0, ""

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/browser/controller/Tab;->doNavigation(Ljava/lang/String;Ljava/lang/String;IZ)V

    .line 629
    return-void
.end method

.method public endTextSelection()V
    .locals 2

    .prologue
    .line 445
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    .line 446
    .local v0, w:Lcom/android/browser/ui/MiRenWebView;
    if-nez v0, :cond_0

    .line 450
    :goto_0
    return-void

    .line 449
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenWebView;->setTextSelectionMode(Z)V

    goto :goto_0
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 2

    .prologue
    .line 1088
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    .line 1089
    .local v0, w:Lcom/android/browser/ui/MiRenWebView;
    if-nez v0, :cond_0

    .line 1090
    const/4 v1, 0x0

    .line 1092
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v1

    goto :goto_0
.end method

.method public getContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 963
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1526
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->isForegroundTab()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1527
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1529
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFuncBtnType()Lcom/android/browser/ui/MiRenBrowserActivity$FuncButtonTypeEnum;
    .locals 2

    .prologue
    .line 1006
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    .line 1007
    .local v0, w:Lcom/android/browser/ui/MiRenWebView;
    if-nez v0, :cond_0

    .line 1008
    sget-object v1, Lcom/android/browser/ui/MiRenBrowserActivity$FuncButtonTypeEnum;->FuncButton_none:Lcom/android/browser/ui/MiRenBrowserActivity$FuncButtonTypeEnum;

    .line 1010
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->getFuncButtonType()Lcom/android/browser/ui/MiRenBrowserActivity$FuncButtonTypeEnum;

    move-result-object v1

    goto :goto_0
.end method

.method getGeolocationPermissionsPrompt()Lcom/android/browser/ui/GeolocationPermissionsPrompt;
    .locals 3

    .prologue
    .line 1686
    iget-object v1, p0, Lcom/android/browser/controller/Tab;->mGeolocationPermissionsPrompt:Lcom/android/browser/ui/GeolocationPermissionsPrompt;

    if-nez v1, :cond_0

    .line 1687
    iget-object v1, p0, Lcom/android/browser/controller/Tab;->mContainer:Landroid/widget/LinearLayout;

    const v2, 0x7f0d008f

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1689
    .local v0, stub:Landroid/view/ViewStub;
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/browser/ui/GeolocationPermissionsPrompt;

    iput-object v1, p0, Lcom/android/browser/controller/Tab;->mGeolocationPermissionsPrompt:Lcom/android/browser/ui/GeolocationPermissionsPrompt;

    .line 1691
    iget-object v1, p0, Lcom/android/browser/controller/Tab;->mGeolocationPermissionsPrompt:Lcom/android/browser/ui/GeolocationPermissionsPrompt;

    invoke-virtual {v1}, Lcom/android/browser/ui/GeolocationPermissionsPrompt;->init()V

    .line 1693
    .end local v0           #stub:Landroid/view/ViewStub;
    :cond_0
    iget-object v1, p0, Lcom/android/browser/controller/Tab;->mGeolocationPermissionsPrompt:Lcom/android/browser/ui/GeolocationPermissionsPrompt;

    return-object v1
.end method

.method public getGuidePopupWindow()Landroid/widget/GuidePopupWindow;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mGuidePopupWindow:Landroid/widget/GuidePopupWindow;

    return-object v0
.end method

.method public getHomePageController()Lcom/android/browser/controller/NavigationHomeController;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mNavigationHomeController:Lcom/android/browser/controller/NavigationHomeController;

    if-nez v0, :cond_0

    .line 562
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-static {v0}, Lcom/android/browser/controller/NavigationHomeController;->getInstance(Lcom/android/browser/ui/MiRenBrowserActivity;)Lcom/android/browser/controller/NavigationHomeController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/controller/Tab;->mNavigationHomeController:Lcom/android/browser/controller/NavigationHomeController;

    .line 564
    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mNavigationHomeController:Lcom/android/browser/controller/NavigationHomeController;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 981
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0, p0}, Lcom/android/browser/controller/TabController;->getTabIndex(Lcom/android/browser/controller/Tab;)I

    move-result v0

    return v0
.end method

.method public getLoadedUrl()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, "miui:home"

    .line 1398
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->isHomePage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1399
    const-string v1, "miui:home"

    move-object v1, v4

    .line 1412
    :goto_0
    return-object v1

    .line 1400
    :cond_0
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    .line 1401
    .local v0, currentView:Landroid/view/View;
    if-nez v0, :cond_1

    .line 1402
    iget-object v1, p0, Lcom/android/browser/controller/Tab;->mFlipper:Lcom/android/browser/ui/MiRenViewFlipperWrapper;

    invoke-virtual {v1}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->getCurrentDetachedView()Landroid/view/View;

    move-result-object v0

    .line 1403
    :cond_1
    if-nez v0, :cond_2

    move-object v1, v3

    .line 1404
    goto :goto_0

    .line 1405
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/browser/ui/MiRenWebView;

    if-eq v1, v2, :cond_4

    .line 1406
    iget-object v1, p0, Lcom/android/browser/controller/Tab;->mHomePage:Lcom/android/browser/ui/MiRenHomePageView;

    if-ne v0, v1, :cond_3

    .line 1407
    const-string v1, "miui:home"

    move-object v1, v4

    goto :goto_0

    :cond_3
    move-object v1, v3

    .line 1409
    goto :goto_0

    .line 1412
    :cond_4
    check-cast v0, Lcom/android/browser/ui/MiRenWebView;

    .end local v0           #currentView:Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->getLoadedUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getLockIconType()I
    .locals 1

    .prologue
    .line 948
    iget v0, p0, Lcom/android/browser/controller/Tab;->mLockIconType:I

    return v0
.end method

.method public getMode()I
    .locals 2

    .prologue
    .line 985
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    .line 986
    .local v0, w:Lcom/android/browser/ui/MiRenWebView;
    if-nez v0, :cond_0

    .line 987
    const/4 v1, 0x0

    .line 988
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->getMode()I

    move-result v1

    goto :goto_0
.end method

.method public getProgress()I
    .locals 2

    .prologue
    .line 992
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    .line 993
    .local v0, w:Lcom/android/browser/ui/MiRenWebView;
    if-nez v0, :cond_0

    .line 994
    const/16 v1, 0x64

    .line 995
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->getProgress()I

    move-result v1

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const v3, 0x7f0900e2

    .line 1417
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->isHomePage()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1418
    iget-object v1, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1431
    :goto_0
    return-object v1

    .line 1419
    :cond_0
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    .line 1420
    .local v0, currentView:Landroid/view/View;
    if-nez v0, :cond_1

    .line 1421
    iget-object v1, p0, Lcom/android/browser/controller/Tab;->mFlipper:Lcom/android/browser/ui/MiRenViewFlipperWrapper;

    invoke-virtual {v1}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->getCurrentDetachedView()Landroid/view/View;

    move-result-object v0

    .line 1422
    :cond_1
    if-nez v0, :cond_2

    move-object v1, v4

    .line 1423
    goto :goto_0

    .line 1424
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/android/browser/ui/MiRenWebView;

    if-eq v1, v2, :cond_4

    .line 1425
    iget-object v1, p0, Lcom/android/browser/controller/Tab;->mHomePage:Lcom/android/browser/ui/MiRenHomePageView;

    if-ne v0, v1, :cond_3

    .line 1426
    iget-object v1, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v4

    .line 1428
    goto :goto_0

    .line 1431
    :cond_4
    check-cast v0, Lcom/android/browser/ui/MiRenWebView;

    .end local v0           #currentView:Landroid/view/View;
    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->getTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getUserAgentString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1065
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    .line 1066
    .local v0, w:Lcom/android/browser/ui/MiRenWebView;
    if-nez v0, :cond_0

    .line 1067
    const/4 v1, 0x0

    .line 1068
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1537
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->isForegroundTab()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1538
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    .line 1540
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVoiceDisplayTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1732
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mVoiceSearchData:Lcom/android/browser/controller/Tab$VoiceSearchData;

    if-nez v0, :cond_0

    .line 1733
    const/4 v0, 0x0

    .line 1734
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mVoiceSearchData:Lcom/android/browser/controller/Tab$VoiceSearchData;

    iget-object v0, v0, Lcom/android/browser/controller/Tab$VoiceSearchData;->mLastVoiceSearchTitle:Ljava/lang/String;

    goto :goto_0
.end method

.method public getVoiceSearchResults()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1742
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mVoiceSearchData:Lcom/android/browser/controller/Tab$VoiceSearchData;

    if-nez v0, :cond_0

    .line 1743
    const/4 v0, 0x0

    .line 1744
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mVoiceSearchData:Lcom/android/browser/controller/Tab$VoiceSearchData;

    iget-object v0, v0, Lcom/android/browser/controller/Tab$VoiceSearchData;->mVoiceSearchResults:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public getWebViewTouchIconUrl()Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 491
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v4

    .line 492
    .local v4, w:Lcom/android/browser/ui/MiRenWebView;
    if-nez v4, :cond_0

    move-object v0, v3

    .line 495
    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    sget-object v0, Lcom/android/browser/util/ReflectUtil$LogFlag;->LogError:Lcom/android/browser/util/ReflectUtil$LogFlag;

    const-class v1, Landroid/webkit/WebView;

    const-string v2, "getTouchIconUrl"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static/range {v0 .. v5}, Lcom/android/browser/util/ReflectUtil;->invokeDeclaredMethod(Lcom/android/browser/util/ReflectUtil$LogFlag;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, p0

    goto :goto_0
.end method

.method public goBack()V
    .locals 2

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->hasSubWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 879
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->dismissSubWindow()V

    .line 899
    :cond_0
    :goto_0
    return-void

    .line 884
    :cond_1
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mFlipper:Lcom/android/browser/ui/MiRenViewFlipperWrapper;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->isInSwitching()Z

    move-result v0

    if-nez v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mOriWebView:Lcom/android/browser/ui/MiRenWebView;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 889
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mOriWebView:Lcom/android/browser/ui/MiRenWebView;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->goBack()V

    goto :goto_0

    .line 893
    :cond_2
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mHomePage:Lcom/android/browser/ui/MiRenHomePageView;

    sget-object v1, Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;->SWITCH_ANIMATION_LEFT_IN:Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;

    invoke-direct {p0, v0, v1}, Lcom/android/browser/controller/Tab;->showView(Landroid/view/View;Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;)V

    .line 894
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mOriWebView:Lcom/android/browser/ui/MiRenWebView;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->stopLoading()V

    .line 895
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mOriWebView:Lcom/android/browser/ui/MiRenWebView;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->onSwitchToBackground()V

    .line 897
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/browser/controller/Tab;->notifyTabNavigationStarted(Z)V

    .line 898
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->notifyTabNavigationFinished()V

    goto :goto_0
.end method

.method public goForward()V
    .locals 2

    .prologue
    .line 905
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mFlipper:Lcom/android/browser/ui/MiRenViewFlipperWrapper;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->isInSwitching()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 918
    :cond_0
    :goto_0
    return-void

    .line 909
    :cond_1
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->isHomePage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 910
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mOriWebView:Lcom/android/browser/ui/MiRenWebView;

    sget-object v1, Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;->SWITCH_ANIMATION_RIGHT_IN:Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;

    invoke-direct {p0, v0, v1}, Lcom/android/browser/controller/Tab;->showView(Landroid/view/View;Lcom/android/browser/ui/MiRenViewFlipperWrapper$SwitchAnimation;)V

    .line 911
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mOriWebView:Lcom/android/browser/ui/MiRenWebView;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->onSwitchToFront()V

    .line 912
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/browser/controller/Tab;->notifyTabNavigationStarted(Z)V

    .line 913
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->notifyTabNavigationFinished()V

    goto :goto_0

    .line 915
    :cond_2
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mOriWebView:Lcom/android/browser/ui/MiRenWebView;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->canGoForward()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mOriWebView:Lcom/android/browser/ui/MiRenWebView;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->goForward()V

    goto :goto_0
.end method

.method public goHome()V
    .locals 2

    .prologue
    .line 864
    iget-object v1, p0, Lcom/android/browser/controller/Tab;->mFlipper:Lcom/android/browser/ui/MiRenViewFlipperWrapper;

    invoke-virtual {v1}, Lcom/android/browser/ui/MiRenViewFlipperWrapper;->isInSwitching()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 875
    :goto_0
    return-void

    .line 868
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->stopLoading()V

    .line 869
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    .line 870
    .local v0, w:Lcom/android/browser/ui/MiRenWebView;
    if-eqz v0, :cond_1

    .line 871
    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->onSwitchToBackground()V

    .line 874
    :cond_1
    const-string v1, "miui:home"

    invoke-direct {p0, v1}, Lcom/android/browser/controller/Tab;->showPreDefinedNavigationView(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public hasSubWindow()Z
    .locals 1

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mSubView:Lcom/android/browser/ui/MiRenWebView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCalledFromOtherApp()Z
    .locals 2

    .prologue
    .line 1596
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mCallingApplicationId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/controller/Tab;->mCallingApplicationId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClosed()Z
    .locals 2

    .prologue
    .line 1436
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCurrent()Z
    .locals 1

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mTabController:Lcom/android/browser/controller/TabController;

    invoke-virtual {v0, p0}, Lcom/android/browser/controller/TabController;->isCurrentTab(Lcom/android/browser/controller/Tab;)Z

    move-result v0

    return v0
.end method

.method public isForegroundTab()Z
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getTabController()Lcom/android/browser/controller/TabController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/TabController;->getCurrentTab()Lcom/android/browser/controller/Tab;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/android/browser/controller/Tab;->mIsHidden:Z

    return v0
.end method

.method public isInVoiceSearchMode()Z
    .locals 1

    .prologue
    .line 1716
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mVoiceSearchData:Lcom/android/browser/controller/Tab$VoiceSearchData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLoading()Z
    .locals 2

    .prologue
    .line 974
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    .line 975
    .local v0, webView:Lcom/android/browser/ui/MiRenWebView;
    if-nez v0, :cond_0

    .line 976
    const/4 v1, 0x0

    .line 977
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->isLoading()Z

    move-result v1

    goto :goto_0
.end method

.method public isReadingModeSupportedUrl(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 1608
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->getReadingModeController()Lcom/android/browser/controller/ReadingModeController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/browser/controller/ReadingModeController;->isReadingModeSupported(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isViewVisible(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 953
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimetype"
    .parameter "contentLength"

    .prologue
    .line 1618
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/browser/ui/MiRenBrowserActivity;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 1620
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->canGoBack()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->canGoForward()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1624
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->isForegroundTab()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1625
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1626
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->goBack()V

    .line 1633
    :cond_0
    :goto_0
    return-void

    .line 1628
    :cond_1
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0, p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->gotoNavigationHomePage(Lcom/android/browser/controller/Tab;)V

    goto :goto_0

    .line 1630
    :cond_2
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0, p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->removeTab(Lcom/android/browser/controller/Tab;)V

    goto :goto_0
.end method

.method public notifyTabNavigationFinished()V
    .locals 4

    .prologue
    const/16 v3, 0x64

    .line 535
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->isHidden()Z

    move-result v0

    if-nez v0, :cond_2

    .line 536
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/BrowserSettings;->getHideButtonsInFullScreen()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AUTO"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    const/16 v1, 0xbb8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/browser/ui/MiRenBrowserActivity;->startTimer(IIZ)V

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getTabController()Lcom/android/browser/controller/TabController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/browser/controller/TabController;->isCurrentTab(Lcom/android/browser/controller/Tab;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 540
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->getLoadedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->updateUrl(Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0, v3}, Lcom/android/browser/ui/MiRenBrowserActivity;->updateProgress(I)V

    .line 543
    :cond_1
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0, p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->updateTitle(Lcom/android/browser/controller/Tab;)V

    .line 544
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0, p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->updateUrlTitle(Lcom/android/browser/controller/Tab;)V

    .line 546
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->updateLockIconToLatest()V

    .line 548
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->refreshNavButtonStatus()V

    .line 550
    :cond_2
    return-void
.end method

.method public notifyTabNavigationStarted(Z)V
    .locals 4
    .parameter "homePage"

    .prologue
    const/4 v3, 0x1

    .line 500
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1

    .line 501
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->refreshNavButtonStatus()V

    .line 502
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getTabController()Lcom/android/browser/controller/TabController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/browser/controller/TabController;->isCurrentTab(Lcom/android/browser/controller/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    if-nez p1, :cond_2

    .line 504
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0, v3}, Lcom/android/browser/ui/MiRenBrowserActivity;->stopTimer(I)V

    .line 508
    :goto_0
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->getLoadedUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->getLoadedUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "miui:sites"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->getLoadedUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file:///android_asset/navigationHome.html"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 511
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->getLoadedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->updateUrl(Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0, v3}, Lcom/android/browser/ui/MiRenBrowserActivity;->updateProgress(I)V

    .line 515
    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0, p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->updateTitle(Lcom/android/browser/controller/Tab;)V

    .line 516
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->getLoadedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->resetLockIcon(Ljava/lang/String;)V

    .line 518
    :cond_1
    return-void

    .line 506
    :cond_2
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/ui/MiRenBrowserActivity;->startTimer(II)V

    goto :goto_0
.end method

.method public onActivityPause()V
    .locals 2

    .prologue
    .line 472
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    .line 473
    .local v0, w:Lcom/android/browser/ui/MiRenWebView;
    if-nez v0, :cond_1

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 476
    :cond_1
    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 477
    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->pauseTimers()V

    .line 478
    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->onSwitchToBackground()V

    goto :goto_0
.end method

.method public onActivityResume()V
    .locals 1

    .prologue
    .line 483
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    .line 484
    .local v0, w:Lcom/android/browser/ui/MiRenWebView;
    if-eqz v0, :cond_0

    .line 485
    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->resumeTimers()V

    .line 486
    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->onSwitchToFront()V

    .line 488
    :cond_0
    return-void
.end method

.method public onBookmarkAdded(J)V
    .locals 1
    .parameter "id"

    .prologue
    .line 999
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    .line 1000
    .local v0, w:Lcom/android/browser/ui/MiRenWebView;
    if-nez v0, :cond_0

    .line 1003
    :goto_0
    return-void

    .line 1002
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/browser/ui/MiRenWebView;->onBookmarkAdded(J)V

    goto :goto_0
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 8
    .parameter "view"
    .parameter "dialog"
    .parameter "userGesture"
    .parameter "resultMsg"

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 1475
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->isHidden()Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    .line 1508
    :goto_0
    return v4

    .line 1478
    :cond_0
    iget-object v4, p4, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/webkit/WebView$WebViewTransport;

    move-object v0, v4

    check-cast v0, Landroid/webkit/WebView$WebViewTransport;

    move-object v3, v0

    .line 1479
    .local v3, webViewTransport:Landroid/webkit/WebView$WebViewTransport;
    if-eqz p2, :cond_3

    .line 1481
    invoke-virtual {p1}, Landroid/webkit/WebView;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_1

    move v4, v7

    .line 1482
    goto :goto_0

    .line 1486
    :cond_1
    iget-object v4, p0, Lcom/android/browser/controller/Tab;->mSubView:Lcom/android/browser/ui/MiRenWebView;

    if-eqz v4, :cond_2

    .line 1487
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0900c8

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0900c9

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f09000f

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v4, v7

    .line 1492
    goto :goto_0

    .line 1495
    :cond_2
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->createSubWindow()Z

    .line 1496
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->attachSubWindow()V

    .line 1497
    iget-object v4, p0, Lcom/android/browser/controller/Tab;->mSubView:Lcom/android/browser/ui/MiRenWebView;

    invoke-virtual {v3, v4}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    .line 1507
    :goto_1
    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    move v4, v5

    .line 1508
    goto :goto_0

    .line 1502
    :cond_3
    iget-object v4, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v4, v7, p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->addTabNoBuffer(ZLcom/android/browser/controller/Tab;)Lcom/android/browser/controller/Tab;

    move-result-object v1

    .line 1503
    .local v1, newTab:Lcom/android/browser/controller/Tab;
    invoke-virtual {v1}, Lcom/android/browser/controller/Tab;->ShowBlankWebview()V

    .line 1504
    invoke-direct {v1}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v2

    .line 1505
    .local v2, w:Lcom/android/browser/ui/MiRenWebView;
    invoke-virtual {v3, v2}, Landroid/webkit/WebView$WebViewTransport;->setWebView(Landroid/webkit/WebView;)V

    goto :goto_1
.end method

.method public onFirstRender(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 1613
    return-void
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 1

    .prologue
    .line 1656
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->isForegroundTab()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mGeolocationPermissionsPrompt:Lcom/android/browser/ui/GeolocationPermissionsPrompt;

    if-eqz v0, :cond_0

    .line 1657
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mGeolocationPermissionsPrompt:Lcom/android/browser/ui/GeolocationPermissionsPrompt;

    invoke-virtual {v0}, Lcom/android/browser/ui/GeolocationPermissionsPrompt;->hide()V

    .line 1659
    :cond_0
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 1
    .parameter "origin"
    .parameter "callback"

    .prologue
    .line 1646
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->isForegroundTab()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1647
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->getGeolocationPermissionsPrompt()Lcom/android/browser/ui/GeolocationPermissionsPrompt;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/ui/GeolocationPermissionsPrompt;->show(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 1649
    :cond_0
    return-void
.end method

.method public onHideCustomView()V
    .locals 1

    .prologue
    .line 1548
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->isForegroundTab()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1549
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getCustomViewApiWrapper()Lcom/android/browser/ui/MiRenBrowserActivity$CustomViewApiWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenBrowserActivity$CustomViewApiWrapper;->onHideCustomView()V

    .line 1550
    :cond_0
    return-void
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 1669
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 1672
    iget v0, p0, Lcom/android/browser/controller/Tab;->mLockIconType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1674
    invoke-static {p2}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/webkit/URLUtil;->isAboutUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1676
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/browser/controller/Tab;->mLockIconType:I

    .line 1680
    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .prologue
    .line 967
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    .line 968
    .local v0, webView:Lcom/android/browser/ui/MiRenWebView;
    if-eqz v0, :cond_0

    .line 969
    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->freeMemory()V

    .line 971
    :cond_0
    return-void
.end method

.method public onNetworkToggle(Z)V
    .locals 2
    .parameter "up"

    .prologue
    .line 1114
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    .line 1115
    .local v0, w:Lcom/android/browser/ui/MiRenWebViewBase;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1116
    invoke-virtual {v0, p1}, Lcom/android/browser/ui/MiRenWebViewBase;->setNetworkAvailable(Z)V

    .line 1118
    :cond_0
    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    const/4 v0, 0x1

    .line 615
    if-ne p1, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/android/browser/controller/Tab;->mIsOrientationPortrait:Z

    .line 616
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mHomePage:Lcom/android/browser/ui/MiRenHomePageView;

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mHomePage:Lcom/android/browser/ui/MiRenHomePageView;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenHomePageView;->getCurrentScreenIndex()I

    move-result v0

    iput v0, p0, Lcom/android/browser/controller/Tab;->mCurrentScreenViewIndex:I

    .line 618
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mHomePage:Lcom/android/browser/ui/MiRenHomePageView;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenHomePageView;->removeAllScreens()V

    .line 619
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->initHomePage()V

    .line 621
    :cond_0
    return-void

    .line 615
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPageDataFinished()V
    .locals 1

    .prologue
    .line 1602
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mListener:Lcom/android/browser/controller/Tab$MiRenPageDataFinishListener;

    if-nez v0, :cond_0

    .line 1605
    :goto_0
    return-void

    .line 1604
    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mListener:Lcom/android/browser/controller/Tab$MiRenPageDataFinishListener;

    invoke-interface {v0, p0}, Lcom/android/browser/controller/Tab$MiRenPageDataFinishListener;->onPageDataFinished(Lcom/android/browser/controller/Tab;)V

    goto :goto_0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "url"

    .prologue
    .line 1448
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->notifyTabNavigationFinished()V

    .line 1449
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->requestFocus()V

    .line 1450
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 1454
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->requestFocus()V

    .line 1455
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/browser/controller/Tab;->notifyTabNavigationStarted(Z)V

    .line 1456
    return-void
.end method

.method public onProgressChanged(I)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 1191
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    .line 1192
    .local v0, w:Lcom/android/browser/ui/MiRenWebView;
    if-nez v0, :cond_0

    .line 1196
    :goto_0
    return-void

    .line 1195
    :cond_0
    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    goto :goto_0
.end method

.method public onReceivedSslError(Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 2
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 1096
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    .line 1097
    .local v0, w:Lcom/android/browser/ui/MiRenWebView;
    if-nez v0, :cond_0

    .line 1102
    :goto_0
    return-void

    .line 1100
    :cond_0
    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    goto :goto_0
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 1
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 1562
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0, p0, p2, p3}, Lcom/android/browser/ui/MiRenBrowserActivity;->showSSLCertificateOnError(Lcom/android/browser/controller/Tab;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    .line 1563
    return-void
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1513
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 1518
    :cond_0
    :goto_0
    return-void

    .line 1516
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->isForegroundTab()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1517
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0, p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->switchToTab(Lcom/android/browser/controller/Tab;)V

    goto :goto_0
.end method

.method public onSaveState(I)Landroid/os/Bundle;
    .locals 12
    .parameter "index"

    .prologue
    const/4 v10, 0x0

    const-string v11, "view_type"

    .line 734
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 736
    .local v2, bundle:Landroid/os/Bundle;
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v3

    .line 737
    .local v3, currentView:Landroid/view/View;
    if-eqz v3, :cond_2

    .line 738
    move-object v0, v3

    check-cast v0, Lcom/android/browser/ui/MiRenWebView;

    move-object v4, v0

    .line 740
    .local v4, currentWebView:Lcom/android/browser/ui/MiRenWebView;
    invoke-virtual {v4}, Lcom/android/browser/ui/MiRenWebView;->isDestroyed()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v4, v2}, Lcom/android/browser/ui/MiRenWebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 742
    invoke-virtual {v4}, Lcom/android/browser/ui/MiRenWebView;->getMode()I

    move-result v6

    .line 743
    .local v6, mode:I
    const-string v8, "mode"

    invoke-virtual {v2, v8, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 745
    if-nez v6, :cond_1

    .line 746
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 747
    .local v1, builder:Ljava/lang/StringBuilder;
    const-string v8, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 749
    sget-object v8, Lcom/android/browser/controller/Tab;->sPersistFilePath:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    :goto_0
    new-instance v5, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 758
    .local v5, dir:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 759
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    .line 761
    :cond_0
    const-string v8, "webview_"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 762
    new-instance v7, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 763
    .local v7, persistFile:Ljava/io/File;
    invoke-virtual {v4, v2, v7}, Lcom/android/browser/ui/MiRenWebView;->savePicture(Landroid/os/Bundle;Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 765
    const-string v8, "persist_path"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    .end local v1           #builder:Ljava/lang/StringBuilder;
    .end local v5           #dir:Ljava/io/File;
    .end local v6           #mode:I
    .end local v7           #persistFile:Ljava/io/File;
    :cond_1
    :goto_1
    const-string v8, "current_url"

    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->getLoadedUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    .end local v4           #currentWebView:Lcom/android/browser/ui/MiRenWebView;
    :cond_2
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->isHomePage()Z

    move-result v8

    if-nez v8, :cond_5

    .line 778
    const-string v8, "view_type"

    invoke-virtual {v2, v11, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 783
    :goto_2
    const-string v8, "title"

    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    return-object v2

    .line 753
    .restart local v1       #builder:Ljava/lang/StringBuilder;
    .restart local v4       #currentWebView:Lcom/android/browser/ui/MiRenWebView;
    .restart local v6       #mode:I
    :cond_3
    iget-object v8, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    const-string v9, ".persist"

    invoke-virtual {v8, v9, v10}, Lcom/android/browser/ui/MiRenBrowserActivity;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    const-string v8, "/webview_pictures"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 768
    .restart local v5       #dir:Ljava/io/File;
    .restart local v7       #persistFile:Ljava/io/File;
    :cond_4
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 780
    .end local v1           #builder:Ljava/lang/StringBuilder;
    .end local v4           #currentWebView:Lcom/android/browser/ui/MiRenWebView;
    .end local v5           #dir:Ljava/io/File;
    .end local v6           #mode:I
    .end local v7           #persistFile:Ljava/io/File;
    :cond_5
    const-string v8, "view_type"

    const/4 v8, 0x1

    invoke-virtual {v2, v11, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_2
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1
    .parameter "view"
    .parameter "callback"

    .prologue
    .line 1557
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->isForegroundTab()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1558
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getCustomViewApiWrapper()Lcom/android/browser/ui/MiRenBrowserActivity$CustomViewApiWrapper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/ui/MiRenBrowserActivity$CustomViewApiWrapper;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 1559
    :cond_0
    return-void
.end method

.method public onSwitchTab(Z)V
    .locals 3
    .parameter "foreground"

    .prologue
    .line 568
    if-nez p1, :cond_2

    .line 569
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    .line 570
    .local v0, w:Lcom/android/browser/ui/MiRenWebView;
    if-eqz v0, :cond_0

    .line 571
    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 572
    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->onSwitchToBackground()V

    .line 576
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->hasSubWindow()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 577
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->dismissSubWindow()V

    .line 591
    .end local v0           #w:Lcom/android/browser/ui/MiRenWebView;
    :cond_1
    :goto_0
    return-void

    .line 581
    :cond_2
    iget-object v2, p0, Lcom/android/browser/controller/Tab;->mStateToRestore:Landroid/os/Bundle;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/browser/controller/Tab;->mStateToRestore:Landroid/os/Bundle;

    invoke-virtual {p0, v2}, Lcom/android/browser/controller/Tab;->restoreState(Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 582
    const-string v2, "miui:home"

    invoke-virtual {p0, v2}, Lcom/android/browser/controller/Tab;->doNavigation(Ljava/lang/String;)V

    .line 584
    :cond_3
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v1

    .line 585
    .local v1, webView:Lcom/android/browser/ui/MiRenWebView;
    if-eqz v1, :cond_4

    .line 586
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/browser/ui/MiRenWebView;->onSwitchToFront()V

    .line 589
    :cond_4
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->requestFocus()V

    goto :goto_0
.end method

.method public openFileChooser(Landroid/webkit/ValueCallback;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Landroid/net/Uri;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1521
    .local p1, uploadMsg:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->isCurrent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1522
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0, p1}, Lcom/android/browser/ui/MiRenBrowserActivity;->openFileChooser(Ljava/lang/Object;)V

    .line 1523
    :cond_0
    return-void
.end method

.method public preNavigation(Ljava/lang/String;)Z
    .locals 1
    .parameter "url"

    .prologue
    .line 1578
    invoke-direct {p0, p1}, Lcom/android/browser/controller/Tab;->checkPreDefinedNavigation(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 428
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    .line 429
    .local v0, w:Lcom/android/browser/ui/MiRenWebView;
    if-nez v0, :cond_0

    .line 433
    :goto_0
    return-void

    .line 432
    :cond_0
    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->reload()V

    goto :goto_0
.end method

.method public removePackageName(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 1170
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    .line 1171
    .local v0, w:Lcom/android/browser/ui/MiRenWebView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1174
    :cond_0
    :goto_0
    return-void

    .line 1173
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/browser/ui/MiRenWebView;->removePackageName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public requestFocus()V
    .locals 2

    .prologue
    .line 841
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->isForegroundTab()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 842
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    .line 843
    .local v0, currentWebView:Lcom/android/browser/ui/MiRenWebView;
    if-eqz v0, :cond_0

    .line 844
    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->requestFocus()Z

    .line 845
    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->requestFocusFromTouch()Z

    .line 848
    .end local v0           #currentWebView:Lcom/android/browser/ui/MiRenWebView;
    :cond_0
    return-void
.end method

.method public requestFocusNodeHref(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1156
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    .line 1157
    .local v0, w:Lcom/android/browser/ui/MiRenWebView;
    if-nez v0, :cond_0

    .line 1160
    :goto_0
    return-void

    .line 1159
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/browser/ui/MiRenWebView;->requestFocusNodeHref(Landroid/os/Message;)V

    goto :goto_0
.end method

.method public resetLockIcon(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 929
    iget v0, p0, Lcom/android/browser/controller/Tab;->mLockIconType:I

    iput v0, p0, Lcom/android/browser/controller/Tab;->mPrevLockIconType:I

    .line 930
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/browser/controller/Tab;->mLockIconType:I

    .line 931
    invoke-static {p1}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 932
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/browser/controller/Tab;->mLockIconType:I

    .line 934
    :cond_0
    return-void
.end method

.method public resetTitleAndRevertLockIcon()V
    .locals 1

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->resetTitleAndRevertLockIcon()V

    .line 1699
    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)Z
    .locals 11
    .parameter "b"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v10, "persist_path"

    .line 793
    if-nez p1, :cond_0

    move v7, v8

    .line 834
    :goto_0
    return v7

    .line 798
    :cond_0
    iget-object v6, p0, Lcom/android/browser/controller/Tab;->mOriWebView:Lcom/android/browser/ui/MiRenWebView;

    .line 800
    .local v6, w:Lcom/android/browser/ui/MiRenWebView;
    const-string v7, "current_url"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 801
    .local v3, url:Ljava/lang/String;
    const-string v7, "mode"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 803
    .local v1, mode:I
    if-nez v1, :cond_3

    .line 804
    invoke-virtual {v6, p1}, Lcom/android/browser/ui/MiRenWebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object v7

    if-nez v7, :cond_1

    move v7, v8

    .line 806
    goto :goto_0

    .line 809
    :cond_1
    const-string v7, "persist_path"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 810
    const-string v7, "persist_path"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 811
    .local v2, picPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 813
    .local v0, f:Ljava/io/File;
    invoke-virtual {v6, p1, v0}, Lcom/android/browser/ui/MiRenWebView;->restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z

    .line 814
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 815
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 823
    .end local v0           #f:Ljava/io/File;
    .end local v2           #picPath:Ljava/lang/String;
    :cond_2
    :goto_1
    const-string v7, "view_type"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 824
    .local v5, view_type:I
    const/4 v4, 0x0

    .line 826
    .local v4, view:Landroid/view/View;
    if-ne v5, v9, :cond_4

    .line 827
    iget-object v4, p0, Lcom/android/browser/controller/Tab;->mHomePage:Lcom/android/browser/ui/MiRenHomePageView;

    .line 832
    :goto_2
    invoke-direct {p0, v4}, Lcom/android/browser/controller/Tab;->showView(Landroid/view/View;)V

    .line 833
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/browser/controller/Tab;->mStateToRestore:Landroid/os/Bundle;

    move v7, v9

    .line 834
    goto :goto_0

    .line 819
    .end local v4           #view:Landroid/view/View;
    .end local v5           #view_type:I
    :cond_3
    iput-boolean v8, p0, Lcom/android/browser/controller/Tab;->mAddHistory:Z

    .line 820
    invoke-virtual {v6, v3, v1}, Lcom/android/browser/ui/MiRenWebView;->loadUrlInSpecialMode(Ljava/lang/String;I)V

    goto :goto_1

    .line 829
    .restart local v4       #view:Landroid/view/View;
    .restart local v5       #view_type:I
    :cond_4
    iget-object v4, p0, Lcom/android/browser/controller/Tab;->mOriWebView:Lcom/android/browser/ui/MiRenWebView;

    goto :goto_2
.end method

.method public revertLockIcon()V
    .locals 1

    .prologue
    .line 941
    iget v0, p0, Lcom/android/browser/controller/Tab;->mPrevLockIconType:I

    iput v0, p0, Lcom/android/browser/controller/Tab;->mLockIconType:I

    .line 942
    return-void
.end method

.method public search()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 461
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v4

    .line 462
    .local v4, webview:Lcom/android/browser/ui/MiRenWebViewCore;
    if-eqz v4, :cond_0

    .line 463
    new-instance v6, Lcom/android/browser/ui/FindDialog;

    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-direct {v6, v0}, Lcom/android/browser/ui/FindDialog;-><init>(Landroid/app/Activity;)V

    .line 464
    .local v6, findDialog:Lcom/android/browser/ui/FindDialog;
    invoke-virtual {v6, v4}, Lcom/android/browser/ui/FindDialog;->setWebView(Lcom/android/browser/ui/MiRenWebViewCore;)V

    .line 465
    invoke-virtual {v6}, Lcom/android/browser/ui/FindDialog;->show()V

    .line 466
    sget-object v0, Lcom/android/browser/util/ReflectUtil$LogFlag;->LogError:Lcom/android/browser/util/ReflectUtil$LogFlag;

    const-class v1, Landroid/webkit/WebView;

    const-string v2, "setFindIsUp"

    new-array v3, v7, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v8

    new-array v5, v7, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v5, v8

    invoke-static/range {v0 .. v5}, Lcom/android/browser/util/ReflectUtil;->invokeMethod(Lcom/android/browser/util/ReflectUtil$LogFlag;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    .end local v6           #findDialog:Lcom/android/browser/ui/FindDialog;
    :cond_0
    return-void
.end method

.method public sendNetworkType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "type"
    .parameter "subtype"

    .prologue
    .line 1121
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    .line 1122
    .local v0, w:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 1123
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/controller/Tab;->setNetworkTypeByReflection(Ljava/lang/String;Ljava/lang/String;)V

    .line 1125
    :cond_0
    return-void
.end method

.method public setBookmarkDBId(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 1184
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    .line 1185
    .local v0, w:Lcom/android/browser/ui/MiRenWebView;
    if-nez v0, :cond_0

    .line 1188
    :goto_0
    return-void

    .line 1187
    :cond_0
    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->getReadingModeController()Lcom/android/browser/controller/ReadingModeController;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/browser/controller/ReadingModeController;->setBookmarkDBId(J)V

    goto :goto_0
.end method

.method public setCallingApplicationId(Ljava/lang/String;)V
    .locals 0
    .parameter "callingAppId"

    .prologue
    .line 1592
    iput-object p1, p0, Lcom/android/browser/controller/Tab;->mCallingApplicationId:Ljava/lang/String;

    .line 1593
    return-void
.end method

.method public setHidden()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 1049
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1050
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->getContainer()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0d008e

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1052
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mOriWebView:Lcom/android/browser/ui/MiRenWebView;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->setHiddenViewDrawingMode()V

    .line 1053
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mOriWebView:Lcom/android/browser/ui/MiRenWebView;

    invoke-virtual {v0, v2}, Lcom/android/browser/ui/MiRenWebView;->setVisibility(I)V

    .line 1054
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/controller/Tab;->mIsHidden:Z

    .line 1055
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "host"
    .parameter "realm"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 1107
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    .line 1108
    .local v0, w:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    .line 1109
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebView;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    :cond_0
    return-void
.end method

.method public setNetworkTypeByReflection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "type"
    .parameter "subtype"

    .prologue
    .line 1128
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    .line 1129
    .local v0, w:Lcom/android/browser/ui/MiRenWebView;
    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1132
    :goto_0
    return-void

    .line 1131
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/android/browser/ui/MiRenWebView;->setNetworkType(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setPageDataFinishListener(Lcom/android/browser/controller/Tab$MiRenPageDataFinishListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 1588
    iput-object p1, p0, Lcom/android/browser/controller/Tab;->mListener:Lcom/android/browser/controller/Tab$MiRenPageDataFinishListener;

    .line 1589
    return-void
.end method

.method public setStateToRestore(Landroid/os/Bundle;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 789
    iput-object p1, p0, Lcom/android/browser/controller/Tab;->mStateToRestore:Landroid/os/Bundle;

    .line 790
    return-void
.end method

.method public setUserAgentString(Ljava/lang/String;)V
    .locals 2
    .parameter "value"

    .prologue
    .line 1058
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    .line 1059
    .local v0, w:Lcom/android/browser/ui/MiRenWebView;
    if-nez v0, :cond_0

    .line 1062
    :goto_0
    return-void

    .line 1061
    :cond_0
    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showHttpAuthentication(Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8
    .parameter "handler"
    .parameter "host"
    .parameter "realm"
    .parameter "title"
    .parameter "name"
    .parameter "password"
    .parameter "focusId"

    .prologue
    .line 1568
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/android/browser/ui/MiRenBrowserActivity;->showHttpAuthentication(Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1570
    return-void
.end method

.method public startTextSelection()V
    .locals 4

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    .line 437
    .local v0, w:Lcom/android/browser/ui/MiRenWebView;
    if-nez v0, :cond_0

    .line 442
    :goto_0
    return-void

    .line 440
    :cond_0
    iget-object v1, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    const v2, 0x7f09007b

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 441
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenWebView;->setTextSelectionMode(Z)V

    goto :goto_0
.end method

.method public stopLoading()V
    .locals 2

    .prologue
    .line 411
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->isHidden()Z

    move-result v1

    if-nez v1, :cond_0

    .line 412
    iget-object v1, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->resetTitleAndRevertLockIcon()V

    .line 415
    :cond_0
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    .line 416
    .local v0, w:Lcom/android/browser/ui/MiRenWebView;
    if-eqz v0, :cond_1

    .line 417
    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->stopLoading()V

    .line 420
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->isHidden()Z

    move-result v1

    if-nez v1, :cond_2

    .line 422
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->notifyTabNavigationFinished()V

    .line 424
    :cond_2
    return-void
.end method

.method public switchTab(Z)V
    .locals 1
    .parameter "forward"

    .prologue
    .line 1703
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0, p1}, Lcom/android/browser/ui/MiRenBrowserActivity;->switchBackForwardTab(Z)V

    .line 1704
    return-void
.end method

.method public updateHistory(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 1460
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    .line 1461
    .local v0, w:Lcom/android/browser/ui/MiRenWebView;
    if-nez v0, :cond_0

    .line 1465
    :goto_0
    return-void

    .line 1464
    :cond_0
    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebView;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, p1, v2}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public updateProgress(I)V
    .locals 2
    .parameter "progress"

    .prologue
    .line 1079
    invoke-direct {p0}, Lcom/android/browser/controller/Tab;->getCurrentWebView()Lcom/android/browser/ui/MiRenWebView;

    move-result-object v0

    .line 1080
    .local v0, w:Lcom/android/browser/ui/MiRenWebView;
    if-nez v0, :cond_0

    .line 1085
    :goto_0
    return-void

    .line 1083
    :cond_0
    iget-object v1, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->getFakeTitleView()Lcom/android/browser/ui/TitleView;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/browser/ui/TitleView;->setLoadingProgress(ILcom/android/browser/ui/MiRenWebView;)V

    .line 1084
    invoke-virtual {v0, p1}, Lcom/android/browser/ui/MiRenWebView;->setProgress(I)V

    goto :goto_0
.end method

.method public updateProgress(Landroid/webkit/WebView;I)V
    .locals 2
    .parameter "view"
    .parameter "newProgress"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0, p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->updateTitle(Lcom/android/browser/controller/Tab;)V

    .line 522
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getTabController()Lcom/android/browser/controller/TabController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/browser/controller/TabController;->isCurrentTab(Lcom/android/browser/controller/Tab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 524
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->getLoadedUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mPreDefinedUrlViewMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->getLoadedUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 527
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->updateProgress(I)V

    goto :goto_0

    .line 529
    :cond_2
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0, p2}, Lcom/android/browser/ui/MiRenBrowserActivity;->updateProgress(I)V

    goto :goto_0
.end method

.method public updateTitle()V
    .locals 1

    .prologue
    .line 1574
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0, p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->updateTitle(Lcom/android/browser/controller/Tab;)V

    .line 1575
    return-void
.end method

.method public updateUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 1469
    invoke-virtual {p0}, Lcom/android/browser/controller/Tab;->isCurrent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1470
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mContext:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v0, p1}, Lcom/android/browser/ui/MiRenBrowserActivity;->updateUrl(Ljava/lang/String;)V

    .line 1471
    :cond_0
    return-void
.end method

.method public voiceSearchSourceIsGoogle()Z
    .locals 1

    .prologue
    .line 1724
    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mVoiceSearchData:Lcom/android/browser/controller/Tab$VoiceSearchData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/controller/Tab;->mVoiceSearchData:Lcom/android/browser/controller/Tab$VoiceSearchData;

    iget-boolean v0, v0, Lcom/android/browser/controller/Tab$VoiceSearchData;->mSourceIsGoogle:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
