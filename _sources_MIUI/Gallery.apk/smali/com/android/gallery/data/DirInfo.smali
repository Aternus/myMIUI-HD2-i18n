.class public Lcom/android/gallery/data/DirInfo;
.super Lcom/android/gallery/data/FileInfo;
.source "DirInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery/data/DirInfo$DirInfoComparator;
    }
.end annotation


# static fields
.field private static sDefaultFilter:Lcom/android/gallery/data/MediaFileFilter;


# instance fields
.field private mBucketExtData:Lcom/android/gallery/data/BucketExt$BucketExtData;

.field public mCount:I

.field private mDefaultCover:Lcom/android/gallery/data/BaseMeta;

.field private mFilter:Lcom/android/gallery/data/MediaFileFilter;

.field public mFolderCount:I

.field public mImageCount:I

.field public mVideoCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/android/gallery/data/MediaFileFilter;

    invoke-direct {v0}, Lcom/android/gallery/data/MediaFileFilter;-><init>()V

    sput-object v0, Lcom/android/gallery/data/DirInfo;->sDefaultFilter:Lcom/android/gallery/data/MediaFileFilter;

    return-void
.end method

.method constructor <init>(Ljava/io/File;Lcom/android/gallery/data/MediaFileFilter;)V
    .locals 1
    .parameter "file"
    .parameter "filter"

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/gallery/data/FileInfo;-><init>(Ljava/io/File;)V

    .line 29
    if-nez p2, :cond_0

    sget-object v0, Lcom/android/gallery/data/DirInfo;->sDefaultFilter:Lcom/android/gallery/data/MediaFileFilter;

    :goto_0
    iput-object v0, p0, Lcom/android/gallery/data/DirInfo;->mFilter:Lcom/android/gallery/data/MediaFileFilter;

    .line 30
    iget-object v0, p0, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/gallery/data/BucketExt;->getBucketExtData(Ljava/lang/String;)Lcom/android/gallery/data/BucketExt$BucketExtData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery/data/DirInfo;->mBucketExtData:Lcom/android/gallery/data/BucketExt$BucketExtData;

    .line 31
    return-void

    :cond_0
    move-object v0, p2

    .line 29
    goto :goto_0
.end method


