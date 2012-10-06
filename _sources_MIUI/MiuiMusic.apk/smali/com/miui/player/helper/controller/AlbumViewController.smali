.class public Lcom/miui/player/helper/controller/AlbumViewController;
.super Lcom/miui/player/helper/controller/MediaPlaybackController;
.source "AlbumViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/helper/controller/AlbumViewController$OnDownloadClickLitener;,
        Lcom/miui/player/helper/controller/AlbumViewController$AlbumChangedAnimationListener;
    }
.end annotation


# static fields
.field private static final ASPECT_RADIO_THRESHOLD:F = 0.1f

.field private static final DOWNLOAD_DONE:I = 0x2

.field private static final DOWNLOAD_NONE:I = 0x0

.field private static final DOWNLOAD_PROCESSING:I = 0x1

.field private static final MSG_ENABLE_VISUALIZER:I = 0x1


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mAlbumFrame:Landroid/view/View;

.field private final mAlbumImage:Landroid/widget/ImageView;

.field private final mAlbumMaskView:Landroid/view/View;

.field private final mAlbumProjectImage:Landroid/widget/ImageView;

.field private final mAnimationStatus:Lcom/miui/player/helper/controller/MediaPlaybackController$AnimationStatus;

.field private final mClickListener:Landroid/view/View$OnClickListener;

.field private mCurrentAlbum:Landroid/graphics/Bitmap;

.field private final mDefaultAlbumView:Landroid/view/View;

.field private final mDefaultAspectRatio:F

.field private final mDownloadCompleteListener:Landroid/content/BroadcastReceiver;

.field private final mDownloadFrame:Landroid/view/View;

.field private final mDownloadInProcess:Landroid/widget/ProgressBar;

.field private final mDownloadIndicator:Landroid/widget/ImageView;

.field private final mDownloadStatus:Landroid/widget/TextView;

.field private final mProjectHeight:I

.field private final mRotateMatrix:Landroid/graphics/Matrix;

.field private final mSpectrumVisualizer:Landroid/widget/SpectrumVisualizer;

.field private final mZoomInAnimId:I

