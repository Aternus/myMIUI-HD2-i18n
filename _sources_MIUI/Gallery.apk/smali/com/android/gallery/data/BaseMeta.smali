.class public Lcom/android/gallery/data/BaseMeta;
.super Ljava/lang/Object;
.source "BaseMeta.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery/data/BaseMeta$LoadAllDataTask;,
        Lcom/android/gallery/data/BaseMeta$OnAllDataLoadedListener;,
        Lcom/android/gallery/data/BaseMeta$BaseMetaComparator;
    }
.end annotation


# static fields
.field private static sLoadAllDataTaskManager:Lcom/android/gallery/util/AsyncLoadTaskStack;


# instance fields
.field protected mAllDataLoaded:Z

.field public mDateModified:J

.field public mDateTaken:J

.field public mDuration:J

.field public mHasExifThumbnail:Z

.field protected mHeight:I

.field public mIsGif:Z

.field public mIsImage:Z

.field public mIsJpeg:Z

.field public mIsSelected:Z

.field public mIsVideo:Z

.field public mLatitude:D

.field public mLongitude:D

.field public mOrientation:I

.field public mPath:Ljava/lang/String;

.field public mSize:J

.field public mTitle:Ljava/lang/String;

.field protected mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 324
    new-instance v0, Lcom/android/gallery/util/AsyncLoadTaskStack;

    invoke-direct {v0}, Lcom/android/gallery/util/AsyncLoadTaskStack;-><init>()V

    sput-object v0, Lcom/android/gallery/data/BaseMeta;->sLoadAllDataTaskManager:Lcom/android/gallery/util/AsyncLoadTaskStack;

    .line 325
    sget-object v0, Lcom/android/gallery/data/BaseMeta;->sLoadAllDataTaskManager:Lcom/android/gallery/util/AsyncLoadTaskStack;

    invoke-virtual {v0, v1}, Lcom/android/gallery/util/AsyncLoadTaskStack;->setMaxNum(I)V

    .line 326
    sget-object v0, Lcom/android/gallery/data/BaseMeta;->sLoadAllDataTaskManager:Lcom/android/gallery/util/AsyncLoadTaskStack;

    invoke-virtual {v0, v1}, Lcom/android/gallery/util/AsyncLoadTaskStack;->setWorkThreadNum(I)V

    .line 327
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    .line 62
    invoke-static {p1}, Lcom/android/gallery/util/StorageUtils;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, mimeType:Ljava/lang/String;
    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery/data/BaseMeta;->mIsVideo:Z

    .line 64
    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery/data/BaseMeta;->mIsImage:Z

    .line 65
    const-string v1, "image/jpeg"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery/data/BaseMeta;->mIsJpeg:Z

    .line 66
    const-string v1, "image/gif"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/gallery/data/BaseMeta;->mIsGif:Z

    .line 67
    return-void
.end method

