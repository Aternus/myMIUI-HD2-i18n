.class final Lcom/android/browser/model/ThumbnailStorageManager$3;
.super Ljava/lang/Object;
.source "ThumbnailStorageManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/model/ThumbnailStorageManager;->refreshThumbnailData(Lcom/android/browser/ui/MiRenBrowserActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Lcom/android/browser/ui/MiRenBrowserActivity;

.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$id:I

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/browser/ui/MiRenBrowserActivity;Landroid/content/ContentResolver;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/browser/model/ThumbnailStorageManager$3;->val$url:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/browser/model/ThumbnailStorageManager$3;->val$activity:Lcom/android/browser/ui/MiRenBrowserActivity;

    iput-object p3, p0, Lcom/android/browser/model/ThumbnailStorageManager$3;->val$cr:Landroid/content/ContentResolver;

    iput p4, p0, Lcom/android/browser/model/ThumbnailStorageManager$3;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const-string v8, "browser/ThumbnailStorageManager"

    .line 265
    const-string v4, "browser/ThumbnailStorageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "stop loading url: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/browser/model/ThumbnailStorageManager$3;->val$url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v4, p0, Lcom/android/browser/model/ThumbnailStorageManager$3;->val$activity:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v4}, Lcom/android/browser/ui/MiRenBrowserActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_2

    .line 267
    iget-object v4, p0, Lcom/android/browser/model/ThumbnailStorageManager$3;->val$activity:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v4}, Lcom/android/browser/ui/MiRenBrowserActivity;->getTabController()Lcom/android/browser/controller/TabController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/controller/TabController;->getHiddenTab()Lcom/android/browser/controller/Tab;

    move-result-object v4

    if-nez v4, :cond_0

    .line 268
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    .line 295
    :goto_0
    return-void

    .line 268
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 272
    :cond_0
    iget-object v4, p0, Lcom/android/browser/model/ThumbnailStorageManager$3;->val$activity:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v4}, Lcom/android/browser/ui/MiRenBrowserActivity;->getTabController()Lcom/android/browser/controller/TabController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/controller/TabController;->getHiddenTab()Lcom/android/browser/controller/Tab;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/controller/Tab;->stopLoading()V

    .line 275
    iget-object v4, p0, Lcom/android/browser/model/ThumbnailStorageManager$3;->val$activity:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v4}, Lcom/android/browser/ui/MiRenBrowserActivity;->getTabController()Lcom/android/browser/controller/TabController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/controller/TabController;->getHiddenTab()Lcom/android/browser/controller/Tab;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/controller/Tab;->createScreenshot()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 276
    .local v2, thumbnail:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 277
    .local v0, map:Landroid/content/ContentValues;
    invoke-static {v2}, Lcom/android/browser/api_v8/Bookmarks;->bitmapToBytes(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    .line 278
    .local v1, siteblob:[B
    iget-object v4, p0, Lcom/android/browser/model/ThumbnailStorageManager$3;->val$activity:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v4}, Lcom/android/browser/ui/MiRenBrowserActivity;->getTabController()Lcom/android/browser/controller/TabController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/controller/TabController;->getHiddenTab()Lcom/android/browser/controller/Tab;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/browser/controller/Tab;->getTitle()Ljava/lang/String;

    move-result-object v3

    .line 279
    .local v3, title:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 280
    const-string v4, "title"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_1
    const-string v4, "thumbnail"

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 283
    const-string v4, "mode"

    iget-object v5, p0, Lcom/android/browser/model/ThumbnailStorageManager$3;->val$activity:Lcom/android/browser/ui/MiRenBrowserActivity;

    invoke-virtual {v5}, Lcom/android/browser/ui/MiRenBrowserActivity;->getTabController()Lcom/android/browser/controller/TabController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/controller/TabController;->getHiddenTab()Lcom/android/browser/controller/Tab;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/browser/controller/Tab;->getMode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 284
    iget-object v4, p0, Lcom/android/browser/model/ThumbnailStorageManager$3;->val$cr:Landroid/content/ContentResolver;

    sget-object v5, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    iget v6, p0, Lcom/android/browser/model/ThumbnailStorageManager$3;->val$id:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5, v0, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 285
    iget-object v4, p0, Lcom/android/browser/model/ThumbnailStorageManager$3;->val$activity:Lcom/android/browser/ui/MiRenBrowserActivity;

    iget v5, p0, Lcom/android/browser/model/ThumbnailStorageManager$3;->val$id:I

    const/4 v6, 0x1

    #calls: Lcom/android/browser/model/ThumbnailStorageManager;->storePicture(Landroid/content/Context;I[BZLjava/lang/String;)Z
    invoke-static {v4, v5, v1, v6, v7}, Lcom/android/browser/model/ThumbnailStorageManager;->access$000(Landroid/content/Context;I[BZLjava/lang/String;)Z

    .line 287
    if-eqz v1, :cond_3

    array-length v4, v1

    if-lez v4, :cond_3

    .line 288
    const-string v4, "browser/ThumbnailStorageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "screenshot saved: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/browser/model/ThumbnailStorageManager$3;->val$url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    #calls: Lcom/android/browser/model/ThumbnailStorageManager;->notifyChangesOnly()V
    invoke-static {}, Lcom/android/browser/model/ThumbnailStorageManager;->access$100()V

    .line 294
    .end local v0           #map:Landroid/content/ContentValues;
    .end local v1           #siteblob:[B
    .end local v2           #thumbnail:Landroid/graphics/Bitmap;
    .end local v3           #title:Ljava/lang/String;
    :cond_2
    :goto_1
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v4

    .line 291
    .restart local v0       #map:Landroid/content/ContentValues;
    .restart local v1       #siteblob:[B
    .restart local v2       #thumbnail:Landroid/graphics/Bitmap;
    .restart local v3       #title:Ljava/lang/String;
    :cond_3
    const-string v4, "browser/ThumbnailStorageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "screenshot is empty: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/browser/model/ThumbnailStorageManager$3;->val$url:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
