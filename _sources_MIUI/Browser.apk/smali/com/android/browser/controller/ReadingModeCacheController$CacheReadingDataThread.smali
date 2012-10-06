.class Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;
.super Ljava/lang/Thread;
.source "ReadingModeCacheController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/controller/ReadingModeCacheController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheReadingDataThread"
.end annotation


# instance fields
.field mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

.field private mDelayLoadScript:Ljava/lang/String;

.field private mLoadOriginalPage:Z

.field final synthetic this$0:Lcom/android/browser/controller/ReadingModeCacheController;


# direct methods
.method private constructor <init>(Lcom/android/browser/controller/ReadingModeCacheController;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->this$0:Lcom/android/browser/controller/ReadingModeCacheController;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/controller/ReadingModeCacheController;Lcom/android/browser/controller/ReadingModeCacheController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;-><init>(Lcom/android/browser/controller/ReadingModeCacheController;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->mDelayLoadScript:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->mDelayLoadScript:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;Lcom/android/browser/controller/ReadingModeController$ReadingData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->loadNextPage(Lcom/android/browser/controller/ReadingModeController$ReadingData;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 212
    invoke-direct {p0}, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->startCache()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 212
    iget-boolean v0, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->mLoadOriginalPage:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 212
    iput-boolean p1, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->mLoadOriginalPage:Z

    return p1
.end method

.method private loadNextPage(Lcom/android/browser/controller/ReadingModeController$ReadingData;)V
    .locals 29
    .parameter "data"

    .prologue
    .line 311
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/browser/controller/ReadingModeController$ReadingData;->url:Ljava/lang/String;

    move-object/from16 v23, v0

    .line 312
    .local v23, baseUrl:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/browser/controller/ReadingModeController$ReadingData;->nextLink:Ljava/lang/String;

    move-object/from16 v28, v0

    .line 313
    .local v28, nextUrl:Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->this$0:Lcom/android/browser/controller/ReadingModeCacheController;

    move-object v3, v0

    #getter for: Lcom/android/browser/controller/ReadingModeCacheController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/browser/controller/ReadingModeCacheController;->access$700(Lcom/android/browser/controller/ReadingModeCacheController;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/browser/util/DownloadHelpers;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v26

    .line 317
    .local v26, isWiFiAvailable:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->this$0:Lcom/android/browser/controller/ReadingModeCacheController;

    move-object v3, v0

    #getter for: Lcom/android/browser/controller/ReadingModeCacheController;->mStopped:Z
    invoke-static {v3}, Lcom/android/browser/controller/ReadingModeCacheController;->access$1300(Lcom/android/browser/controller/ReadingModeCacheController;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->this$0:Lcom/android/browser/controller/ReadingModeCacheController;

    move-object v3, v0

    #getter for: Lcom/android/browser/controller/ReadingModeCacheController;->mCachedPageNum:I
    invoke-static {v3}, Lcom/android/browser/controller/ReadingModeCacheController;->access$500(Lcom/android/browser/controller/ReadingModeCacheController;)I

    move-result v3

    const/16 v4, 0x32

    if-ge v3, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->this$0:Lcom/android/browser/controller/ReadingModeCacheController;

    move-object v3, v0

    #getter for: Lcom/android/browser/controller/ReadingModeCacheController;->mPaused:Z
    invoke-static {v3}, Lcom/android/browser/controller/ReadingModeCacheController;->access$400(Lcom/android/browser/controller/ReadingModeCacheController;)Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v26, :cond_3

    .line 324
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->this$0:Lcom/android/browser/controller/ReadingModeCacheController;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p1

    #setter for: Lcom/android/browser/controller/ReadingModeCacheController;->mLastLoadedData:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    invoke-static {v0, v1}, Lcom/android/browser/controller/ReadingModeCacheController;->access$602(Lcom/android/browser/controller/ReadingModeCacheController;Lcom/android/browser/controller/ReadingModeController$ReadingData;)Lcom/android/browser/controller/ReadingModeController$ReadingData;

    goto :goto_0

    .line 329
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->this$0:Lcom/android/browser/controller/ReadingModeCacheController;

    move-object v3, v0

    const/4 v4, 0x0

    #setter for: Lcom/android/browser/controller/ReadingModeCacheController;->mLastLoadedData:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    invoke-static {v3, v4}, Lcom/android/browser/controller/ReadingModeCacheController;->access$602(Lcom/android/browser/controller/ReadingModeCacheController;Lcom/android/browser/controller/ReadingModeController$ReadingData;)Lcom/android/browser/controller/ReadingModeController$ReadingData;

    .line 331
    :try_start_0
    new-instance v22, Ljava/net/URI;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->this$0:Lcom/android/browser/controller/ReadingModeCacheController;

    move-object v3, v0

    #getter for: Lcom/android/browser/controller/ReadingModeCacheController;->mOriUrl:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/browser/controller/ReadingModeCacheController;->access$1200(Lcom/android/browser/controller/ReadingModeCacheController;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v22

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 332
    .local v22, baseUri:Ljava/net/URI;
    new-instance v27, Ljava/net/URI;

    invoke-direct/range {v27 .. v28}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 333
    .local v27, nextUri:Ljava/net/URI;
    invoke-virtual/range {v27 .. v27}, Ljava/net/URI;->isAbsolute()Z

    move-result v3

    if-nez v3, :cond_4

    .line 334
    move-object/from16 v0, v22

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v27

    .line 337
    :cond_4
    invoke-virtual/range {v27 .. v27}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    const-string v4, "javascript"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/MiRenWebViewBase;->loadUrl(Ljava/lang/String;)V

    .line 341
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->mLoadOriginalPage:Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 397
    .end local v22           #baseUri:Ljava/net/URI;
    .end local v27           #nextUri:Ljava/net/URI;
    :catch_0
    move-exception v3

    move-object/from16 v25, v3

    .line 398
    .local v25, e:Ljava/net/URISyntaxException;
    const-string v3, "com.android.browser.controller.ReadingModeCacheController"

    const-string v4, "Parse URI error"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 344
    .end local v25           #e:Ljava/net/URISyntaxException;
    .restart local v22       #baseUri:Ljava/net/URI;
    .restart local v27       #nextUri:Ljava/net/URI;
    :cond_5
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->this$0:Lcom/android/browser/controller/ReadingModeCacheController;

    move-object v3, v0

    #getter for: Lcom/android/browser/controller/ReadingModeCacheController;->mRule:Lcom/android/browser/model/ReadingModeRuleProvider$Rule;
    invoke-static {v3}, Lcom/android/browser/controller/ReadingModeCacheController;->access$1100(Lcom/android/browser/controller/ReadingModeCacheController;)Lcom/android/browser/model/ReadingModeRuleProvider$Rule;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/browser/model/ReadingModeRuleProvider$Rule;->isWapSite:Z
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_a

    .line 348
    :try_start_2
    invoke-virtual/range {v27 .. v27}, Ljava/net/URI;->toURL()Ljava/net/URL;
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v4

    .line 350
    .local v4, url:Ljava/net/URL;
    const/4 v12, 0x0

    .line 351
    .local v12, responseStream:Ljava/io/InputStream;
    const/16 v24, 0x0

    .line 353
    .local v24, bos:Ljava/io/ByteArrayOutputStream;
    :try_start_3
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v3

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 354
    .local v7, cookie:Ljava/lang/String;
    new-instance v9, Lcom/android/browser/common/Network$HttpHeaderInfo;

    invoke-direct {v9}, Lcom/android/browser/common/Network$HttpHeaderInfo;-><init>()V

    .line 355
    .local v9, info:Lcom/android/browser/common/Network$HttpHeaderInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->this$0:Lcom/android/browser/controller/ReadingModeCacheController;

    move-object v3, v0

    #getter for: Lcom/android/browser/controller/ReadingModeCacheController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/browser/controller/ReadingModeCacheController;->access$700(Lcom/android/browser/controller/ReadingModeCacheController;)Landroid/content/Context;

    move-result-object v3

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->this$0:Lcom/android/browser/controller/ReadingModeCacheController;

    move-object v6, v0

    #getter for: Lcom/android/browser/controller/ReadingModeCacheController;->mUserAgent:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/browser/controller/ReadingModeCacheController;->access$1400(Lcom/android/browser/controller/ReadingModeCacheController;)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v9}, Lcom/android/browser/common/Network;->downloadXmlAsStream(Landroid/content/Context;Ljava/net/URL;ZLjava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/android/browser/common/Network$HttpHeaderInfo;)Ljava/io/InputStream;

    move-result-object v12

    .line 356
    iget-object v3, v9, Lcom/android/browser/common/Network$HttpHeaderInfo;->ContentType:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/browser/common/Network;->getCharsetFromContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 357
    .local v15, charset:Ljava/lang/String;
    new-instance v13, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v13}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_7

    .line 358
    .end local v24           #bos:Ljava/io/ByteArrayOutputStream;
    .local v13, bos:Ljava/io/ByteArrayOutputStream;
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->this$0:Lcom/android/browser/controller/ReadingModeCacheController;

    move-object v3, v0

    #getter for: Lcom/android/browser/controller/ReadingModeCacheController;->mWmlParser:Lcom/android/browser/util/WMLParserSax;
    invoke-static {v3}, Lcom/android/browser/controller/ReadingModeCacheController;->access$1500(Lcom/android/browser/controller/ReadingModeCacheController;)Lcom/android/browser/util/WMLParserSax;

    move-result-object v3

    if-nez v3, :cond_6

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->this$0:Lcom/android/browser/controller/ReadingModeCacheController;

    move-object v3, v0

    new-instance v5, Lcom/android/browser/util/WMLParserSax;

    invoke-direct {v5}, Lcom/android/browser/util/WMLParserSax;-><init>()V

    #setter for: Lcom/android/browser/controller/ReadingModeCacheController;->mWmlParser:Lcom/android/browser/util/WMLParserSax;
    invoke-static {v3, v5}, Lcom/android/browser/controller/ReadingModeCacheController;->access$1502(Lcom/android/browser/controller/ReadingModeCacheController;Lcom/android/browser/util/WMLParserSax;)Lcom/android/browser/util/WMLParserSax;

    .line 361
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->this$0:Lcom/android/browser/controller/ReadingModeCacheController;

    move-object v3, v0

    #getter for: Lcom/android/browser/controller/ReadingModeCacheController;->mWmlParser:Lcom/android/browser/util/WMLParserSax;
    invoke-static {v3}, Lcom/android/browser/controller/ReadingModeCacheController;->access$1500(Lcom/android/browser/controller/ReadingModeCacheController;)Lcom/android/browser/util/WMLParserSax;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->this$0:Lcom/android/browser/controller/ReadingModeCacheController;

    move-object v3, v0

    #getter for: Lcom/android/browser/controller/ReadingModeCacheController;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/browser/controller/ReadingModeCacheController;->access$700(Lcom/android/browser/controller/ReadingModeCacheController;)Landroid/content/Context;

    move-result-object v11

    const/4 v14, 0x0

    invoke-virtual/range {v10 .. v15}, Lcom/android/browser/util/WMLParserSax;->parseWML(Landroid/content/Context;Ljava/io/InputStream;Ljava/io/ByteArrayOutputStream;Lcom/android/browser/util/WMLParserSax$ProgressListener;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_c
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_a

    .line 371
    if-eqz v12, :cond_7

    .line 373
    :try_start_5
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_0

    .line 380
    .end local v7           #cookie:Ljava/lang/String;
    .end local v9           #info:Lcom/android/browser/common/Network$HttpHeaderInfo;
    .end local v15           #charset:Ljava/lang/String;
    :cond_7
    :goto_1
    if-nez v13, :cond_9

    .line 382
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->this$0:Lcom/android/browser/controller/ReadingModeCacheController;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->this$0:Lcom/android/browser/controller/ReadingModeCacheController;

    move-object v4, v0

    .end local v4           #url:Ljava/net/URL;
    #getter for: Lcom/android/browser/controller/ReadingModeCacheController;->mDataProvider:Lcom/android/browser/model/ReadingModePageDataProvider;
    invoke-static {v4}, Lcom/android/browser/controller/ReadingModeCacheController;->access$800(Lcom/android/browser/controller/ReadingModeCacheController;)Lcom/android/browser/model/ReadingModePageDataProvider;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/browser/controller/ReadingModeCacheController;->onReadingDataReady(Lcom/android/browser/model/ReadingModePageDataProvider;Z)V
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .line 390
    .end local v12           #responseStream:Ljava/io/InputStream;
    .end local v13           #bos:Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v3

    move-object/from16 v25, v3

    .line 391
    .local v25, e:Ljava/net/MalformedURLException;
    :try_start_7
    const-string v3, "com.android.browser.controller.ReadingModeCacheController"

    const-string v4, "URL is not valid"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 374
    .end local v25           #e:Ljava/net/MalformedURLException;
    .restart local v4       #url:Ljava/net/URL;
    .restart local v7       #cookie:Ljava/lang/String;
    .restart local v9       #info:Lcom/android/browser/common/Network$HttpHeaderInfo;
    .restart local v12       #responseStream:Ljava/io/InputStream;
    .restart local v13       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v15       #charset:Ljava/lang/String;
    :catch_2
    move-exception v25

    .line 375
    .local v25, e:Ljava/io/IOException;
    :try_start_8
    const-string v3, "com.android.browser.controller.ReadingModeCacheController"

    const-string v5, "error to close stream:"

    move-object v0, v3

    move-object v1, v5

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_1

    .line 363
    .end local v7           #cookie:Ljava/lang/String;
    .end local v9           #info:Lcom/android/browser/common/Network$HttpHeaderInfo;
    .end local v13           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v15           #charset:Ljava/lang/String;
    .end local v25           #e:Ljava/io/IOException;
    .restart local v24       #bos:Ljava/io/ByteArrayOutputStream;
    :catch_3
    move-exception v3

    move-object/from16 v25, v3

    move-object/from16 v13, v24

    .line 364
    .end local v24           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v13       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v25       #e:Ljava/io/IOException;
    :goto_2
    :try_start_9
    const-string v3, "com.android.browser.controller.ReadingModeCacheController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load wap site error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 371
    if-eqz v12, :cond_7

    .line 373
    :try_start_a
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/net/MalformedURLException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_1

    .line 374
    :catch_4
    move-exception v25

    .line 375
    :try_start_b
    const-string v3, "com.android.browser.controller.ReadingModeCacheController"

    const-string v5, "error to close stream:"

    move-object v0, v3

    move-object v1, v5

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catch Ljava/net/MalformedURLException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_b .. :try_end_b} :catch_0

    goto :goto_1

    .line 365
    .end local v13           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v25           #e:Ljava/io/IOException;
    .restart local v24       #bos:Ljava/io/ByteArrayOutputStream;
    :catch_5
    move-exception v3

    move-object/from16 v25, v3

    move-object/from16 v13, v24

    .line 366
    .end local v24           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v13       #bos:Ljava/io/ByteArrayOutputStream;
    .local v25, e:Ljavax/xml/parsers/ParserConfigurationException;
    :goto_3
    :try_start_c
    const-string v3, "com.android.browser.controller.ReadingModeCacheController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load wap site error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 371
    if-eqz v12, :cond_7

    .line 373
    :try_start_d
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/net/MalformedURLException; {:try_start_d .. :try_end_d} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_d .. :try_end_d} :catch_0

    goto/16 :goto_1

    .line 374
    :catch_6
    move-exception v25

    .line 375
    .local v25, e:Ljava/io/IOException;
    :try_start_e
    const-string v3, "com.android.browser.controller.ReadingModeCacheController"

    const-string v5, "error to close stream:"

    move-object v0, v3

    move-object v1, v5

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e
    .catch Ljava/net/MalformedURLException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_e .. :try_end_e} :catch_0

    goto/16 :goto_1

    .line 367
    .end local v13           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v25           #e:Ljava/io/IOException;
    .restart local v24       #bos:Ljava/io/ByteArrayOutputStream;
    :catch_7
    move-exception v3

    move-object/from16 v25, v3

    move-object/from16 v13, v24

    .line 368
    .end local v24           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v13       #bos:Ljava/io/ByteArrayOutputStream;
    .local v25, e:Lorg/xml/sax/SAXException;
    :goto_4
    :try_start_f
    const-string v3, "com.android.browser.controller.ReadingModeCacheController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "load wap site error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 371
    if-eqz v12, :cond_7

    .line 373
    :try_start_10
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8
    .catch Ljava/net/MalformedURLException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_10 .. :try_end_10} :catch_0

    goto/16 :goto_1

    .line 374
    :catch_8
    move-exception v25

    .line 375
    .local v25, e:Ljava/io/IOException;
    :try_start_11
    const-string v3, "com.android.browser.controller.ReadingModeCacheController"

    const-string v5, "error to close stream:"

    move-object v0, v3

    move-object v1, v5

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_11
    .catch Ljava/net/MalformedURLException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_11 .. :try_end_11} :catch_0

    goto/16 :goto_1

    .line 371
    .end local v13           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v25           #e:Ljava/io/IOException;
    .restart local v24       #bos:Ljava/io/ByteArrayOutputStream;
    :catchall_0
    move-exception v3

    move-object/from16 v13, v24

    .end local v24           #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v13       #bos:Ljava/io/ByteArrayOutputStream;
    :goto_5
    if-eqz v12, :cond_8

    .line 373
    :try_start_12
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9
    .catch Ljava/net/MalformedURLException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_12 .. :try_end_12} :catch_0

    .line 376
    .end local v4           #url:Ljava/net/URL;
    :cond_8
    :goto_6
    :try_start_13
    throw v3

    .line 374
    .restart local v4       #url:Ljava/net/URL;
    :catch_9
    move-exception v25

    .line 375
    .restart local v25       #e:Ljava/io/IOException;
    const-string v4, "com.android.browser.controller.ReadingModeCacheController"

    .end local v4           #url:Ljava/net/URL;
    const-string v5, "error to close stream:"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 385
    .end local v25           #e:Ljava/io/IOException;
    .restart local v4       #url:Ljava/net/URL;
    :cond_9
    invoke-virtual {v13}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v18

    .line 386
    .local v18, wapHtml:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    move-object v3, v0

    if-eqz v3, :cond_0

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    move-object/from16 v16, v0

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v19, "text/html"

    const-string v20, "utf-8"

    invoke-virtual {v4}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v16 .. v21}, Lcom/android/browser/ui/MiRenWebViewBase;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/net/MalformedURLException; {:try_start_13 .. :try_end_13} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_13 .. :try_end_13} :catch_0

    goto/16 :goto_0

    .line 395
    .end local v4           #url:Ljava/net/URL;
    .end local v12           #responseStream:Ljava/io/InputStream;
    .end local v13           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v18           #wapHtml:Ljava/lang/String;
    :cond_a
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    move-object v3, v0

    invoke-virtual/range {v27 .. v27}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/browser/ui/MiRenWebViewBase;->loadUrl(Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/net/URISyntaxException; {:try_start_14 .. :try_end_14} :catch_0

    goto/16 :goto_0

    .line 371
    .restart local v4       #url:Ljava/net/URL;
    .restart local v12       #responseStream:Ljava/io/InputStream;
    .restart local v13       #bos:Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v3

    goto :goto_5

    .line 367
    .restart local v7       #cookie:Ljava/lang/String;
    .restart local v9       #info:Lcom/android/browser/common/Network$HttpHeaderInfo;
    .restart local v15       #charset:Ljava/lang/String;
    :catch_a
    move-exception v3

    move-object/from16 v25, v3

    goto :goto_4

    .line 365
    :catch_b
    move-exception v3

    move-object/from16 v25, v3

    goto/16 :goto_3

    .line 363
    :catch_c
    move-exception v3

    move-object/from16 v25, v3

    goto/16 :goto_2
.end method

.method private startCache()V
    .locals 3

    .prologue
    .line 269
    iget-object v1, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-virtual {v1}, Lcom/android/browser/ui/MiRenWebViewBase;->destroy()V

    .line 272
    :cond_0
    new-instance v1, Lcom/android/browser/ui/MiRenWebViewBase;

    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->this$0:Lcom/android/browser/controller/ReadingModeCacheController;

    #getter for: Lcom/android/browser/controller/ReadingModeCacheController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/browser/controller/ReadingModeCacheController;->access$700(Lcom/android/browser/controller/ReadingModeCacheController;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/browser/ui/MiRenWebViewBase;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    .line 273
    iget-object v1, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->this$0:Lcom/android/browser/controller/ReadingModeCacheController;

    #getter for: Lcom/android/browser/controller/ReadingModeCacheController;->mDataProvider:Lcom/android/browser/model/ReadingModePageDataProvider;
    invoke-static {v1}, Lcom/android/browser/controller/ReadingModeCacheController;->access$800(Lcom/android/browser/controller/ReadingModeCacheController;)Lcom/android/browser/model/ReadingModePageDataProvider;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-virtual {v1, v2}, Lcom/android/browser/model/ReadingModePageDataProvider;->init(Lcom/android/browser/ui/MiRenWebViewBase;)V

    .line 274
    iget-object v1, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-virtual {v1}, Lcom/android/browser/ui/MiRenWebViewBase;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 275
    iget-object v1, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    invoke-virtual {v1}, Lcom/android/browser/ui/MiRenWebViewBase;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLoadsImagesAutomatically(Z)V

    .line 276
    iget-object v1, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->mBackgroundView:Lcom/android/browser/ui/MiRenWebViewBase;

    new-instance v2, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread$2;

    invoke-direct {v2, p0}, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread$2;-><init>(Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;)V

    invoke-virtual {v1, v2}, Lcom/android/browser/ui/MiRenWebViewBase;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 303
    new-instance v0, Lcom/android/browser/controller/ReadingModeController$ReadingData;

    invoke-direct {v0}, Lcom/android/browser/controller/ReadingModeController$ReadingData;-><init>()V

    .line 304
    .local v0, data:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    iget-object v1, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->this$0:Lcom/android/browser/controller/ReadingModeCacheController;

    #getter for: Lcom/android/browser/controller/ReadingModeCacheController;->mOriUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/browser/controller/ReadingModeCacheController;->access$1200(Lcom/android/browser/controller/ReadingModeCacheController;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/browser/controller/ReadingModeController$ReadingData;->url:Ljava/lang/String;

    .line 305
    iget-object v1, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->this$0:Lcom/android/browser/controller/ReadingModeCacheController;

    #getter for: Lcom/android/browser/controller/ReadingModeCacheController;->mOriUrl:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/browser/controller/ReadingModeCacheController;->access$1200(Lcom/android/browser/controller/ReadingModeCacheController;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/browser/controller/ReadingModeController$ReadingData;->nextLink:Ljava/lang/String;

    .line 306
    invoke-direct {p0, v0}, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->loadNextPage(Lcom/android/browser/controller/ReadingModeController$ReadingData;)V

    .line 307
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 219
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 221
    iget-object v0, p0, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;->this$0:Lcom/android/browser/controller/ReadingModeCacheController;

    new-instance v1, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread$1;

    invoke-direct {v1, p0}, Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread$1;-><init>(Lcom/android/browser/controller/ReadingModeCacheController$CacheReadingDataThread;)V

    #setter for: Lcom/android/browser/controller/ReadingModeCacheController;->mChildHandler:Landroid/os/Handler;
    invoke-static {v0, v1}, Lcom/android/browser/controller/ReadingModeCacheController;->access$102(Lcom/android/browser/controller/ReadingModeCacheController;Landroid/os/Handler;)Landroid/os/Handler;

    .line 265
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 266
    return-void
.end method
