.class public final Lcom/android/gallery/data/ThumbnailCacheManager;
.super Ljava/lang/Object;
.source "ThumbnailCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery/data/ThumbnailCacheManager$FetchThumbnailTask;,
        Lcom/android/gallery/data/ThumbnailCacheManager$ThumbnailReadyListener;,
        Lcom/android/gallery/data/ThumbnailCacheManager$ThumbnailCache;
    }
.end annotation


# static fields
.field private static sBigImageThumbCache:Lcom/android/gallery/data/ThumbnailCacheManager$ThumbnailCache;

.field private static sFullImageThumbCache:Lcom/android/gallery/data/ThumbnailCacheManager$ThumbnailCache;

.field public static sFullThumbTaskManager:Lcom/android/gallery/util/AsyncLoadTaskStack;

.field public static sThumbTaskManager:Lcom/android/gallery/util/AsyncLoadTaskStack;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 45
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const-wide/32 v1, 0x4000000

    invoke-virtual {v0, v1, v2}, Ldalvik/system/VMRuntime;->reserveExternalMemory(J)V

    .line 46
    new-instance v0, Lcom/android/gallery/data/ThumbnailCacheManager$ThumbnailCache;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Lcom/android/gallery/data/ThumbnailCacheManager$ThumbnailCache;-><init>(I)V

    sput-object v0, Lcom/android/gallery/data/ThumbnailCacheManager;->sBigImageThumbCache:Lcom/android/gallery/data/ThumbnailCacheManager$ThumbnailCache;

    .line 47
    new-instance v0, Lcom/android/gallery/data/ThumbnailCacheManager$ThumbnailCache;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/gallery/data/ThumbnailCacheManager$ThumbnailCache;-><init>(I)V

    sput-object v0, Lcom/android/gallery/data/ThumbnailCacheManager;->sFullImageThumbCache:Lcom/android/gallery/data/ThumbnailCacheManager$ThumbnailCache;

    .line 52
    new-instance v0, Lcom/android/gallery/util/AsyncLoadTaskStack;

    invoke-direct {v0}, Lcom/android/gallery/util/AsyncLoadTaskStack;-><init>()V

    sput-object v0, Lcom/android/gallery/data/ThumbnailCacheManager;->sThumbTaskManager:Lcom/android/gallery/util/AsyncLoadTaskStack;

    .line 53
    sget-object v0, Lcom/android/gallery/data/ThumbnailCacheManager;->sThumbTaskManager:Lcom/android/gallery/util/AsyncLoadTaskStack;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/android/gallery/util/AsyncLoadTaskStack;->setMaxTaskNum(I)V

    .line 54
    sget-object v0, Lcom/android/gallery/data/ThumbnailCacheManager;->sThumbTaskManager:Lcom/android/gallery/util/AsyncLoadTaskStack;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/android/gallery/util/AsyncLoadTaskStack;->setMaxLowTaskNum(I)V

    .line 55
    sget-object v0, Lcom/android/gallery/data/ThumbnailCacheManager;->sThumbTaskManager:Lcom/android/gallery/util/AsyncLoadTaskStack;

    invoke-virtual {v0, v3}, Lcom/android/gallery/util/AsyncLoadTaskStack;->setWorkThreadNum(I)V

    .line 60
    new-instance v0, Lcom/android/gallery/util/AsyncLoadTaskStack;

    invoke-direct {v0}, Lcom/android/gallery/util/AsyncLoadTaskStack;-><init>()V

    sput-object v0, Lcom/android/gallery/data/ThumbnailCacheManager;->sFullThumbTaskManager:Lcom/android/gallery/util/AsyncLoadTaskStack;

    .line 61
    sget-object v0, Lcom/android/gallery/data/ThumbnailCacheManager;->sFullThumbTaskManager:Lcom/android/gallery/util/AsyncLoadTaskStack;

    invoke-virtual {v0, v3}, Lcom/android/gallery/util/AsyncLoadTaskStack;->setMaxTaskNum(I)V

    .line 62
    sget-object v0, Lcom/android/gallery/data/ThumbnailCacheManager;->sFullThumbTaskManager:Lcom/android/gallery/util/AsyncLoadTaskStack;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/gallery/util/AsyncLoadTaskStack;->setMaxLowTaskNum(I)V

    .line 65
    sget-object v0, Lcom/android/gallery/data/ThumbnailCacheManager;->sFullThumbTaskManager:Lcom/android/gallery/util/AsyncLoadTaskStack;

    invoke-virtual {v0, v3}, Lcom/android/gallery/util/AsyncLoadTaskStack;->setWorkThreadNum(I)V

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    return-void
.end method

