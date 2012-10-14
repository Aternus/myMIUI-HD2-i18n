.class public Lcom/android/browser/controller/SimpleModeController;
.super Ljava/lang/Object;
.source "SimpleModeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/controller/SimpleModeController$SimpleModeJSInterface;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "com.android.browser.controller.SimpleModeController"

.field private static final NOT_AVAILABLE_INDETIFIER:Ljava/lang/String; = "\u7f51\u5740\u65e0\u6cd5\u8bbf\u95ee"

.field private static final sUrlPattern:Ljava/lang/String; = "http://m.baidu.com/ssid=0/from=0/bd_page_type=1/uid=frontui_1281662228_1477/pu=pd%401%2Csz%40176_208%2Cusm%403/t=wap/tc?src="


# instance fields
.field private mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

.field private mFirstPage:Z

.field private mNotAvailable:Z

.field private mOriUrl:Ljava/lang/String;

.field private mTargetUrl:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mWebView:Lcom/android/browser/ui/MiRenWebViewCore;


# direct methods
.method public constructor <init>(Lcom/android/browser/ui/MiRenWebViewCore;)V
    .locals 0
    .parameter "miRenWebViewCore"

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/browser/controller/SimpleModeController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/controller/SimpleModeController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/android/browser/controller/SimpleModeController;->mFirstPage:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/browser/controller/SimpleModeController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/android/browser/controller/SimpleModeController;->mFirstPage:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/browser/controller/SimpleModeController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/browser/controller/SimpleModeController;->mTargetUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/browser/controller/SimpleModeController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/android/browser/controller/SimpleModeController;->mTargetUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/browser/controller/SimpleModeController;)Lcom/android/browser/ui/MiRenWebViewCore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/browser/controller/SimpleModeController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/browser/controller/SimpleModeController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/browser/controller/SimpleModeController;->mOriUrl:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/browser/controller/SimpleModeController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/android/browser/controller/SimpleModeController;->mNotAvailable:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/browser/controller/SimpleModeController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/android/browser/controller/SimpleModeController;->mNotAvailable:Z

    return p1
.end method

.method static synthetic access$502(Lcom/android/browser/controller/SimpleModeController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-object p1, p0, Lcom/android/browser/controller/SimpleModeController;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/browser/controller/SimpleModeController;)Lcom/android/browser/ui/MiRenWebViewBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/browser/controller/SimpleModeController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/browser/controller/SimpleModeController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/browser/controller/SimpleModeController;->showFooter()V

    return-void
.end method

.method public static getSimpleModeProxyDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "m.baidu.com"

    return-object v0
.end method

.method private showFooter()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/browser/controller/SimpleModeController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    const-string v1, "showFooter();"

    invoke-static {v0, v1}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;)V

    .line 156
    return-void
.end method


# virtual methods
.method public Navigate(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/controller/SimpleModeController;->mFirstPage:Z

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/controller/SimpleModeController;->mNotAvailable:Z

    .line 76
    iget-object v0, p0, Lcom/android/browser/controller/SimpleModeController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    if-nez v0, :cond_1

    .line 77
    iget-object v0, p0, Lcom/android/browser/controller/SimpleModeController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-static {v0}, Lcom/android/browser/util/MiRenWebViewUtils;->createBackgroundWebView(Lcom/android/browser/ui/MiRenWebViewCore;)Lcom/android/browser/ui/MiRenWebViewBase;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/controller/SimpleModeController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    .line 78
    iget-object v0, p0, Lcom/android/browser/controller/SimpleModeController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    if-nez v0, :cond_0

    .line 152
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/browser/controller/SimpleModeController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    new-instance v1, Lcom/android/browser/controller/SimpleModeController$1;

    invoke-direct {v1, p0}, Lcom/android/browser/controller/SimpleModeController$1;-><init>(Lcom/android/browser/controller/SimpleModeController;)V

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenWebViewBase;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 115
    iget-object v0, p0, Lcom/android/browser/controller/SimpleModeController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    new-instance v1, Lcom/android/browser/controller/SimpleModeController$2;

    invoke-direct {v1, p0}, Lcom/android/browser/controller/SimpleModeController$2;-><init>(Lcom/android/browser/controller/SimpleModeController;)V

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenWebViewBase;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 144
    iget-object v0, p0, Lcom/android/browser/controller/SimpleModeController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    new-instance v1, Lcom/android/browser/controller/SimpleModeController$SimpleModeJSInterface;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/browser/controller/SimpleModeController$SimpleModeJSInterface;-><init>(Lcom/android/browser/controller/SimpleModeController;Lcom/android/browser/controller/SimpleModeController$1;)V

    const-string v2, "simple"

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/ui/MiRenWebViewBase;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 147
    :cond_1
    iput-object p1, p0, Lcom/android/browser/controller/SimpleModeController;->mOriUrl:Ljava/lang/String;

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://m.baidu.com/ssid=0/from=0/bd_page_type=1/uid=frontui_1281662228_1477/pu=pd%401%2Csz%40176_208%2Cusm%403/t=wap/tc?src="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/controller/SimpleModeController;->mTargetUrl:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/android/browser/controller/SimpleModeController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBaseUrl(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/controller/SimpleModeController;->mTargetUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/android/browser/controller/SimpleModeController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    iget-object v1, p0, Lcom/android/browser/controller/SimpleModeController;->mTargetUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenWebViewBase;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public appendPageContent(Ljava/lang/String;)V
    .locals 3
    .parameter "content"

    .prologue
    .line 41
    invoke-static {p1}, Lcom/android/browser/util/JavaScriptUtils;->preprocessJSParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v1, "appendContent(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\');"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v1, p0, Lcom/android/browser/controller/SimpleModeController;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/browser/util/JavaScriptUtils;->executeJSCode(Lcom/android/browser/ui/MiRenWebViewBase;Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public detectContent()V
    .locals 4

    .prologue
    .line 50
    const/4 v1, 0x2

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "js/xpath.js"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "js/simple_mode.js"

    aput-object v2, v0, v1

    .line 51
    .local v0, files:[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/browser/controller/SimpleModeController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    const-string v2, "detectSimpleData"

    const-string v3, ""

    invoke-static {v1, v0, v2, v3}, Lcom/android/browser/util/JavaScriptUtils;->callJSFunctionFromMultipleAssets(Lcom/android/browser/ui/MiRenWebViewBase;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public getRealUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/browser/controller/SimpleModeController;->mTargetUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/browser/controller/SimpleModeController;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/browser/controller/SimpleModeController;->mOriUrl:Ljava/lang/String;

    return-object v0
.end method

.method public onWebViewDestroy()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/browser/controller/SimpleModeController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/android/browser/controller/SimpleModeController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-virtual {v0}, Lcom/android/browser/ui/MiRenWebViewBase;->destroy()V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/browser/controller/SimpleModeController;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    .line 71
    :cond_0
    return-void
.end method
