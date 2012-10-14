.class public final Lcom/android/browser/model/NavigationHomeDataLoader;
.super Landroid/database/DataSetObservable;
.source "NavigationHomeDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "browser/NavigationHomeDataLoader"

.field private static instance:Lcom/android/browser/model/NavigationHomeDataLoader;

.field private static final sColumns:[Ljava/lang/String;


# instance fields
.field private _context:Landroid/content/Context;

.field private _initialized:Z

.field private _thumbnailInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 142
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/browser/model/NavigationHomeDataLoader;->sColumns:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/database/DataSetObservable;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/browser/model/NavigationHomeDataLoader;->_thumbnailInfo:Ljava/util/ArrayList;

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/model/NavigationHomeDataLoader;->_initialized:Z

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/model/NavigationHomeDataLoader;->_context:Landroid/content/Context;

    .line 32
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/browser/model/NavigationHomeDataLoader;
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    sget-object v0, Lcom/android/browser/model/NavigationHomeDataLoader;->instance:Lcom/android/browser/model/NavigationHomeDataLoader;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Lcom/android/browser/model/NavigationHomeDataLoader;

    invoke-direct {v0, p0}, Lcom/android/browser/model/NavigationHomeDataLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/browser/model/NavigationHomeDataLoader;->instance:Lcom/android/browser/model/NavigationHomeDataLoader;

    .line 24
    :cond_0
    sget-object v0, Lcom/android/browser/model/NavigationHomeDataLoader;->instance:Lcom/android/browser/model/NavigationHomeDataLoader;

    return-object v0
.end method

.method private initialize()Z
    .locals 15

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/android/browser/model/NavigationHomeDataLoader;->_initialized:Z

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x1

    .line 132
    :goto_0
    return v0

    .line 68
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/browser/model/NavigationHomeDataLoader;->_thumbnailInfo:Ljava/util/ArrayList;

    .line 70
    const-string v5, "position ASC"

    .line 71
    .local v5, orderBy:Ljava/lang/String;
    const-string v0, "%s=\'%d\' AND %s=\'1\'"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "folder_id"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/browser/model/NavigationHomeDataLoader;->_context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/android/browser/model/BrowserHistoryDataProvider;->getOneClickSystemFolderId(Landroid/content/ContentResolver;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "bookmark"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, whereClause:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/android/browser/model/NavigationHomeDataLoader;->_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/browser/model/BrowserHistoryDataProvider;->HISTORY_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/browser/model/NavigationHomeDataLoader;->sColumns:[Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 80
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_7

    .line 81
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 82
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 83
    .local v9, id:I
    const-string v0, "url"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 84
    .local v14, url:Ljava/lang/String;
    const-string v0, "title"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 86
    .local v13, title:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v13}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-nez v0, :cond_4

    .line 87
    :cond_1
    invoke-static {v14}, Lcom/android/browser/api_v8/PatternsInternal;->stripUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 93
    :goto_2
    new-instance v6, Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;

    invoke-direct {v6}, Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;-><init>()V

    .line 95
    .local v6, aItem:Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;
    iput-object v14, v6, Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;->url:Ljava/lang/String;

    .line 96
    iput-object v13, v6, Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;->title:Ljava/lang/String;

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;->loadingInProgress:Z

    .line 99
    const/4 v11, 0x0

    .line 101
    .local v11, preload:Z
    invoke-static {v14}, Lcom/android/browser/model/BrowserDatabaseHelper;->getPreloadPic(Ljava/lang/String;)Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;

    move-result-object v10

    .line 103
    .local v10, info:Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;
    if-eqz v10, :cond_2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///android_asset/images/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v10, Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;->PicFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;->thumbnailPath:Ljava/lang/String;

    .line 105
    iget-object v0, v10, Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;->Title:Ljava/lang/String;

    iput-object v0, v6, Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;->title:Ljava/lang/String;

    .line 106
    iget-object v0, v10, Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;->Urls:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, v6, Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;->url:Ljava/lang/String;

    .line 107
    const/4 v11, 0x1

    .line 110
    :cond_2
    if-nez v11, :cond_3

    .line 111
    iget-object v0, p0, Lcom/android/browser/model/NavigationHomeDataLoader;->_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v9}, Lcom/android/browser/model/ThumbnailStorageManager;->getStorageFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v12

    .line 112
    .local v12, thumbnailFile:Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 113
    invoke-virtual {v12}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;->thumbnailPath:Ljava/lang/String;

    .line 118
    .end local v12           #thumbnailFile:Ljava/io/File;
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/android/browser/model/NavigationHomeDataLoader;->_thumbnailInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_1

    .line 123
    .end local v6           #aItem:Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #id:I
    .end local v10           #info:Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;
    .end local v11           #preload:Z
    .end local v13           #title:Ljava/lang/String;
    .end local v14           #url:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 124
    .local v8, e:Ljava/lang/IllegalArgumentException;
    const-string v0, "browser/NavigationHomeDataLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found error from bookmark accesses: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 89
    .end local v8           #e:Ljava/lang/IllegalArgumentException;
    .restart local v7       #cursor:Landroid/database/Cursor;
    .restart local v9       #id:I
    .restart local v13       #title:Ljava/lang/String;
    .restart local v14       #url:Ljava/lang/String;
    :cond_4
    :try_start_1
    invoke-static {v13}, Lcom/android/browser/api_v8/PatternsInternal;->stripUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_2

    .line 115
    .restart local v6       #aItem:Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;
    .restart local v10       #info:Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;
    .restart local v11       #preload:Z
    .restart local v12       #thumbnailFile:Ljava/io/File;
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, v6, Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;->loadingInProgress:Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    .line 126
    .end local v6           #aItem:Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;
    .end local v7           #cursor:Landroid/database/Cursor;
    .end local v9           #id:I
    .end local v10           #info:Lcom/android/browser/model/BrowserDatabaseHelper$PreloadPicInfoList;
    .end local v11           #preload:Z
    .end local v12           #thumbnailFile:Ljava/io/File;
    .end local v13           #title:Ljava/lang/String;
    .end local v14           #url:Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v8, v0

    .line 127
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    const-string v0, "browser/NavigationHomeDataLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found error from bookmark accesses: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 121
    .end local v8           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_6
    :try_start_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_2 .. :try_end_2} :catch_1

    .line 131
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/browser/model/NavigationHomeDataLoader;->_initialized:Z

    .line 132
    const/4 v0, 0x1

    goto/16 :goto_0
.end method


# virtual methods
.method public forceReload()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/model/NavigationHomeDataLoader;->_initialized:Z

    .line 56
    return-void
.end method

.method public getThumbnailList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/model/NavigationHomeDataLoader$ThumbnailData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/browser/model/NavigationHomeDataLoader;->_initialized:Z

    if-nez v0, :cond_0

    .line 39
    invoke-direct {p0}, Lcom/android/browser/model/NavigationHomeDataLoader;->initialize()Z

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/android/browser/model/NavigationHomeDataLoader;->_thumbnailInfo:Ljava/util/ArrayList;

    return-object v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 48
    const-string v0, "browser/NavigationHomeDataLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "javascript: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    return-void
.end method