.method private getVideoThumbnail()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 233
    :try_start_0
    iget-object v2, p0, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/gallery/data/ThumbnailCacheManager;->hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 234
    .local v1, key:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-static {v1}, Lcom/android/gallery/data/ThumbnailCacheManager;->getVideoThumbnailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 235
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 236
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery/util/ImageLoader;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/android/gallery/util/ImageLoader;->getDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 242
    .end local v0           #file:Ljava/io/File;
    .end local v1           #key:Ljava/lang/String;
    :goto_0
    return-object v2

    .line 239
    :catch_0
    move-exception v2

    .line 242
    :cond_0
    :goto_1
    const/4 v2, 0x0

    goto :goto_0

    .line 238
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method public static pushLoadAllDataTask(Lcom/android/gallery/data/BaseMeta;Lcom/android/gallery/data/BaseMeta$OnAllDataLoadedListener;Landroid/view/View;)V
    .locals 2
    .parameter "meta"
    .parameter "listener"
    .parameter "view"

    .prologue
    .line 284
    new-instance v0, Lcom/android/gallery/data/BaseMeta$LoadAllDataTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/gallery/data/BaseMeta$LoadAllDataTask;-><init>(Lcom/android/gallery/data/BaseMeta;Lcom/android/gallery/data/BaseMeta$OnAllDataLoadedListener;Landroid/view/View;)V

    .line 285
    .local v0, task:Lcom/android/gallery/data/BaseMeta$LoadAllDataTask;
    if-eqz p2, :cond_0

    .line 286
    sget-object v1, Lcom/android/gallery/data/BaseMeta;->sLoadAllDataTaskManager:Lcom/android/gallery/util/AsyncLoadTaskStack;

    invoke-virtual {v1, v0}, Lcom/android/gallery/util/AsyncLoadTaskStack;->pushBack(Lcom/android/gallery/util/AsyncLoadTask;)V

    .line 291
    :goto_0
    return-void

    .line 289
    :cond_0
    sget-object v1, Lcom/android/gallery/data/BaseMeta;->sLoadAllDataTaskManager:Lcom/android/gallery/util/AsyncLoadTaskStack;

    invoke-virtual {v1, v0}, Lcom/android/gallery/util/AsyncLoadTaskStack;->pushBackAsLow(Lcom/android/gallery/util/AsyncLoadTask;)V

    goto :goto_0
.end method

