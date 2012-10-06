.class Lcom/android/browser/ui/MiRenWebViewCore$5;
.super Landroid/webkit/WebViewClient;
.source "MiRenWebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/ui/MiRenWebViewCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mDontResend:Landroid/os/Message;

.field private mResend:Landroid/os/Message;

.field final synthetic this$0:Lcom/android/browser/ui/MiRenWebViewCore;


# direct methods
.method constructor <init>(Lcom/android/browser/ui/MiRenWebViewCore;)V
    .locals 0
    .parameter

    .prologue
    .line 1294
    iput-object p1, p0, Lcom/android/browser/ui/MiRenWebViewCore$5;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/browser/ui/MiRenWebViewCore$5;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$5;->mDontResend:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/browser/ui/MiRenWebViewCore$5;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1294
    iput-object p1, p0, Lcom/android/browser/ui/MiRenWebViewCore$5;->mDontResend:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/browser/ui/MiRenWebViewCore$5;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1294
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$5;->mResend:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/browser/ui/MiRenWebViewCore$5;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1294
    iput-object p1, p0, Lcom/android/browser/ui/MiRenWebViewCore$5;->mResend:Landroid/os/Message;

    return-object p1
.end method


# virtual methods
.method public doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V
    .locals 11
    .parameter "view"
    .parameter "url"
    .parameter "isReload"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1571
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1608
    :cond_0
    :goto_0
    return-void

    .line 1574
    :cond_1
    const-string v4, "about:"

    const/4 v6, 0x6

    move-object v1, p2

    move v5, v3

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v4, "miui:"

    const/4 v6, 0x5

    move-object v1, p2

    move v5, v3

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v4, "javascript:"

    const/16 v6, 0xb

    move-object v1, p2

    move v5, v3

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1579
    if-eqz p1, :cond_0

    .line 1581
    invoke-static {p2}, Lcom/android/browser/api_v8/BrowserBookmarksAdapter;->fixHistoryUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1582
    move-object v0, p1

    check-cast v0, Lcom/android/browser/ui/MiRenWebViewCore;

    move-object v6, v0

    .line 1583
    .local v6, webView:Lcom/android/browser/ui/MiRenWebViewCore;
    invoke-virtual {v6}, Lcom/android/browser/ui/MiRenWebViewCore;->getMode()I

    move-result v10

    .line 1584
    .local v10, mode:I
    iget-object v1, p0, Lcom/android/browser/ui/MiRenWebViewCore$5;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    iget-object v1, v1, Lcom/android/browser/ui/MiRenWebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1586
    .local v7, cr:Landroid/content/ContentResolver;
    if-ne v10, v2, :cond_2

    .line 1587
    move-object v0, p1

    check-cast v0, Lcom/android/browser/ui/MiRenWebViewCore;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/android/browser/ui/MiRenWebViewCore;->getLoadedUrl()Ljava/lang/String;

    move-result-object v8

    .line 1590
    .local v8, newUrl:Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v9

    .line 1591
    .local v9, title:Ljava/lang/String;
    new-instance v4, Lcom/android/browser/ui/MiRenWebViewCore$5$4;

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/browser/ui/MiRenWebViewCore$5$4;-><init>(Lcom/android/browser/ui/MiRenWebViewCore$5;Lcom/android/browser/ui/MiRenWebViewCore;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)V

    new-array v1, v3, [Ljava/lang/Void;

    invoke-virtual {v4, v1}, Lcom/android/browser/ui/MiRenWebViewCore$5$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1607
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/webkit/WebIconDatabase;->retainIconForPageUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 1589
    .end local v8           #newUrl:Ljava/lang/String;
    .end local v9           #title:Ljava/lang/String;
    :cond_2
    move-object v8, p2

    .restart local v8       #newUrl:Ljava/lang/String;
    goto :goto_1
.end method

.method public onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 3
    .parameter "view"
    .parameter "dontResend"
    .parameter "resend"

    .prologue
    .line 1517
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$5;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    iget-object v0, v0, Lcom/android/browser/ui/MiRenWebViewCore;->mWebListener:Lcom/android/browser/ui/MiRenWebViewListener;

    invoke-interface {v0}, Lcom/android/browser/ui/MiRenWebViewListener;->isCurrent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$5;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    iget-object v0, v0, Lcom/android/browser/ui/MiRenWebViewCore;->mWebListener:Lcom/android/browser/ui/MiRenWebViewListener;

    invoke-interface {v0, p1}, Lcom/android/browser/ui/MiRenWebViewListener;->isViewVisible(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1518
    :cond_0
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1561
    :goto_0
    return-void

    .line 1521
    :cond_1
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$5;->mDontResend:Landroid/os/Message;

    if-eqz v0, :cond_2

    .line 1522
    const-string v0, "com.android.browser.ui.MiRenWebViewCore"

    const-string v1, "onFormResubmission should not be called again while dialog is still up"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 1527
    :cond_2
    iput-object p2, p0, Lcom/android/browser/ui/MiRenWebViewCore$5;->mDontResend:Landroid/os/Message;

    .line 1528
    iput-object p3, p0, Lcom/android/browser/ui/MiRenWebViewCore$5;->mResend:Landroid/os/Message;

    .line 1529
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/browser/ui/MiRenWebViewCore$5;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    iget-object v1, v1, Lcom/android/browser/ui/MiRenWebViewCore;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090103

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090104

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090011

    new-instance v2, Lcom/android/browser/ui/MiRenWebViewCore$5$3;

    invoke-direct {v2, p0}, Lcom/android/browser/ui/MiRenWebViewCore$5$3;-><init>(Lcom/android/browser/ui/MiRenWebViewCore$5;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090012

    new-instance v2, Lcom/android/browser/ui/MiRenWebViewCore$5$2;

    invoke-direct {v2, p0}, Lcom/android/browser/ui/MiRenWebViewCore$5$2;-><init>(Lcom/android/browser/ui/MiRenWebViewCore$5;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/browser/ui/MiRenWebViewCore$5$1;

    invoke-direct {v1, p0}, Lcom/android/browser/ui/MiRenWebViewCore$5$1;-><init>(Lcom/android/browser/ui/MiRenWebViewCore$5;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 1475
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$5;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    iget-object v0, v0, Lcom/android/browser/ui/MiRenWebViewCore;->mWebListener:Lcom/android/browser/ui/MiRenWebViewListener;

    invoke-interface {v0, p1, p2}, Lcom/android/browser/ui/MiRenWebViewListener;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1476
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 1324
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1328
    :goto_0
    return-void

    .line 1327
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$5;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v0, p2}, Lcom/android/browser/ui/MiRenWebViewCore;->notifyPageFinished(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    const/4 v2, 0x0

    .line 1300
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1320
    :cond_0
    :goto_0
    return-void

    .line 1303
    :cond_1
    invoke-static {p2}, Lcom/android/browser/util/MiRenWebViewUtils;->isBrowserHandledMimeType(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1304
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$5;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    const/4 v1, 0x1

    #setter for: Lcom/android/browser/ui/MiRenWebViewCore;->mLoadingUnhandledUrl:Z
    invoke-static {v0, v1}, Lcom/android/browser/ui/MiRenWebViewCore;->access$302(Lcom/android/browser/ui/MiRenWebViewCore;Z)Z

    .line 1310
    :goto_1
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$5;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v0, p2}, Lcom/android/browser/ui/MiRenWebViewCore;->setUrl(Ljava/lang/String;)V

    .line 1312
    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->resetSync()V

    .line 1314
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$5;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    invoke-virtual {v0, p1, p2}, Lcom/android/browser/ui/MiRenWebViewCore;->notifyPageStarted(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 1317
    if-eqz p3, :cond_0

    .line 1318
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$5;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    iget-object v0, v0, Lcom/android/browser/ui/MiRenWebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, p3, v2}, Lcom/android/browser/api_v8/BrowserBookmarksAdapter;->updateBookmarkFavicon(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Z)V

    goto :goto_0

    .line 1307
    :cond_2
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$5;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    #setter for: Lcom/android/browser/ui/MiRenWebViewCore;->mLoadingUnhandledUrl:Z
    invoke-static {v0, v2}, Lcom/android/browser/ui/MiRenWebViewCore;->access$302(Lcom/android/browser/ui/MiRenWebViewCore;Z)Z

    goto :goto_1
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    const-string v3, " "

    .line 1494
    const/4 v0, -0x2

    if-eq p2, v0, :cond_0

    const/4 v0, -0x6

    if-eq p2, v0, :cond_0

    const/16 v0, -0xc

    if-eq p2, v0, :cond_0

    const/16 v0, -0xa

    if-eq p2, v0, :cond_0

    const/16 v0, -0xd

    if-eq p2, v0, :cond_0

    .line 1499
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$5;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    #calls: Lcom/android/browser/ui/MiRenWebViewCore;->queueError(ILjava/lang/String;)V
    invoke-static {v0, p2, p3}, Lcom/android/browser/ui/MiRenWebViewCore;->access$600(Lcom/android/browser/ui/MiRenWebViewCore;ILjava/lang/String;)V

    .line 1501
    :cond_0
    const-string v0, "com.android.browser.ui.MiRenWebViewCore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceivedError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$5;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    iget-object v0, v0, Lcom/android/browser/ui/MiRenWebViewCore;->mWebListener:Lcom/android/browser/ui/MiRenWebViewListener;

    invoke-interface {v0}, Lcom/android/browser/ui/MiRenWebViewListener;->isCurrent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1506
    iget-object v0, p0, Lcom/android/browser/ui/MiRenWebViewCore$5;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    iget-object v0, v0, Lcom/android/browser/ui/MiRenWebViewCore;->mWebListener:Lcom/android/browser/ui/MiRenWebViewListener;

    invoke-interface {v0}, Lcom/android/browser/ui/MiRenWebViewListener;->resetTitleAndRevertLockIcon()V

    .line 1508
    :cond_1
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .parameter "view"
    .parameter "handler"
    .parameter "host"
    .parameter "realm"

    .prologue
    .line 1715
    const/4 v14, 0x0

    .line 1716
    .local v14, username:Ljava/lang/String;
    const/4 v12, 0x0

    .line 1718
    .local v12, password:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/webkit/HttpAuthHandler;->useHttpAuthUsernamePassword()Z

    move-result v13

    .line 1721
    .local v13, reuseHttpAuthUsernamePassword:Z
    if-eqz v13, :cond_0

    if-eqz p1, :cond_0

    .line 1722
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1724
    .local v11, credentials:[Ljava/lang/String;
    if-eqz v11, :cond_0

    array-length v3, v11

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 1725
    const/4 v3, 0x0

    aget-object v14, v11, v3

    .line 1726
    const/4 v3, 0x1

    aget-object v12, v11, v3

    .line 1730
    .end local v11           #credentials:[Ljava/lang/String;
    :cond_0
    if-eqz v14, :cond_1

    if-eqz v12, :cond_1

    .line 1731
    move-object/from16 v0, p2

    move-object v1, v14

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/webkit/HttpAuthHandler;->proceed(Ljava/lang/String;Ljava/lang/String;)V

    .line 1739
    :goto_0
    return-void

    .line 1733
    :cond_1
    iget-object v3, p0, Lcom/android/browser/ui/MiRenWebViewCore$5;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    iget-object v3, v3, Lcom/android/browser/ui/MiRenWebViewCore;->mWebListener:Lcom/android/browser/ui/MiRenWebViewListener;

    invoke-interface {v3}, Lcom/android/browser/ui/MiRenWebViewListener;->isCurrent()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1734
    iget-object v3, p0, Lcom/android/browser/ui/MiRenWebViewCore$5;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    iget-object v3, v3, Lcom/android/browser/ui/MiRenWebViewCore;->mWebListener:Lcom/android/browser/ui/MiRenWebViewListener;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    invoke-interface/range {v3 .. v10}, Lcom/android/browser/ui/MiRenWebViewListener;->showHttpAuthentication(Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_0

    .line 1736
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/webkit/HttpAuthHandler;->cancel()V

    goto :goto_0
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 9
    .parameter "view"
    .parameter "handler"
    .parameter "error"

    .prologue
    const v8, 0x7f0d0061

    const v7, 0x7f03001a

    const/4 v6, 0x0

    .line 1626
    iget-object v4, p0, Lcom/android/browser/ui/MiRenWebViewCore$5;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    iget-object v4, v4, Lcom/android/browser/ui/MiRenWebViewCore;->mWebListener:Lcom/android/browser/ui/MiRenWebViewListener;

    invoke-interface {v4}, Lcom/android/browser/ui/MiRenWebViewListener;->isCurrent()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1627
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 1702
    :goto_0
    return-void

    .line 1630
    :cond_0
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/controller/BrowserSettings;->showSecurityWarnings()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1631
    iget-object v4, p0, Lcom/android/browser/ui/MiRenWebViewCore$5;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    iget-object v4, v4, Lcom/android/browser/ui/MiRenWebViewCore;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1633
    .local v0, factory:Landroid/view/LayoutInflater;
    const v4, 0x7f03001b

    invoke-virtual {v0, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1635
    .local v3, warningsView:Landroid/view/View;
    const v4, 0x7f0d004c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1638
    .local v2, placeholder:Landroid/widget/LinearLayout;
    const/4 v4, 0x3

    invoke-virtual {p3, v4}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1639
    invoke-virtual {v0, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1641
    .local v1, ll:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0900a6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1643
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1646
    .end local v1           #ll:Landroid/widget/LinearLayout;
    :cond_1
    const/4 v4, 0x2

    invoke-virtual {p3, v4}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1647
    invoke-virtual {v0, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1649
    .restart local v1       #ll:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0900a7

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1651
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1654
    .end local v1           #ll:Landroid/widget/LinearLayout;
    :cond_2
    const/4 v4, 0x1

    invoke-virtual {p3, v4}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1655
    invoke-virtual {v0, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1657
    .restart local v1       #ll:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0900a8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1659
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1662
    .end local v1           #ll:Landroid/widget/LinearLayout;
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {p3, v4}, Landroid/net/http/SslError;->hasError(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1663
    invoke-virtual {v0, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1665
    .restart local v1       #ll:Landroid/widget/LinearLayout;
    invoke-virtual {v1, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0900a9

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 1667
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1670
    .end local v1           #ll:Landroid/widget/LinearLayout;
    :cond_4
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/android/browser/ui/MiRenWebViewCore$5;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    iget-object v5, v5, Lcom/android/browser/ui/MiRenWebViewCore;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f0900a4

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0900a3

    new-instance v6, Lcom/android/browser/ui/MiRenWebViewCore$5$8;

    invoke-direct {v6, p0, p2}, Lcom/android/browser/ui/MiRenWebViewCore$5$8;-><init>(Lcom/android/browser/ui/MiRenWebViewCore$5;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0900a5

    new-instance v6, Lcom/android/browser/ui/MiRenWebViewCore$5$7;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/android/browser/ui/MiRenWebViewCore$5$7;-><init>(Lcom/android/browser/ui/MiRenWebViewCore$5;Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090012

    new-instance v6, Lcom/android/browser/ui/MiRenWebViewCore$5$6;

    invoke-direct {v6, p0, p2}, Lcom/android/browser/ui/MiRenWebViewCore$5$6;-><init>(Lcom/android/browser/ui/MiRenWebViewCore$5;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/android/browser/ui/MiRenWebViewCore$5$5;

    invoke-direct {v5, p0, p2}, Lcom/android/browser/ui/MiRenWebViewCore$5$5;-><init>(Lcom/android/browser/ui/MiRenWebViewCore$5;Landroid/webkit/SslErrorHandler;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 1700
    .end local v0           #factory:Landroid/view/LayoutInflater;
    .end local v2           #placeholder:Landroid/widget/LinearLayout;
    .end local v3           #warningsView:Landroid/view/View;
    :cond_5
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->proceed()V

    goto/16 :goto_0
.end method

.method public onTooManyRedirects(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .parameter "view"
    .parameter "cancelMsg"
    .parameter "continueMsg"

    .prologue
    .line 1485
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V
    .locals 0
    .parameter "view"
    .parameter "event"

    .prologue
    .line 1618
    return-void
.end method

.method public shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "view"
    .parameter "event"

    .prologue
    .line 1613
    const/4 v0, 0x0

    return v0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 17
    .parameter "view"
    .parameter "url"

    .prologue
    .line 1352
    :try_start_0
    invoke-static/range {p2 .. p2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1353
    .local v9, original:Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 1354
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v13

    .line 1355
    .local v13, uri:Landroid/net/Uri;
    invoke-virtual {v13}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v6

    .line 1356
    .local v6, host:Ljava/lang/String;
    const-string v14, "src"

    invoke-virtual {v13, v14}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1357
    .local v12, src:Ljava/lang/String;
    if-eqz v12, :cond_0

    if-eqz v6, :cond_0

    const-string v14, "m.baidu.com"

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1358
    const-string v14, "src="

    invoke-virtual {v9, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v14, v14, 0x4

    invoke-virtual {v9, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1359
    .local v8, newUrl:Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    const-string v14, "android.intent.action.VIEW"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-direct {v7, v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1360
    .local v7, intent:Landroid/content/Intent;
    new-instance v14, Landroid/content/ComponentName;

    const-string v15, "com.android.browser"

    const-string v16, "com.android.browser.BrowserActivity"

    invoke-direct/range {v14 .. v16}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/MiRenWebViewCore$5;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/browser/ui/MiRenWebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1363
    const/4 v14, 0x1

    .line 1467
    .end local v6           #host:Ljava/lang/String;
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #newUrl:Ljava/lang/String;
    .end local v9           #original:Ljava/lang/String;
    .end local v12           #src:Ljava/lang/String;
    .end local v13           #uri:Landroid/net/Uri;
    .end local p0
    :goto_0
    return v14

    .line 1366
    .restart local p0
    :catch_0
    move-exception v14

    move-object v4, v14

    .line 1368
    .local v4, e:Ljava/lang/Exception;
    const-string v14, "com.android.browser.ui.MiRenWebViewCore"

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    .end local v4           #e:Ljava/lang/Exception;
    :cond_0
    const-string v14, "wtai://wp/"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1375
    const-string v14, "wtai://wp/mc;"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1376
    new-instance v7, Landroid/content/Intent;

    const-string v14, "android.intent.action.VIEW"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "tel:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "wtai://wp/mc;"

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-direct {v7, v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1379
    .restart local v7       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/MiRenWebViewCore$5;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/browser/ui/MiRenWebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1380
    const/4 v14, 0x1

    goto :goto_0

    .line 1384
    .end local v7           #intent:Landroid/content/Intent;
    :cond_1
    const-string v14, "wtai://wp/sd;"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 1386
    const/4 v14, 0x0

    goto :goto_0

    .line 1391
    :cond_2
    const-string v14, "wtai://wp/ap;"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 1393
    const/4 v14, 0x0

    goto :goto_0

    .line 1399
    :cond_3
    const-string v14, "about:"

    move-object/from16 v0, p2

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 1400
    const/4 v14, 0x0

    goto :goto_0

    .line 1406
    :cond_4
    const/4 v14, 0x1

    :try_start_1
    move-object/from16 v0, p2

    move v1, v14

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    .line 1414
    .restart local v7       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/MiRenWebViewCore$5;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/browser/ui/MiRenWebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    const/4 v15, 0x0

    invoke-virtual {v14, v7, v15}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v11

    .line 1415
    .local v11, ri:Landroid/content/pm/ResolveInfo;
    if-nez v11, :cond_6

    .line 1416
    invoke-virtual {v7}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v10

    .line 1417
    .local v10, packagename:Ljava/lang/String;
    if-eqz v10, :cond_5

    .line 1418
    new-instance v7, Landroid/content/Intent;

    .end local v7           #intent:Landroid/content/Intent;
    const-string v14, "android.intent.action.VIEW"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "market://search?q=pname:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    invoke-direct {v7, v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1420
    .restart local v7       #intent:Landroid/content/Intent;
    const-string v14, "android.intent.category.BROWSABLE"

    invoke-virtual {v7, v14}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/MiRenWebViewCore$5;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/browser/ui/MiRenWebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v14, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1422
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 1407
    .end local v7           #intent:Landroid/content/Intent;
    .end local v10           #packagename:Ljava/lang/String;
    .end local v11           #ri:Landroid/content/pm/ResolveInfo;
    :catch_1
    move-exception v5

    .line 1408
    .local v5, ex:Ljava/net/URISyntaxException;
    const-string v14, "Browser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Bad URI "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ": "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v5}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1409
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1424
    .end local v5           #ex:Ljava/net/URISyntaxException;
    .restart local v7       #intent:Landroid/content/Intent;
    .restart local v10       #packagename:Ljava/lang/String;
    .restart local v11       #ri:Landroid/content/pm/ResolveInfo;
    :cond_5
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1428
    .end local v10           #packagename:Ljava/lang/String;
    :cond_6
    invoke-virtual {v7}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_7

    invoke-virtual {v7}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v14

    const-string v15, "http"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    invoke-virtual {v7}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v14

    const-string v15, "https"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 1433
    :cond_7
    const-string v14, "android.intent.category.BROWSABLE"

    invoke-virtual {v7, v14}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1434
    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1437
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/MiRenWebViewCore$5;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    move-object v14, v0

    move-object v0, v14

    iget-object v0, v0, Lcom/android/browser/ui/MiRenWebViewCore;->mContext:Landroid/content/Context;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/app/Activity;

    const/4 v14, -0x1

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v14

    if-eqz v14, :cond_8

    .line 1438
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 1440
    :catch_2
    move-exception v14

    .line 1444
    :cond_8
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1447
    .restart local p0
    :cond_9
    invoke-static/range {p2 .. p2}, Lcom/android/browser/util/MiRenWebViewUtils;->isBrowserHandledMimeType(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_a

    .line 1448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/MiRenWebViewCore$5;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    move-object v14, v0

    const/4 v15, 0x1

    #setter for: Lcom/android/browser/ui/MiRenWebViewCore;->mLoadingUnhandledUrl:Z
    invoke-static {v14, v15}, Lcom/android/browser/ui/MiRenWebViewCore;->access$302(Lcom/android/browser/ui/MiRenWebViewCore;Z)Z

    .line 1449
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1452
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/MiRenWebViewCore$5;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/browser/ui/MiRenWebViewCore;->mWebListener:Lcom/android/browser/ui/MiRenWebViewListener;

    move-object v0, v14

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Lcom/android/browser/ui/MiRenWebViewListener;->preNavigation(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_d

    .line 1453
    invoke-static {}, Lcom/android/browser/controller/BrowserSettings;->getInstance()Lcom/android/browser/controller/BrowserSettings;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/browser/controller/BrowserSettings;->getSingleClickAction()Lcom/android/browser/controller/BrowserSettings$ClickAction;

    move-result-object v3

    .line 1455
    .local v3, clickAction:Lcom/android/browser/controller/BrowserSettings$ClickAction;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/MiRenWebViewCore$5;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v14

    const-class v15, Lcom/android/browser/ui/MiRenBrowserActivity;

    if-ne v14, v15, :cond_b

    sget-object v14, Lcom/android/browser/controller/BrowserSettings$ClickAction;->CLICK_ACTION_DEFAULT:Lcom/android/browser/controller/BrowserSettings$ClickAction;

    if-ne v3, v14, :cond_c

    .line 1457
    :cond_b
    const/4 v14, 0x0

    goto/16 :goto_0

    .line 1459
    :cond_c
    sget-object v14, Lcom/android/browser/controller/BrowserSettings$ClickAction;->CLICK_ACTION_OPEN_IN_NEW_TAB:Lcom/android/browser/controller/BrowserSettings$ClickAction;

    if-ne v3, v14, :cond_e

    .line 1460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/MiRenWebViewCore$5;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/ui/MiRenBrowserActivity;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/ui/MiRenBrowserActivity;->openUrlInNewTab(Ljava/lang/String;Z)V

    .line 1467
    .end local v3           #clickAction:Lcom/android/browser/controller/BrowserSettings$ClickAction;
    :cond_d
    :goto_1
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 1462
    .restart local v3       #clickAction:Lcom/android/browser/controller/BrowserSettings$ClickAction;
    .restart local p0
    :cond_e
    sget-object v14, Lcom/android/browser/controller/BrowserSettings$ClickAction;->CLICK_ACTION_OPEN_IN_BACKGROUND_TAB:Lcom/android/browser/controller/BrowserSettings$ClickAction;

    if-ne v3, v14, :cond_d

    .line 1463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/ui/MiRenWebViewCore$5;->this$0:Lcom/android/browser/ui/MiRenWebViewCore;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/android/browser/ui/MiRenWebViewCore;->getContext()Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/browser/ui/MiRenBrowserActivity;

    const/4 v14, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/ui/MiRenBrowserActivity;->openUrlInNewTab(Ljava/lang/String;Z)V

    goto :goto_1
.end method