.field private final mZoomOutAnimId:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/player/helper/controller/MediaPlaybackController$AnimationStatus;Landroid/view/View$OnClickListener;)V
    .locals 5
    .parameter "a"
    .parameter "status"
    .parameter "l"

    .prologue
    const/high16 v4, 0x3f80

    .line 69
    invoke-direct {p0}, Lcom/miui/player/helper/controller/MediaPlaybackController;-><init>()V

    .line 462
    new-instance v2, Lcom/miui/player/helper/controller/AlbumViewController$1;

    invoke-direct {v2, p0}, Lcom/miui/player/helper/controller/AlbumViewController$1;-><init>(Lcom/miui/player/helper/controller/AlbumViewController;)V

    iput-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mDownloadCompleteListener:Landroid/content/BroadcastReceiver;

    .line 70
    iput-object p1, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mActivity:Landroid/app/Activity;

    .line 71
    iput-object p3, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mClickListener:Landroid/view/View$OnClickListener;

    .line 72
    iput-object p2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mAnimationStatus:Lcom/miui/player/helper/controller/MediaPlaybackController$AnimationStatus;

    .line 73
    const v2, 0x7f0c0033

    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mAlbumFrame:Landroid/view/View;

    .line 74
    iget-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mAlbumFrame:Landroid/view/View;

    const v3, 0x7f0c003b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mAlbumImage:Landroid/widget/ImageView;

    .line 75
    iget-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mAlbumFrame:Landroid/view/View;

    const v3, 0x7f0c003c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mAlbumProjectImage:Landroid/widget/ImageView;

    .line 76
    iget-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mAlbumFrame:Landroid/view/View;

    const v3, 0x7f0c0034

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mDefaultAlbumView:Landroid/view/View;

    .line 77
    iget-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mAlbumFrame:Landroid/view/View;

    const v3, 0x7f0c0021

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mAlbumMaskView:Landroid/view/View;

    .line 78
    iget-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mAlbumFrame:Landroid/view/View;

    const v3, 0x7f0c0035

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SpectrumVisualizer;

    iput-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mSpectrumVisualizer:Landroid/widget/SpectrumVisualizer;

    .line 79
    iget-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mAlbumFrame:Landroid/view/View;

    const v3, 0x7f0c0037

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mDownloadFrame:Landroid/view/View;

    .line 80
    iget-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mDownloadFrame:Landroid/view/View;

    const v3, 0x7f0c0038

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mDownloadIndicator:Landroid/widget/ImageView;

    .line 81
    iget-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mDownloadFrame:Landroid/view/View;

    const v3, 0x7f0c0039

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mDownloadInProcess:Landroid/widget/ProgressBar;

    .line 82
    iget-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mDownloadFrame:Landroid/view/View;

    const v3, 0x7f0c003a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mDownloadStatus:Landroid/widget/TextView;

    .line 84
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mRotateMatrix:Landroid/graphics/Matrix;

    .line 85
    iget-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mRotateMatrix:Landroid/graphics/Matrix;

    const/high16 v3, -0x4080

    invoke-virtual {v2, v4, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 86
    iput v4, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mDefaultAspectRatio:F

    .line 87
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mProjectHeight:I

    .line 89
    iget-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mAlbumFrame:Landroid/view/View;

    iget-object v3, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 93
    .local v1, metrics:Landroid/util/DisplayMetrics;
    iget-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 94
    iget v2, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    const/16 v3, 0x356

    if-ne v2, v3, :cond_0

    .line 95
    const v2, 0x7f040007

    iput v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mZoomInAnimId:I

    .line 96
    const v2, 0x7f040009

    iput v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mZoomOutAnimId:I

    .line 97
    iget-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mDownloadFrame:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 98
    .local v0, lp:Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070012

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 99
    iget-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070013

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 104
    .end local v0           #lp:Landroid/widget/RelativeLayout$LayoutParams;
    :goto_0
    return-void

    .line 101
    :cond_0
    const v2, 0x7f040006

    iput v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mZoomInAnimId:I

    .line 102
    const v2, 0x7f040008

    iput v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mZoomOutAnimId:I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/miui/player/helper/controller/AlbumViewController;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/miui/player/helper/controller/AlbumViewController;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/player/helper/controller/AlbumViewController;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/player/helper/controller/AlbumViewController;)Lcom/miui/player/helper/controller/MediaPlaybackController$AnimationStatus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mAnimationStatus:Lcom/miui/player/helper/controller/MediaPlaybackController$AnimationStatus;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/player/helper/controller/AlbumViewController;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mAlbumFrame:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/player/helper/controller/AlbumViewController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/miui/player/helper/controller/AlbumViewController;->downloadRefresh(I)V

    return-void
.end method