.method public static setMaxTaskNum(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 330
    sget-object v0, Lcom/android/gallery/data/BaseMeta;->sLoadAllDataTaskManager:Lcom/android/gallery/util/AsyncLoadTaskStack;

    invoke-virtual {v0}, Lcom/android/gallery/util/AsyncLoadTaskStack;->clearPendingTask()V

    .line 331
    sget-object v0, Lcom/android/gallery/data/BaseMeta;->sLoadAllDataTaskManager:Lcom/android/gallery/util/AsyncLoadTaskStack;

    invoke-virtual {v0, p0}, Lcom/android/gallery/util/AsyncLoadTaskStack;->setMaxNum(I)V

    .line 332
    return-void
.end method


# virtual methods
.method protected clearModifiedFlags()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery/data/BaseMeta;->mAllDataLoaded:Z

    .line 82
    return-void
.end method

.method public delete()V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 147
    invoke-virtual {p0}, Lcom/android/gallery/data/BaseMeta;->loadAllData()V

    .line 148
    iget v0, p0, Lcom/android/gallery/data/BaseMeta;->mHeight:I

    return v0
.end method

.method public getRawImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 228
    const v0, 0x5b8d80

    invoke-virtual {p0, v0}, Lcom/android/gallery/data/BaseMeta;->getThumbnail(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnail(I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "pixelSize"

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/android/gallery/data/BaseMeta;->isVideo()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 206
    invoke-direct {p0}, Lcom/android/gallery/data/BaseMeta;->getVideoThumbnail()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 224
    :goto_0
    return-object v2

    .line 209
    :cond_0
    iget-boolean v2, p0, Lcom/android/gallery/data/BaseMeta;->mIsGif:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/gallery/data/BaseMeta;->mWidth:I

    iget v3, p0, Lcom/android/gallery/data/BaseMeta;->mHeight:I

    mul-int/2addr v2, v3

    if-gt v2, p1, :cond_1

    const v2, 0x64140

    if-lt p1, v2, :cond_1

    .line 211
    new-instance v1, Landroid/graphics/drawable/GifAnimationDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GifAnimationDrawable;-><init>()V

    .line 212
    .local v1, drawable:Landroid/graphics/drawable/GifAnimationDrawable;
    mul-int/lit8 v2, p1, 0x4

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GifAnimationDrawable;->setMaxDecodeSize(J)V

    .line 213
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/GifAnimationDrawable;->load(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 216
    goto :goto_0

    .line 220
    .end local v1           #drawable:Landroid/graphics/drawable/GifAnimationDrawable;
    :cond_1
    iget-object v2, p0, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-static {v2, p1}, Lcom/android/gallery/util/ImageLoader;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 221
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 222
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 224
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/android/gallery/data/BaseMeta;->loadAllData()V

    .line 143
    iget v0, p0, Lcom/android/gallery/data/BaseMeta;->mWidth:I

    return v0
.end method

.method public isLatLongValid()Z
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 152
    iget-wide v0, p0, Lcom/android/gallery/data/BaseMeta;->mLatitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery/util/Utils;->doubleEquals(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/gallery/data/BaseMeta;->mLongitude:D

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery/util/Utils;->doubleEquals(DD)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isModified()Z
    .locals 1

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/gallery/data/BaseMeta;->mAllDataLoaded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/android/gallery/data/BaseMeta;->mIsVideo:Z

    return v0
.end method

.method public loadAllData()V
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/gallery/data/BaseMeta;->isModified()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery/data/BaseMeta;->loadAllDataInternal()V

    .line 73
    invoke-virtual {p0}, Lcom/android/gallery/data/BaseMeta;->clearModifiedFlags()V

    goto :goto_0
.end method

.method protected loadAllDataInternal()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 85
    iget v6, p0, Lcom/android/gallery/data/BaseMeta;->mWidth:I

    if-gtz v6, :cond_0

    .line 86
    iget-boolean v6, p0, Lcom/android/gallery/data/BaseMeta;->mIsImage:Z

    if-eqz v6, :cond_1

    .line 87
    new-instance v6, Landroid/util/InputStreamLoader;

    iget-object v7, p0, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-direct {v6, v7}, Landroid/util/InputStreamLoader;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/android/gallery/util/ImageLoader;->getBitmapSize(Landroid/util/InputStreamLoader;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    .line 89
    .local v4, options:Landroid/graphics/BitmapFactory$Options;
    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/android/gallery/data/BaseMeta;->mWidth:I

    .line 90
    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/android/gallery/data/BaseMeta;->mHeight:I

    .line 131
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-void

    .line 92
    :cond_1
    iget-boolean v6, p0, Lcom/android/gallery/data/BaseMeta;->mIsVideo:Z

    if-eqz v6, :cond_0

    .line 93
    new-instance v5, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v5}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 95
    .local v5, retriever:Landroid/media/MediaMetadataRetriever;
    :try_start_0
    iget-object v6, p0, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 96
    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, duration:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 98
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/gallery/data/BaseMeta;->mDuration:J

    .line 101
    :cond_2
    iget-object v6, p0, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/gallery/data/ThumbnailCacheManager;->hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 102
    .local v3, key:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-static {v3}, Lcom/android/gallery/data/ThumbnailCacheManager;->getVideoThumbnailPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 103
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 104
    new-instance v6, Landroid/util/InputStreamLoader;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/util/InputStreamLoader;-><init>(Ljava/lang/String;)V

    invoke-static {v6}, Lcom/android/gallery/util/ImageLoader;->getBitmapSize(Landroid/util/InputStreamLoader;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    .line 106
    .restart local v4       #options:Landroid/graphics/BitmapFactory$Options;
    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v6, p0, Lcom/android/gallery/data/BaseMeta;->mWidth:I

    .line 107
    iget v6, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v6, p0, Lcom/android/gallery/data/BaseMeta;->mHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    .line 125
    .end local v4           #options:Landroid/graphics/BitmapFactory$Options;
    :goto_1
    :try_start_1
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 126
    :catch_0
    move-exception v6

    goto :goto_0

    .line 110
    :cond_3
    :try_start_2
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 111
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-nez v0, :cond_4

    .line 112
    const/4 v6, 0x1

    const/4 v7, 0x1

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v7, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 114
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iput v6, p0, Lcom/android/gallery/data/BaseMeta;->mWidth:I

    .line 115
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iput v6, p0, Lcom/android/gallery/data/BaseMeta;->mHeight:I

    .line 116
    const/4 v6, 0x0

    invoke-static {v0}, Lcom/android/gallery/util/ImageLoader;->getDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v7

    invoke-static {v3, v6, v7}, Lcom/android/gallery/data/ThumbnailCacheManager;->putThumbnail(Ljava/lang/String;ILandroid/graphics/drawable/Drawable;)V

    .line 119
    invoke-static {v0, v2}, Lcom/android/gallery/data/ThumbnailCacheManager;->saveToFile(Landroid/graphics/Bitmap;Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 121
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #duration:Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #key:Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 125
    :try_start_3
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 126
    :catch_2
    move-exception v6

    goto :goto_0

    .line 122
    :catch_3
    move-exception v6

    .line 125
    :try_start_4
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 126
    :catch_4
    move-exception v6

    goto/16 :goto_0

    .line 124
    :catchall_0
    move-exception v6

    .line 125
    :try_start_5
    invoke-virtual {v5}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_5

    .line 127
    :goto_2
    throw v6

    .line 126
    :catch_5
    move-exception v7

    goto :goto_2
.end method

.method public rename(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 11
    .parameter "context"
    .parameter "newName"

    .prologue
    const/4 v10, 0x0

    .line 156
    const v0, 0x7f090043

    .line 157
    .local v0, errorId:I
    iget-object v6, p0, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    .line 160
    .local v6, oldPath:Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 192
    :cond_0
    :goto_0
    if-eqz v0, :cond_5

    .line 193
    invoke-static {p1, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    .line 199
    :goto_1
    if-nez v0, :cond_6

    const/4 v8, 0x1

    :goto_2
    return v8

    .line 161
    :cond_1
    iget-object v8, p0, Lcom/android/gallery/data/BaseMeta;->mTitle:Ljava/lang/String;

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 162
    const/4 v0, 0x0

    .line 163
    goto :goto_0

    .line 167
    :cond_2
    :try_start_0
    new-instance v2, Ljava/io/File;

    iget-object v8, p0, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v7

    .line 169
    .local v7, parent:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 171
    .local v3, fileName:Ljava/lang/String;
    const/16 v8, 0x2e

    invoke-virtual {v3, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 172
    .local v4, lastDot:I
    if-gez v4, :cond_3

    const-string v8, ""

    move-object v1, v8

    .line 174
    .local v1, ext:Ljava/lang/String;
    :goto_3
    new-instance v5, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 175
    .local v5, newFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 176
    const v0, 0x7f090044

    goto :goto_0

    .line 172
    .end local v1           #ext:Ljava/lang/String;
    .end local v5           #newFile:Ljava/io/File;
    :cond_3
    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    move-object v1, v8

    goto :goto_3

    .line 180
    .restart local v1       #ext:Ljava/lang/String;
    .restart local v5       #newFile:Ljava/io/File;
    :cond_4
    invoke-virtual {v2, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 184
    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    .line 185
    iput-object p2, p0, Lcom/android/gallery/data/BaseMeta;->mTitle:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    const/4 v0, 0x0

    goto :goto_0

    .line 196
    .end local v1           #ext:Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #fileName:Ljava/lang/String;
    .end local v4           #lastDot:I
    .end local v5           #newFile:Ljava/io/File;
    .end local v7           #parent:Ljava/io/File;
    :cond_5
    invoke-static {p1, v6}, Lcom/android/gallery/data/MediaStoreHelper;->notifyFileSystemChanged(Landroid/content/Context;Ljava/lang/String;)V

    .line 197
    iget-object v8, p0, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-static {p1, v8}, Lcom/android/gallery/data/MediaStoreHelper;->notifyFileSystemChanged(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move v8, v10

    .line 199
    goto :goto_2

    .line 187
    :catch_0
    move-exception v8

    goto :goto_0
.end method
