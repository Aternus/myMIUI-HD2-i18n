.class public Lcom/android/gallery/data/ThumbnailCacheManager$FetchThumbnailTask;
.super Lcom/android/gallery/util/AsyncLoadTask;
.source "ThumbnailCacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery/data/ThumbnailCacheManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FetchThumbnailTask"
.end annotation


# instance fields
.field private mListener:Lcom/android/gallery/data/ThumbnailCacheManager$ThumbnailReadyListener;

.field private mMeta:Lcom/android/gallery/data/BaseMeta;

.field private mType:I


# direct methods
.method constructor <init>(Lcom/android/gallery/data/BaseMeta;ILcom/android/gallery/data/ThumbnailCacheManager$ThumbnailReadyListener;)V
    .locals 2
    .parameter "meta"
    .parameter "type"
    .parameter "listener"

    .prologue
    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery/util/AsyncLoadTask;-><init>(Ljava/lang/String;)V

    .line 306
    iput-object p1, p0, Lcom/android/gallery/data/ThumbnailCacheManager$FetchThumbnailTask;->mMeta:Lcom/android/gallery/data/BaseMeta;

    .line 307
    iput p2, p0, Lcom/android/gallery/data/ThumbnailCacheManager$FetchThumbnailTask;->mType:I

    .line 308
    iput-object p3, p0, Lcom/android/gallery/data/ThumbnailCacheManager$FetchThumbnailTask;->mListener:Lcom/android/gallery/data/ThumbnailCacheManager$ThumbnailReadyListener;

    .line 309
    return-void
.end method


# virtual methods
.method public load()V
    .locals 4

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/gallery/data/ThumbnailCacheManager$FetchThumbnailTask;->mMeta:Lcom/android/gallery/data/BaseMeta;

    iget v1, p0, Lcom/android/gallery/data/ThumbnailCacheManager$FetchThumbnailTask;->mType:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/gallery/data/ThumbnailCacheManager;->getThumbnail(Lcom/android/gallery/data/BaseMeta;IZZ)Landroid/graphics/drawable/Drawable;

    .line 321
    return-void
.end method

.method public postResult()V
    .locals 4

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/gallery/data/ThumbnailCacheManager$FetchThumbnailTask;->mListener:Lcom/android/gallery/data/ThumbnailCacheManager$ThumbnailReadyListener;

    if-eqz v0, :cond_0

    .line 314
    iget-object v0, p0, Lcom/android/gallery/data/ThumbnailCacheManager$FetchThumbnailTask;->mListener:Lcom/android/gallery/data/ThumbnailCacheManager$ThumbnailReadyListener;

    iget-object v1, p0, Lcom/android/gallery/data/ThumbnailCacheManager$FetchThumbnailTask;->mMeta:Lcom/android/gallery/data/BaseMeta;

    iget-object v2, p0, Lcom/android/gallery/data/ThumbnailCacheManager$FetchThumbnailTask;->mMeta:Lcom/android/gallery/data/BaseMeta;

    iget v3, p0, Lcom/android/gallery/data/ThumbnailCacheManager$FetchThumbnailTask;->mType:I

    invoke-static {v2, v3}, Lcom/android/gallery/data/ThumbnailCacheManager;->getThumbnail(Lcom/android/gallery/data/BaseMeta;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/gallery/data/ThumbnailCacheManager$ThumbnailReadyListener;->onThumbnailReady(Lcom/android/gallery/data/BaseMeta;Landroid/graphics/drawable/Drawable;)V

    .line 316
    :cond_0
    return-void
.end method
