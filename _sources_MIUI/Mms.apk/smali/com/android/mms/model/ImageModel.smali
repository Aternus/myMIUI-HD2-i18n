.class public Lcom/android/mms/model/ImageModel;
.super Lcom/android/mms/model/RegionMediaModel;
.source "ImageModel.java"


# instance fields
.field private mDrawableCache:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mHeight:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V
    .locals 2
    .parameter "context"
    .parameter "uri"
    .parameter "region"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 66
    const-string v0, "img"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 62
    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/model/ImageModel;->mDrawableCache:Ljava/lang/ref/SoftReference;

    .line 67
    invoke-direct {p0, p2}, Lcom/android/mms/model/ImageModel;->initModelFromUri(Landroid/net/Uri;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->checkContentRestriction()V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V
    .locals 7
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "uri"
    .parameter "region"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile1/DrmException;,
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 73
    const-string v2, "img"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 62
    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/model/ImageModel;->mDrawableCache:Ljava/lang/ref/SoftReference;

    .line 75
    invoke-direct {p0}, Lcom/android/mms/model/ImageModel;->decodeImageBounds()V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V
    .locals 7
    .parameter "context"
    .parameter "contentType"
    .parameter "src"
    .parameter "wrapper"
    .parameter "regionModel"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    const-string v2, "img"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/model/RegionMediaModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/drm/DrmWrapper;Lcom/android/mms/model/RegionModel;)V

    .line 62
    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/mms/model/ImageModel;->mDrawableCache:Ljava/lang/ref/SoftReference;

    .line 82
    return-void
.end method

