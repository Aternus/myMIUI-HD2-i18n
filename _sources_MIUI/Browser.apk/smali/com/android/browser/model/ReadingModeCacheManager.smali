.class public Lcom/android/browser/model/ReadingModeCacheManager;
.super Ljava/lang/Object;
.source "ReadingModeCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/model/ReadingModeCacheManager$CacheData;
    }
.end annotation


# static fields
.field private static final CACHE_FIELD_CONTENT:Ljava/lang/String; = "contentData"

.field private static final CACHE_FIELD_NEXT_LINK:Ljava/lang/String; = "nextLink"

.field private static final CACHE_FIELD_TITLE:Ljava/lang/String; = "title"

.field private static final CACHE_LIST_ALL:Ljava/lang/String; = "cached_list"

.field private static final CACHE_LIST_FILE_NAME:Ljava/lang/String; = "CacheList"

.field private static final CACHE_LIST_URL_LIST:Ljava/lang/String; = "url_list"

.field private static final CACHE_PATH:Ljava/lang/String; = "MIUI/browser/.cache/reading_data_cache/"

.field private static final LOG_TAG:Ljava/lang/String; = "com.android.browser.model.ReadingModeCacheManager"

.field private static final sCachedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/browser/model/ReadingModeCacheManager;->sCachedList:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Lcom/android/browser/model/ReadingModeCacheManager$1;

    invoke-direct {v0}, Lcom/android/browser/model/ReadingModeCacheManager$1;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/browser/model/ReadingModeCacheManager$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 97
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    return-void
.end method

