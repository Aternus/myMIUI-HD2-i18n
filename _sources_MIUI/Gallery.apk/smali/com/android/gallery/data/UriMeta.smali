.class public Lcom/android/gallery/data/UriMeta;
.super Lcom/android/gallery/data/BaseMeta;
.source "UriMeta.java"


# instance fields
.field public mDrawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 9
    .parameter "context"
    .parameter "uri"

    .prologue
    const v8, 0x5b8d80

    .line 18
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/gallery/data/BaseMeta;-><init>(Ljava/lang/String;)V

    .line 20
    new-instance v5, Landroid/util/InputStreamLoader;

    invoke-direct {v5, p1, p2}, Landroid/util/InputStreamLoader;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 21
    .local v5, streamLoader:Landroid/util/InputStreamLoader;
    invoke-static {v5}, Lcom/android/gallery/util/ImageLoader;->getBitmapSize(Landroid/util/InputStreamLoader;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    .line 22
    .local v3, options:Landroid/graphics/BitmapFactory$Options;
    invoke-virtual {v5}, Landroid/util/InputStreamLoader;->close()V

    .line 23
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v6, p0, Lcom/android/gallery/data/BaseMeta;->mWidth:I

    .line 24
    iget v6, v3, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v6, p0, Lcom/android/gallery/data/BaseMeta;->mHeight:I

    .line 26
    iget-object v2, v3, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 30
    .local v2, mimeType:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 32
    const-string v2, ""

    .line 34
    :cond_0
    const-string v6, "video"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/gallery/data/BaseMeta;->mIsVideo:Z

    .line 35
    const-string v6, "image"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/gallery/data/BaseMeta;->mIsImage:Z

    .line 36
    const-string v6, "image/jpeg"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/gallery/data/BaseMeta;->mIsJpeg:Z

    .line 37
    const-string v6, "image/gif"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/gallery/data/BaseMeta;->mIsGif:Z

    .line 39
    iget v6, p0, Lcom/android/gallery/data/BaseMeta;->mWidth:I

    iget v7, p0, Lcom/android/gallery/data/BaseMeta;->mHeight:I

    mul-int v4, v6, v7

    .line 40
    .local v4, pixelSize:I
    iget-boolean v6, p0, Lcom/android/gallery/data/BaseMeta;->mIsGif:Z

    if-eqz v6, :cond_1

    if-ge v4, v8, :cond_1

    .line 41
    new-instance v1, Landroid/graphics/drawable/GifAnimationDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GifAnimationDrawable;-><init>()V

    .line 42
    .local v1, drawable:Landroid/graphics/drawable/GifAnimationDrawable;
    const-wide/32 v6, 0x16e3600

    invoke-virtual {v1, v6, v7}, Landroid/graphics/drawable/GifAnimationDrawable;->setMaxDecodeSize(J)V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v1, v6, p1, p2}, Landroid/graphics/drawable/GifAnimationDrawable;->load(Landroid/content/res/Resources;Landroid/content/Context;Landroid/net/Uri;)Z

    .line 44
    iput-object v1, p0, Lcom/android/gallery/data/UriMeta;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 50
    .end local v1           #drawable:Landroid/graphics/drawable/GifAnimationDrawable;
    :goto_0
    return-void

    .line 47
    :cond_1
    invoke-static {p1, p2, v8}, Lcom/android/gallery/util/ImageLoader;->getBitmap(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 48
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v0}, Lcom/android/gallery/util/ImageLoader;->getDrawable(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/gallery/data/UriMeta;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public getThumbnail(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "pixelSize"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/gallery/data/UriMeta;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public rename(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "newName"

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method
