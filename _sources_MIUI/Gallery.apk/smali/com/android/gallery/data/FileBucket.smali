.class public Lcom/android/gallery/data/FileBucket;
.super Ljava/lang/Object;
.source "FileBucket.java"


# static fields
.field private static mFileBucketCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/gallery/data/FileBucket;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mDirInfo:Lcom/android/gallery/data/DirInfo;

.field private mDirInfos:Lcom/android/gallery/data/SortedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery/data/SortedList",
            "<",
            "Lcom/android/gallery/data/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mFavoriteFolderCount:I

.field private mFileInfos:Lcom/android/gallery/data/SortedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/gallery/data/SortedList",
            "<",
            "Lcom/android/gallery/data/FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Lcom/android/gallery/data/MediaFileFilter;

.field public mImageNum:I

.field private mMetaComparator:Lcom/android/gallery/data/BaseMeta$BaseMetaComparator;

.field private mRequestFilterFlags:I

.field public mVideoNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 196
    new-instance v0, Lcom/android/gallery/data/FileBucket$1;

    invoke-direct {v0}, Lcom/android/gallery/data/FileBucket$1;-><init>()V

    sput-object v0, Lcom/android/gallery/data/FileBucket;->mFileBucketCache:Ljava/util/LinkedHashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Lcom/android/gallery/data/MediaFileFilter;

    invoke-direct {v0}, Lcom/android/gallery/data/MediaFileFilter;-><init>()V

    iput-object v0, p0, Lcom/android/gallery/data/FileBucket;->mFilter:Lcom/android/gallery/data/MediaFileFilter;

    .line 18
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/gallery/data/FileBucket;->mRequestFilterFlags:I

    .line 28
    invoke-static {p1}, Lcom/android/gallery/data/FileInfo;->getFileInfo(Ljava/lang/String;)Lcom/android/gallery/data/FileInfo;

    move-result-object v0

    check-cast v0, Lcom/android/gallery/data/DirInfo;

    iput-object v0, p0, Lcom/android/gallery/data/FileBucket;->mDirInfo:Lcom/android/gallery/data/DirInfo;

    .line 30
    new-instance v0, Lcom/android/gallery/data/BaseMeta$BaseMetaComparator;

    invoke-direct {v0}, Lcom/android/gallery/data/BaseMeta$BaseMetaComparator;-><init>()V

    iput-object v0, p0, Lcom/android/gallery/data/FileBucket;->mMetaComparator:Lcom/android/gallery/data/BaseMeta$BaseMetaComparator;

    .line 31
    iget-object v0, p0, Lcom/android/gallery/data/FileBucket;->mMetaComparator:Lcom/android/gallery/data/BaseMeta$BaseMetaComparator;

    invoke-virtual {p0}, Lcom/android/gallery/data/FileBucket;->getSortOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery/data/BaseMeta$BaseMetaComparator;->setSortMethod(I)V

    .line 32
    new-instance v0, Lcom/android/gallery/data/SortedList;

    iget-object v1, p0, Lcom/android/gallery/data/FileBucket;->mMetaComparator:Lcom/android/gallery/data/BaseMeta$BaseMetaComparator;

    invoke-direct {v0, v1}, Lcom/android/gallery/data/SortedList;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/gallery/data/FileBucket;->mFileInfos:Lcom/android/gallery/data/SortedList;

    .line 33
    new-instance v0, Lcom/android/gallery/data/SortedList;

    iget-object v1, p0, Lcom/android/gallery/data/FileBucket;->mMetaComparator:Lcom/android/gallery/data/BaseMeta$BaseMetaComparator;

    invoke-direct {v0, v1}, Lcom/android/gallery/data/SortedList;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/android/gallery/data/FileBucket;->mDirInfos:Lcom/android/gallery/data/SortedList;

    .line 34
    return-void
.end method

.method public static declared-synchronized getBucket(Ljava/lang/String;)Lcom/android/gallery/data/FileBucket;
    .locals 3
    .parameter "path"

    .prologue
    .line 206
    const-class v1, Lcom/android/gallery/data/FileBucket;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/gallery/data/FileBucket;->mFileBucketCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery/data/FileBucket;

    .line 207
    .local v0, bucket:Lcom/android/gallery/data/FileBucket;
    if-nez v0, :cond_0

    .line 208
    new-instance v0, Lcom/android/gallery/data/FileBucket;

    .end local v0           #bucket:Lcom/android/gallery/data/FileBucket;
    invoke-direct {v0, p0}, Lcom/android/gallery/data/FileBucket;-><init>(Ljava/lang/String;)V

    .line 209
    .restart local v0       #bucket:Lcom/android/gallery/data/FileBucket;
    sget-object v2, Lcom/android/gallery/data/FileBucket;->mFileBucketCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    :cond_0
    monitor-exit v1

    return-object v0

    .line 206
    .end local v0           #bucket:Lcom/android/gallery/data/FileBucket;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method