.method static synthetic access$000()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/browser/model/ReadingModeCacheManager;->sCachedList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    invoke-static {}, Lcom/android/browser/model/ReadingModeCacheManager;->getCacheFolderPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static addCacheList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "fileName"
    .parameter "preFileName"

    .prologue
    .line 377
    sget-object v3, Lcom/android/browser/model/ReadingModeCacheManager;->sCachedList:Ljava/util/ArrayList;

    monitor-enter v3

    .line 378
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 379
    sget-object v4, Lcom/android/browser/model/ReadingModeCacheManager;->sCachedList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedHashMap;

    .line 380
    .local v2, oneList:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 382
    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 385
    invoke-virtual {v2, p0, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    :cond_1
    monitor-exit v3

    .line 397
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #oneList:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 393
    :cond_2
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 394
    .local v1, newList:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v1, p0, p0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    sget-object v4, Lcom/android/browser/model/ReadingModeCacheManager;->sCachedList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    monitor-exit v3

    goto :goto_0

    .end local v1           #newList:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public static deleteListFromCache(Ljava/lang/String;)V
    .locals 9
    .parameter "url"

    .prologue
    .line 139
    const/4 v6, 0x0

    .line 141
    .local v6, urlsToBeDeleted:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v7, Lcom/android/browser/model/ReadingModeCacheManager;->sCachedList:Ljava/util/ArrayList;

    monitor-enter v7

    .line 142
    :try_start_0
    invoke-static {p0}, Lcom/android/browser/common/MD5;->MD5_32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 143
    .local v0, fileName:Ljava/lang/String;
    sget-object v8, Lcom/android/browser/model/ReadingModeCacheManager;->sCachedList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/LinkedHashMap;

    .line 144
    .local v5, oneList:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v5, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 146
    sget-object v8, Lcom/android/browser/model/ReadingModeCacheManager;->sCachedList:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 147
    move-object v6, v5

    .line 151
    .end local v5           #oneList:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 154
    const-string v7, "com.android.browser.model.ReadingModeCacheManager"

    monitor-enter v7

    .line 155
    if-eqz v6, :cond_3

    .line 156
    :try_start_1
    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 157
    .end local p0
    .local v4, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/browser/model/ReadingModeCacheManager;->getCacheFolderPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 160
    .local v1, filePath:Ljava/lang/StringBuilder;
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 164
    .local v2, fileToBeDeleted:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 165
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 169
    .end local v1           #filePath:Ljava/lang/StringBuilder;
    .end local v2           #fileToBeDeleted:Ljava/io/File;
    .end local v4           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :catchall_0
    move-exception v8

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 151
    .end local v0           #fileName:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    .restart local p0
    :catchall_1
    move-exception v8

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v8

    .line 169
    .end local p0
    .restart local v0       #fileName:Ljava/lang/String;
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 170
    return-void
.end method

.method private static getCacheFilePathFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 400
    invoke-static {p0}, Lcom/android/browser/common/MD5;->MD5_32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, fileName:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/browser/model/ReadingModeCacheManager;->getCacheFolderPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 402
    .local v1, filePath:Ljava/lang/StringBuilder;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getCacheFolderPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 413
    .local v0, filePath:Ljava/lang/StringBuilder;
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MIUI/browser/.cache/reading_data_cache/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 416
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCachedData(Ljava/lang/String;)Lcom/android/browser/controller/ReadingModeController$ReadingData;
    .locals 2
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    invoke-static {p0}, Lcom/android/browser/model/ReadingModeCacheManager;->getCacheFilePathFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 299
    .local v1, filePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/browser/model/ReadingModeCacheManager;->loadCachedDataFromFile(Ljava/lang/String;)Lcom/android/browser/controller/ReadingModeController$ReadingData;

    move-result-object v0

    .line 300
    .local v0, data:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    if-eqz v0, :cond_0

    .line 301
    iput-object p0, v0, Lcom/android/browser/controller/ReadingModeController$ReadingData;->url:Ljava/lang/String;

    .line 303
    :cond_0
    return-object v0
.end method

.method public static getCachedPageNumber(Ljava/lang/String;)I
    .locals 8
    .parameter "url"

    .prologue
    .line 116
    sget-object v6, Lcom/android/browser/model/ReadingModeCacheManager;->sCachedList:Ljava/util/ArrayList;

    monitor-enter v6

    .line 117
    :try_start_0
    invoke-static {p0}, Lcom/android/browser/common/MD5;->MD5_32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    .local v1, fileName:Ljava/lang/String;
    sget-object v7, Lcom/android/browser/model/ReadingModeCacheManager;->sCachedList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/LinkedHashMap;

    .line 119
    .local v5, oneList:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v5, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 121
    const/4 v3, 0x0

    .line 122
    .local v3, index:I
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 123
    .end local p0
    .local v4, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 124
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 125
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 130
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->size()I

    move-result v7

    sub-int/2addr v7, v3

    monitor-exit v6

    move v6, v7

    .line 133
    .end local v3           #index:I
    .end local v4           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v5           #oneList:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_1
    return v6

    .line 128
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3       #index:I
    .restart local v4       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v5       #oneList:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 129
    goto :goto_0

    .line 133
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3           #index:I
    .end local v4           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v5           #oneList:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p0
    :cond_3
    const/4 v7, 0x0

    monitor-exit v6

    move v6, v7

    goto :goto_1

    .line 134
    .end local v1           #fileName:Ljava/lang/String;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local p0
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method public static getLastCachedDataFromUrl(Ljava/lang/String;Lcom/android/browser/model/ReadingModeCacheManager$CacheData;)I
    .locals 14
    .parameter "url"
    .parameter "outData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    const/4 v2, 0x0

    .line 254
    .local v2, cachedNum:I
    invoke-static {p0}, Lcom/android/browser/common/MD5;->MD5_32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 255
    .local v5, fileName:Ljava/lang/String;
    const/4 v8, 0x0

    .line 257
    .local v8, lastFileName:Ljava/lang/String;
    sget-object v13, Lcom/android/browser/model/ReadingModeCacheManager;->sCachedList:Ljava/util/ArrayList;

    monitor-enter v13

    .line 258
    :try_start_0
    sget-object v12, Lcom/android/browser/model/ReadingModeCacheManager;->sCachedList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local p0
    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/LinkedHashMap;

    .line 259
    .local v11, oneList:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v11, v5}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 260
    invoke-virtual {v11}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 261
    .local v7, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v4, 0x0

    .line 262
    .local v4, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 263
    .local v10, num:I
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 264
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast v4, Ljava/util/Map$Entry;

    .line 265
    .restart local v4       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 267
    invoke-virtual {v11}, Ljava/util/LinkedHashMap;->size()I

    move-result v12

    sub-int v2, v12, v10

    .line 269
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 271
    :cond_2
    if-eqz v4, :cond_0

    .line 273
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    goto :goto_0

    .line 277
    .end local v4           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v7           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v10           #num:I
    .end local v11           #oneList:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    if-eqz v8, :cond_4

    if-eqz p1, :cond_4

    .line 280
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/browser/model/ReadingModeCacheManager;->getCacheFolderPath()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 281
    .local v1, builder:Ljava/lang/StringBuilder;
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 283
    .local v9, lastFilePath:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/browser/model/ReadingModeCacheManager;->loadCachedDataFromFile(Ljava/lang/String;)Lcom/android/browser/controller/ReadingModeController$ReadingData;

    move-result-object v3

    .line 284
    .local v3, data:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    if-eqz v3, :cond_4

    .line 285
    new-instance v12, Lcom/android/browser/controller/ReadingModeController$ReadingData;

    invoke-direct {v12}, Lcom/android/browser/controller/ReadingModeController$ReadingData;-><init>()V

    iput-object v12, p1, Lcom/android/browser/model/ReadingModeCacheManager$CacheData;->data:Lcom/android/browser/controller/ReadingModeController$ReadingData;

    .line 286
    iget-object v12, p1, Lcom/android/browser/model/ReadingModeCacheManager$CacheData;->data:Lcom/android/browser/controller/ReadingModeController$ReadingData;

    iget-object v13, v3, Lcom/android/browser/controller/ReadingModeController$ReadingData;->content:Ljava/lang/String;

    iput-object v13, v12, Lcom/android/browser/controller/ReadingModeController$ReadingData;->content:Ljava/lang/String;

    .line 287
    iget-object v12, p1, Lcom/android/browser/model/ReadingModeCacheManager$CacheData;->data:Lcom/android/browser/controller/ReadingModeController$ReadingData;

    iget-object v13, v3, Lcom/android/browser/controller/ReadingModeController$ReadingData;->nextLink:Ljava/lang/String;

    iput-object v13, v12, Lcom/android/browser/controller/ReadingModeController$ReadingData;->nextLink:Ljava/lang/String;

    .line 288
    iget-object v12, p1, Lcom/android/browser/model/ReadingModeCacheManager$CacheData;->data:Lcom/android/browser/controller/ReadingModeController$ReadingData;

    iget-object v13, v3, Lcom/android/browser/controller/ReadingModeController$ReadingData;->title:Ljava/lang/String;

    iput-object v13, v12, Lcom/android/browser/controller/ReadingModeController$ReadingData;->title:Ljava/lang/String;

    .line 289
    iget-object v12, p1, Lcom/android/browser/model/ReadingModeCacheManager$CacheData;->data:Lcom/android/browser/controller/ReadingModeController$ReadingData;

    iget-object v13, v3, Lcom/android/browser/controller/ReadingModeController$ReadingData;->nextLink:Ljava/lang/String;

    iput-object v13, v12, Lcom/android/browser/controller/ReadingModeController$ReadingData;->url:Ljava/lang/String;

    .line 290
    iput-object v8, p1, Lcom/android/browser/model/ReadingModeCacheManager$CacheData;->fileName:Ljava/lang/String;

    .line 294
    .end local v1           #builder:Ljava/lang/StringBuilder;
    .end local v3           #data:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    .end local v9           #lastFilePath:Ljava/lang/String;
    :cond_4
    return v2

    .line 277
    .end local v6           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v12

    :try_start_1
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v12
.end method

