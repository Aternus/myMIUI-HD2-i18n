.class public Lcom/android/gallery/data/GlobalBucket;
.super Ljava/lang/Object;
.source "GlobalBucket.java"


# static fields
.field private static sInstance:Lcom/android/gallery/data/GlobalBucket;


# instance fields
.field private mCurrentSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/gallery/data/DirInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDirInfos:Lcom/android/gallery/data/SortedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery/data/SortedList",
            "<",
            "Lcom/android/gallery/data/DirInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaCahce:Lcom/android/gallery/data/MediaCache;

.field private mMetaComparator:Lcom/android/gallery/data/DirInfo$DirInfoComparator;

.field private mShowFavoriteOnly:Z

.field private mShowHiddenAlbum:Z

.field private mToBeRemove:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/gallery/data/DirInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Lcom/android/gallery/data/MediaCache;->getInstance()Lcom/android/gallery/data/MediaCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery/data/GlobalBucket;->mMediaCahce:Lcom/android/gallery/data/MediaCache;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery/data/GlobalBucket;->mCurrentSet:Ljava/util/HashMap;

    .line 34
    new-instance v0, Lcom/android/gallery/data/DirInfo$DirInfoComparator;

    invoke-direct {v0}, Lcom/android/gallery/data/DirInfo$DirInfoComparator;-><init>()V

    iput-object v0, p0, Lcom/android/gallery/data/GlobalBucket;->mMetaComparator:Lcom/android/gallery/data/DirInfo$DirInfoComparator;

    .line 35
    iget-object v0, p0, Lcom/android/gallery/data/GlobalBucket;->mMetaComparator:Lcom/android/gallery/data/DirInfo$DirInfoComparator;

    invoke-virtual {p0}, Lcom/android/gallery/data/GlobalBucket;->getSortOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery/data/DirInfo$DirInfoComparator;->setSortMethod(I)V

    .line 36
    new-instance v0, Lcom/android/gallery/data/SortedList;

    iget-object v1, p0, Lcom/android/gallery/data/GlobalBucket;->mMetaComparator:Lcom/android/gallery/data/DirInfo$DirInfoComparator;

    invoke-direct {v0, v1}, Lcom/android/gallery/data/SortedList;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/gallery/data/GlobalBucket;->mDirInfos:Lcom/android/gallery/data/SortedList;

    .line 37
    return-void
.end method

