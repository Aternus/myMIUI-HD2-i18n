.class public Lcom/android/mms/ui/SlideshowPresenter;
.super Lcom/android/mms/ui/Presenter;
.source "SlideshowPresenter.java"


# instance fields
.field protected final mHandler:Landroid/os/Handler;

.field protected mHeightTransformRatio:F

.field protected mLocation:I

.field protected final mSlideNumber:I

.field private final mViewSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

.field protected mWidthTransformRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)V
    .locals 1
    .parameter "context"
    .parameter "view"
    .parameter "model"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/Presenter;-><init>(Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)V

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    .line 72
    new-instance v0, Lcom/android/mms/ui/SlideshowPresenter$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/SlideshowPresenter$1;-><init>(Lcom/android/mms/ui/SlideshowPresenter;)V

    iput-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mViewSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 64
    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v0, Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    .line 66
    instance-of v0, p2, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v0, :cond_0

    .line 67
    check-cast p2, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    .end local p2
    iget-object v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mViewSizeChangedListener:Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;

    invoke-interface {p2, v0}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setOnSizeChangedListener(Lcom/android/mms/ui/AdaptableSlideViewInterface$OnSizeChangedListener;)V

    .line 70
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/SlideshowPresenter;II)F
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter;->getWidthTransformRatio(II)F

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/SlideshowPresenter;II)F
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter;->getHeightTransformRatio(II)F

    move-result v0

    return v0
.end method

.method private getHeightTransformRatio(II)F
    .locals 2
    .parameter "height"
    .parameter "layoutHeight"

    .prologue
    .line 101
    if-lez p1, :cond_0

    .line 102
    int-to-float v0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 104
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method private getWidthTransformRatio(II)F
    .locals 2
    .parameter "width"
    .parameter "layoutWidth"

    .prologue
    .line 94
    if-lez p1, :cond_0

    .line 95
    int-to-float v0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    .line 97
    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x3f80

    goto :goto_0
.end method

.method private transformHeight(I)I
    .locals 2
    .parameter "height"

    .prologue
    .line 112
    int-to-float v0, p1

    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHeightTransformRatio:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private transformWidth(I)I
    .locals 2
    .parameter "width"

    .prologue
    .line 108
    int-to-float v0, p1

    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mWidthTransformRatio:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method


# virtual methods
.method public goForward()V
    .locals 3

    .prologue
    .line 266
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    iget v1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mSlideNumber:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    .line 267
    iget v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 269
    :cond_0
    return-void
.end method

