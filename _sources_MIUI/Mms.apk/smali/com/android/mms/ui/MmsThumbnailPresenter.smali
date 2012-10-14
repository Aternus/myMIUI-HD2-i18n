.class public Lcom/android/mms/ui/MmsThumbnailPresenter;
.super Lcom/android/mms/ui/Presenter;
.source "MmsThumbnailPresenter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MmsThumbnailPresenter"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)V
    .locals 0
    .parameter "context"
    .parameter "view"
    .parameter "model"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/Presenter;-><init>(Landroid/content/Context;Lcom/android/mms/ui/ViewInterface;Lcom/android/mms/model/Model;)V

    .line 37
    return-void
.end method

.method private presentFirstSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V
    .locals 1
    .parameter "view"
    .parameter "slide"

    .prologue
    .line 48
    invoke-interface {p1}, Lcom/android/mms/ui/SlideViewInterface;->reset()V

    .line 50
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->presentImageThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;)V

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 53
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->presentVideoThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VideoModel;)V

    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-virtual {p2}, Lcom/android/mms/model/SlideModel;->getAudio()Lcom/android/mms/model/AudioModel;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->presentAudioThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;)V

    goto :goto_0
.end method

.method private presentImageThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/ImageModel;)V
    .locals 2
    .parameter "view"
    .parameter "image"

    .prologue
    .line 68
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->isDrmProtected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getSrc()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->showDrmIcon(Lcom/android/mms/ui/SlideViewInterface;Ljava/lang/String;)V

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getSrc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/mms/model/ImageModel;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/android/mms/ui/SlideViewInterface;->setImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private presentVideoThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/VideoModel;)V
    .locals 2
    .parameter "view"
    .parameter "video"

    .prologue
    .line 60
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->isDrmProtected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getSrc()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->showDrmIcon(Lcom/android/mms/ui/SlideViewInterface;Ljava/lang/String;)V

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getSrc()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/mms/model/VideoModel;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/android/mms/ui/SlideViewInterface;->setVideo(Ljava/lang/String;Landroid/net/Uri;)V

    goto :goto_0
.end method

.method private showDrmIcon(Lcom/android/mms/ui/SlideViewInterface;Ljava/lang/String;)V
    .locals 4
    .parameter "view"
    .parameter "name"

    .prologue
    .line 86
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/Presenter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020077

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 87
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-interface {p1, p2, v0}, Lcom/android/mms/ui/SlideViewInterface;->setImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 89
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v2, "MmsThumbnailPresenter"

    const-string v3, "showDrmIcon: out of memory: "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public onModelChanged(Lcom/android/mms/model/Model;Z)V
    .locals 0
    .parameter "model"
    .parameter "dataChanged"

    .prologue
    .line 95
    return-void
.end method

.method public present()V
    .locals 3

    .prologue
    .line 41
    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mModel:Lcom/android/mms/model/Model;

    check-cast v1, Lcom/android/mms/model/SlideshowModel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 42
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v0, :cond_0

    .line 43
    iget-object v1, p0, Lcom/android/mms/ui/Presenter;->mView:Lcom/android/mms/ui/ViewInterface;

    check-cast v1, Lcom/android/mms/ui/SlideViewInterface;

    invoke-direct {p0, v1, v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->presentFirstSlide(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/SlideModel;)V

    .line 45
    :cond_0
    return-void
.end method

.method protected presentAudioThumbnail(Lcom/android/mms/ui/SlideViewInterface;Lcom/android/mms/model/AudioModel;)V
    .locals 3
    .parameter "view"
    .parameter "audio"

    .prologue
    .line 76
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->isDrmProtected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getSrc()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/MmsThumbnailPresenter;->showDrmIcon(Lcom/android/mms/ui/SlideViewInterface;Ljava/lang/String;)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getSrc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/mms/model/AudioModel;->getExtras()Ljava/util/Map;

    move-result-object v2

    invoke-interface {p1, v0, v1, v2}, Lcom/android/mms/ui/SlideViewInterface;->setAudio(Landroid/net/Uri;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method
