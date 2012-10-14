.class public Lcom/android/browser/model/ThumbnailStorageManager;
.super Ljava/lang/Object;
.source "ThumbnailStorageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/model/ThumbnailStorageManager$ThumbnailStorageChangeObservable;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "browser/ThumbnailStorageManager"

.field private static mLastThumbnailList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mThumbnailRefreshThreadLock:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 431
    const-string v0, "_mThumbnailRefreshThreadLock_"

    sput-object v0, Lcom/android/browser/model/ThumbnailStorageManager;->mThumbnailRefreshThreadLock:Ljava/lang/String;

    .line 432
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/android/browser/model/ThumbnailStorageManager;->mLastThumbnailList:Ljava/util/ArrayList;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;I[BZLjava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 31
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/browser/model/ThumbnailStorageManager;->storePicture(Landroid/content/Context;I[BZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 31
    invoke-static {}, Lcom/android/browser/model/ThumbnailStorageManager;->notifyChangesOnly()V

    return-void
.end method

.method private static getSearchAllThumbnailItemQuery(Landroid/content/ContentResolver;)Ljava/lang/String;
    .locals 4
    .parameter "cr"

    .prologue
    .line 329
    const-string v0, "%s=\'%d\' AND %s=\'1\'"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "folder_id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p0}, Lcom/android/browser/model/BrowserHistoryDataProvider;->getOneClickSystemFolderId(Landroid/content/ContentResolver;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "bookmark"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStorageDirPath(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .parameter "context"

    .prologue
    .line 37
    const-string v0, "thumbnails"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getStorageFile(Landroid/content/Context;I)Ljava/io/File;
    .locals 6
    .parameter "context"
    .parameter "id"

    .prologue
    .line 41
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/android/browser/model/ThumbnailStorageManager;->getStorageDirPath(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "%s.jpg"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static isThumbnailListChanged([I)Z
    .locals 9
    .parameter "allThumbIds"

    .prologue
    .line 336
    sget-object v7, Lcom/android/browser/model/ThumbnailStorageManager;->mLastThumbnailList:Ljava/util/ArrayList;

    monitor-enter v7

    .line 337
    :try_start_0
    sget-object v6, Lcom/android/browser/model/ThumbnailStorageManager;->mLastThumbnailList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    array-length v8, p0

    if-ne v6, v8, :cond_2

    .line 338
    const/4 v2, 0x0

    .line 339
    .local v2, hasChange:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v6, p0

    if-ge v3, v6, :cond_0

    .line 340
    sget-object v6, Lcom/android/browser/model/ThumbnailStorageManager;->mLastThumbnailList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget v8, p0, v3

    if-eq v6, v8, :cond_1

    .line 341
    const/4 v2, 0x1

    .line 346
    :cond_0
    if-nez v2, :cond_2

    .line 347
    const/4 v6, 0x0

    monitor-exit v7

    .line 353
    .end local v2           #hasChange:Z
    .end local v3           #i:I
    :goto_1
    return v6

    .line 339
    .restart local v2       #hasChange:Z
    .restart local v3       #i:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 350
    .end local v2           #hasChange:Z
    .end local v3           #i:I
    :cond_2
    sget-object v6, Lcom/android/browser/model/ThumbnailStorageManager;->mLastThumbnailList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 351
    move-object v1, p0

    .local v1, arr$:[I
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_2
    if-ge v4, v5, :cond_3

    aget v0, v1, v4

    .line 352
    .local v0, aId:I
    sget-object v6, Lcom/android/browser/model/ThumbnailStorageManager;->mLastThumbnailList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 353
    .end local v0           #aId:I
    :cond_3
    const/4 v6, 0x1

    monitor-exit v7

    goto :goto_1

    .line 354
    .end local v1           #arr$:[I
    .end local v4           #i$:I
    .end local v5           #len$:I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method private static notifyChangesOnly()V
    .locals 1

    .prologue
    .line 325
    invoke-static {}, Lcom/android/browser/model/ThumbnailStorageManager$ThumbnailStorageChangeObservable;->getInstance()Lcom/android/browser/model/ThumbnailStorageManager$ThumbnailStorageChangeObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/model/ThumbnailStorageManager$ThumbnailStorageChangeObservable;->notifyChanges()V

    .line 326
    return-void
.end method

.method public static purgeThumbnailStorage(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 131
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    invoke-static {v0}, Lcom/android/browser/model/ThumbnailStorageManager;->getSearchAllThumbnailItemQuery(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "position"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 139
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_1

    .line 169
    .end local v0           #c:Landroid/database/Cursor;
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 142
    .restart local v0       #c:Landroid/database/Cursor;
    .restart local p0
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 143
    .local v2, usefulFileNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_2

    .line 144
    const-string v1, "_id"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 145
    .local v1, id:I
    invoke-static {p0, v1}, Lcom/android/browser/model/ThumbnailStorageManager;->getStorageFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v1

    .end local v1           #id:I
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 147
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 151
    move-object v0, v2

    .line 152
    .local v0, finalUsefulFileNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {p0}, Lcom/android/browser/model/ThumbnailStorageManager;->getStorageDirPath(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    .line 153
    .local p0, dir:Ljava/io/File;
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 155
    new-instance v1, Lcom/android/browser/model/ThumbnailStorageManager$1;

    invoke-direct {v1, v0}, Lcom/android/browser/model/ThumbnailStorageManager$1;-><init>(Ljava/util/HashSet;)V

    invoke-virtual {p0, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    .line 161
    .local p0, fileList:[Ljava/io/File;
    if-eqz p0, :cond_0

    .line 162
    move-object v0, p0

    .local v0, arr$:[Ljava/io/File;
    array-length v2, v0

    .local v2, len$:I
    const/4 p0, 0x0

    .local p0, i$:I
    move v1, p0

    .end local p0           #i$:I
    .local v1, i$:I
    :goto_2
    if-ge v1, v2, :cond_0

    aget-object p0, v0, v1

    .line 163
    .local p0, aFile:Ljava/io/File;
    invoke-virtual {p0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    add-int/lit8 p0, v1, 0x1

    .end local v1           #i$:I
    .local p0, i$:I
    move v1, p0

    .end local p0           #i$:I
    .restart local v1       #i$:I
    goto :goto_2

    .line 166
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #i$:I
    .end local v2           #len$:I
    :catch_0
    move-exception p0

    .line 167
    .local p0, e:Ljava/lang/SecurityException;
    const-string v0, "browser/ThumbnailStorageManager"

    const-string v1, "error in purging the thumbnail dir... "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static refreshOneThumbnailFile(Landroid/content/Context;I)V
    .locals 12
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const-string v11, "url"

    const-string v10, "thumbnail"

    .line 98
    if-gez p1, :cond_1

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 102
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "thumbnail"

    aput-object v10, v2, v3

    const-string v3, "url"

    aput-object v11, v2, v9

    invoke-static {v0}, Lcom/android/browser/model/ThumbnailStorageManager;->getSearchAllThumbnailItemQuery(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 111
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    .line 114
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    const-string v1, "thumbnail"

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    .line 116
    .local v6, blob:[B
    const-string v1, "url"

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 118
    .local v8, url:Ljava/lang/String;
    invoke-static {p0, p1, v6, v9, v8}, Lcom/android/browser/model/ThumbnailStorageManager;->storePicture(Landroid/content/Context;I[BZLjava/lang/String;)Z

    .line 119
    if-eqz v6, :cond_2

    array-length v1, v6

    if-lez v1, :cond_2

    .line 120
    invoke-static {}, Lcom/android/browser/model/ThumbnailStorageManager;->notifyChangesOnly()V

    .line 122
    .end local v6           #blob:[B
    .end local v8           #url:Ljava/lang/String;
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static declared-synchronized refreshThumbnailData(Lcom/android/browser/ui/MiRenBrowserActivity;)V
    .locals 10
    .parameter "activity"

    .prologue
    .line 178
    const-class v6, Lcom/android/browser/model/ThumbnailStorageManager;

    monitor-enter v6

    :try_start_0
    sget-object v7, Lcom/android/browser/model/ThumbnailStorageManager;->mThumbnailRefreshThreadLock:Ljava/lang/String;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 179
    :try_start_1
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 319
    :goto_0
    monitor-exit v6

    return-void

    .line 182
    :cond_0
    :try_start_2
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 183
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "url"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "thumbnail"

    aput-object v4, v2, v3

    invoke-static {v0}, Lcom/android/browser/model/ThumbnailStorageManager;->getSearchAllThumbnailItemQuery(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "position"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 193
    .local v2, c:Landroid/database/Cursor;
    if-nez v2, :cond_1

    .line 194
    monitor-exit v7

    goto :goto_0

    .line 318
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v2           #c:Landroid/database/Cursor;
    .end local p0
    :catchall_0
    move-exception p0

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 178
    :catchall_1
    move-exception p0

    monitor-exit v6

    throw p0

    .line 198
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v2       #c:Landroid/database/Cursor;
    .restart local p0
    :cond_1
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_8

    .line 199
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->isFinishing()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result v1

    if-eqz v1, :cond_2

    .line 306
    :try_start_5
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 309
    new-instance v0, Lcom/android/browser/model/ThumbnailStorageManager$4;

    .end local v0           #cr:Landroid/content/ContentResolver;
    invoke-direct {v0, p0}, Lcom/android/browser/model/ThumbnailStorageManager$4;-><init>(Lcom/android/browser/ui/MiRenBrowserActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 202
    .restart local v0       #cr:Landroid/content/ContentResolver;
    :cond_2
    :try_start_6
    const-string v1, "_id"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 203
    .local v4, id:I
    const-string v1, "url"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 204
    .local v5, url:Ljava/lang/String;
    const-string v1, "thumbnail"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 205
    .local v1, blob:[B
    invoke-static {v5}, Lcom/android/browser/model/BrowserDatabaseHelper;->getPreloadPic(Ljava/lang/String;)Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;

    move-result-object v3

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    .line 207
    .local v3, isPreload:Z
    :goto_2
    if-nez v3, :cond_5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    .end local v3           #isPreload:Z
    if-nez v3, :cond_5

    if-eqz v1, :cond_3

    array-length v1, v1

    .end local v1           #blob:[B
    if-nez v1, :cond_5

    .line 208
    :cond_3
    const-string v1, "browser/ThumbnailStorageManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "prepare screenshot for url: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance v1, Lcom/android/browser/model/ThumbnailStorageManager$2;

    invoke-direct {v1, v5, p0}, Lcom/android/browser/model/ThumbnailStorageManager$2;-><init>(Ljava/lang/String;Lcom/android/browser/ui/MiRenBrowserActivity;)V

    .line 238
    .local v1, loadingRunnable:Ljava/lang/Runnable;
    invoke-virtual {p0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 240
    :try_start_7
    monitor-enter v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0

    const-wide/16 v8, 0x1388

    :try_start_8
    invoke-virtual {v1, v8, v9}, Ljava/lang/Object;->wait(J)V

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 250
    const/4 v1, 0x0

    .local v1, i:I
    move v3, v1

    .end local v1           #i:I
    .local v3, i:I
    :goto_3
    const/4 v1, 0x5

    if-ge v3, v1, :cond_7

    .line 252
    :try_start_9
    invoke-virtual {p0}, Lcom/android/browser/ui/MiRenBrowserActivity;->isFinishing()Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1

    move-result v1

    if-eqz v1, :cond_6

    .line 306
    :try_start_a
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 309
    new-instance v0, Lcom/android/browser/model/ThumbnailStorageManager$4;

    .end local v0           #cr:Landroid/content/ContentResolver;
    invoke-direct {v0, p0}, Lcom/android/browser/model/ThumbnailStorageManager$4;-><init>(Lcom/android/browser/ui/MiRenBrowserActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    monitor-exit v7
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto/16 :goto_0

    .line 205
    .end local v3           #i:I
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .local v1, blob:[B
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 240
    .local v1, loadingRunnable:Ljava/lang/Runnable;
    :catchall_2
    move-exception v3

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_0

    .line 241
    :catch_0
    move-exception v1

    .line 242
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_d
    const-string v3, "browser/ThumbnailStorageManager"

    const-string v4, "fatal error in loading the url... "

    .end local v4           #id:I
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 198
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_5
    :goto_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto/16 :goto_1

    .line 306
    .end local v5           #url:Ljava/lang/String;
    :catchall_3
    move-exception v0

    .end local v0           #cr:Landroid/content/ContentResolver;
    :try_start_e
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 309
    new-instance v1, Lcom/android/browser/model/ThumbnailStorageManager$4;

    invoke-direct {v1, p0}, Lcom/android/browser/model/ThumbnailStorageManager$4;-><init>(Lcom/android/browser/ui/MiRenBrowserActivity;)V

    invoke-virtual {p0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    throw v0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 254
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v3       #i:I
    .restart local v4       #id:I
    .restart local v5       #url:Ljava/lang/String;
    :cond_6
    const-wide/16 v8, 0xbb8

    :try_start_f
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_1

    .line 250
    :goto_5
    add-int/lit8 v1, v3, 0x1

    .end local v3           #i:I
    .local v1, i:I
    move v3, v1

    .end local v1           #i:I
    .restart local v3       #i:I
    goto :goto_3

    .line 255
    :catch_1
    move-exception v1

    .line 256
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_10
    const-string v8, "browser/ThumbnailStorageManager"

    const-string v9, "error"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 262
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_7
    new-instance v1, Lcom/android/browser/model/ThumbnailStorageManager$3;

    invoke-direct {v1, v5, p0, v0, v4}, Lcom/android/browser/model/ThumbnailStorageManager$3;-><init>(Ljava/lang/String;Lcom/android/browser/ui/MiRenBrowserActivity;Landroid/content/ContentResolver;I)V

    .line 297
    .local v1, screenshotRunnable:Ljava/lang/Runnable;
    invoke-virtual {p0, v1}, Lcom/android/browser/ui/MiRenBrowserActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 299
    :try_start_11
    monitor-enter v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_2

    const-wide/16 v3, 0x1388

    :try_start_12
    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V

    .end local v3           #i:I
    monitor-exit v1

    goto :goto_4

    :catchall_4
    move-exception v3

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    :try_start_13
    throw v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3
    .catch Ljava/lang/InterruptedException; {:try_start_13 .. :try_end_13} :catch_2

    .line 300
    :catch_2
    move-exception v1

    .line 301
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_14
    const-string v3, "browser/ThumbnailStorageManager"

    const-string v4, "error in creating screen shot..."

    .end local v4           #id:I
    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    goto :goto_4

    .line 306
    .end local v1           #e:Ljava/lang/InterruptedException;
    .end local v5           #url:Ljava/lang/String;
    :cond_8
    :try_start_15
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 309
    new-instance v0, Lcom/android/browser/model/ThumbnailStorageManager$4;

    .end local v0           #cr:Landroid/content/ContentResolver;
    invoke-direct {v0, p0}, Lcom/android/browser/model/ThumbnailStorageManager$4;-><init>(Lcom/android/browser/ui/MiRenBrowserActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/browser/ui/MiRenBrowserActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 318
    monitor-exit v7
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto/16 :goto_0
.end method

.method private static storePicture(Landroid/content/Context;I[BZLjava/lang/String;)Z
    .locals 4
    .parameter "context"
    .parameter "id"
    .parameter "blob"
    .parameter "forceUpdate"
    .parameter "url"

    .prologue
    .line 368
    if-gez p1, :cond_0

    .line 369
    const/4 p0, 0x0

    .line 410
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    .end local p4
    :goto_0
    return p0

    .line 370
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p4
    :cond_0
    if-eqz p4, :cond_2

    .line 371
    invoke-static {p4}, Lcom/android/browser/model/BrowserDatabaseHelper;->getPreloadPic(Ljava/lang/String;)Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;

    move-result-object p4

    .end local p4
    if-eqz p4, :cond_1

    const/4 p4, 0x1

    .line 372
    .local p4, isPreload:Z
    :goto_1
    if-eqz p4, :cond_2

    .line 375
    const/4 p0, 0x0

    goto :goto_0

    .line 371
    .end local p4           #isPreload:Z
    :cond_1
    const/4 p4, 0x0

    goto :goto_1

    .line 379
    :cond_2
    if-eqz p2, :cond_3

    array-length p4, p2

    if-nez p4, :cond_4

    .line 380
    :cond_3
    const/4 p0, 0x0

    goto :goto_0

    .line 382
    :cond_4
    const/4 v0, 0x0

    .line 383
    .local v0, ret:Z
    const/4 p4, 0x0

    .line 386
    .local p4, fos:Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    :try_start_0
    array-length v2, p2

    invoke-static {p2, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 387
    .local p2, bitmap:Landroid/graphics/Bitmap;
    invoke-static {p0, p1}, Lcom/android/browser/model/ThumbnailStorageManager;->getStorageFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object p0

    .line 388
    .local p0, filePic:Ljava/io/File;
    if-nez p3, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p1

    .end local p1
    if-eqz p1, :cond_6

    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    move-result p1

    if-nez p1, :cond_6

    .line 389
    const/4 p1, 0x0

    .line 400
    if-eqz p4, :cond_5

    .line 402
    :try_start_1
    throw p4

    .line 403
    throw p4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .end local p0           #filePic:Ljava/io/File;
    .end local p2           #bitmap:Landroid/graphics/Bitmap;
    .end local p3
    :cond_5
    :goto_2
    move p0, p1

    .line 406
    goto :goto_0

    .line 404
    .restart local p0       #filePic:Ljava/io/File;
    .restart local p2       #bitmap:Landroid/graphics/Bitmap;
    .restart local p3
    :catch_0
    move-exception p0

    .line 405
    .local p0, e:Ljava/io/IOException;
    const-string p2, "browser/ThumbnailStorageManager"

    .end local p2           #bitmap:Landroid/graphics/Bitmap;
    const-string p3, "error"

    .end local p3
    invoke-static {p2, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 391
    .local p0, filePic:Ljava/io/File;
    .restart local p2       #bitmap:Landroid/graphics/Bitmap;
    .restart local p3
    :cond_6
    :try_start_2
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    .line 392
    .end local p4           #fos:Ljava/io/FileOutputStream;
    .local p1, fos:Ljava/io/FileOutputStream;
    :try_start_3
    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .end local p0           #filePic:Ljava/io/File;
    const/16 p3, 0x50

    invoke-virtual {p2, p0, p3, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7

    .end local p3
    move-result p2

    .line 400
    .end local v0           #ret:Z
    .local p2, ret:Z
    if-eqz p1, :cond_7

    .line 402
    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 403
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .end local p1           #fos:Ljava/io/FileOutputStream;
    :cond_7
    :goto_3
    move p0, p2

    .line 410
    goto :goto_0

    .line 404
    .restart local p1       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception p0

    .line 405
    .local p0, e:Ljava/io/IOException;
    const-string p1, "browser/ThumbnailStorageManager"

    .end local p1           #fos:Ljava/io/FileOutputStream;
    const-string p3, "error"

    invoke-static {p1, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 393
    .end local p0           #e:Ljava/io/IOException;
    .end local p2           #ret:Z
    .restart local v0       #ret:Z
    .restart local p3
    .restart local p4       #fos:Ljava/io/FileOutputStream;
    :catch_2
    move-exception p0

    move-object p1, p4

    .line 394
    .end local p3
    .end local p4           #fos:Ljava/io/FileOutputStream;
    .local p0, e:Ljava/lang/SecurityException;
    .restart local p1       #fos:Ljava/io/FileOutputStream;
    :goto_4
    :try_start_5
    const-string p2, "browser/ThumbnailStorageManager"

    const-string p3, "error"

    invoke-static {p2, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 400
    if-eqz p1, :cond_8

    .line 402
    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 403
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .end local p0           #e:Ljava/lang/SecurityException;
    .end local p1           #fos:Ljava/io/FileOutputStream;
    :cond_8
    :goto_5
    move p0, v0

    .line 406
    goto :goto_0

    .line 404
    .restart local p0       #e:Ljava/lang/SecurityException;
    .restart local p1       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception p0

    .line 405
    .local p0, e:Ljava/io/IOException;
    const-string p1, "browser/ThumbnailStorageManager"

    .end local p1           #fos:Ljava/io/FileOutputStream;
    const-string p2, "error"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 396
    .end local p0           #e:Ljava/io/IOException;
    .restart local p3
    .restart local p4       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception p0

    move-object p1, p4

    .line 397
    .end local p3
    .end local p4           #fos:Ljava/io/FileOutputStream;
    .local p0, e:Ljava/io/FileNotFoundException;
    .restart local p1       #fos:Ljava/io/FileOutputStream;
    :goto_6
    :try_start_7
    const-string p2, "browser/ThumbnailStorageManager"

    const-string p3, "error"

    invoke-static {p2, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 400
    if-eqz p1, :cond_9

    .line 402
    :try_start_8
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->flush()V

    .line 403
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .end local p0           #e:Ljava/io/FileNotFoundException;
    .end local p1           #fos:Ljava/io/FileOutputStream;
    :cond_9
    :goto_7
    move p0, v0

    .line 406
    goto/16 :goto_0

    .line 404
    .restart local p0       #e:Ljava/io/FileNotFoundException;
    .restart local p1       #fos:Ljava/io/FileOutputStream;
    :catch_5
    move-exception p0

    .line 405
    .local p0, e:Ljava/io/IOException;
    const-string p1, "browser/ThumbnailStorageManager"

    .end local p1           #fos:Ljava/io/FileOutputStream;
    const-string p2, "error"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 400
    .end local p0           #e:Ljava/io/IOException;
    .restart local p3
    .restart local p4       #fos:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception p0

    move-object p1, p0

    move-object p0, p4

    .end local p3
    .end local p4           #fos:Ljava/io/FileOutputStream;
    .local p0, fos:Ljava/io/FileOutputStream;
    :goto_8
    if-eqz p0, :cond_a

    .line 402
    :try_start_9
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V

    .line 403
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    .line 406
    .end local p0           #fos:Ljava/io/FileOutputStream;
    :cond_a
    :goto_9
    throw p1

    .line 404
    .restart local p0       #fos:Ljava/io/FileOutputStream;
    :catch_6
    move-exception p0

    .line 405
    .local p0, e:Ljava/io/IOException;
    const-string p2, "browser/ThumbnailStorageManager"

    const-string p3, "error"

    invoke-static {p2, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 400
    .end local p0           #e:Ljava/io/IOException;
    .restart local p1       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception p0

    move-object v3, p0

    move-object p0, p1

    .end local p1           #fos:Ljava/io/FileOutputStream;
    .local p0, fos:Ljava/io/FileOutputStream;
    move-object p1, v3

    goto :goto_8

    .line 396
    .end local p0           #fos:Ljava/io/FileOutputStream;
    .restart local p1       #fos:Ljava/io/FileOutputStream;
    .local p2, bitmap:Landroid/graphics/Bitmap;
    :catch_7
    move-exception p0

    goto :goto_6

    .line 393
    :catch_8
    move-exception p0

    goto :goto_4
.end method

.method public static syncThumbnailStorage(Landroid/content/Context;Z)V
    .locals 8
    .parameter "context"
    .parameter "notNotifyObserver"

    .prologue
    .line 51
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 52
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 54
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "thumbnail"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "url"

    aput-object v4, v2, v3

    invoke-static {v0}, Lcom/android/browser/model/ThumbnailStorageManager;->getSearchAllThumbnailItemQuery(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "position"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 64
    .end local v6           #c:Landroid/database/Cursor;
    .local v2, c:Landroid/database/Cursor;
    if-nez v2, :cond_2

    .line 89
    if-eqz v2, :cond_0

    .line 90
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object p0, v2

    .line 92
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v2           #c:Landroid/database/Cursor;
    .end local p1
    .local p0, c:Landroid/database/Cursor;
    :cond_1
    :goto_0
    return-void

    .line 67
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v2       #c:Landroid/database/Cursor;
    .local p0, context:Landroid/content/Context;
    .restart local p1
    :cond_2
    const/4 v1, 0x0

    .line 69
    .local v1, hasChange:Z
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .end local v0           #cr:Landroid/content/ContentResolver;
    new-array v0, v0, [I

    .line 70
    .local v0, allThumbIds:[I
    const/4 v3, 0x0

    .line 71
    .local v3, i:I
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move v5, v3

    .end local v3           #i:I
    .local v5, i:I
    move v4, v1

    .end local v1           #hasChange:Z
    .local v4, hasChange:I
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_5

    .line 72
    const-string v1, "_id"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 73
    .local v6, id:I
    const-string v1, "thumbnail"

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v2, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    .line 74
    .local v1, blob:[B
    const-string v3, "url"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 76
    .local v3, url:Ljava/lang/String;
    const/4 v7, 0x0

    invoke-static {p0, v6, v1, v7, v3}, Lcom/android/browser/model/ThumbnailStorageManager;->storePicture(Landroid/content/Context;I[BZLjava/lang/String;)Z

    move-result v3

    .line 77
    .local v3, fStorePicture:Z
    if-nez v4, :cond_3

    if-eqz v3, :cond_4

    :cond_3
    const/4 v3, 0x1

    .line 78
    .local v3, hasChange:Z
    :goto_2
    if-eqz v1, :cond_b

    .end local v4           #hasChange:I
    array-length v1, v1

    .end local v1           #blob:[B
    if-lez v1, :cond_b

    .line 79
    add-int/lit8 v1, v5, 0x1

    .end local v5           #i:I
    .local v1, i:I
    aput v6, v0, v5

    .line 71
    :goto_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move v5, v1

    .end local v1           #i:I
    .restart local v5       #i:I
    move v4, v3

    .restart local v4       #hasChange:I
    goto :goto_1

    .line 77
    .local v1, blob:[B
    .local v3, fStorePicture:Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_2

    .line 82
    .end local v1           #blob:[B
    .end local v3           #fStorePicture:Z
    .end local v6           #id:I
    :cond_5
    if-nez v4, :cond_6

    invoke-static {v0}, Lcom/android/browser/model/ThumbnailStorageManager;->isThumbnailListChanged([I)Z

    move-result p0

    .end local p0           #context:Landroid/content/Context;
    if-eqz p0, :cond_8

    :cond_6
    const/4 p0, 0x1

    .line 83
    .local p0, hasChange:Z
    :goto_4
    if-nez p1, :cond_7

    .end local v4           #hasChange:I
    if-eqz p0, :cond_7

    .line 84
    invoke-static {}, Lcom/android/browser/model/ThumbnailStorageManager;->notifyChangesOnly()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    :cond_7
    if-eqz v2, :cond_a

    .line 90
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object p0, v2

    .end local v2           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    goto :goto_0

    .line 82
    .end local p0           #c:Landroid/database/Cursor;
    .restart local v2       #c:Landroid/database/Cursor;
    .restart local v4       #hasChange:I
    :cond_8
    const/4 p0, 0x0

    goto :goto_4

    .line 85
    .end local v2           #c:Landroid/database/Cursor;
    .end local v4           #hasChange:I
    .end local v5           #i:I
    .local v0, cr:Landroid/content/ContentResolver;
    .local v6, c:Landroid/database/Cursor;
    .local p0, context:Landroid/content/Context;
    :catch_0
    move-exception p0

    move-object p1, p0

    move-object p0, v6

    .line 86
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v6           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    .local p1, e:Landroid/database/sqlite/SQLiteException;
    :goto_5
    :try_start_2
    const-string v0, "browser/ThumbnailStorageManager"

    const-string v1, "error while access DB"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 89
    if-eqz p0, :cond_1

    .line 90
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 89
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v6       #c:Landroid/database/Cursor;
    .local p0, context:Landroid/content/Context;
    .local p1, notNotifyObserver:Z
    :catchall_0
    move-exception p0

    move-object p1, p0

    move-object p0, v6

    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v6           #c:Landroid/database/Cursor;
    .end local p1           #notNotifyObserver:Z
    .local p0, c:Landroid/database/Cursor;
    :goto_6
    if-eqz p0, :cond_9

    .line 90
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_9
    throw p1

    .line 89
    .end local p0           #c:Landroid/database/Cursor;
    .restart local v2       #c:Landroid/database/Cursor;
    .restart local p1       #notNotifyObserver:Z
    :catchall_1
    move-exception p0

    move-object p1, p0

    move-object p0, v2

    .end local v2           #c:Landroid/database/Cursor;
    .restart local p0       #c:Landroid/database/Cursor;
    goto :goto_6

    .local p1, e:Landroid/database/sqlite/SQLiteException;
    :catchall_2
    move-exception p1

    goto :goto_6

    .line 85
    .end local p0           #c:Landroid/database/Cursor;
    .restart local v2       #c:Landroid/database/Cursor;
    .local p1, notNotifyObserver:Z
    :catch_1
    move-exception p0

    move-object p1, p0

    move-object p0, v2

    .end local v2           #c:Landroid/database/Cursor;
    .restart local p0       #c:Landroid/database/Cursor;
    goto :goto_5

    .local v0, allThumbIds:[I
    .restart local v2       #c:Landroid/database/Cursor;
    .restart local v5       #i:I
    .local p0, hasChange:Z
    :cond_a
    move-object p0, v2

    .end local v2           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    goto/16 :goto_0

    .restart local v2       #c:Landroid/database/Cursor;
    .local v3, hasChange:Z
    .local v6, id:I
    .local p0, context:Landroid/content/Context;
    :cond_b
    move v1, v5

    .end local v5           #i:I
    .local v1, i:I
    goto :goto_3
.end method
