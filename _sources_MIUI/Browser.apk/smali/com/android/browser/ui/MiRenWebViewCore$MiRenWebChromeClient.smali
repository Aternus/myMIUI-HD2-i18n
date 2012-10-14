.class Lcom/android/browser/ui/MiRenWebViewCore$MiRenWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "MiRenWebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/ui/MiRenWebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MiRenWebChromeClient"
.end annotation


# static fields
.field private static final CONSOLE_LOG_TAG:Ljava/lang/String; = "browser/Console"


# instance fields
.field final synthetic this$0:Lcom/android/browser/ui/MiRenWebViewCore;


# direct methods
.method private constructor <init>(Lcom/android/browser/ui/MiRenWebViewCore;)V
    .locals 0
    .parameter

    .prologue
    .line 1750
    iput-object p1, p0, Lcom/android/browser/ui/MiRenWebViewCore$MiRenWebChromeClient;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/ui/MiRenWebViewCore;Lcom/android/browser/ui/MiRenWebViewCore$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1750
    invoke-direct {p0, p1}, Lcom/android/browser/ui/MiRenWebViewCore$MiRenWebChromeClient;-><init>(Lcom/android/browser/ui/MiRenWebViewCore;)V

    return-void
.end method


# virtual methods
.method public getDefaultVideoPoster()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 1853
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$MiRenWebChromeClient;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    iget-object v0, v0, Lcom/android/browser/ui/MiRenWebViewCore;->mWebListener:Lcom/android/browser/ui/MiRenWebViewListener;

    invoke-interface {v0}, Lcom/android/browser/ui/MiRenWebViewListener;->getDefaultVideoPoster()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getVideoLoadingProgressView()Landroid/view/View;
    .locals 1

    .prologue
    .line 1861
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$MiRenWebChromeClient;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    iget-object v0, v0, Lcom/android/browser/ui/MiRenWebViewCore;->mWebListener:Lcom/android/browser/ui/MiRenWebViewListener;

    invoke-interface {v0}, Lcom/android/browser/ui/MiRenWebViewListener;->getVideoLoadingProgressView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onConsoleMessage(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .parameter "msg"
    .parameter "lineNumber"
    .parameter "sourceID"

    .prologue
    .line 1871
    const-string v1, "Console: %s %s:%d"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1872
    .local v0, message:Ljava/lang/String;
    const-string v1, "browser/Console"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    return-void
.end method

.method public onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z
    .locals 1
    .parameter "view"
    .parameter "dialog"
    .parameter "userGesture"
    .parameter "resultMsg"

    .prologue
    .line 1754
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$MiRenWebChromeClient;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    iget-object v0, v0, Lcom/android/browser/ui/MiRenWebViewCore;->mWebListener:Lcom/android/browser/ui/MiRenWebViewListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/browser/ui/MiRenWebViewListener;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result v0

    return v0
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 10
    .parameter "url"
    .parameter "databaseIdentifier"
    .parameter "currentQuota"
    .parameter "estimatedSize"
    .parameter "totalUsedQuota"
    .parameter "quotaUpdater"

    .prologue
    .line 1815
    invoke-super/range {p0 .. p9}, Landroid/webkit/WebChromeClient;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 1817
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/controller/BrowserSettings;->getWebStorageSizeManager()Lcom/android/browser/controller/WebStorageSizeManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/browser/controller/WebStorageSizeManager;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 1820
    return-void
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 1

    .prologue
    .line 1844
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$MiRenWebChromeClient;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    iget-object v0, v0, Lcom/android/browser/ui/MiRenWebViewCore;->mWebListener:Lcom/android/browser/ui/MiRenWebViewListener;

    invoke-interface {v0}, Lcom/android/browser/ui/MiRenWebViewListener;->onGeolocationPermissionsHidePrompt()V

    .line 1845
    return-void
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 1
    .parameter "origin"
    .parameter "callback"

    .prologue
    .line 1836
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$MiRenWebChromeClient;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    iget-object v0, v0, Lcom/android/browser/ui/MiRenWebViewCore;->mWebListener:Lcom/android/browser/ui/MiRenWebViewListener;

    invoke-interface {v0, p1, p2}, Lcom/android/browser/ui/MiRenWebViewListener;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 1837
    return-void
.end method

.method public onHideCustomView()V
    .locals 1

    .prologue
    .line 1880
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$MiRenWebChromeClient;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    iget-object v0, v0, Lcom/android/browser/ui/MiRenWebViewCore;->mWebListener:Lcom/android/browser/ui/MiRenWebViewListener;

    invoke-interface {v0}, Lcom/android/browser/ui/MiRenWebViewListener;->onHideCustomView()V

    .line 1881
    return-void
.end method

.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 1
    .parameter "view"
    .parameter "newProgress"

    .prologue
    .line 1759
    const/16 v0, 0x64

    if-ne p2, v0, :cond_0

    .line 1761
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 1764
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$MiRenWebChromeClient;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    iget-object v0, v0, Lcom/android/browser/ui/MiRenWebViewCore;->mWebListener:Lcom/android/browser/ui/MiRenWebViewListener;

    invoke-interface {v0, p1, p2}, Lcom/android/browser/ui/MiRenWebViewListener;->updateProgress(Landroid/webkit/WebView;I)V

    .line 1765
    return-void
.end method

.method public onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "view"
    .parameter "icon"

    .prologue
    .line 1792
    if-eqz p2, :cond_0

    .line 1793
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$MiRenWebChromeClient;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    iget-object v0, v0, Lcom/android/browser/ui/MiRenWebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, p2}, Lcom/android/browser/api_v8/BrowserBookmarksAdapter;->updateBookmarkFavicon(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 1799
    :cond_0
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4
    .parameter "view"
    .parameter "title"

    .prologue
    .line 1769
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1788
    :goto_0
    return-void

    .line 1772
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/browser/api_v8/BrowserBookmarksAdapter;->fixHistoryUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1773
    .local v1, url:Ljava/lang/String;
    move-object v0, p2

    .line 1774
    .local v0, newTitle:Ljava/lang/String;
    new-instance v2, Lcom/android/browser/ui/MiRenWebViewCore$MiRenWebChromeClient$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/browser/ui/MiRenWebViewCore$MiRenWebChromeClient$1;-><init>(Lcom/android/browser/ui/MiRenWebViewCore$MiRenWebChromeClient;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/browser/ui/MiRenWebViewCore$MiRenWebChromeClient$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public onRequestFocus(Landroid/webkit/WebView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1806
    invoke-super {p0, p1}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V

    .line 1807
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$MiRenWebChromeClient;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    iget-object v0, v0, Lcom/android/browser/ui/MiRenWebViewCore;->mWebListener:Lcom/android/browser/ui/MiRenWebViewListener;

    invoke-interface {v0, p1}, Lcom/android/browser/ui/MiRenWebViewListener;->onRequestFocus(Landroid/webkit/WebView;)V

    .line 1808
    return-void
.end method

.method public onSelectionStart(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 1895
    return-void
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 1
    .parameter "view"
    .parameter "callback"

    .prologue
    .line 1888
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$MiRenWebChromeClient;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    iget-object v0, v0, Lcom/android/browser/ui/MiRenWebViewCore;->mWebListener:Lcom/android/browser/ui/MiRenWebViewListener;

    invoke-interface {v0, p1, p2}, Lcom/android/browser/ui/MiRenWebViewListener;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V

    .line 1889
    return-void
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
    .line 1823
    .local p1, uploadMsg:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<Landroid/net/Uri;>;"
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$MiRenWebChromeClient;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    iget-object v0, v0, Lcom/android/browser/ui/MiRenWebViewCore;->mWebListener:Lcom/android/browser/ui/MiRenWebViewListener;

    invoke-interface {v0, p1}, Lcom/android/browser/ui/MiRenWebViewListener;->openFileChooser(Landroid/webkit/ValueCallback;)V

    .line 1824
    return-void
.end method