.method private createThumbnailDrawable(ILandroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 13
    .parameter "thumbnailBoundsLimit"
    .parameter "uri"

    .prologue
    const/4 v12, 0x0

    const-string v11, "Mms/image"

    .line 162
    iget v7, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    .line 163
    .local v7, outWidth:I
    iget v6, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    .line 165
    .local v6, outHeight:I
    const/4 v8, 0x1

    .line 167
    .local v8, s:I
    :goto_0
    div-int v9, v7, v8

    if-gt v9, p1, :cond_0

    div-int v9, v6, v8

    if-le v9, p1, :cond_1

    .line 168
    :cond_0
    mul-int/lit8 v8, v8, 0x2

    goto :goto_0

    .line 170
    :cond_1
    const-string v9, "Mms:app"

    const/4 v10, 0x2

    invoke-static {v9, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 171
    const-string v9, "Mms/image"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "createThumbnailBitmap: scale="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", w="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    div-int v10, v7, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", h="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    div-int v10, v6, v8

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_2
    const/4 v4, 0x0

    .line 176
    .local v4, input:Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Landroid/graphics/drawable/GifAnimationDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GifAnimationDrawable;-><init>()V

    .line 177
    .local v1, d:Landroid/graphics/drawable/GifAnimationDrawable;
    iget-object v9, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    iget-object v10, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v9, v10, p2}, Landroid/graphics/drawable/GifAnimationDrawable;->load(Landroid/content/res/Resources;Landroid/content/Context;Landroid/net/Uri;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_4

    move-result v9

    if-eqz v9, :cond_5

    .line 194
    if-eqz v4, :cond_3

    .line 196
    :try_start_1
    throw v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_1
    move-object v9, v1

    .line 199
    .end local v1           #d:Landroid/graphics/drawable/GifAnimationDrawable;
    :cond_4
    :goto_2
    return-object v9

    .line 197
    .restart local v1       #d:Landroid/graphics/drawable/GifAnimationDrawable;
    :catch_0
    move-exception v2

    .line 198
    .local v2, e:Ljava/io/IOException;
    const-string v9, "Mms/image"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 182
    .end local v2           #e:Ljava/io/IOException;
    :cond_5
    :try_start_2
    iget-object v9, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 183
    new-instance v5, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 184
    .local v5, options:Landroid/graphics/BitmapFactory$Options;
    iput v8, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 185
    const/4 v9, 0x0

    invoke-static {v4, v9, v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 186
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v10, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-direct {v9, v10, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_4

    .line 194
    if-eqz v4, :cond_4

    .line 196
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 197
    :catch_1
    move-exception v2

    .line 198
    .restart local v2       #e:Ljava/io/IOException;
    const-string v10, "Mms/image"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 187
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #d:Landroid/graphics/drawable/GifAnimationDrawable;
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #options:Landroid/graphics/BitmapFactory$Options;
    :catch_2
    move-exception v9

    move-object v2, v9

    .line 188
    .local v2, e:Ljava/io/FileNotFoundException;
    :try_start_4
    const-string v9, "Mms/image"

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 194
    if-eqz v4, :cond_6

    .line 196
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .end local v2           #e:Ljava/io/FileNotFoundException;
    :cond_6
    :goto_3
    move-object v9, v12

    .line 199
    goto :goto_2

    .line 197
    .restart local v2       #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v2

    .line 198
    .local v2, e:Ljava/io/IOException;
    const-string v9, "Mms/image"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 190
    .end local v2           #e:Ljava/io/IOException;
    :catch_4
    move-exception v9

    move-object v3, v9

    .line 191
    .local v3, ex:Ljava/lang/OutOfMemoryError;
    :try_start_6
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->writeHprofDataToFile()V

    .line 192
    throw v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 194
    .end local v3           #ex:Ljava/lang/OutOfMemoryError;
    :catchall_0
    move-exception v9

    if-eqz v4, :cond_7

    .line 196
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 199
    :cond_7
    :goto_4
    throw v9

    .line 197
    :catch_5
    move-exception v2

    .line 198
    .restart local v2       #e:Ljava/io/IOException;
    const-string v10, "Mms/image"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method private decodeImageBounds()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile1/DrmException;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Lcom/android/mms/ui/UriImage;

    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->getUriWithDrmCheck()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 105
    .local v0, uriImage:Lcom/android/mms/ui/UriImage;
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    .line 106
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    .line 111
    return-void
.end method

.method private initModelFromUri(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 85
    new-instance v0, Lcom/android/mms/ui/UriImage;

    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 87
    .local v0, uriImage:Lcom/android/mms/ui/UriImage;
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getContentType()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    .line 88
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    new-instance v1, Lcom/google/android/mms/MmsException;

    const-string v2, "Type of media is unknown."

    invoke-direct {v1, v2}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 91
    :cond_0
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getSrc()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/model/MediaModel;->mSrc:Ljava/lang/String;

    .line 92
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mWidth:I

    .line 93
    invoke-virtual {v0}, Lcom/android/mms/ui/UriImage;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/android/mms/model/ImageModel;->mHeight:I

    .line 101
    return-void
.end method

.method private internalGetDrawable(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter "uri"

    .prologue
    .line 146
    iget-object v1, p0, Lcom/android/mms/model/ImageModel;->mDrawableCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 147
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 149
    const/16 v1, 0x1e0

    :try_start_0
    invoke-direct {p0, v1, p1}, Lcom/android/mms/model/ImageModel;->createThumbnailDrawable(ILandroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 150
    if-eqz v0, :cond_0

    .line 151
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/mms/model/ImageModel;->mDrawableCache:Ljava/lang/ref/SoftReference;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :cond_0
    :goto_0
    return-object v0

    .line 153
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method protected checkContentRestriction()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/mms/ContentRestrictionException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-static {}, Lcom/android/mms/model/ContentRestrictionFactory;->getContentRestriction()Lcom/android/mms/model/ContentRestriction;

    move-result-object v0

    .line 134
    .local v0, cr:Lcom/android/mms/model/ContentRestriction;
    iget-object v1, p0, Lcom/android/mms/model/MediaModel;->mContentType:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/mms/model/ContentRestriction;->checkImageContentType(Ljava/lang/String;)V

    .line 135
    return-void
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/model/ImageModel;->internalGetDrawable(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getDrawableWithDrmCheck()Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile1/DrmException;
        }
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->getUriWithDrmCheck()Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/model/ImageModel;->internalGetDrawable(Landroid/net/Uri;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getMediaResizable()Z
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method public handleEvent(Lorg/w3c/dom/events/Event;)V
    .locals 4
    .parameter "evt"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 115
    invoke-interface {p1}, Lorg/w3c/dom/events/Event;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmilMediaStart"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iput-boolean v3, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    .line 121
    :cond_0
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/mms/model/ImageModel;->notifyModelChanged(Z)V

    .line 122
    return-void

    .line 117
    :cond_1
    iget-short v0, p0, Lcom/android/mms/model/MediaModel;->mFill:S

    if-eq v0, v3, :cond_0

    .line 118
    iput-boolean v2, p0, Lcom/android/mms/model/RegionMediaModel;->mVisible:Z

    goto :goto_0
.end method

.method protected resizeMedia(IJ)V
    .locals 11
    .parameter "byteLimit"
    .parameter "messageId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 211
    new-instance v1, Lcom/android/mms/ui/UriImage;

    iget-object v8, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v1, v8, v9}, Lcom/android/mms/ui/UriImage;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 212
    .local v1, image:Lcom/android/mms/ui/UriImage;
    if-nez v1, :cond_0

    .line 213
    new-instance v8, Lcom/android/mms/ExceedMessageSizeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No room to resize picture: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 215
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageWidth()I

    move-result v8

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxImageHeight()I

    move-result v9

    invoke-virtual {v1, v8, v9, p1}, Lcom/android/mms/ui/UriImage;->getResizedImageAsPart(III)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v3

    .line 220
    .local v3, part:Lcom/google/android/mms/pdu/PduPart;
    if-nez v3, :cond_1

    .line 221
    new-instance v8, Lcom/android/mms/ExceedMessageSizeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Not enough memory to turn image into part: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->getUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 225
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/model/ImageModel;->getSrc()Ljava/lang/String;

    move-result-object v6

    .line 226
    .local v6, src:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    .line 227
    .local v7, srcBytes:[B
    invoke-virtual {v3, v7}, Lcom/google/android/mms/pdu/PduPart;->setContentLocation([B)V

    .line 228
    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v4

    .line 229
    .local v4, period:I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_2

    const/4 v8, 0x0

    invoke-virtual {v6, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->getBytes()[B

    move-result-object v8

    move-object v0, v8

    .line 230
    .local v0, contentId:[B
    :goto_0
    invoke-virtual {v3, v0}, Lcom/google/android/mms/pdu/PduPart;->setContentId([B)V

    .line 232
    iget-object v8, p0, Lcom/android/mms/model/MediaModel;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v5

    .line 233
    .local v5, persister:Lcom/google/android/mms/pdu/PduPersister;
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v8

    array-length v8, v8

    iput v8, p0, Lcom/android/mms/model/MediaModel;->mSize:I

    .line 234
    invoke-virtual {v5, v3, p2, p3}, Lcom/google/android/mms/pdu/PduPersister;->persistPart(Lcom/google/android/mms/pdu/PduPart;J)Landroid/net/Uri;

    move-result-object v2

    .line 235
    .local v2, newUri:Landroid/net/Uri;
    invoke-virtual {p0, v2}, Lcom/android/mms/model/ImageModel;->setUri(Landroid/net/Uri;)V

    .line 236
    return-void

    .end local v0           #contentId:[B
    .end local v2           #newUri:Landroid/net/Uri;
    .end local v5           #persister:Lcom/google/android/mms/pdu/PduPersister;
    :cond_2
    move-object v0, v7

    .line 229
    goto :goto_0
.end method