# virtual methods
.method public delete()V
    .locals 7

    .prologue
    .line 88
    iget-object v5, p0, Lcom/android/gallery/data/FileInfo;->mFile:Ljava/io/File;

    iget-object v6, p0, Lcom/android/gallery/data/DirInfo;->mFilter:Lcom/android/gallery/data/MediaFileFilter;

    invoke-virtual {v5, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 89
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_1

    .line 90
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 91
    .local v1, child:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_0

    .line 92
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 90
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 97
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #child:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    iget-object v5, p0, Lcom/android/gallery/data/FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 98
    return-void
.end method

.method public getCover()Lcom/android/gallery/data/BaseMeta;
    .locals 2

    .prologue
    .line 142
    iget-object v1, p0, Lcom/android/gallery/data/DirInfo;->mBucketExtData:Lcom/android/gallery/data/BucketExt$BucketExtData;

    invoke-virtual {v1}, Lcom/android/gallery/data/BucketExt$BucketExtData;->getCover()Lcom/android/gallery/data/BaseMeta;

    move-result-object v0

    .line 143
    .local v0, customizedCover:Lcom/android/gallery/data/BaseMeta;
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/gallery/data/DirInfo;->mDefaultCover:Lcom/android/gallery/data/BaseMeta;

    :goto_0
    return-object v1

    :cond_0
    move-object v1, v0

    goto :goto_0
.end method

.method public getCustomizedCover()Lcom/android/gallery/data/BaseMeta;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/gallery/data/DirInfo;->mBucketExtData:Lcom/android/gallery/data/BucketExt$BucketExtData;

    invoke-virtual {v0}, Lcom/android/gallery/data/BucketExt$BucketExtData;->getCover()Lcom/android/gallery/data/BaseMeta;

    move-result-object v0

    return-object v0
.end method

.method public getFrequency()I
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/gallery/data/DirInfo;->mBucketExtData:Lcom/android/gallery/data/BucketExt$BucketExtData;

    invoke-virtual {v0}, Lcom/android/gallery/data/BucketExt$BucketExtData;->getUseFrequncy()I

    move-result v0

    return v0
.end method

.method protected getSize()J
    .locals 3

    .prologue
    .line 40
    iget-object v1, p0, Lcom/android/gallery/data/FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 41
    .local v0, list:[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 42
    array-length v1, v0

    int-to-long v1, v1

    .line 44
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getSortOrder()I
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/gallery/data/DirInfo;->mBucketExtData:Lcom/android/gallery/data/BucketExt$BucketExtData;

    invoke-virtual {v0}, Lcom/android/gallery/data/BucketExt$BucketExtData;->getSortOrder()I

    move-result v0

    return v0
.end method

.method public getThumbnail(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "pixelSize"

    .prologue
    .line 129
    invoke-virtual {p0}, Lcom/android/gallery/data/DirInfo;->getCover()Lcom/android/gallery/data/BaseMeta;

    move-result-object v1

    .line 130
    .local v1, cover:Lcom/android/gallery/data/BaseMeta;
    if-eqz v1, :cond_0

    .line 131
    invoke-virtual {v1}, Lcom/android/gallery/data/BaseMeta;->loadAllData()V

    .line 132
    iget-object v2, v1, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/android/gallery/util/ImageLoader;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 133
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 134
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 138
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getTilte(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 105
    const/4 v0, 0x0

    .line 106
    .local v0, id:I
    sget-object v1, Lcom/android/gallery/data/GalleryDBHelper;->CAMERA_FOLDER_PATH:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 107
    const v0, 0x7f09004c

    .line 125
    :cond_0
    :goto_0
    if-nez v0, :cond_6

    iget-object v1, p0, Lcom/android/gallery/data/BaseMeta;->mTitle:Ljava/lang/String;

    .end local p0
    :goto_1
    return-object v1

    .line 109
    .restart local p0
    :cond_1
    sget-object v1, Lcom/android/gallery/data/GalleryDBHelper;->MIUI_SNAPSHOT_FOLDER_PATH:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    const v0, 0x7f09004d

    goto :goto_0

    .line 112
    :cond_2
    sget-object v1, Lcom/android/gallery/data/GalleryDBHelper;->INTERNAL_CAMERA_FOLDER_PATH:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 113
    const v0, 0x7f09004e

    goto :goto_0

    .line 115
    :cond_3
    sget-object v1, Lcom/android/gallery/data/GalleryDBHelper;->INTERNAL_MIUI_SNAPSHOT_FOLDER_PATH:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 116
    const v0, 0x7f09004f

    goto :goto_0

    .line 118
    :cond_4
    sget-object v1, Lcom/android/gallery/data/GalleryDBHelper;->MILIAO_FOLDER_PATH:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 119
    const v0, 0x7f090050

    goto :goto_0

    .line 121
    :cond_5
    sget-object v1, Lcom/android/gallery/data/GalleryDBHelper;->MILIAO_PAINTING_FOLDER_PATH:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    const v0, 0x7f090051

    goto :goto_0

    .line 125
    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v1, p0

    goto :goto_1
.end method

.method public increaseFrequency()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/gallery/data/DirInfo;->mBucketExtData:Lcom/android/gallery/data/BucketExt$BucketExtData;

    invoke-virtual {v0}, Lcom/android/gallery/data/BucketExt$BucketExtData;->increaseUseFrequncy()V

    .line 171
    return-void
.end method

.method public isCamera()Z
    .locals 2

    .prologue
    .line 101
    sget-object v0, Lcom/android/gallery/data/GalleryDBHelper;->CAMERA_FOLDER_PATH:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isDir()Z
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x1

    return v0
.end method

.method public isFavorite()Z
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/gallery/data/DirInfo;->mBucketExtData:Lcom/android/gallery/data/BucketExt$BucketExtData;

    invoke-virtual {v0}, Lcom/android/gallery/data/BucketExt$BucketExtData;->isFavorite()Z

    move-result v0

    return v0
.end method

.method public isHidden()Z
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/gallery/data/DirInfo;->mBucketExtData:Lcom/android/gallery/data/BucketExt$BucketExtData;

    invoke-virtual {v0}, Lcom/android/gallery/data/BucketExt$BucketExtData;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery/data/FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isHidden()Z

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

.method public loadAllDataInternal()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 49
    invoke-super {p0}, Lcom/android/gallery/data/FileInfo;->loadAllDataInternal()V

    .line 51
    iput v7, p0, Lcom/android/gallery/data/DirInfo;->mCount:I

    .line 52
    iput v7, p0, Lcom/android/gallery/data/DirInfo;->mFolderCount:I

    .line 53
    iput v7, p0, Lcom/android/gallery/data/DirInfo;->mImageCount:I

    .line 54
    iput v7, p0, Lcom/android/gallery/data/DirInfo;->mVideoCount:I

    .line 55
    iput-object v8, p0, Lcom/android/gallery/data/DirInfo;->mDefaultCover:Lcom/android/gallery/data/BaseMeta;

    .line 56
    iget-object v7, p0, Lcom/android/gallery/data/FileInfo;->mFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 57
    .local v4, files:[Ljava/io/File;
    if-eqz v4, :cond_5

    .line 58
    const/4 v1, 0x0

    .line 59
    .local v1, attributes:I
    move-object v0, v4

    .local v0, arr$:[Ljava/io/File;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_5

    aget-object v2, v0, v5

    .line 60
    .local v2, child:Ljava/io/File;
    invoke-static {v2}, Lcom/android/gallery/data/MediaFileFilter;->getFileAttributes(Ljava/io/File;)I

    move-result v1

    .line 61
    iget-object v7, p0, Lcom/android/gallery/data/DirInfo;->mFilter:Lcom/android/gallery/data/MediaFileFilter;

    invoke-virtual {v7, v1}, Lcom/android/gallery/data/MediaFileFilter;->accept(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 59
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 63
    :cond_0
    and-int/lit8 v7, v1, 0x1

    if-lez v7, :cond_2

    .line 64
    iget v7, p0, Lcom/android/gallery/data/DirInfo;->mFolderCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/gallery/data/DirInfo;->mFolderCount:I

    .line 77
    :cond_1
    :goto_2
    iget v7, p0, Lcom/android/gallery/data/DirInfo;->mCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/gallery/data/DirInfo;->mCount:I

    goto :goto_1

    .line 66
    :cond_2
    and-int/lit8 v7, v1, 0x8

    if-lez v7, :cond_4

    .line 67
    iget v7, p0, Lcom/android/gallery/data/DirInfo;->mImageCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/gallery/data/DirInfo;->mImageCount:I

    .line 73
    :cond_3
    :goto_3
    iget-object v7, p0, Lcom/android/gallery/data/DirInfo;->mDefaultCover:Lcom/android/gallery/data/BaseMeta;

    if-nez v7, :cond_1

    .line 74
    invoke-static {v2, v8}, Lcom/android/gallery/data/DirInfo;->getFileInfo(Ljava/io/File;Lcom/android/gallery/data/MediaFileFilter;)Lcom/android/gallery/data/FileInfo;

    move-result-object v7

    iput-object v7, p0, Lcom/android/gallery/data/DirInfo;->mDefaultCover:Lcom/android/gallery/data/BaseMeta;

    goto :goto_2

    .line 69
    :cond_4
    and-int/lit8 v7, v1, 0x10

    if-lez v7, :cond_3

    .line 70
    iget v7, p0, Lcom/android/gallery/data/DirInfo;->mVideoCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/gallery/data/DirInfo;->mVideoCount:I

    goto :goto_3

    .line 81
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #attributes:I
    .end local v2           #child:Ljava/io/File;
    .end local v5           #i$:I
    .end local v6           #len$:I
    :cond_5
    invoke-virtual {p0}, Lcom/android/gallery/data/DirInfo;->getCover()Lcom/android/gallery/data/BaseMeta;

    move-result-object v3

    .line 82
    .local v3, cover:Lcom/android/gallery/data/BaseMeta;
    if-eqz v3, :cond_6

    .line 83
    invoke-virtual {v3}, Lcom/android/gallery/data/BaseMeta;->loadAllData()V

    .line 85
    :cond_6
    return-void
.end method

.method public setCustomizedCover(Lcom/android/gallery/data/BaseMeta;)V
    .locals 1
    .parameter "cover"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/gallery/data/DirInfo;->mBucketExtData:Lcom/android/gallery/data/BucketExt$BucketExtData;

    invoke-virtual {v0, p1}, Lcom/android/gallery/data/BucketExt$BucketExtData;->setCover(Lcom/android/gallery/data/BaseMeta;)V

    .line 150
    return-void
.end method

.method public setFavorite(Z)V
    .locals 1
    .parameter "isFavorite"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/gallery/data/DirInfo;->mBucketExtData:Lcom/android/gallery/data/BucketExt$BucketExtData;

    invoke-virtual {v0, p1}, Lcom/android/gallery/data/BucketExt$BucketExtData;->setIsFavorite(Z)V

    .line 157
    return-void
.end method

.method public setHidden(Z)V
    .locals 1
    .parameter "isHidden"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/gallery/data/DirInfo;->mBucketExtData:Lcom/android/gallery/data/BucketExt$BucketExtData;

    invoke-virtual {v0, p1}, Lcom/android/gallery/data/BucketExt$BucketExtData;->setIsHidden(Z)V

    .line 164
    return-void
.end method

.method public setSortOrder(I)V
    .locals 1
    .parameter "sortOrder"

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/gallery/data/DirInfo;->mBucketExtData:Lcom/android/gallery/data/BucketExt$BucketExtData;

    invoke-virtual {v0, p1}, Lcom/android/gallery/data/BucketExt$BucketExtData;->setSortOrder(I)V

    .line 178
    return-void
.end method
