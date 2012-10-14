.class Lcom/android/browser/ui/WebViewHolderActivity$SetAsWallpaper;
.super Ljava/lang/Thread;
.source "WebViewHolderActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/ui/WebViewHolderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetAsWallpaper"
.end annotation


# instance fields
.field private mCanceled:Z

.field private mUrl:Ljava/net/URL;

.field private mWallpaperProgress:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/android/browser/ui/WebViewHolderActivity;


# direct methods
.method public constructor <init>(Lcom/android/browser/ui/WebViewHolderActivity;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter "url"

    .prologue
    .line 417
    iput-object p1, p0, Lcom/android/browser/ui/WebViewHolderActivity$SetAsWallpaper;->this$0:Lcom/android/browser/ui/WebViewHolderActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 415
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/browser/ui/WebViewHolderActivity$SetAsWallpaper;->mCanceled:Z

    .line 419
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/browser/ui/WebViewHolderActivity$SetAsWallpaper;->mUrl:Ljava/net/URL;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 423
    :goto_0
    return-void

    .line 420
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 421
    .local v0, e:Ljava/net/MalformedURLException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/browser/ui/WebViewHolderActivity$SetAsWallpaper;->mUrl:Ljava/net/URL;

    goto :goto_0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter "dialog"

    .prologue
    .line 426
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/ui/WebViewHolderActivity$SetAsWallpaper;->mCanceled:Z

    .line 427
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 430
    iget-object v0, p0, Lcom/android/browser/ui/WebViewHolderActivity$SetAsWallpaper;->mUrl:Ljava/net/URL;

    if-eqz v0, :cond_0

    .line 436
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/browser/ui/WebViewHolderActivity$SetAsWallpaper;->this$0:Lcom/android/browser/ui/WebViewHolderActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/browser/ui/WebViewHolderActivity$SetAsWallpaper;->mWallpaperProgress:Landroid/app/ProgressDialog;

    .line 437
    iget-object v0, p0, Lcom/android/browser/ui/WebViewHolderActivity$SetAsWallpaper;->mWallpaperProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 438
    iget-object v0, p0, Lcom/android/browser/ui/WebViewHolderActivity$SetAsWallpaper;->mWallpaperProgress:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/browser/ui/WebViewHolderActivity$SetAsWallpaper;->this$0:Lcom/android/browser/ui/WebViewHolderActivity;

    const v2, 0x7f09009d

    invoke-virtual {v1, v2}, Lcom/android/browser/ui/WebViewHolderActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 439
    iget-object v0, p0, Lcom/android/browser/ui/WebViewHolderActivity$SetAsWallpaper;->mWallpaperProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 440
    iget-object v0, p0, Lcom/android/browser/ui/WebViewHolderActivity$SetAsWallpaper;->mWallpaperProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 441
    iget-object v0, p0, Lcom/android/browser/ui/WebViewHolderActivity$SetAsWallpaper;->mWallpaperProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 442
    invoke-virtual {p0}, Lcom/android/browser/ui/WebViewHolderActivity$SetAsWallpaper;->start()V

    .line 444
    :cond_0
    return v3
.end method

.method public run()V
    .locals 10

    .prologue
    const-string v9, "com.android.browser.ui.WebViewHolderActivity"

    .line 449
    :try_start_0
    iget-object v7, p0, Lcom/android/browser/ui/WebViewHolderActivity$SetAsWallpaper;->this$0:Lcom/android/browser/ui/WebViewHolderActivity;

    invoke-virtual {v7}, Lcom/android/browser/ui/WebViewHolderActivity;->getWallpaper()Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 461
    .local v5, oldWallpaper:Landroid/graphics/drawable/Drawable;
    :try_start_1
    iget-object v7, p0, Lcom/android/browser/ui/WebViewHolderActivity$SetAsWallpaper;->mUrl:Ljava/net/URL;

    invoke-virtual {v7}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v4

    .line 462
    .local v4, inputstream:Ljava/io/InputStream;
    if-eqz v4, :cond_0

    .line 463
    iget-object v7, p0, Lcom/android/browser/ui/WebViewHolderActivity$SetAsWallpaper;->this$0:Lcom/android/browser/ui/WebViewHolderActivity;

    invoke-virtual {v7, v4}, Lcom/android/browser/ui/WebViewHolderActivity;->setWallpaper(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1

    .line 473
    .end local v4           #inputstream:Ljava/io/InputStream;
    :cond_0
    :goto_0
    :try_start_2
    iget-boolean v7, p0, Lcom/android/browser/ui/WebViewHolderActivity$SetAsWallpaper;->mCanceled:Z

    if-eqz v7, :cond_1

    .line 477
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    .line 478
    .local v6, width:I
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 479
    .local v3, height:I
    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 480
    .local v0, bm:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 481
    .local v1, canvas:Landroid/graphics/Canvas;
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8, v6, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 482
    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    .line 484
    :try_start_3
    iget-object v7, p0, Lcom/android/browser/ui/WebViewHolderActivity$SetAsWallpaper;->this$0:Lcom/android/browser/ui/WebViewHolderActivity;

    invoke-virtual {v7, v0}, Lcom/android/browser/ui/WebViewHolderActivity;->setWallpaper(Landroid/graphics/Bitmap;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1

    .line 488
    :goto_1
    const/4 v7, 0x0

    :try_start_4
    iput-boolean v7, p0, Lcom/android/browser/ui/WebViewHolderActivity$SetAsWallpaper;->mCanceled:Z
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1

    .line 494
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v3           #height:I
    .end local v5           #oldWallpaper:Landroid/graphics/drawable/Drawable;
    .end local v6           #width:I
    :cond_1
    :goto_2
    iget-object v7, p0, Lcom/android/browser/ui/WebViewHolderActivity$SetAsWallpaper;->mWallpaperProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 495
    iget-object v7, p0, Lcom/android/browser/ui/WebViewHolderActivity$SetAsWallpaper;->mWallpaperProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v7}, Landroid/app/ProgressDialog;->dismiss()V

    .line 497
    :cond_2
    return-void

    .line 465
    .restart local v5       #oldWallpaper:Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 466
    .local v2, e:Ljava/io/IOException;
    :try_start_5
    const-string v7, "com.android.browser.ui.WebViewHolderActivity"

    const-string v8, "Unable to set new wallpaper"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/browser/ui/WebViewHolderActivity$SetAsWallpaper;->mCanceled:Z
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 490
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #oldWallpaper:Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 491
    .local v2, e:Ljava/lang/OutOfMemoryError;
    const-string v7, "com.android.browser.ui.WebViewHolderActivity"

    const-string v7, "Unable to get old wallpaper"

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 485
    .end local v2           #e:Ljava/lang/OutOfMemoryError;
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v1       #canvas:Landroid/graphics/Canvas;
    .restart local v3       #height:I
    .restart local v5       #oldWallpaper:Landroid/graphics/drawable/Drawable;
    .restart local v6       #width:I
    :catch_2
    move-exception v7

    move-object v2, v7

    .line 486
    .local v2, e:Ljava/io/IOException;
    :try_start_6
    const-string v7, "com.android.browser.ui.WebViewHolderActivity"

    const-string v8, "Unable to restore old wallpaper."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1
.end method