# virtual methods
.method public addMeta(Lcom/android/gallery/data/FileInfo;)V
    .locals 1
    .parameter "meta"

    .prologue
    .line 103
    if-nez p1, :cond_1

    .line 120
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 105
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Lcom/android/gallery/data/FileInfo;->isDir()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    iget-object v0, p0, Lcom/android/gallery/data/FileBucket;->mDirInfos:Lcom/android/gallery/data/SortedList;

    invoke-virtual {v0, p1}, Lcom/android/gallery/data/SortedList;->add(Ljava/lang/Object;)Z

    .line 107
    if-eqz p1, :cond_0

    check-cast p1, Lcom/android/gallery/data/DirInfo;

    .end local p1
    invoke-virtual {p1}, Lcom/android/gallery/data/DirInfo;->isFavorite()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget v0, p0, Lcom/android/gallery/data/FileBucket;->mFavoriteFolderCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery/data/FileBucket;->mFavoriteFolderCount:I

    goto :goto_0

    .line 112
    .restart local p1
    :cond_2
    iget-object v0, p0, Lcom/android/gallery/data/FileBucket;->mFileInfos:Lcom/android/gallery/data/SortedList;

    invoke-virtual {v0, p1}, Lcom/android/gallery/data/SortedList;->add(Ljava/lang/Object;)Z

    .line 113
    iget-boolean v0, p1, Lcom/android/gallery/data/BaseMeta;->mIsImage:Z

    if-eqz v0, :cond_3

    .line 114
    iget v0, p0, Lcom/android/gallery/data/FileBucket;->mImageNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery/data/FileBucket;->mImageNum:I

    goto :goto_0

    .line 116
    :cond_3
    iget-boolean v0, p1, Lcom/android/gallery/data/BaseMeta;->mIsVideo:Z

    if-eqz v0, :cond_0

    .line 117
    iget v0, p0, Lcom/android/gallery/data/FileBucket;->mVideoNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery/data/FileBucket;->mVideoNum:I

    goto :goto_0
.end method

.method public deleteAllMedia()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/gallery/data/FileBucket;->mFileInfos:Lcom/android/gallery/data/SortedList;

    invoke-virtual {p0, v0}, Lcom/android/gallery/data/FileBucket;->deleteMedias(Ljava/util/ArrayList;)V

    .line 143
    iget-object v0, p0, Lcom/android/gallery/data/FileBucket;->mDirInfos:Lcom/android/gallery/data/SortedList;

    invoke-virtual {p0, v0}, Lcom/android/gallery/data/FileBucket;->deleteMedias(Ljava/util/ArrayList;)V

    .line 144
    return-void
.end method

.method public deleteMedia(Lcom/android/gallery/data/FileInfo;)V
    .locals 2
    .parameter "meta"

    .prologue
    .line 154
    iget-object v1, p0, Lcom/android/gallery/data/FileBucket;->mDirInfo:Lcom/android/gallery/data/DirInfo;

    invoke-virtual {v1}, Lcom/android/gallery/data/DirInfo;->isModified()Z

    move-result v0

    .line 155
    .local v0, isModified:Z
    invoke-virtual {p1}, Lcom/android/gallery/data/FileInfo;->delete()V

    .line 156
    invoke-virtual {p1}, Lcom/android/gallery/data/FileInfo;->isDir()Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    invoke-virtual {p0, p1}, Lcom/android/gallery/data/FileBucket;->removeMeta(Lcom/android/gallery/data/FileInfo;)V

    .line 159
    :cond_0
    if-nez v0, :cond_1

    .line 160
    iget-object v1, p0, Lcom/android/gallery/data/FileBucket;->mDirInfo:Lcom/android/gallery/data/DirInfo;

    invoke-virtual {v1}, Lcom/android/gallery/data/DirInfo;->clearModifiedFlags()V

    .line 162
    :cond_1
    return-void
.end method

