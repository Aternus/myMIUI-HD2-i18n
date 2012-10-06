.class public Lcom/android/browser/ui/WebViewHolderActivity;
.super Landroid/app/Activity;
.source "WebViewHolderActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/ui/WebViewHolderActivity$SetAsWallpaper;,
        Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;,
        Lcom/android/browser/ui/WebViewHolderActivity$Download;,
        Lcom/android/browser/ui/WebViewHolderActivity$Share;,
        Lcom/android/browser/ui/WebViewHolderActivity$Copy;
    }
.end annotation


# static fields
.field static final FILE_SELECTED:I = 0x4

.field private static final LOG_TAG:Ljava/lang/String; = "com.android.browser.ui.WebViewHolderActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 412
    return-void
.end method

.method static synthetic access$000(Lcom/android/browser/ui/WebViewHolderActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/android/browser/common/FileNameUtils$UriAndFileName;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 51
    invoke-direct/range {p0 .. p7}, Lcom/android/browser/ui/WebViewHolderActivity;->performDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/android/browser/common/FileNameUtils$UriAndFileName;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/browser/ui/WebViewHolderActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/browser/ui/WebViewHolderActivity;->guessImageFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private guessImageFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .parameter "url"
    .parameter "contentDisposition"
    .parameter "mimetype"

    .prologue
    .line 180
    invoke-static/range {p1 .. p3}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 183
    .local v10, ret:Ljava/lang/String;
    const-string v11, ".bin"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_0

    move-object v11, v10

    .line 209
    :goto_0
    return-object v11

    .line 187
    :cond_0
    const/4 v5, 0x0

    .line 188
    .local v5, filename:Ljava/lang/String;
    const/4 v3, 0x0

    .line 190
    .local v3, extension:Ljava/lang/String;
    invoke-static {p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, durl:Ljava/lang/String;
    const/4 v7, -0x1

    .line 192
    .local v7, index:I
    const/4 v11, 0x5

    new-array v4, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, ".jpg"

    aput-object v12, v4, v11

    const/4 v11, 0x1

    const-string v12, ".jpeg"

    aput-object v12, v4, v11

    const/4 v11, 0x2

    const-string v12, ".gif"

    aput-object v12, v4, v11

    const/4 v11, 0x3

    const-string v12, ".png"

    aput-object v12, v4, v11

    const/4 v11, 0x4

    const-string v12, ".bmp"

    aput-object v12, v4, v11

    .line 193
    .local v4, exts:[Ljava/lang/String;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/String;
    array-length v9, v0

    .local v9, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_1
    if-ge v6, v9, :cond_1

    aget-object v2, v0, v6

    .line 194
    .local v2, ext:Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 195
    const/4 v11, -0x1

    if-eq v7, v11, :cond_3

    .line 196
    move-object v3, v2

    .line 200
    .end local v2           #ext:Ljava/lang/String;
    :cond_1
    const/4 v11, -0x1

    if-eq v7, v11, :cond_2

    if-eqz v3, :cond_2

    .line 201
    const/4 v11, 0x0

    invoke-virtual {v1, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const-string v12, "/"

    invoke-virtual {v11, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    .line 202
    .local v8, index0:I
    const/4 v11, -0x1

    if-eq v8, v11, :cond_2

    .line 203
    add-int/lit8 v11, v8, 0x1

    invoke-virtual {v1, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 206
    .end local v8           #index0:I
    :cond_2
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_4

    .line 207
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 193
    .restart local v2       #ext:Ljava/lang/String;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v2           #ext:Ljava/lang/String;
    :cond_4
    move-object v11, v10

    .line 209
    goto :goto_0
.end method

.method private hasDownloadedBefore(Ljava/lang/String;)Z
    .locals 11
    .parameter "uri"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v0, "status"

    const-string v0, "_data"

    .line 303
    const/4 v6, 0x0

    .line 305
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Lcom/android/browser/ui/WebViewHolderActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "status"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "_data"

    aput-object v4, v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " (uri == \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\') "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 308
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    const-string v0, "status"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v8

    .line 310
    .local v8, status:I
    sparse-switch v8, :sswitch_data_0

    .line 325
    .end local v8           #status:I
    :cond_0
    if-eqz v6, :cond_1

    .line 326
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    move v0, v10

    .line 329
    :goto_1
    return v0

    .line 325
    .restart local v8       #status:I
    :sswitch_0
    if-eqz v6, :cond_2

    .line 326
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move v0, v9

    goto :goto_1

    .line 315
    :sswitch_1
    :try_start_1
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 316
    .local v7, file:Ljava/lang/String;
    if-eqz v7, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 325
    if-eqz v6, :cond_3

    .line 326
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    move v0, v9

    goto :goto_1

    .line 322
    .end local v7           #file:Ljava/lang/String;
    .end local v8           #status:I
    :catch_0
    move-exception v0

    .line 325
    if-eqz v6, :cond_1

    .line 326
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 325
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_4

    .line 326
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 310
    :sswitch_data_0
    .sparse-switch
        0xbe -> :sswitch_0
        0xc0 -> :sswitch_0
        0xc8 -> :sswitch_1
    .end sparse-switch
.end method

.method private performDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/android/browser/common/FileNameUtils$UriAndFileName;)V
    .locals 6
    .parameter "url"
    .parameter "userAgent"
    .parameter "mimetype"
    .parameter "filename"
    .parameter "contentLength"
    .parameter "uriAndFileName"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 275
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, cookies:Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 278
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "uri"

    iget-object v3, p7, Lcom/android/browser/common/FileNameUtils$UriAndFileName;->Uri:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v2, "cookiedata"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v2, "useragent"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v2, "notificationpackage"

    invoke-virtual {p0}, Lcom/android/browser/ui/WebViewHolderActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v2, "notificationclass"

    const-class v3, Lcom/android/browser/ui/OpenDownloadReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v2, "visibility"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 285
    const-string v2, "mimetype"

    invoke-virtual {v1, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v2, "title"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v2, "hint"

    invoke-virtual {v1, v2, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v2, "description"

    iget-object v3, p7, Lcom/android/browser/common/FileNameUtils$UriAndFileName;->Uri:Ljava/net/URI;

    invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-lez v2, :cond_0

    .line 290
    const-string v2, "total_bytes"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 292
    :cond_0
    if-nez p3, :cond_1

    .line 295
    new-instance v2, Lcom/android/browser/api_v8/FetchUrlMimeType;

    invoke-direct {v2, p0}, Lcom/android/browser/api_v8/FetchUrlMimeType;-><init>(Landroid/app/Activity;)V

    new-array v3, v5, [Landroid/content/ContentValues;

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/browser/api_v8/FetchUrlMimeType;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 299
    :goto_0
    const v2, 0x7f090078

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 300
    return-void

    .line 297
    :cond_1
    invoke-virtual {p0}, Lcom/android/browser/ui/WebViewHolderActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method


# virtual methods
.method protected copy(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 359
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/android/browser/ui/WebViewHolderActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/text/ClipboardManager;

    invoke-virtual {p0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 360
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 18
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 61
    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/webkit/WebView;

    move v13, v0

    if-nez v13, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 65
    :cond_1
    move-object/from16 v0, p2

    check-cast v0, Landroid/webkit/WebView;

    move-object v12, v0

    .line 66
    .local v12, webview:Landroid/webkit/WebView;
    invoke-virtual {v12}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v7

    .line 67
    .local v7, result:Landroid/webkit/WebView$HitTestResult;
    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/WebViewHolderActivity;->shouldShowContextMenu(Landroid/webkit/WebView$HitTestResult;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 71
    invoke-virtual {v7}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v11

    .line 72
    .local v11, type:I
    if-nez v11, :cond_2

    .line 73
    const-string v13, "com.android.browser.ui.WebViewHolderActivity"

    const-string v14, "We should not show context menu when nothing is touched"

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 76
    :cond_2
    const/16 v13, 0x9

    if-eq v11, v13, :cond_0

    .line 84
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/ui/WebViewHolderActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v5

    .line 85
    .local v5, inflater:Landroid/view/MenuInflater;
    const v13, 0x7f0c0001

    move-object v0, v5

    move v1, v13

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 88
    invoke-virtual {v7}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, extra:Ljava/lang/String;
    const v13, 0x7f0d0098

    const/4 v14, 0x2

    if-ne v11, v14, :cond_5

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p1

    move v1, v13

    move v2, v14

    invoke-interface {v0, v1, v2}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 90
    const v13, 0x7f0d009c

    const/4 v14, 0x4

    if-ne v11, v14, :cond_6

    const/4 v14, 0x1

    :goto_2
    move-object/from16 v0, p1

    move v1, v13

    move v2, v14

    invoke-interface {v0, v1, v2}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 91
    const v13, 0x7f0d009f

    const/4 v14, 0x3

    if-ne v11, v14, :cond_7

    const/4 v14, 0x1

    :goto_3
    move-object/from16 v0, p1

    move v1, v13

    move v2, v14

    invoke-interface {v0, v1, v2}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 92
    const v13, 0x7f0d00aa

    const/4 v14, 0x5

    if-eq v11, v14, :cond_3

    const/16 v14, 0x8

    if-ne v11, v14, :cond_8

    :cond_3
    const/4 v14, 0x1

    :goto_4
    move-object/from16 v0, p1

    move v1, v13

    move v2, v14

    invoke-interface {v0, v1, v2}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 94
    const v13, 0x7f0d00a2

    const/4 v14, 0x7

    if-eq v11, v14, :cond_4

    const/16 v14, 0x8

    if-ne v11, v14, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/ui/WebViewHolderActivity;->shouldShowLinkOptionsForImageAnchor()Z

    move-result v14

    if-eqz v14, :cond_9

    :cond_4
    const/4 v14, 0x1

    :goto_5
    move-object/from16 v0, p1

    move v1, v13

    move v2, v14

    invoke-interface {v0, v1, v2}, Landroid/view/ContextMenu;->setGroupVisible(IZ)V

    .line 99
    packed-switch v11, :pswitch_data_0

    .line 158
    :pswitch_0
    const-string v13, "com.android.browser.ui.WebViewHolderActivity"

    const-string v14, "We should not get here."

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 89
    :cond_5
    const/4 v14, 0x0

    goto :goto_1

    .line 90
    :cond_6
    const/4 v14, 0x0

    goto :goto_2

    .line 91
    :cond_7
    const/4 v14, 0x0

    goto :goto_3

    .line 92
    :cond_8
    const/4 v14, 0x0

    goto :goto_4

    .line 94
    :cond_9
    const/4 v14, 0x0

    goto :goto_5

    .line 101
    :pswitch_1
    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 102
    const v13, 0x7f0d0099

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.intent.action.VIEW"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "tel:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 104
    new-instance v3, Landroid/content/Intent;

    const-string v13, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v3, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 105
    .local v3, addIntent:Landroid/content/Intent;
    const-string v13, "phone"

    invoke-static {v4}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 106
    const-string v13, "vnd.android.cursor.item/contact"

    invoke-virtual {v3, v13}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const v13, 0x7f0d009a

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    invoke-interface {v13, v3}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 108
    const v13, 0x7f0d009b

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    new-instance v14, Lcom/android/browser/ui/WebViewHolderActivity$Copy;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/browser/ui/WebViewHolderActivity$Copy;-><init>(Lcom/android/browser/ui/WebViewHolderActivity;Ljava/lang/CharSequence;)V

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 112
    .end local v3           #addIntent:Landroid/content/Intent;
    :pswitch_2
    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 113
    const v13, 0x7f0d009d

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.intent.action.VIEW"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "mailto:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 115
    const v13, 0x7f0d009e

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    new-instance v14, Lcom/android/browser/ui/WebViewHolderActivity$Copy;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/browser/ui/WebViewHolderActivity$Copy;-><init>(Lcom/android/browser/ui/WebViewHolderActivity;Ljava/lang/CharSequence;)V

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 119
    :pswitch_3
    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 120
    const v13, 0x7f0d00a0

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.intent.action.VIEW"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "geo:0,0?q="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 122
    const v13, 0x7f0d00a1

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    new-instance v14, Lcom/android/browser/ui/WebViewHolderActivity$Copy;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/browser/ui/WebViewHolderActivity$Copy;-><init>(Lcom/android/browser/ui/WebViewHolderActivity;Ljava/lang/CharSequence;)V

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 127
    :pswitch_4
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v13

    const v14, 0x109000e

    const/4 v15, 0x0

    invoke-virtual {v13, v14, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 129
    .local v10, titleView:Landroid/widget/TextView;
    invoke-virtual {v10, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    move-object/from16 v0, p1

    move-object v1, v10

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderView(Landroid/view/View;)Landroid/view/ContextMenu;

    .line 132
    const v13, 0x7f0d00a4

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 134
    const v13, 0x7f0d00a5

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 135
    const v13, 0x7f0d00a6

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    invoke-static {v4}, Lcom/android/browser/api_v8/Bookmarks;->urlHasAcceptableScheme(Ljava/lang/String;)Z

    move-result v14

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/android/browser/ui/WebViewHolderActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 137
    .local v6, pm:Landroid/content/pm/PackageManager;
    new-instance v9, Landroid/content/Intent;

    const-string v13, "android.intent.action.SEND"

    invoke-direct {v9, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v9, send:Landroid/content/Intent;
    const-string v13, "text/plain"

    invoke-virtual {v9, v13}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const/high16 v13, 0x1

    invoke-virtual {v6, v9, v13}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v8

    .line 140
    .local v8, ri:Landroid/content/pm/ResolveInfo;
    const v13, 0x7f0d00a8

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    if-eqz v8, :cond_b

    const/4 v14, 0x1

    :goto_6
    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 142
    const/4 v13, 0x7

    if-eq v11, v13, :cond_0

    .line 147
    .end local v6           #pm:Landroid/content/pm/PackageManager;
    .end local v8           #ri:Landroid/content/pm/ResolveInfo;
    .end local v9           #send:Landroid/content/Intent;
    .end local v10           #titleView:Landroid/widget/TextView;
    :pswitch_5
    const/4 v13, 0x5

    if-ne v11, v13, :cond_a

    .line 148
    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 150
    :cond_a
    const v13, 0x7f0d00ad

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    new-instance v14, Landroid/content/Intent;

    const-string v15, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    invoke-direct/range {v14 .. v16}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 151
    const v13, 0x7f0d00ab

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    new-instance v14, Lcom/android/browser/ui/WebViewHolderActivity$Download;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/browser/ui/WebViewHolderActivity$Download;-><init>(Lcom/android/browser/ui/WebViewHolderActivity;Ljava/lang/String;)V

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 152
    const v13, 0x7f0d00ac

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    new-instance v14, Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/browser/ui/WebViewHolderActivity$DownloadAs;-><init>(Lcom/android/browser/ui/WebViewHolderActivity;Ljava/lang/String;)V

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 153
    const v13, 0x7f0d00af

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    new-instance v14, Lcom/android/browser/ui/WebViewHolderActivity$SetAsWallpaper;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/browser/ui/WebViewHolderActivity$SetAsWallpaper;-><init>(Lcom/android/browser/ui/WebViewHolderActivity;Ljava/lang/String;)V

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 154
    const v13, 0x7f0d00ae

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v13

    new-instance v14, Lcom/android/browser/ui/WebViewHolderActivity$Share;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/browser/ui/WebViewHolderActivity$Share;-><init>(Lcom/android/browser/ui/WebViewHolderActivity;Ljava/lang/CharSequence;)V

    invoke-interface {v13, v14}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 140
    .restart local v6       #pm:Landroid/content/pm/PackageManager;
    .restart local v8       #ri:Landroid/content/pm/ResolveInfo;
    .restart local v9       #send:Landroid/content/Intent;
    .restart local v10       #titleView:Landroid/widget/TextView;
    :cond_b
    const/4 v14, 0x0

    goto/16 :goto_6

    .line 99
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method onDownloadImageStartNoStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimetype"
    .parameter "contentLength"

    .prologue
    .line 175
    invoke-direct {p0, p1, p3, p4}, Lcom/android/browser/ui/WebViewHolderActivity;->guessImageFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, filename:Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    .line 176
    invoke-virtual/range {v0 .. v7}, Lcom/android/browser/ui/WebViewHolderActivity;->onDownloadStartNoStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 177
    return-void
.end method

.method onDownloadStartNoStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 8
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimetype"
    .parameter "contentLength"

    .prologue
    .line 215
    invoke-static {p1, p3, p4}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, filename:Ljava/lang/String;
    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-wide v6, p5

    .line 216
    invoke-virtual/range {v0 .. v7}, Lcom/android/browser/ui/WebViewHolderActivity;->onDownloadStartNoStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 217
    return-void
.end method

.method onDownloadStartNoStream(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 12
    .parameter "url"
    .parameter "filename"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimetype"
    .parameter "contentLength"

    .prologue
    .line 225
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v10

    .line 226
    .local v10, status:Ljava/lang/String;
    const-string v0, "mounted"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 231
    const-string v0, "shared"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    const v0, 0x7f090083

    invoke-virtual {p0, v0}, Lcom/android/browser/ui/WebViewHolderActivity;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 233
    .local v9, msg:Ljava/lang/String;
    const v11, 0x7f090082

    .line 239
    .local v11, title:I
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v11}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09000f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 267
    .end local v9           #msg:Ljava/lang/String;
    .end local v10           #status:Ljava/lang/String;
    .end local v11           #title:I
    :cond_0
    :goto_1
    return-void

    .line 235
    .restart local v10       #status:Ljava/lang/String;
    :cond_1
    const v0, 0x7f090081

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/ui/WebViewHolderActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 236
    .restart local v9       #msg:Ljava/lang/String;
    const v11, 0x7f090080

    .restart local v11       #title:I
    goto :goto_0

    .line 244
    .end local v9           #msg:Ljava/lang/String;
    .end local v11           #title:I
    :cond_2
    invoke-static {p1}, Lcom/android/browser/common/FileNameUtils;->guessFileName(Ljava/lang/String;)Lcom/android/browser/common/FileNameUtils$UriAndFileName;

    move-result-object v8

    .line 246
    .local v8, uriAndFileName:Lcom/android/browser/common/FileNameUtils$UriAndFileName;
    if-eqz v8, :cond_0

    .line 251
    iget-object v0, v8, Lcom/android/browser/common/FileNameUtils$UriAndFileName;->Uri:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/browser/ui/WebViewHolderActivity;->hasDownloadedBefore(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 252
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09011a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    const v10, 0x104000a

    new-instance v0, Lcom/android/browser/ui/WebViewHolderActivity$1;

    .end local v10           #status:Ljava/lang/String;
    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object/from16 v4, p5

    move-object v5, p2

    move-wide/from16 v6, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/browser/ui/WebViewHolderActivity$1;-><init>(Lcom/android/browser/ui/WebViewHolderActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/android/browser/common/FileNameUtils$UriAndFileName;)V

    invoke-virtual {v9, v10, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .restart local v10       #status:Ljava/lang/String;
    :cond_3
    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object/from16 v4, p5

    move-object v5, p2

    move-wide/from16 v6, p6

    .line 266
    invoke-direct/range {v1 .. v8}, Lcom/android/browser/ui/WebViewHolderActivity;->performDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/android/browser/common/FileNameUtils$UriAndFileName;)V

    goto :goto_1
.end method

.method public openFileChooser(Ljava/lang/Object;)V
    .locals 3
    .parameter "uploadMsg"

    .prologue
    .line 503
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 504
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.intent.category.OPENABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 505
    const-string v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 506
    const v1, 0x7f09009e

    invoke-virtual {p0, v1}, Lcom/android/browser/ui/WebViewHolderActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Lcom/android/browser/ui/WebViewHolderActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 508
    return-void
.end method

.method protected shouldShowContextMenu(Landroid/webkit/WebView$HitTestResult;)Z
    .locals 1
    .parameter "r"

    .prologue
    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method protected shouldShowLinkOptionsForImageAnchor()Z
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x1

    return v0
.end method