.method public static isUrlInCache(Ljava/lang/String;)Z
    .locals 6
    .parameter "url"

    .prologue
    .line 100
    invoke-static {p0}, Lcom/android/browser/common/MD5;->MD5_32(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, fileName:Ljava/lang/String;
    const/4 v1, 0x0

    .line 103
    .local v1, found:Z
    sget-object v4, Lcom/android/browser/model/ReadingModeCacheManager;->sCachedList:Ljava/util/ArrayList;

    monitor-enter v4

    .line 104
    :try_start_0
    sget-object v5, Lcom/android/browser/model/ReadingModeCacheManager;->sCachedList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedHashMap;

    .line 105
    .local v3, oneList:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 106
    const/4 v1, 0x1

    .line 110
    .end local v3           #oneList:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    monitor-exit v4

    .line 111
    return v1

    .line 110
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private static loadCachedDataFromFile(Ljava/lang/String;)Lcom/android/browser/controller/ReadingModeController$ReadingData;
    .locals 10
    .parameter "filePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const-string v7, "com.android.browser.model.ReadingModeCacheManager"

    .line 307
    const-string v6, "com.android.browser.model.ReadingModeCacheManager"

    monitor-enter v7

    .line 308
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 309
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    .line 310
    monitor-exit v6

    move-object v6, v9

    .line 324
    :goto_0
    return-object v6

    .line 312
    :cond_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 313
    .local v3, fis:Ljava/io/FileInputStream;
    invoke-static {v3}, Lcom/android/browser/common/Strings;->convertStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 315
    .local v5, text:Ljava/lang/String;
    :try_start_1
    new-instance v0, Lcom/android/browser/controller/ReadingModeController$ReadingData;

    invoke-direct {v0}, Lcom/android/browser/controller/ReadingModeController$ReadingData;-><init>()V

    .line 316
    .local v0, data:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 317
    .local v4, obj:Lorg/json/JSONObject;
    const-string v7, "title"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/browser/controller/ReadingModeController$ReadingData;->title:Ljava/lang/String;

    .line 318
    const-string v7, "contentData"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/browser/controller/ReadingModeController$ReadingData;->content:Ljava/lang/String;

    .line 319
    const-string v7, "nextLink"

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/android/browser/controller/ReadingModeController$ReadingData;->nextLink:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 321
    :try_start_2
    monitor-exit v6

    move-object v6, v0

    goto :goto_0

    .line 322
    .end local v0           #data:Lcom/android/browser/controller/ReadingModeController$ReadingData;
    .end local v4           #obj:Lorg/json/JSONObject;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 323
    .local v1, e:Lorg/json/JSONException;
    const-string v7, "com.android.browser.model.ReadingModeCacheManager"

    const-string v8, "parse JSON object error"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
    monitor-exit v6

    move-object v6, v9

    goto :goto_0

    .line 326
    .end local v1           #e:Lorg/json/JSONException;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #fis:Ljava/io/FileInputStream;
    .end local v5           #text:Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7
.end method

.method public static markAsRead(Ljava/lang/String;)V
    .locals 7
    .parameter "url"

    .prologue
    .line 174
    invoke-static {p0}, Lcom/android/browser/model/ReadingModeCacheManager;->getCacheFilePathFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, filePath:Ljava/lang/String;
    const-string v5, "com.android.browser.model.ReadingModeCacheManager"

    monitor-enter v5

    .line 178
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 179
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 180
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 182
    :cond_0
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    sget-object v5, Lcom/android/browser/model/ReadingModeCacheManager;->sCachedList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 186
    :try_start_1
    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, fileName:Ljava/lang/String;
    sget-object v6, Lcom/android/browser/model/ReadingModeCacheManager;->sCachedList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedHashMap;

    .line 188
    .local v4, oneList:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v4, v1}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 189
    invoke-virtual {v4, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 191
    sget-object v6, Lcom/android/browser/model/ReadingModeCacheManager;->sCachedList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 196
    .end local v4           #oneList:Ljava/util/LinkedHashMap;,"Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 197
    return-void

    .line 182
    .end local v0           #file:Ljava/io/File;
    .end local v1           #fileName:Ljava/lang/String;
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .line 196
    .restart local v0       #file:Ljava/io/File;
    :catchall_1
    move-exception v6

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6
.end method

.method public static writeBackCachedList()V
    .locals 2

    .prologue
    .line 200
    new-instance v0, Lcom/android/browser/model/ReadingModeCacheManager$2;

    invoke-direct {v0}, Lcom/android/browser/model/ReadingModeCacheManager$2;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/browser/model/ReadingModeCacheManager$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 248
    return-void
.end method

.method public static writeCacheData(Lcom/android/browser/controller/ReadingModeController$ReadingData;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "data"
    .parameter "preFileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const-string v8, "com.android.browser.model.ReadingModeCacheManager"

    .line 330
    const-string v7, "com.android.browser.model.ReadingModeCacheManager"

    monitor-enter v8

    .line 331
    :try_start_0
    iget-object v8, p0, Lcom/android/browser/controller/ReadingModeController$ReadingData;->url:Ljava/lang/String;

    invoke-static {v8}, Lcom/android/browser/model/ReadingModeCacheManager;->getCacheFilePathFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 332
    .local v3, filePath:Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 333
    .local v6, obj:Lorg/json/JSONObject;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    const-string v9, "mounted"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 335
    monitor-exit v7

    move-object v7, v10

    .line 370
    :goto_0
    return-object v7

    .line 338
    :cond_0
    const/4 v4, 0x0

    .line 339
    .local v4, fos:Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 340
    .local v1, file:Ljava/io/File;
    const-string v8, "/"

    invoke-virtual {v3, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 341
    .local v2, fileName:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v8

    if-nez v8, :cond_1

    .line 344
    invoke-static {v2, p1}, Lcom/android/browser/model/ReadingModeCacheManager;->addCacheList(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v7, v2

    goto :goto_0

    .line 350
    :cond_1
    :try_start_1
    const-string v8, "contentData"

    iget-object v9, p0, Lcom/android/browser/controller/ReadingModeController$ReadingData;->content:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 351
    const-string v8, "title"

    iget-object v9, p0, Lcom/android/browser/controller/ReadingModeController$ReadingData;->title:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 352
    iget-object v8, p0, Lcom/android/browser/controller/ReadingModeController$ReadingData;->nextLink:Ljava/lang/String;

    if-nez v8, :cond_2

    .line 353
    const-string v8, ""

    iput-object v8, p0, Lcom/android/browser/controller/ReadingModeController$ReadingData;->nextLink:Ljava/lang/String;

    .line 355
    :cond_2
    const-string v8, "nextLink"

    iget-object v9, p0, Lcom/android/browser/controller/ReadingModeController$ReadingData;->nextLink:Ljava/lang/String;

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 357
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 358
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .local v5, fos:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 359
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->flush()V

    .line 362
    invoke-static {v2, p1}, Lcom/android/browser/model/ReadingModeCacheManager;->addCacheList(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 369
    if-eqz v5, :cond_3

    .line 370
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    :cond_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v7, v2

    goto :goto_0

    .line 364
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 365
    .local v0, e:Lorg/json/JSONException;
    :goto_1
    :try_start_4
    const-string v8, "com.android.browser.model.ReadingModeCacheManager"

    const-string v9, "Create JSON object error"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 369
    if-eqz v4, :cond_4

    .line 370
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    :cond_4
    monitor-exit v7

    move-object v7, v10

    goto :goto_0

    .line 369
    .end local v0           #e:Lorg/json/JSONException;
    :catchall_0
    move-exception v8

    :goto_2
    if-eqz v4, :cond_5

    .line 370
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    :cond_5
    throw v8

    .line 373
    .end local v1           #file:Ljava/io/File;
    .end local v2           #fileName:Ljava/lang/String;
    .end local v3           #filePath:Ljava/lang/String;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .end local v6           #obj:Lorg/json/JSONObject;
    :catchall_1
    move-exception v8

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v8

    .line 369
    .restart local v1       #file:Ljava/io/File;
    .restart local v2       #fileName:Ljava/lang/String;
    .restart local v3       #filePath:Ljava/lang/String;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    .restart local v6       #obj:Lorg/json/JSONObject;
    :catchall_2
    move-exception v8

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 364
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v8

    move-object v0, v8

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method