.method public onModelChanged(Lcom/android/mms/model/Model;Z)V
    .locals 4
    .parameter "model"
    .parameter "dataChanged"

    .prologue
    .line 272
    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v1, Lcom/android/mms/ui/SlideViewInterface;

    .line 275
    .local v1, view:Lcom/android/mms/ui/SlideViewInterface;
    instance-of v2, p1, Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    instance-of v2, p1, Lcom/android/mms/model/SlideModel;

    if-eqz v2, :cond_3

    .line 278
    move-object v0, p1

    check-cast v0, Lcom/android/mms/model/SlideModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 279
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/mms/ui/SlideshowPresenter$2;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/mms/ui/SlideshowPresenter$2;-><init>(Lcom/android/mms/ui/SlideshowPresenter;Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/Model;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 285
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/mms/ui/SlideshowPresenter$3;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/SlideshowPresenter$3;-><init>(Lcom/android/mms/ui/SlideshowPresenter;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 291
    :cond_3
    instance-of v2, p1, Lcom/android/mms/model/MediaModel;

    if-eqz v2, :cond_5

    .line 292
    instance-of v2, p1, Lcom/android/mms/model/RegionMediaModel;

    if-eqz v2, :cond_4

    .line 293
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/mms/ui/SlideshowPresenter$4;

    invoke-direct {v3, p0, v1, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter$4;-><init>(Lcom/android/mms/ui/SlideshowPresenter;Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/Model;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 305
    :cond_4
    move-object v0, p1

    check-cast v0, Lcom/android/mms/model/MediaModel;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 306
    iget-object v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/mms/ui/SlideshowPresenter$5;

    invoke-direct {v3, p0, v1, p1, p2}, Lcom/android/mms/ui/SlideshowPresenter$5;-><init>(Lcom/android/mms/ui/SlideshowPresenter;Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/Model;Z)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 319
    :cond_5
    instance-of v2, p1, Lcom/android/mms/model/RegionModel;

    if-eqz v2, :cond_0

    goto :goto_0
.end method

.method public present()V
    .locals 3

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v0, Lcom/android/mms/ui/SlideViewInterface;

    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v1, Lcom/android/mms/model/SlideshowModel;

    iget v2, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/SlideshowPresenter;->presentSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V

    .line 118
    return-void
.end method

.method protected presentAudio(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;Z)V
    .locals 4
    .parameter "view"
    .parameter "audio"
    .parameter "dataChanged"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile1/DrmException;
        }
    .end annotation

    .prologue
    .line 163
    if-eqz p3, :cond_0

    .line 164
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getUriWithDrmCheck()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getExtras()Ljava/util/Map;

    move-result-object v3

    invoke-interface {p1, v1, v2, v3}, Lcom/android/mms/ui/SlideViewInterface;->setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V

    .line 167
    :cond_0
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getCurrentAction()Lcom/android/mms/model/MediaModel$MediaAction;

    move-result-object v0

    .line 168
    .local v0, action:Lcom/android/mms/model/MediaModel$MediaAction;
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_2

    .line 169
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->startAudio()V

    .line 177
    :cond_1
    :goto_0
    return-void

    .line 170
    :cond_2
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_3

    .line 171
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->pauseAudio()V

    goto :goto_0

    .line 172
    :cond_3
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_4

    .line 173
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->stopAudio()V

    goto :goto_0

    .line 174
    :cond_4
    sget-object v1, Lcom/android/mms/model/MediaModel$MediaAction;->SEEK:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v0, v1, :cond_1

    .line 175
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getSeekTo()I

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/mms/ui/SlideViewInterface;->seekAudio(I)V

    goto :goto_0
.end method

.method protected presentImage(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;Lcom/android/mms/model/RegionModel;Z)V
    .locals 6
    .parameter "view"
    .parameter "image"
    .parameter "r"
    .parameter "dataChanged"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile1/DrmException;
        }
    .end annotation

    .prologue
    .line 203
    if-eqz p4, :cond_0

    .line 204
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getDrawableWithDrmCheck()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/android/mms/ui/SlideViewInterface;->setImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 207
    :cond_0
    instance-of v1, p1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v1, :cond_1

    .line 208
    move-object v0, p1

    check-cast v0, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    move-object v1, v0

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v2

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v3

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v4

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setImageRegion(IIII)V

    .line 214
    :cond_1
    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getFit()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/mms/ui/SlideViewInterface;->setImageRegionFit(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->isVisible()Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/mms/ui/SlideViewInterface;->setImageVisibility(Z)V

    .line 216
    return-void
.end method

.method protected presentRegionMedia(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/RegionMediaModel;Z)V
    .locals 2
    .parameter "view"
    .parameter "rMedia"
    .parameter "dataChanged"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile1/DrmException;
        }
    .end annotation

    .prologue
    .line 150
    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->getRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v0

    .line 151
    .local v0, r:Lcom/android/mms/model/RegionModel;
    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->isText()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    check-cast p2, Lcom/android/mms/model/TextModel;

    .end local p2
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/mms/ui/SlideshowPresenter;->presentText(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/TextModel;Lcom/android/mms/model/RegionModel;Z)V

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 153
    .restart local p2
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->isImage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 154
    check-cast p2, Lcom/android/mms/model/ImageModel;

    .end local p2
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/mms/ui/SlideshowPresenter;->presentImage(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;Lcom/android/mms/model/RegionModel;Z)V

    goto :goto_0

    .line 155
    .restart local p2
    :cond_2
    invoke-virtual {p2}, Lcom/android/mms/model/RegionMediaModel;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 156
    check-cast p2, Lcom/android/mms/model/VideoModel;

    .end local p2
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/mms/ui/SlideshowPresenter;->presentVideo(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VideoModel;Lcom/android/mms/model/RegionModel;Z)V

    goto :goto_0
.end method

.method protected presentSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V
    .locals 6
    .parameter "view"
    .parameter "model"

    .prologue
    .line 125
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->reset()V

    .line 128
    :try_start_0
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/model/MediaModel;

    .line 129
    .local v2, media:Lcom/android/mms/model/MediaModel;
    instance-of v3, v2, Lcom/android/mms/model/RegionMediaModel;

    if-eqz v3, :cond_2

    .line 130
    check-cast v2, Lcom/android/mms/model/RegionMediaModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/mms/ui/SlideshowPresenter;->presentRegionMedia(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/RegionMediaModel;Z)V
    :try_end_0
    .catch Landroid/drm/mobile1/DrmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    .end local v1           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 136
    .local v0, e:Landroid/drm/mobile1/DrmException;
    const-string v3, "SlideshowPresenter"

    invoke-virtual {v0}, Landroid/drm/mobile1/DrmException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    iget-object v3, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    const v5, 0x7f09001d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 141
    .end local v0           #e:Landroid/drm/mobile1/DrmException;
    :cond_1
    return-void

    .line 131
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->isAudio()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 132
    check-cast v2, Lcom/android/mms/model/AudioModel;

    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    const/4 v3, 0x1

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/mms/ui/SlideshowPresenter;->presentAudio(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;Z)V
    :try_end_1
    .catch Landroid/drm/mobile1/DrmException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected presentText(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/TextModel;Lcom/android/mms/model/RegionModel;Z)V
    .locals 6
    .parameter "view"
    .parameter "text"
    .parameter "r"
    .parameter "dataChanged"

    .prologue
    .line 181
    if-eqz p4, :cond_0

    .line 182
    invoke-virtual {p2}, Lcom/android/mms/model/TextModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/android/mms/ui/SlideViewInterface;->setText(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_0
    instance-of v1, p1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v1, :cond_1

    .line 186
    move-object v0, p1

    check-cast v0, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    move-object v1, v0

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v2

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v3

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v4

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setTextRegion(IIII)V

    .line 192
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/model/TextModel;->isVisible()Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/android/mms/ui/SlideViewInterface;->setTextVisibility(Z)V

    .line 193
    return-void
.end method

.method protected presentVideo(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VideoModel;Lcom/android/mms/model/RegionModel;Z)V
    .locals 7
    .parameter "view"
    .parameter "video"
    .parameter "r"
    .parameter "dataChanged"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile1/DrmException;
        }
    .end annotation

    .prologue
    .line 226
    if-eqz p4, :cond_0

    .line 227
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getSrc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getUriWithDrmCheck()Landroid/net/Uri;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lcom/android/mms/ui/SlideViewInterface;->setVideo(Ljava/lang/String;Landroid/net/Uri;)V

    .line 230
    :cond_0
    instance-of v2, p1, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    if-eqz v2, :cond_1

    .line 231
    move-object v0, p1

    check-cast v0, Lcom/android/mms/ui/AdaptableSlideViewInterface;

    move-object v2, v0

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getLeft()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v3

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getTop()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v4

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getWidth()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/mms/ui/SlideshowPresenter;->transformWidth(I)I

    move-result v5

    invoke-virtual {p3}, Lcom/android/mms/model/RegionModel;->getHeight()I

    move-result v6

    invoke-direct {p0, v6}, Lcom/android/mms/ui/SlideshowPresenter;->transformHeight(I)I

    move-result v6

    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/mms/ui/AdaptableSlideViewInterface;->setVideoRegion(IIII)V

    .line 237
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->isVisible()Z

    move-result v2

    invoke-interface {p1, v2}, Lcom/android/mms/ui/SlideViewInterface;->setVideoVisibility(Z)V

    .line 239
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getCurrentAction()Lcom/android/mms/model/MediaModel$MediaAction;

    move-result-object v1

    .line 240
    .local v1, action:Lcom/android/mms/model/MediaModel$MediaAction;
    sget-object v2, Lcom/android/mms/model/MediaModel$MediaAction;->START:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v1, v2, :cond_3

    .line 241
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->startVideo()V

    .line 249
    :cond_2
    :goto_0
    return-void

    .line 242
    :cond_3
    sget-object v2, Lcom/android/mms/model/MediaModel$MediaAction;->PAUSE:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v1, v2, :cond_4

    .line 243
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->pauseVideo()V

    goto :goto_0

    .line 244
    :cond_4
    sget-object v2, Lcom/android/mms/model/MediaModel$MediaAction;->STOP:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v1, v2, :cond_5

    .line 245
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->stopVideo()V

    goto :goto_0

    .line 246
    :cond_5
    sget-object v2, Lcom/android/mms/model/MediaModel$MediaAction;->SEEK:Lcom/android/mms/model/MediaModel$MediaAction;

    if-ne v1, v2, :cond_2

    .line 247
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getSeekTo()I

    move-result v2

    invoke-interface {p1, v2}, Lcom/android/mms/ui/SlideViewInterface;->seekVideo(I)V

    goto :goto_0
.end method

.method public setLocation(I)V
    .locals 0
    .parameter "location"

    .prologue
    .line 252
    iput p1, p0, Lcom/android/mms/ui/SlideshowPresenter;->mLocation:I

    .line 253
    return-void
.end method