.method public deleteMedias(Ljava/util/ArrayList;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery/data/FileInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p1, metas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/gallery/data/FileInfo;>;"
    if-nez p1, :cond_1

    .line 151
    :cond_0
    return-void

    .line 148
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 149
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery/data/FileInfo;

    invoke-virtual {p0, v1}, Lcom/android/gallery/data/FileBucket;->deleteMedia(Lcom/android/gallery/data/FileInfo;)V

    .line 148
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/gallery/data/FileBucket;->mFileInfos:Lcom/android/gallery/data/SortedList;

    invoke-virtual {v0}, Lcom/android/gallery/data/SortedList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery/data/FileBucket;->mDirInfos:Lcom/android/gallery/data/SortedList;

    invoke-virtual {v1}, Lcom/android/gallery/data/SortedList;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getFileCount()I
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/gallery/data/FileBucket;->mFileInfos:Lcom/android/gallery/data/SortedList;

    invoke-virtual {v0}, Lcom/android/gallery/data/SortedList;->size()I

    move-result v0

    return v0
.end method

.method public getFileMeta(I)Lcom/android/gallery/data/FileInfo;
    .locals 1
    .parameter "index"

    .prologue
    .line 77
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/gallery/data/FileBucket;->mFileInfos:Lcom/android/gallery/data/SortedList;

    invoke-virtual {v0}, Lcom/android/gallery/data/SortedList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/gallery/data/FileBucket;->mFileInfos:Lcom/android/gallery/data/SortedList;

    invoke-virtual {v0, p1}, Lcom/android/gallery/data/SortedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/gallery/data/FileInfo;

    move-object v0, p0

    .line 80
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMeta(I)Lcom/android/gallery/data/FileInfo;
    .locals 1
    .parameter "index"

    .prologue
    .line 88
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/gallery/data/FileBucket;->mDirInfos:Lcom/android/gallery/data/SortedList;

    invoke-virtual {v0}, Lcom/android/gallery/data/SortedList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/gallery/data/FileBucket;->mDirInfos:Lcom/android/gallery/data/SortedList;

    invoke-virtual {v0, p1}, Lcom/android/gallery/data/SortedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/gallery/data/FileInfo;

    move-object v0, p0

    .line 99
    :goto_0
    return-object v0

    .line 92
    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/gallery/data/FileBucket;->mDirInfos:Lcom/android/gallery/data/SortedList;

    invoke-virtual {v0}, Lcom/android/gallery/data/SortedList;->size()I

    move-result v0

    sub-int/2addr p1, v0

    .line 95
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/android/gallery/data/FileBucket;->mFileInfos:Lcom/android/gallery/data/SortedList;

    invoke-virtual {v0}, Lcom/android/gallery/data/SortedList;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 96
    iget-object v0, p0, Lcom/android/gallery/data/FileBucket;->mFileInfos:Lcom/android/gallery/data/SortedList;

    invoke-virtual {v0, p1}, Lcom/android/gallery/data/SortedList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/gallery/data/FileInfo;

    move-object v0, p0

    goto :goto_0

    .line 99
    .restart local p0
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParentPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/gallery/data/FileBucket;->mDirInfo:Lcom/android/gallery/data/DirInfo;

    iget-object v0, v0, Lcom/android/gallery/data/FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/gallery/data/FileBucket;->mDirInfo:Lcom/android/gallery/data/DirInfo;

    iget-object v0, v0, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSortOrder()I
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/gallery/data/FileBucket;->mDirInfo:Lcom/android/gallery/data/DirInfo;

    invoke-virtual {v0}, Lcom/android/gallery/data/DirInfo;->getSortOrder()I

    move-result v0

    return v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/gallery/data/FileBucket;->mDirInfo:Lcom/android/gallery/data/DirInfo;

    invoke-virtual {v0, p1}, Lcom/android/gallery/data/DirInfo;->getTilte(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isCamera()Z
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery/data/FileBucket;->mDirInfo:Lcom/android/gallery/data/DirInfo;

    invoke-virtual {v0}, Lcom/android/gallery/data/DirInfo;->isCamera()Z

    move-result v0

    return v0
.end method

.method public isFavorite()Z
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/gallery/data/FileBucket;->mDirInfo:Lcom/android/gallery/data/DirInfo;

    invoke-virtual {v0}, Lcom/android/gallery/data/DirInfo;->isFavorite()Z

    move-result v0

    return v0
.end method

.method public isModified()Z
    .locals 2

    .prologue
    .line 49
    iget v0, p0, Lcom/android/gallery/data/FileBucket;->mRequestFilterFlags:I

    invoke-virtual {p0, v0}, Lcom/android/gallery/data/FileBucket;->setFilterFlags(I)V

    .line 50
    iget-object v0, p0, Lcom/android/gallery/data/FileBucket;->mFilter:Lcom/android/gallery/data/MediaFileFilter;

    invoke-virtual {v0}, Lcom/android/gallery/data/MediaFileFilter;->getFilterFlags()I

    move-result v0

    iget v1, p0, Lcom/android/gallery/data/FileBucket;->mRequestFilterFlags:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/gallery/data/FileBucket;->mDirInfo:Lcom/android/gallery/data/DirInfo;

    invoke-virtual {v0}, Lcom/android/gallery/data/DirInfo;->isModified()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadAllMedias()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 165
    iget-object v6, p0, Lcom/android/gallery/data/FileBucket;->mDirInfo:Lcom/android/gallery/data/DirInfo;

    invoke-virtual {v6}, Lcom/android/gallery/data/DirInfo;->loadAllData()V

    .line 167
    iget-object v6, p0, Lcom/android/gallery/data/FileBucket;->mFileInfos:Lcom/android/gallery/data/SortedList;

    invoke-virtual {v6}, Lcom/android/gallery/data/SortedList;->clear()V

    .line 168
    iget-object v6, p0, Lcom/android/gallery/data/FileBucket;->mDirInfos:Lcom/android/gallery/data/SortedList;

    invoke-virtual {v6}, Lcom/android/gallery/data/SortedList;->clear()V

    .line 169
    iput v7, p0, Lcom/android/gallery/data/FileBucket;->mFavoriteFolderCount:I

    .line 170
    iput v7, p0, Lcom/android/gallery/data/FileBucket;->mImageNum:I

    .line 171
    iput v7, p0, Lcom/android/gallery/data/FileBucket;->mVideoNum:I

    .line 173
    iget-object v6, p0, Lcom/android/gallery/data/FileBucket;->mFilter:Lcom/android/gallery/data/MediaFileFilter;

    iget v7, p0, Lcom/android/gallery/data/FileBucket;->mRequestFilterFlags:I

    invoke-virtual {v6, v7}, Lcom/android/gallery/data/MediaFileFilter;->setFilterFlags(I)V

    .line 174
    iget-object v6, p0, Lcom/android/gallery/data/FileBucket;->mDirInfo:Lcom/android/gallery/data/DirInfo;

    iget-object v6, v6, Lcom/android/gallery/data/FileInfo;->mFile:Ljava/io/File;

    iget-object v7, p0, Lcom/android/gallery/data/FileBucket;->mFilter:Lcom/android/gallery/data/MediaFileFilter;

    invoke-virtual {v6, v7}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v5

    .line 175
    .local v5, listFiles:[Ljava/io/File;
    if-nez v5, :cond_1

    .line 181
    :cond_0
    return-void

    .line 177
    :cond_1
    move-object v0, v5

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    .line 178
    .local v1, child:Ljava/io/File;
    iget-object v6, p0, Lcom/android/gallery/data/FileBucket;->mFilter:Lcom/android/gallery/data/MediaFileFilter;

    invoke-static {v1, v6}, Lcom/android/gallery/data/FileInfo;->getFileInfo(Ljava/io/File;Lcom/android/gallery/data/MediaFileFilter;)Lcom/android/gallery/data/FileInfo;

    move-result-object v3

    .line 179
    .local v3, info:Lcom/android/gallery/data/FileInfo;
    invoke-virtual {p0, v3}, Lcom/android/gallery/data/FileBucket;->addMeta(Lcom/android/gallery/data/FileInfo;)V

    .line 177
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public removeMeta(Lcom/android/gallery/data/FileInfo;)V
    .locals 3
    .parameter "meta"

    .prologue
    const/4 v2, 0x1

    .line 123
    iget-object v1, p0, Lcom/android/gallery/data/FileBucket;->mFileInfos:Lcom/android/gallery/data/SortedList;

    invoke-virtual {v1, p1}, Lcom/android/gallery/data/SortedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 124
    .local v0, position:I
    if-ltz v0, :cond_2

    .line 125
    iget-object v1, p0, Lcom/android/gallery/data/FileBucket;->mFileInfos:Lcom/android/gallery/data/SortedList;

    invoke-virtual {v1, v0}, Lcom/android/gallery/data/SortedList;->remove(I)Ljava/lang/Object;

    .line 126
    iget-boolean v1, p1, Lcom/android/gallery/data/BaseMeta;->mIsImage:Z

    if-eqz v1, :cond_1

    .line 127
    iget v1, p0, Lcom/android/gallery/data/FileBucket;->mImageNum:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/gallery/data/FileBucket;->mImageNum:I

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 129
    :cond_1
    iget-boolean v1, p1, Lcom/android/gallery/data/BaseMeta;->mIsVideo:Z

    if-eqz v1, :cond_0

    .line 130
    iget v1, p0, Lcom/android/gallery/data/FileBucket;->mVideoNum:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/gallery/data/FileBucket;->mVideoNum:I

    goto :goto_0

    .line 135
    :cond_2
    iget-object v1, p0, Lcom/android/gallery/data/FileBucket;->mDirInfos:Lcom/android/gallery/data/SortedList;

    invoke-virtual {v1, p1}, Lcom/android/gallery/data/SortedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 136
    if-ltz v0, :cond_0

    .line 137
    iget-object v1, p0, Lcom/android/gallery/data/FileBucket;->mDirInfos:Lcom/android/gallery/data/SortedList;

    invoke-virtual {v1, v0}, Lcom/android/gallery/data/SortedList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setCustomizedCover(Lcom/android/gallery/data/FileInfo;)V
    .locals 1
    .parameter "cover"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/gallery/data/FileBucket;->mDirInfo:Lcom/android/gallery/data/DirInfo;

    invoke-virtual {v0, p1}, Lcom/android/gallery/data/DirInfo;->setCustomizedCover(Lcom/android/gallery/data/BaseMeta;)V

    .line 63
    return-void
.end method

.method public setFavorite(Z)V
    .locals 1
    .parameter "isFavorite"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/gallery/data/FileBucket;->mDirInfo:Lcom/android/gallery/data/DirInfo;

    invoke-virtual {v0, p1}, Lcom/android/gallery/data/DirInfo;->setFavorite(Z)V

    .line 70
    return-void
.end method

.method public setFilterFlags(I)V
    .locals 2
    .parameter "filterFlags"

    .prologue
    .line 37
    and-int/lit8 v0, p1, 0x1d

    sget-boolean v1, Lcom/android/gallery/util/PreferenceHelper;->sShowHiddenAlbum:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/gallery/data/FileBucket;->mRequestFilterFlags:I

    .line 39
    return-void

    .line 37
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public setSortOrder(I)V
    .locals 2
    .parameter "sortOrder"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/gallery/data/FileBucket;->mMetaComparator:Lcom/android/gallery/data/BaseMeta$BaseMetaComparator;

    invoke-virtual {v0}, Lcom/android/gallery/data/BaseMeta$BaseMetaComparator;->getSortMethod()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 194
    :goto_0
    return-void

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/android/gallery/data/FileBucket;->mDirInfo:Lcom/android/gallery/data/DirInfo;

    invoke-virtual {v0, p1}, Lcom/android/gallery/data/DirInfo;->setSortOrder(I)V

    .line 191
    iget-object v0, p0, Lcom/android/gallery/data/FileBucket;->mMetaComparator:Lcom/android/gallery/data/BaseMeta$BaseMetaComparator;

    invoke-virtual {v0, p1}, Lcom/android/gallery/data/BaseMeta$BaseMetaComparator;->setSortMethod(I)V

    .line 192
    iget-object v0, p0, Lcom/android/gallery/data/FileBucket;->mFileInfos:Lcom/android/gallery/data/SortedList;

    iget-object v1, p0, Lcom/android/gallery/data/FileBucket;->mMetaComparator:Lcom/android/gallery/data/BaseMeta$BaseMetaComparator;

    invoke-virtual {v0, v1}, Lcom/android/gallery/data/SortedList;->setComparator(Ljava/util/Comparator;)V

    .line 193
    iget-object v0, p0, Lcom/android/gallery/data/FileBucket;->mDirInfos:Lcom/android/gallery/data/SortedList;

    iget-object v1, p0, Lcom/android/gallery/data/FileBucket;->mMetaComparator:Lcom/android/gallery/data/BaseMeta$BaseMetaComparator;

    invoke-virtual {v0, v1}, Lcom/android/gallery/data/SortedList;->setComparator(Ljava/util/Comparator;)V

    goto :goto_0
.end method