.method public static clear(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 188
    invoke-static {p0}, Lcom/android/gallery/data/ThumbnailCacheManager;->getCache(I)Lcom/android/gallery/data/ThumbnailCacheManager$ThumbnailCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery/data/ThumbnailCacheManager$ThumbnailCache;->clear()V

    .line 189
    return-void
.end method

.method public static deletaCacheFiles()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-string v3, "/.cache/Gallery"

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getMIUIInternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.cache/Gallery"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/util/CommandLineUtils;->rm(Ljava/lang/String;Ljava/lang/String;)Z

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getMIUIExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/.cache/Gallery"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/util/CommandLineUtils;->rm(Ljava/lang/String;Ljava/lang/String;)Z

    .line 275
    return-void
.end method

.method public static fetchThumbnail(Lcom/android/gallery/data/BaseMeta;I)V
    .locals 2
    .parameter "meta"
    .parameter "type"

    .prologue
    .line 282
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/android/gallery/data/ThumbnailCacheManager;->fetchThumbnail(Lcom/android/gallery/data/BaseMeta;ILcom/android/gallery/data/ThumbnailCacheManager$ThumbnailReadyListener;Z)V

    .line 283
    return-void
.end method

.method public static fetchThumbnail(Lcom/android/gallery/data/BaseMeta;ILcom/android/gallery/data/ThumbnailCacheManager$ThumbnailReadyListener;Z)V
    .locals 3
    .parameter "meta"
    .parameter "type"
    .parameter "listener"
    .parameter "forceLowPriority"

    .prologue
    .line 287
    if-nez p0, :cond_0

    .line 297
    :goto_0
    return-void

    .line 289
    :cond_0
    new-instance v1, Lcom/android/gallery/data/ThumbnailCacheManager$FetchThumbnailTask;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/gallery/data/ThumbnailCacheManager$FetchThumbnailTask;-><init>(Lcom/android/gallery/data/BaseMeta;ILcom/android/gallery/data/ThumbnailCacheManager$ThumbnailReadyListener;)V

    .line 290
    .local v1, task:Lcom/android/gallery/data/ThumbnailCacheManager$FetchThumbnailTask;
    if-nez p1, :cond_1

    sget-object v2, Lcom/android/gallery/data/ThumbnailCacheManager;->sFullThumbTaskManager:Lcom/android/gallery/util/AsyncLoadTaskStack;

    move-object v0, v2

    .line 291
    .local v0, stack:Lcom/android/gallery/util/AsyncLoadTaskStack;
    :goto_1
    if-eqz p2, :cond_2

    if-nez p3, :cond_2

    .line 292
    invoke-virtual {v0, v1}, Lcom/android/gallery/util/AsyncLoadTaskStack;->pushBack(Lcom/android/gallery/util/AsyncLoadTask;)V

    goto :goto_0

    .line 290
    .end local v0           #stack:Lcom/android/gallery/util/AsyncLoadTaskStack;
    :cond_1
    sget-object v2, Lcom/android/gallery/data/ThumbnailCacheManager;->sThumbTaskManager:Lcom/android/gallery/util/AsyncLoadTaskStack;

    move-object v0, v2

    goto :goto_1

    .line 295
    .restart local v0       #stack:Lcom/android/gallery/util/AsyncLoadTaskStack;
    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/gallery/util/AsyncLoadTaskStack;->pushBackAsLow(Lcom/android/gallery/util/AsyncLoadTask;)V

    goto :goto_0
.end method

.method private static getCache(I)Lcom/android/gallery/data/ThumbnailCacheManager$ThumbnailCache;
    .locals 1
    .parameter "type"

    .prologue
    .line 74
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/android/gallery/data/ThumbnailCacheManager;->sBigImageThumbCache:Lcom/android/gallery/data/ThumbnailCacheManager$ThumbnailCache;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/gallery/data/ThumbnailCacheManager;->sFullImageThumbCache:Lcom/android/gallery/data/ThumbnailCacheManager$ThumbnailCache;

    goto :goto_0
.end method

.method protected static getCachePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 214
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-static {}, Landroid/os/Environment;->getMIUIStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "/.cache/Gallery"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPixelSize(I)I
    .locals 1
    .parameter "type"

    .prologue
    .line 78
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const v0, 0x9c40

    :goto_0
    return v0

    :cond_0
    const v0, 0x64140

    goto :goto_0
.end method

.method public static getThumbnail(Lcom/android/gallery/data/BaseMeta;I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "meta"
    .parameter "type"

    .prologue
    .line 82
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/gallery/data/ThumbnailCacheManager;->getThumbnail(Lcom/android/gallery/data/BaseMeta;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getThumbnail(Lcom/android/gallery/data/BaseMeta;IZ)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "meta"
    .parameter "type"
    .parameter "preciseInSize"

    .prologue
    .line 86
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/gallery/data/ThumbnailCacheManager;->getThumbnail(Lcom/android/gallery/data/BaseMeta;IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static getThumbnail(Lcom/android/gallery/data/BaseMeta;IZZ)Landroid/graphics/drawable/Drawable;
    .locals 9
    .parameter "meta"
    .parameter "type"
    .parameter "preciseInSize"
    .parameter "cacheOnly"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 90
    if-ltz p1, :cond_0

    if-le p1, v7, :cond_1

    .line 142
    :cond_0
    :goto_0
    return-object v6

    .line 92
    :cond_1
    invoke-static {p0}, Lcom/android/gallery/data/ThumbnailCacheManager;->hash(Lcom/android/gallery/data/BaseMeta;)Ljava/lang/String;

    move-result-object v4

    .line 95
    .local v4, key:Ljava/lang/String;
    invoke-static {p1}, Lcom/android/gallery/data/ThumbnailCacheManager;->getCache(I)Lcom/android/gallery/data/ThumbnailCacheManager$ThumbnailCache;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/gallery/data/ThumbnailCacheManager$ThumbnailCache;->getThumbnail(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 96
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_3

    if-ne p1, v7, :cond_3

    .line 98
    invoke-static {v4}, Lcom/android/gallery/data/ThumbnailCacheManager;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 99
    .local v3, filePath:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 101
    invoke-static {v3}, Lcom/android/gallery/util/ImageLoader;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6}, Lcom/android/gallery/util/ImageLoader;->getDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    .line 102
    if-nez v0, :cond_5

    .line 103
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 110
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    if-nez p2, :cond_3

    iget-boolean v6, p0, Lcom/android/gallery/data/BaseMeta;->mHasExifThumbnail:Z

    if-eqz v6, :cond_3

    .line 113
    :try_start_0
    new-instance v1, Landroid/media/ExifInterface;

    iget-object v6, p0, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-direct {v1, v6}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 114
    .local v1, exif:Landroid/media/ExifInterface;
    if-eqz v1, :cond_3

    .line 115
    invoke-virtual {v1}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v5

    .line 116
    .local v5, thumbData:[B
    if-eqz v5, :cond_3

    .line 117
    const/4 v6, 0x0

    array-length v7, v5

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-static {v6}, Lcom/android/gallery/util/ImageLoader;->getDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 126
    .end local v1           #exif:Landroid/media/ExifInterface;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #filePath:Ljava/lang/String;
    .end local v5           #thumbData:[B
    :cond_3
    :goto_2
    if-eqz p3, :cond_7

    .line 127
    if-nez v0, :cond_4

    if-eqz p2, :cond_6

    :cond_4
    move-object v6, v0

    .line 128
    goto :goto_0

    .line 106
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #filePath:Ljava/lang/String;
    :cond_5
    invoke-static {p1}, Lcom/android/gallery/data/ThumbnailCacheManager;->getCache(I)Lcom/android/gallery/data/ThumbnailCacheManager$ThumbnailCache;

    move-result-object v6

    invoke-virtual {v6, v4, v0}, Lcom/android/gallery/data/ThumbnailCacheManager$ThumbnailCache;->putThumbnail(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 130
    .end local v2           #file:Ljava/io/File;
    .end local v3           #filePath:Ljava/lang/String;
    :cond_6
    add-int/lit8 v6, p1, 0x1

    invoke-static {p0, v6, p2, p3}, Lcom/android/gallery/data/ThumbnailCacheManager;->getThumbnail(Lcom/android/gallery/data/BaseMeta;IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_0

    .line 134
    :cond_7
    if-nez v0, :cond_8

    .line 135
    invoke-static {p1}, Lcom/android/gallery/data/ThumbnailCacheManager;->getPixelSize(I)I

    move-result v6

    invoke-virtual {p0, v6}, Lcom/android/gallery/data/BaseMeta;->getThumbnail(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_8

    .line 137
    invoke-static {v4, p1, v0}, Lcom/android/gallery/data/ThumbnailCacheManager;->putThumbnail(Ljava/lang/String;ILandroid/graphics/drawable/Drawable;)V

    .line 138
    invoke-static {p1}, Lcom/android/gallery/data/ThumbnailCacheManager;->getCache(I)Lcom/android/gallery/data/ThumbnailCacheManager$ThumbnailCache;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/gallery/data/ThumbnailCacheManager$ThumbnailCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .restart local v0       #drawable:Landroid/graphics/drawable/Drawable;
    :cond_8
    move-object v6, v0

    .line 142
    goto :goto_0

    .line 121
    .restart local v2       #file:Ljava/io/File;
    .restart local v3       #filePath:Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method public static getVideoThumbnailPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "key"

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/android/gallery/data/ThumbnailCacheManager;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_vt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static hash(Lcom/android/gallery/data/BaseMeta;)Ljava/lang/String;
    .locals 3
    .parameter "meta"

    .prologue
    .line 192
    if-nez p0, :cond_0

    const-string v0, ""

    .line 193
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    iget-wide v1, p0, Lcom/android/gallery/data/BaseMeta;->mDateModified:J

    invoke-static {v0, v1, v2}, Lcom/android/gallery/data/ThumbnailCacheManager;->hash(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "path"

    .prologue
    const-string v2, ""

    .line 197
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    move-object v1, v2

    .line 202
    :goto_0
    return-object v1

    .line 199
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 200
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ""

    move-object v1, v2

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-static {p0, v1, v2}, Lcom/android/gallery/data/ThumbnailCacheManager;->hash(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static hash(Ljava/lang/String;J)Ljava/lang/String;
    .locals 1
    .parameter "path"
    .parameter "modifiedDate"

    .prologue
    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery/util/Utils;->getMd5Hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static putThumbnail(Ljava/lang/String;ILandroid/graphics/drawable/Drawable;)V
    .locals 6
    .parameter "key"
    .parameter "type"
    .parameter "drawable"

    .prologue
    .line 146
    const/4 v2, 0x0

    .line 147
    .local v2, resizedDrawable:Landroid/graphics/drawable/BitmapDrawable;
    const/4 v3, 0x1

    .local v3, saveType:I
    :goto_0
    if-lt v3, p1, :cond_3

    .line 148
    invoke-static {v3}, Lcom/android/gallery/data/ThumbnailCacheManager;->getCache(I)Lcom/android/gallery/data/ThumbnailCacheManager$ThumbnailCache;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/android/gallery/data/ThumbnailCacheManager$ThumbnailCache;->getThumbnail(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 147
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 151
    :cond_1
    instance-of v4, p2, Landroid/graphics/drawable/BitmapDrawable;

    if-nez v4, :cond_2

    .line 152
    invoke-static {v3}, Lcom/android/gallery/data/ThumbnailCacheManager;->getCache(I)Lcom/android/gallery/data/ThumbnailCacheManager$ThumbnailCache;

    move-result-object v4

    invoke-virtual {v4, p0, p2}, Lcom/android/gallery/data/ThumbnailCacheManager$ThumbnailCache;->putThumbnail(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 156
    :cond_2
    move-object v0, p2

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v3}, Lcom/android/gallery/data/ThumbnailCacheManager;->getPixelSize(I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/gallery/data/ThumbnailCacheManager;->resizeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4}, Lcom/android/gallery/util/ImageLoader;->getDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v2

    .line 159
    if-eqz v2, :cond_0

    .line 161
    invoke-static {v3}, Lcom/android/gallery/data/ThumbnailCacheManager;->getCache(I)Lcom/android/gallery/data/ThumbnailCacheManager$ThumbnailCache;

    move-result-object v4

    invoke-virtual {v4, p0, v2}, Lcom/android/gallery/data/ThumbnailCacheManager$ThumbnailCache;->putThumbnail(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 164
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcom/android/gallery/data/ThumbnailCacheManager;->getCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    .local v1, file:Ljava/io/File;
    const/4 v4, 0x1

    if-ne v4, v3, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 166
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/android/gallery/data/ThumbnailCacheManager;->saveToFile(Landroid/graphics/Bitmap;Ljava/io/File;)V

    goto :goto_1

    .line 169
    .end local v1           #file:Ljava/io/File;
    :cond_3
    return-void
.end method

.method private static resizeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "src"
    .parameter "pixelSize"

    .prologue
    .line 250
    if-nez p0, :cond_0

    const/4 v5, 0x0

    .line 269
    :goto_0
    return-object v5

    .line 252
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 253
    .local v4, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 254
    .local v0, h:I
    mul-int v5, v4, v0

    if-gt v5, p1, :cond_1

    move-object v5, p0

    goto :goto_0

    .line 256
    :cond_1
    int-to-double v5, p1

    int-to-double v7, v4

    div-double/2addr v5, v7

    int-to-double v7, v0

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 257
    .local v2, scale:D
    const/4 v1, 0x0

    .line 260
    .local v1, result:Landroid/graphics/Bitmap;
    int-to-double v5, v4

    mul-double/2addr v5, v2

    double-to-int v5, v5

    int-to-double v6, v0

    mul-double/2addr v6, v2

    double-to-int v6, v6

    const/4 v7, 0x1

    :try_start_0
    invoke-static {p0, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_1
    move-object v5, v1

    .line 269
    goto :goto_0

    .line 265
    :catch_0
    move-exception v5

    goto :goto_1

    .line 266
    :catch_1
    move-exception v5

    goto :goto_1
.end method

.method public static saveToFile(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 7
    .parameter "bitmap"
    .parameter "file"

    .prologue
    .line 172
    if-nez p0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 173
    :cond_0
    const/4 v1, 0x0

    .line 175
    .local v1, outputStream:Ljava/io/OutputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    const/16 v4, 0x1ff

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Landroid/os/FileUtils;->mkdirs(Ljava/io/File;III)Z

    .line 176
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v1           #outputStream:Ljava/io/OutputStream;
    .local v2, outputStream:Ljava/io/OutputStream;
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x5a

    invoke-virtual {p0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 178
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 179
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x1ff

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 183
    invoke-static {v2}, Lcom/android/gallery/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v1, v2

    .line 184
    .end local v2           #outputStream:Ljava/io/OutputStream;
    .restart local v1       #outputStream:Ljava/io/OutputStream;
    goto :goto_0

    .line 180
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 181
    .local v0, ex:Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 183
    invoke-static {v1}, Lcom/android/gallery/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    :goto_2
    invoke-static {v1}, Lcom/android/gallery/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v3

    .end local v1           #outputStream:Ljava/io/OutputStream;
    .restart local v2       #outputStream:Ljava/io/OutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #outputStream:Ljava/io/OutputStream;
    .restart local v1       #outputStream:Ljava/io/OutputStream;
    goto :goto_2

    .line 180
    .end local v1           #outputStream:Ljava/io/OutputStream;
    .restart local v2       #outputStream:Ljava/io/OutputStream;
    :catch_1
    move-exception v3

    move-object v0, v3

    move-object v1, v2

    .end local v2           #outputStream:Ljava/io/OutputStream;
    .restart local v1       #outputStream:Ljava/io/OutputStream;
    goto :goto_1
.end method

.method public static setMaxTaskNum(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 69
    sget-object v0, Lcom/android/gallery/data/ThumbnailCacheManager;->sThumbTaskManager:Lcom/android/gallery/util/AsyncLoadTaskStack;

    invoke-virtual {v0}, Lcom/android/gallery/util/AsyncLoadTaskStack;->clearPendingTask()V

    .line 70
    sget-object v0, Lcom/android/gallery/data/ThumbnailCacheManager;->sThumbTaskManager:Lcom/android/gallery/util/AsyncLoadTaskStack;

    invoke-virtual {v0, p0}, Lcom/android/gallery/util/AsyncLoadTaskStack;->setMaxNum(I)V

    .line 71
    return-void
.end method