.method private cutToDefauleAspectRadio(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11
    .parameter "bm"

    .prologue
    const/4 v1, 0x0

    .line 317
    invoke-direct {p0, p1}, Lcom/miui/player/helper/controller/AlbumViewController;->getAspectRadio(Landroid/graphics/Bitmap;)F

    move-result v7

    .line 318
    .local v7, radio:F
    iget v0, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mDefaultAspectRatio:F

    sub-float v0, v7, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const v2, 0x3dcccccd

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    move-object v0, p1

    .line 340
    :goto_0
    return-object v0

    .line 322
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 323
    .local v8, rawHeight:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 324
    .local v9, rawWidth:I
    const/4 v3, 0x0

    .line 325
    .local v3, width:I
    const/4 v4, 0x0

    .line 327
    .local v4, height:I
    iget v0, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mDefaultAspectRatio:F

    cmpl-float v0, v7, v0

    if-lez v0, :cond_2

    .line 328
    move v4, v8

    .line 329
    int-to-float v0, v8

    iget v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mDefaultAspectRatio:F

    mul-float/2addr v0, v2

    float-to-int v3, v0

    .line 335
    :goto_1
    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 336
    .local v10, ret:Landroid/graphics/Bitmap;
    if-eq v10, p1, :cond_1

    .line 337
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    move-object v0, v10

    .line 340
    goto :goto_0

    .line 331
    .end local v10           #ret:Landroid/graphics/Bitmap;
    :cond_2
    move v3, v9

    .line 332
    int-to-float v0, v9

    iget v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mDefaultAspectRatio:F

    div-float/2addr v0, v2

    float-to-int v4, v0

    goto :goto_1
.end method

.method private downloadRefresh(I)V
    .locals 7
    .parameter "status"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 393
    sget-object v1, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    .line 394
    .local v1, service:Lcom/miui/player/IMediaPlaybackService;
    const/4 v0, 0x0

    .line 396
    .local v0, isOnline:Z
    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v1}, Lcom/miui/player/IMediaPlaybackService;->getAudioId()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 397
    const/4 v0, 0x1

    .line 402
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Environment;->isExternalStorageMounted()Z

    move-result v2

    if-nez v2, :cond_2

    .line 403
    :cond_1
    iget-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mDownloadFrame:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 432
    :goto_1
    return-void

    .line 407
    :cond_2
    iget-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mDownloadFrame:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 409
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 411
    :pswitch_0
    iget-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mDownloadFrame:Landroid/view/View;

    new-instance v3, Lcom/miui/player/helper/controller/AlbumViewController$OnDownloadClickLitener;

    invoke-direct {v3, p0, v6}, Lcom/miui/player/helper/controller/AlbumViewController$OnDownloadClickLitener;-><init>(Lcom/miui/player/helper/controller/AlbumViewController;Lcom/miui/player/helper/controller/AlbumViewController$1;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 412
    iget-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mDownloadStatus:Landroid/widget/TextView;

    const v3, 0x7f080089

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 414
    iget-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mDownloadIndicator:Landroid/widget/ImageView;

    const v3, 0x7f02002b

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 415
    iget-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mDownloadIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 416
    iget-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mDownloadInProcess:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 419
    :pswitch_1
    iget-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mDownloadFrame:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    iget-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mDownloadStatus:Landroid/widget/TextView;

    const v3, 0x7f08008b

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 421
    iget-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mDownloadIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 422
    iget-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mDownloadInProcess:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 425
    :pswitch_2
    iget-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mDownloadFrame:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 426
    iget-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mDownloadStatus:Landroid/widget/TextView;

    const v3, 0x7f08008a

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 427
    iget-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mDownloadIndicator:Landroid/widget/ImageView;

    const v3, 0x7f020006

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 428
    iget-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mDownloadIndicator:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 429
    iget-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mDownloadInProcess:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v5}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 399
    :catch_0
    move-exception v2

    goto :goto_0

    .line 409
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getAspectRadio(Landroid/graphics/Bitmap;)F
    .locals 2
    .parameter "bm"

    .prologue
    .line 313
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private getProject(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bm"

    .prologue
    const/4 v0, 0x0

    .line 287
    if-nez p1, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-object v0

    .line 290
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    .line 291
    .local v7, height:I
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 293
    .local v3, width:I
    if-lez v7, :cond_0

    if-lez v3, :cond_0

    .line 297
    iget v4, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mProjectHeight:I

    .line 298
    .local v4, scaledHeight:I
    iget v0, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mProjectHeight:I

    sub-int v2, v7, v0

    .line 299
    .local v2, y:I
    if-gtz v2, :cond_2

    .line 300
    const/4 v2, 0x0

    .line 301
    move v4, v7

    .line 304
    :cond_2
    const/4 v1, 0x0

    iget-object v5, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mRotateMatrix:Landroid/graphics/Matrix;

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 305
    .local v9, tmp:Landroid/graphics/Bitmap;
    const/high16 v0, 0x3f80

    invoke-static {v9, v0}, Lcom/miui/player/helper/Global;->getBitmapBottomAlpha(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 306
    .local v8, ret:Landroid/graphics/Bitmap;
    if-eq v8, v9, :cond_3

    .line 307
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    move-object v0, v8

    .line 309
    goto :goto_0
.end method

.method private setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 5
    .parameter "bm"

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 259
    if-eqz p1, :cond_0

    .line 260
    invoke-direct {p0, p1}, Lcom/miui/player/helper/controller/AlbumViewController;->cutToDefauleAspectRadio(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 261
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 262
    .local v0, d:Landroid/graphics/drawable/BitmapDrawable;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->setAntiAlias(Z)V

    .line 263
    iget-object v1, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 264
    iget-object v1, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mAlbumProjectImage:Landroid/widget/ImageView;

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 265
    iget-object v1, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mAlbumProjectImage:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/miui/player/helper/controller/AlbumViewController;->getProject(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 266
    iput-object p1, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mCurrentAlbum:Landroid/graphics/Bitmap;

    .line 267
    iget-object v1, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mDefaultAlbumView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 268
    iget-object v1, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mAlbumMaskView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 276
    .end local v0           #d:Landroid/graphics/drawable/BitmapDrawable;
    :goto_0
    return-void

    .line 270
    :cond_0
    iget-object v1, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mAlbumImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 271
    iget-object v1, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mAlbumProjectImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 272
    iput-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mCurrentAlbum:Landroid/graphics/Bitmap;

    .line 273
    iget-object v1, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mDefaultAlbumView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 274
    iget-object v1, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mAlbumMaskView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected dirty(I)Z
    .locals 2
    .parameter "type"

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, ret:Z
    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 117
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mCurrentAlbum:Landroid/graphics/Bitmap;

    .line 118
    const/4 v0, 0x1

    .line 123
    :cond_1
    :goto_0
    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/player/helper/controller/AlbumViewController;->isDirty()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    const/4 v1, 0x1

    :goto_1
    return v1

    .line 119
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 120
    const/4 v0, 0x1

    goto :goto_0

    .line 123
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method protected doUpdate()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 128
    iget-object v3, p0, Lcom/miui/player/helper/controller/MediaPlaybackController;->mControllerInfo:Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;

    if-nez v3, :cond_0

    move v3, v8

    .line 168
    :goto_0
    return v3

    .line 132
    :cond_0
    iget-object v3, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mAnimationStatus:Lcom/miui/player/helper/controller/MediaPlaybackController$AnimationStatus;

    invoke-interface {v3}, Lcom/miui/player/helper/controller/MediaPlaybackController$AnimationStatus;->isActivityPaused()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 133
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/miui/player/helper/controller/AlbumViewController;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move v3, v8

    .line 134
    goto :goto_0

    .line 136
    :cond_1
    iget-object v3, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mAlbumImage:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/miui/player/helper/controller/MediaPlaybackController;->mControllerInfo:Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 137
    const/4 v0, 0x0

    .line 138
    .local v0, bm:Landroid/graphics/Bitmap;
    iget-object v3, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mActivity:Landroid/app/Activity;

    const-string v4, "display_album"

    invoke-static {v3, v4}, Lcom/miui/player/ui/PreferencesActivity;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 139
    iget-object v3, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mActivity:Landroid/app/Activity;

    const-string v4, "android_album"

    invoke-static {v3, v4}, Lcom/miui/player/ui/PreferencesActivity;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 141
    iget-object v3, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/miui/player/helper/controller/MediaPlaybackController;->mControllerInfo:Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;

    iget-wide v4, v4, Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;->mTrackId:J

    iget-object v6, p0, Lcom/miui/player/helper/controller/MediaPlaybackController;->mControllerInfo:Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;

    iget-wide v6, v6, Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;->mAlbumId:J

    invoke-static {v3, v4, v5, v6, v7}, Lcom/miui/player/helper/AlbumManager;->getArtwork(Landroid/content/Context;JJ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 144
    :cond_2
    if-nez v0, :cond_3

    .line 145
    iget-object v3, p0, Lcom/miui/player/helper/controller/MediaPlaybackController;->mControllerInfo:Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;

    iget-object v3, v3, Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;->mAlbumName:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/player/helper/controller/MediaPlaybackController;->mControllerInfo:Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;

    iget-object v4, v4, Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;->mArtistName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/miui/player/helper/AlbumManager;->getXShareArtwork(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 150
    :cond_3
    iget-object v3, p0, Lcom/miui/player/helper/controller/MediaPlaybackController;->mControllerInfo:Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/miui/player/helper/controller/MediaPlaybackController;->mControllerInfo:Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;

    invoke-virtual {v3}, Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;->isForced()Z

    move-result v3

    if-eqz v3, :cond_5

    move v2, v9

    .line 151
    .local v2, forced:Z
    :goto_1
    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/miui/player/helper/controller/AlbumViewController;->isActive()Z

    move-result v3

    if-nez v3, :cond_7

    .line 152
    :cond_4
    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mAnimationStatus:Lcom/miui/player/helper/controller/MediaPlaybackController$AnimationStatus;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mAnimationStatus:Lcom/miui/player/helper/controller/MediaPlaybackController$AnimationStatus;

    invoke-interface {v3}, Lcom/miui/player/helper/controller/MediaPlaybackController$AnimationStatus;->isOneShot()Z

    move-result v3

    if-eqz v3, :cond_6

    :goto_2
    move v3, v9

    .line 168
    goto :goto_0

    .end local v2           #forced:Z
    :cond_5
    move v2, v8

    .line 150
    goto :goto_1

    .line 156
    .restart local v2       #forced:Z
    :cond_6
    invoke-direct {p0, v0}, Lcom/miui/player/helper/controller/AlbumViewController;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 157
    invoke-virtual {p0}, Lcom/miui/player/helper/controller/AlbumViewController;->downloadRefresh()V

    goto :goto_2

    .line 160
    :cond_7
    iget-object v3, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mActivity:Landroid/app/Activity;

    const v4, 0x7f040003

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 161
    .local v1, fadeOut:Landroid/view/animation/Animation;
    new-instance v3, Lcom/miui/player/helper/controller/AlbumViewController$AlbumChangedAnimationListener;

    invoke-direct {v3, p0, v0}, Lcom/miui/player/helper/controller/AlbumViewController$AlbumChangedAnimationListener;-><init>(Lcom/miui/player/helper/controller/AlbumViewController;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 162
    iget-object v3, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mAnimationStatus:Lcom/miui/player/helper/controller/MediaPlaybackController$AnimationStatus;

    if-eqz v3, :cond_8

    .line 163
    iget-object v3, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mAnimationStatus:Lcom/miui/player/helper/controller/MediaPlaybackController$AnimationStatus;

    invoke-interface {v3, v9}, Lcom/miui/player/helper/controller/MediaPlaybackController$AnimationStatus;->setAnimationPlaying(Z)V

    .line 165
    :cond_8
    iget-object v3, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mAlbumFrame:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2
.end method

.method public downloadRefresh()V
    .locals 7

    .prologue
    .line 435
    const/4 v4, 0x0

    .line 436
    .local v4, status:I
    sget-object v3, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    .line 437
    .local v3, service:Lcom/miui/player/IMediaPlaybackService;
    if-eqz v3, :cond_0

    .line 438
    const/4 v2, 0x0

    .line 440
    .local v2, onlineId:Ljava/lang/String;
    :try_start_0
    invoke-interface {v3}, Lcom/miui/player/IMediaPlaybackService;->getOnlineId()Ljava/lang/String;

    move-result-object v2

    .line 441
    invoke-static {v2}, Lcom/miui/player/downloader/DownloadInfoManager;->isDownloading(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_1

    .line 442
    const/4 v4, 0x1

    .line 459
    .end local v2           #onlineId:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0, v4}, Lcom/miui/player/helper/controller/AlbumViewController;->downloadRefresh(I)V

    .line 460
    return-void

    .line 444
    .restart local v2       #onlineId:Ljava/lang/String;
    :cond_1
    :try_start_1
    invoke-interface {v3}, Lcom/miui/player/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v5

    .line 445
    .local v5, tr:Ljava/lang/String;
    invoke-interface {v3}, Lcom/miui/player/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v1

    .line 446
    .local v1, ar:Ljava/lang/String;
    invoke-static {v5, v1}, Lcom/miui/player/helper/MusicMetaManager;->getMP3AppointName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 448
    .local v0, appointName:Ljava/lang/String;
    const-string v6, "music/mp3"

    invoke-static {v0, v6}, Lcom/miui/player/helper/MusicMetaManager;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v6

    if-nez v6, :cond_2

    .line 449
    const/4 v4, 0x0

    goto :goto_0

    .line 451
    :cond_2
    const/4 v4, 0x2

    goto :goto_0

    .line 455
    .end local v0           #appointName:Ljava/lang/String;
    .end local v1           #ar:Ljava/lang/String;
    .end local v5           #tr:Ljava/lang/String;
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public enableUpdate(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    .line 207
    sget-boolean v0, Lcom/miui/player/helper/Global;->IS_LPA_DECODE:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/player/helper/controller/AlbumViewController;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mSpectrumVisualizer:Landroid/widget/SpectrumVisualizer;

    invoke-virtual {v0, v1}, Landroid/widget/SpectrumVisualizer;->setVisibility(I)V

    .line 209
    iget-object v0, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mSpectrumVisualizer:Landroid/widget/SpectrumVisualizer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SpectrumVisualizer;->enableUpdate(Z)V

    .line 214
    :goto_0
    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mSpectrumVisualizer:Landroid/widget/SpectrumVisualizer;

    invoke-virtual {v0, v1}, Landroid/widget/SpectrumVisualizer;->enableUpdate(Z)V

    .line 212
    iget-object v0, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mSpectrumVisualizer:Landroid/widget/SpectrumVisualizer;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/SpectrumVisualizer;->setVisibility(I)V

    goto :goto_0
.end method

.method public getCurrentAlbum()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mCurrentAlbum:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/player/helper/controller/AlbumViewController;->isDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {p0}, Lcom/miui/player/helper/controller/AlbumViewController;->update()V

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mCurrentAlbum:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public register()V
    .locals 3

    .prologue
    .line 344
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 345
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.miui.music.DOWNLOAD_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 346
    const-string v1, "com.miui.music.delete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 347
    iget-object v1, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mDownloadCompleteListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 348
    invoke-virtual {p0}, Lcom/miui/player/helper/controller/AlbumViewController;->downloadRefresh()V

    .line 349
    return-void
.end method

.method public setDrawingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 173
    iget-object v0, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mAlbumFrame:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 174
    return-void
.end method

.method protected setVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mAlbumFrame:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mAlbumFrame:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 111
    :cond_0
    return-void

    .line 109
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public startEnterAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 180
    iget-object v1, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mCurrentAlbum:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 181
    iget-object v1, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mZoomOutAnimId:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 186
    .local v0, a:Landroid/view/animation/Animation;
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 187
    iget-object v1, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mAlbumFrame:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 188
    iget-object v1, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mSpectrumVisualizer:Landroid/widget/SpectrumVisualizer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/SpectrumVisualizer;->setVisibility(I)V

    .line 189
    invoke-virtual {p0}, Lcom/miui/player/helper/controller/AlbumViewController;->downloadRefresh()V

    .line 190
    return-void

    .line 183
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_0
    iget-object v1, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mActivity:Landroid/app/Activity;

    const v2, 0x7f040002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0       #a:Landroid/view/animation/Animation;
    goto :goto_0
.end method

.method public startLeaveAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 4
    .parameter "l"

    .prologue
    const/4 v3, 0x4

    .line 195
    iget-object v1, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mCurrentAlbum:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 196
    iget-object v1, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mActivity:Landroid/app/Activity;

    iget v2, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mZoomInAnimId:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 200
    .local v0, a:Landroid/view/animation/Animation;
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 201
    iget-object v1, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mAlbumFrame:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 202
    iget-object v1, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mSpectrumVisualizer:Landroid/widget/SpectrumVisualizer;

    invoke-virtual {v1, v3}, Landroid/widget/SpectrumVisualizer;->setVisibility(I)V

    .line 203
    iget-object v1, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mDownloadFrame:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 204
    return-void

    .line 198
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_0
    iget-object v1, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mActivity:Landroid/app/Activity;

    const v2, 0x7f040003

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .restart local v0       #a:Landroid/view/animation/Animation;
    goto :goto_0
.end method

.method public unregister()V
    .locals 2

    .prologue
    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/player/helper/controller/AlbumViewController;->mDownloadCompleteListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    :goto_0
    return-void

    .line 354
    :catch_0
    move-exception v0

    goto :goto_0
.end method
