.class public Lcom/android/gallery/data/UriBucket;
.super Lcom/android/gallery/data/FileBucket;
.source "UriBucket.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 8
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 10
    const-string v0, "/sdcard"

    invoke-direct {p0, v0}, Lcom/android/gallery/data/FileBucket;-><init>(Ljava/lang/String;)V

    .line 12
    const/4 v6, 0x0

    .line 14
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "_data"

    aput-object v3, v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 21
    if-eqz v6, :cond_1

    .line 22
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 23
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 24
    .local v7, path:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/gallery/data/FileInfo;->getFileInfo(Ljava/lang/String;)Lcom/android/gallery/data/FileInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery/data/UriBucket;->addMeta(Lcom/android/gallery/data/FileInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 27
    .end local v7           #path:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 29
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 31
    :cond_0
    :goto_1
    return-void

    .line 29
    :cond_1
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method


# virtual methods
.method public getSortOrder()I
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method public isModified()Z
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public loadAllMedias()V
    .locals 0

    .prologue
    .line 38
    return-void
.end method

.method public setSortOrder(I)V
    .locals 0
    .parameter "sortOrder"

    .prologue
    .line 46
    return-void
.end method
