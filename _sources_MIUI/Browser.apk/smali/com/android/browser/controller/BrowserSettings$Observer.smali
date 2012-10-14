.class public Lcom/android/browser/controller/BrowserSettings$Observer;
.super Ljava/lang/Object;
.source "BrowserSettings.java"

# interfaces
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/controller/BrowserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Observer"
.end annotation


# instance fields
.field protected mWebView:Lcom/android/browser/ui/MiRenWebViewCore;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/MiRenWebViewCore;)V
    .locals 1
    .parameter "webView"

    .prologue
    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    sget-object v0, Lcom/android/browser/controller/BrowserSettings;->DEFAULT_USERAGENT:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 295
    invoke-virtual {p1}, Lcom/android/browser/ui/MiRenWebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/browser/controller/BrowserSettings;->DEFAULT_USERAGENT:Ljava/lang/String;

    .line 297
    :cond_0
    iput-object p1, p0, Lcom/android/browser/controller/BrowserSettings$Observer;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    .line 298
    return-void
.end method


# virtual methods
.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 7
    .parameter "o"
    .parameter "arg"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 301
    iget-object v3, p0, Lcom/android/browser/controller/BrowserSettings$Observer;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/browser/controller/BrowserSettings$Observer;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v3}, Lcom/android/browser/ui/MiRenWebViewCore;->isDestroyed()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 356
    :cond_0
    :goto_0
    return-void

    .line 303
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/browser/controller/BrowserSettings;

    move-object v1, v0

    .line 304
    .local v1, b:Lcom/android/browser/controller/BrowserSettings;
    iget-object v3, p0, Lcom/android/browser/controller/BrowserSettings$Observer;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v3}, Lcom/android/browser/ui/MiRenWebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    .line 306
    .local v2, s:Landroid/webkit/WebSettings;
    invoke-virtual {v1, v2}, Lcom/android/browser/controller/BrowserSettings;->setFlashSupport(Landroid/webkit/WebSettings;)V

    .line 307
    iget-object v3, v1, Lcom/android/browser/controller/BrowserSettings;->layoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 308
    iget-object v3, v1, Lcom/android/browser/controller/BrowserSettings;->userAgentString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 309
    iget-boolean v3, v1, Lcom/android/browser/controller/BrowserSettings;->useWideViewPort:Z

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 310
    iget-object v3, v1, Lcom/android/browser/controller/BrowserSettings;->loadsImagesChoice:Lcom/android/browser/controller/BrowserSettings$LoadImageModeOption;

    sget-object v4, Lcom/android/browser/controller/BrowserSettings$LoadImageModeOption;->LOAD_IMAGE_MODE_OFF:Lcom/android/browser/controller/BrowserSettings$LoadImageModeOption;

    if-ne v3, v4, :cond_3

    .line 311
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    .line 315
    :cond_2
    :goto_1
    iget-boolean v3, v1, Lcom/android/browser/controller/BrowserSettings;->javaScriptEnabled:Z

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 317
    iget-boolean v3, v1, Lcom/android/browser/controller/BrowserSettings;->javaScriptCanOpenWindowsAutomatically:Z

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 319
    iget-object v3, v1, Lcom/android/browser/controller/BrowserSettings;->defaultTextEncodingName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 320
    sget v3, Lcom/android/browser/controller/BrowserSettings;->minimumFontSize:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumFontSize(I)V

    .line 321
    sget v3, Lcom/android/browser/controller/BrowserSettings;->minimumLogicalFontSize:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setMinimumLogicalFontSize(I)V

    .line 322
    sget v3, Lcom/android/browser/controller/BrowserSettings;->defaultFontSize:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    .line 323
    sget v3, Lcom/android/browser/controller/BrowserSettings;->defaultFixedFontSize:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultFixedFontSize(I)V

    .line 324
    iget-boolean v3, v1, Lcom/android/browser/controller/BrowserSettings;->navDump:Z

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setNavDump(Z)V

    .line 325
    iget-object v3, v1, Lcom/android/browser/controller/BrowserSettings;->defaultTextEncodingName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultTextEncodingName(Ljava/lang/String;)V

    .line 327
    iget-object v3, p0, Lcom/android/browser/controller/BrowserSettings$Observer;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    sget-object v4, Lcom/android/browser/controller/BrowserSettings;->textSize:Landroid/webkit/WebSettings$TextSize;

    invoke-virtual {v3, v4}, Lcom/android/browser/ui/MiRenWebViewCore;->onTextSizeSettingChange(Landroid/webkit/WebSettings$TextSize;)V

    .line 328
    iget-object v3, p0, Lcom/android/browser/controller/BrowserSettings$Observer;->mWebView:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v3}, Lcom/android/browser/ui/MiRenWebViewCore;->onNightModeSettingChange()V

    .line 330
    sget-object v3, Lcom/android/browser/controller/BrowserSettings;->zoomDensity:Landroid/webkit/WebSettings$ZoomDensity;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V

    .line 331
    iget-boolean v3, v1, Lcom/android/browser/controller/BrowserSettings;->lightTouch:Z

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLightTouchEnabled(Z)V

    .line 332
    iget-boolean v3, v1, Lcom/android/browser/controller/BrowserSettings;->saveFormData:Z

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 333
    iget-boolean v3, v1, Lcom/android/browser/controller/BrowserSettings;->rememberPasswords:Z

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 336
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setNeedInitialFocus(Z)V

    .line 338
    invoke-virtual {v2, v6}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 343
    sget v3, Lcom/android/browser/controller/BrowserSettings;->pageCacheCapacity:I

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setPageCacheCapacity(I)V

    .line 345
    iget-boolean v3, v1, Lcom/android/browser/controller/BrowserSettings;->loadsPageInOverviewMode:Z

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 347
    iget-boolean v3, v1, Lcom/android/browser/controller/BrowserSettings;->appCacheEnabled:Z

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 348
    iget-boolean v3, v1, Lcom/android/browser/controller/BrowserSettings;->databaseEnabled:Z

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 349
    iget-boolean v3, v1, Lcom/android/browser/controller/BrowserSettings;->domStorageEnabled:Z

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 350
    iget-boolean v3, v1, Lcom/android/browser/controller/BrowserSettings;->geolocationEnabled:Z

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 352
    iget-wide v3, v1, Lcom/android/browser/controller/BrowserSettings;->appCacheMaxSize:J

    invoke-virtual {v2, v3, v4}, Landroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 353
    iget-object v3, v1, Lcom/android/browser/controller/BrowserSettings;->appCachePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 354
    iget-object v3, v1, Lcom/android/browser/controller/BrowserSettings;->databasePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 355
    iget-object v3, v1, Lcom/android/browser/controller/BrowserSettings;->geolocationDatabasePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 312
    :cond_3
    iget-object v3, v1, Lcom/android/browser/controller/BrowserSettings;->loadsImagesChoice:Lcom/android/browser/controller/BrowserSettings$LoadImageModeOption;

    sget-object v4, Lcom/android/browser/controller/BrowserSettings$LoadImageModeOption;->LOAD_IMAGE_MODE_ON:Lcom/android/browser/controller/BrowserSettings$LoadImageModeOption;

    if-ne v3, v4, :cond_2

    .line 313
    invoke-virtual {v2, v5}, Landroid/webkit/WebSettings;->setBlockNetworkImage(Z)V

    goto/16 :goto_1
.end method