.method private applyFilter()V
    .locals 3

    .prologue
    .line 86
    iget-object v2, p0, Lcom/android/gallery/data/GlobalBucket;->mDirInfos:Lcom/android/gallery/data/SortedList;

    invoke-virtual {v2}, Lcom/android/gallery/data/SortedList;->clear()V

    .line 87
    iget-object v2, p0, Lcom/android/gallery/data/GlobalBucket;->mCurrentSet:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery/data/DirInfo;

    .line 88
    .local v1, meta:Lcom/android/gallery/data/DirInfo;
    invoke-direct {p0, v1}, Lcom/android/gallery/data/GlobalBucket;->shouldBeFilter(Lcom/android/gallery/data/DirInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/android/gallery/data/GlobalBucket;->mDirInfos:Lcom/android/gallery/data/SortedList;

    invoke-virtual {v2, v1}, Lcom/android/gallery/data/SortedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    .end local v1           #meta:Lcom/android/gallery/data/DirInfo;
    :cond_1
    return-void
.end method

.method public static getInstance()Lcom/android/gallery/data/GlobalBucket;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/android/gallery/data/GlobalBucket;->sInstance:Lcom/android/gallery/data/GlobalBucket;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/android/gallery/data/GlobalBucket;

    invoke-direct {v0}, Lcom/android/gallery/data/GlobalBucket;-><init>()V

    sput-object v0, Lcom/android/gallery/data/GlobalBucket;->sInstance:Lcom/android/gallery/data/GlobalBucket;

    .line 30
    :cond_0
    sget-object v0, Lcom/android/gallery/data/GlobalBucket;->sInstance:Lcom/android/gallery/data/GlobalBucket;

    return-object v0
.end method

.method private loadFileBucket(IZ)V
    .locals 11
    .parameter "type"
    .parameter "isInternal"

    .prologue
    .line 157
    const/4 v6, 0x0

    .line 159
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v0, Lcom/android/gallery/app/GalleryApplication;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/android/gallery/data/MediaStoreHelper;->getUri(IZ)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    const-string v3, "1) group by (bucket_id"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 166
    if-eqz v6, :cond_4

    .line 167
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 168
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 169
    .local v7, data:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/gallery/util/StorageUtils;->getFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 171
    .local v10, path:Ljava/lang/String;
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    .local v9, file:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/android/gallery/data/GlobalBucket;->mCurrentSet:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 176
    iget-object v0, p0, Lcom/android/gallery/data/GlobalBucket;->mToBeRemove:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    .end local v7           #data:Ljava/lang/String;
    .end local v9           #file:Ljava/io/File;
    .end local v10           #path:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 184
    .local v8, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 188
    .end local v8           #e:Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void

    .line 179
    .restart local v7       #data:Ljava/lang/String;
    .restart local v9       #file:Ljava/io/File;
    .restart local v10       #path:Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-static {v10}, Lcom/android/gallery/data/FileInfo;->getFileInfo(Ljava/lang/String;)Lcom/android/gallery/data/FileInfo;

    move-result-object v0

    check-cast v0, Lcom/android/gallery/data/DirInfo;

    invoke-virtual {p0, v0}, Lcom/android/gallery/data/GlobalBucket;->addItem(Lcom/android/gallery/data/DirInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 186
    .end local v7           #data:Ljava/lang/String;
    .end local v9           #file:Ljava/io/File;
    .end local v10           #path:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :cond_4
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private loadFileBucket(Z)V
    .locals 1
    .parameter "is_internal"

    .prologue
    .line 152
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/gallery/data/GlobalBucket;->loadFileBucket(IZ)V

    .line 153
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/android/gallery/data/GlobalBucket;->loadFileBucket(IZ)V

    .line 154
    return-void
.end method

.method private shouldBeFilter(Lcom/android/gallery/data/DirInfo;)Z
    .locals 1
    .parameter "meta"

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/android/gallery/data/GlobalBucket;->mShowFavoriteOnly:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/gallery/data/DirInfo;->isFavorite()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/gallery/data/GlobalBucket;->mShowHiddenAlbum:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/gallery/data/DirInfo;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addItem(Lcom/android/gallery/data/DirInfo;)V
    .locals 2
    .parameter "meta"

    .prologue
    .line 111
    if-nez p1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/android/gallery/data/GlobalBucket;->mCurrentSet:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-direct {p0, p1}, Lcom/android/gallery/data/GlobalBucket;->shouldBeFilter(Lcom/android/gallery/data/DirInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/gallery/data/GlobalBucket;->mDirInfos:Lcom/android/gallery/data/SortedList;

    invoke-virtual {v0, p1}, Lcom/android/gallery/data/SortedList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/gallery/data/GlobalBucket;->mDirInfos:Lcom/android/gallery/data/SortedList;

    invoke-virtual {v0}, Lcom/android/gallery/data/SortedList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/gallery/data/DirInfo;
    .locals 1
    .parameter "index"

    .prologue
    .line 104
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/gallery/data/GlobalBucket;->mDirInfos:Lcom/android/gallery/data/SortedList;

    invoke-virtual {v0}, Lcom/android/gallery/data/SortedList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/gallery/data/GlobalBucket;->mDirInfos:Lcom/android/gallery/data/SortedList;

    invoke-virtual {v0, p1}, Lcom/android/gallery/data/SortedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/gallery/data/DirInfo;

    move-object v0, p0

    .line 107
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSortOrder()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/gallery/data/GlobalBucket;->mMetaComparator:Lcom/android/gallery/data/DirInfo$DirInfoComparator;

    invoke-virtual {v0}, Lcom/android/gallery/data/DirInfo$DirInfoComparator;->getSortMethod()I

    move-result v0

    return v0
.end method

.method public loadAllMedias()V
    .locals 3

    .prologue
    .line 137
    iget-object v2, p0, Lcom/android/gallery/data/GlobalBucket;->mMediaCahce:Lcom/android/gallery/data/MediaCache;

    invoke-virtual {v2}, Lcom/android/gallery/data/MediaCache;->isDataChangedAndSet()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 138
    iget-object v2, p0, Lcom/android/gallery/data/GlobalBucket;->mCurrentSet:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iput-object v2, p0, Lcom/android/gallery/data/GlobalBucket;->mToBeRemove:Ljava/util/HashMap;

    .line 139
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/gallery/data/GlobalBucket;->loadFileBucket(Z)V

    .line 140
    invoke-static {}, Lcom/android/gallery/util/StorageUtils;->hasStorage()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/gallery/data/GlobalBucket;->loadFileBucket(Z)V

    .line 144
    :cond_0
    iget-object v2, p0, Lcom/android/gallery/data/GlobalBucket;->mToBeRemove:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery/data/DirInfo;

    .line 145
    .local v1, meta:Lcom/android/gallery/data/DirInfo;
    invoke-virtual {p0, v1}, Lcom/android/gallery/data/GlobalBucket;->removeItem(Lcom/android/gallery/data/DirInfo;)V

    goto :goto_0

    .line 147
    .end local v1           #meta:Lcom/android/gallery/data/DirInfo;
    :cond_1
    iget-object v2, p0, Lcom/android/gallery/data/GlobalBucket;->mToBeRemove:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 149
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method public removeItem(I)V
    .locals 3
    .parameter "index"

    .prologue
    .line 120
    invoke-virtual {p0, p1}, Lcom/android/gallery/data/GlobalBucket;->getItem(I)Lcom/android/gallery/data/DirInfo;

    move-result-object v0

    .line 121
    .local v0, meta:Lcom/android/gallery/data/DirInfo;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/gallery/data/GlobalBucket;->mCurrentSet:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/android/gallery/data/GlobalBucket;->mDirInfos:Lcom/android/gallery/data/SortedList;

    invoke-virtual {v1, p1}, Lcom/android/gallery/data/SortedList;->remove(I)Ljava/lang/Object;

    .line 124
    :cond_0
    return-void
.end method

.method public removeItem(Lcom/android/gallery/data/DirInfo;)V
    .locals 3
    .parameter "meta"

    .prologue
    .line 127
    iget-object v1, p0, Lcom/android/gallery/data/GlobalBucket;->mCurrentSet:Ljava/util/HashMap;

    iget-object v2, p1, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 133
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-object v1, p0, Lcom/android/gallery/data/GlobalBucket;->mDirInfos:Lcom/android/gallery/data/SortedList;

    invoke-virtual {v1, p1}, Lcom/android/gallery/data/SortedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 130
    .local v0, position:I
    if-ltz v0, :cond_0

    .line 131
    iget-object v1, p0, Lcom/android/gallery/data/GlobalBucket;->mDirInfos:Lcom/android/gallery/data/SortedList;

    invoke-virtual {v1, v0}, Lcom/android/gallery/data/SortedList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setFilterFavorite(Z)Z
    .locals 1
    .parameter "favoriteOnly"

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/android/gallery/data/GlobalBucket;->mShowFavoriteOnly:Z

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    .line 55
    :goto_0
    return v0

    .line 53
    :cond_0
    iput-boolean p1, p0, Lcom/android/gallery/data/GlobalBucket;->mShowFavoriteOnly:Z

    .line 54
    invoke-direct {p0}, Lcom/android/gallery/data/GlobalBucket;->applyFilter()V

    .line 55
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setFilterHidden(Z)Z
    .locals 1
    .parameter "showHidden"

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/gallery/data/GlobalBucket;->mShowHiddenAlbum:Z

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    .line 74
    :goto_0
    return v0

    .line 72
    :cond_0
    iput-boolean p1, p0, Lcom/android/gallery/data/GlobalBucket;->mShowHiddenAlbum:Z

    .line 73
    invoke-direct {p0}, Lcom/android/gallery/data/GlobalBucket;->applyFilter()V

    .line 74
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSortOrder(I)V
    .locals 2
    .parameter "sortOrder"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/gallery/data/GlobalBucket;->mMetaComparator:Lcom/android/gallery/data/DirInfo$DirInfoComparator;

    invoke-virtual {v0}, Lcom/android/gallery/data/DirInfo$DirInfoComparator;->getSortMethod()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 48
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/gallery/data/GlobalBucket;->mMetaComparator:Lcom/android/gallery/data/DirInfo$DirInfoComparator;

    invoke-virtual {v0, p1}, Lcom/android/gallery/data/DirInfo$DirInfoComparator;->setSortMethod(I)V

    .line 47
    iget-object v0, p0, Lcom/android/gallery/data/GlobalBucket;->mDirInfos:Lcom/android/gallery/data/SortedList;

    iget-object v1, p0, Lcom/android/gallery/data/GlobalBucket;->mMetaComparator:Lcom/android/gallery/data/DirInfo$DirInfoComparator;

    invoke-virtual {v0, v1}, Lcom/android/gallery/data/SortedList;->setComparator(Ljava/util/Comparator;)V

    goto :goto_0
.end method

.method public toggleFavorite(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/android/gallery/data/GlobalBucket;->getItem(I)Lcom/android/gallery/data/DirInfo;

    move-result-object v0

    .line 60
    .local v0, meta:Lcom/android/gallery/data/DirInfo;
    invoke-virtual {v0}, Lcom/android/gallery/data/DirInfo;->isFavorite()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/gallery/data/DirInfo;->setFavorite(Z)V

    .line 61
    iget-boolean v1, p0, Lcom/android/gallery/data/GlobalBucket;->mShowFavoriteOnly:Z

    if-eqz v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/android/gallery/data/GlobalBucket;->mDirInfos:Lcom/android/gallery/data/SortedList;

    invoke-virtual {v1, p1}, Lcom/android/gallery/data/SortedList;->remove(I)Ljava/lang/Object;

    .line 64
    :cond_0
    return-void

    .line 60
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toggleHidden(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 78
    invoke-virtual {p0, p1}, Lcom/android/gallery/data/GlobalBucket;->getItem(I)Lcom/android/gallery/data/DirInfo;

    move-result-object v0

    .line 79
    .local v0, meta:Lcom/android/gallery/data/DirInfo;
    invoke-virtual {v0}, Lcom/android/gallery/data/DirInfo;->isHidden()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/gallery/data/DirInfo;->setHidden(Z)V

    .line 80
    iget-boolean v1, p0, Lcom/android/gallery/data/GlobalBucket;->mShowHiddenAlbum:Z

    if-nez v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/android/gallery/data/GlobalBucket;->mDirInfos:Lcom/android/gallery/data/SortedList;

    invoke-virtual {v1, p1}, Lcom/android/gallery/data/SortedList;->remove(I)Ljava/lang/Object;

    .line 83
    :cond_0
    return-void

    .line 79
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
