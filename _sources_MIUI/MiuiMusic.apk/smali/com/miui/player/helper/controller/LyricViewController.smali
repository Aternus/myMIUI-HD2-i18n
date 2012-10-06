.class public Lcom/miui/player/helper/controller/LyricViewController;
.super Lcom/miui/player/helper/controller/MediaPlaybackController;
.source "LyricViewController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/helper/controller/LyricViewController$1;,
        Lcom/miui/player/helper/controller/LyricViewController$FadeInAnimationListener;,
        Lcom/miui/player/helper/controller/LyricViewController$LryicChangedAnimationListener;
    }
.end annotation


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mAlbumController:Lcom/miui/player/helper/controller/AlbumViewController;

.field private final mAnimationStatus:Lcom/miui/player/helper/controller/MediaPlaybackController$AnimationStatus;

.field private mCurrentAlbum:Landroid/graphics/drawable/Drawable;

.field private mDefaultAlbum:Landroid/graphics/drawable/Drawable;

.field private mLastLyricStatus:I

.field private mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

.field private final mLyricBackground:Landroid/widget/ImageView;

.field private final mLyricCancelClickListener:Landroid/view/View$OnClickListener;

.field private final mLyricClickListener:Landroid/view/View$OnClickListener;

.field private final mLyricFrame:Landroid/view/View;

.field private final mLyricModifyCommit:Landroid/view/View;

.field private final mLyricMovementController:Lcom/miui/player/helper/controller/LyricMovementController;

.field private final mLyricSaveClickListener:Landroid/view/View$OnClickListener;

.field private final mLyricViewFront:Landroid/view/View;

.field private final mLyricViewWrap:Landroid/view/View;

.field private final mTimeIndicatorView:Landroid/view/View;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/player/helper/controller/MediaPlaybackController$AnimationStatus;Lcom/miui/player/helper/controller/AlbumViewController;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter "a"
    .parameter "status"
    .parameter "albumController"
    .parameter "lyricClick"
    .parameter "lyricSaveClick"
    .parameter "lyricCancelClick"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/miui/player/helper/controller/MediaPlaybackController;-><init>()V

    .line 62
    const/4 v0, -0x2

    iput v0, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLastLyricStatus:I

    .line 69
    iput-object p1, p0, Lcom/miui/player/helper/controller/LyricViewController;->mActivity:Landroid/app/Activity;

    .line 70
    iput-object p3, p0, Lcom/miui/player/helper/controller/LyricViewController;->mAlbumController:Lcom/miui/player/helper/controller/AlbumViewController;

    .line 71
    iput-object p5, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyricSaveClickListener:Landroid/view/View$OnClickListener;

    .line 72
    iput-object p6, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyricCancelClickListener:Landroid/view/View$OnClickListener;

    .line 73
    iput-object p4, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyricClickListener:Landroid/view/View$OnClickListener;

    .line 74
    iput-object p2, p0, Lcom/miui/player/helper/controller/LyricViewController;->mAnimationStatus:Lcom/miui/player/helper/controller/MediaPlaybackController$AnimationStatus;

    .line 75
    const v0, 0x7f0c003d

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyricViewWrap:Landroid/view/View;

    .line 76
    const v0, 0x7f0c0030

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/helper/controller/LyricViewController;->mTimeIndicatorView:Landroid/view/View;

    .line 77
    const v0, 0x7f0c0032

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyricModifyCommit:Landroid/view/View;

    .line 78
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyricViewWrap:Landroid/view/View;

    const v1, 0x7f0c003e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyricViewFront:Landroid/view/View;

    .line 79
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyricViewFront:Landroid/view/View;

    const v1, 0x7f0c0040

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyricFrame:Landroid/view/View;

    .line 80
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyricViewFront:Landroid/view/View;

    const v1, 0x7f0c003f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyricBackground:Landroid/widget/ImageView;

    .line 81
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyricBackground:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setDrawingCacheEnabled(Z)V

    .line 82
    new-instance v1, Lcom/miui/player/helper/controller/LyricMovementController;

    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyricFrame:Landroid/view/View;

    check-cast v0, Lcom/miui/player/ui/view/ExtendScrollView;

    invoke-direct {v1, v0}, Lcom/miui/player/helper/controller/LyricMovementController;-><init>(Lcom/miui/player/ui/view/ExtendScrollView;)V

    iput-object v1, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyricMovementController:Lcom/miui/player/helper/controller/LyricMovementController;

    .line 83
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyricMovementController:Lcom/miui/player/helper/controller/LyricMovementController;

    iget-object v1, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyricClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/controller/LyricMovementController;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricViewController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/helper/controller/LyricViewController;->mDefaultAlbum:Landroid/graphics/drawable/Drawable;

    .line 85
    return-void
.end method

.method static synthetic access$100(Lcom/miui/player/helper/controller/LyricViewController;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricViewController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/player/helper/controller/LyricViewController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/miui/player/helper/controller/LyricViewController;->refreshLyricBgStyle()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/player/helper/controller/LyricViewController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/miui/player/helper/controller/LyricViewController;->changeLyric()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/miui/player/helper/controller/LyricViewController;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyricViewFront:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/player/helper/controller/LyricViewController;)Lcom/miui/player/helper/controller/MediaPlaybackController$AnimationStatus;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricViewController;->mAnimationStatus:Lcom/miui/player/helper/controller/MediaPlaybackController$AnimationStatus;

    return-object v0
.end method

.method private changeLyric()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, "display_lyric"

    .line 232
    iget-object v1, p0, Lcom/miui/player/helper/controller/MediaPlaybackController;->mControllerInfo:Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;

    if-nez v1, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/miui/player/helper/controller/LyricViewController;->clearAll()V

    move v1, v3

    .line 276
    :goto_0
    return v1

    .line 236
    :cond_0
    iget-object v1, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyricBackground:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/player/helper/controller/LyricViewController;->mCurrentAlbum:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 237
    iget-object v1, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyricMovementController:Lcom/miui/player/helper/controller/LyricMovementController;

    iget-object v2, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    invoke-virtual {v1, v2}, Lcom/miui/player/helper/controller/LyricMovementController;->resetLyric(Lcom/miui/player/helper/LyricParser$Lyric;)V

    .line 238
    const/4 v0, 0x0

    .line 239
    .local v0, hint:I
    iget-object v1, p0, Lcom/miui/player/helper/controller/MediaPlaybackController;->mControllerInfo:Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;

    iget v1, v1, Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;->mLyricStatus:I

    packed-switch v1, :pswitch_data_0

    .line 267
    :cond_1
    :goto_1
    :pswitch_0
    if-lez v0, :cond_2

    .line 268
    iget-object v1, p0, Lcom/miui/player/helper/controller/LyricViewController;->mToast:Landroid/widget/Toast;

    if-nez v1, :cond_3

    .line 269
    iget-object v1, p0, Lcom/miui/player/helper/controller/LyricViewController;->mActivity:Landroid/app/Activity;

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/player/helper/controller/LyricViewController;->mToast:Landroid/widget/Toast;

    .line 273
    :goto_2
    iget-object v1, p0, Lcom/miui/player/helper/controller/LyricViewController;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 276
    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    .line 241
    :pswitch_1
    iget-object v1, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/player/helper/controller/LyricViewController;->mActivity:Landroid/app/Activity;

    const-string v2, "display_lyric"

    invoke-static {v1, v4}, Lcom/miui/player/ui/PreferencesActivity;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 244
    const v0, 0x7f0800c4

    goto :goto_1

    .line 248
    :pswitch_2
    iget-object v1, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/player/helper/controller/LyricViewController;->mActivity:Landroid/app/Activity;

    const-string v2, "display_lyric"

    invoke-static {v1, v4}, Lcom/miui/player/ui/PreferencesActivity;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    const v0, 0x7f0800c5

    goto :goto_1

    .line 255
    :pswitch_3
    const v0, 0x7f080093

    .line 256
    goto :goto_1

    .line 258
    :pswitch_4
    const v0, 0x7f0800c7

    .line 259
    goto :goto_1

    .line 261
    :pswitch_5
    const v0, 0x7f0800c4

    .line 262
    goto :goto_1

    .line 264
    :pswitch_6
    const v0, 0x7f0800c5

    goto :goto_1

    .line 271
    :cond_3
    iget-object v1, p0, Lcom/miui/player/helper/controller/LyricViewController;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1, v0}, Landroid/widget/Toast;->setText(I)V

    goto :goto_2

    .line 239
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private clearAll()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 214
    iput-object v1, p0, Lcom/miui/player/helper/controller/LyricViewController;->mCurrentAlbum:Landroid/graphics/drawable/Drawable;

    .line 215
    iput-object v1, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    .line 216
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyricBackground:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 217
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyricMovementController:Lcom/miui/player/helper/controller/LyricMovementController;

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/controller/LyricMovementController;->resetLyric(Lcom/miui/player/helper/LyricParser$Lyric;)V

    .line 218
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyricMovementController:Lcom/miui/player/helper/controller/LyricMovementController;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/controller/LyricMovementController;->setText(Ljava/lang/String;)V

    .line 219
    return-void
.end method

.method private refreshLyricBgStyle()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricViewController;->mCurrentAlbum:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/miui/player/helper/controller/LyricViewController;->mDefaultAlbum:Landroid/graphics/drawable/Drawable;

    if-ne v0, v1, :cond_0

    .line 223
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyricBackground:Landroid/widget/ImageView;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 224
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyricBackground:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 229
    :goto_0
    return-void

    .line 226
    :cond_0
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyricBackground:Landroid/widget/ImageView;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 227
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyricBackground:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0
.end method

.method private updateLyric()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 298
    iget-object v6, p0, Lcom/miui/player/helper/controller/LyricViewController;->mActivity:Landroid/app/Activity;

    const-string v7, "display_lyric"

    invoke-static {v6, v7}, Lcom/miui/player/ui/PreferencesActivity;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v10

    .line 334
    :goto_0
    return v6

    .line 303
    :cond_0
    const/4 v4, 0x0

    .line 304
    .local v4, statusChanged:Z
    iget-object v6, p0, Lcom/miui/player/helper/controller/MediaPlaybackController;->mControllerInfo:Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;

    if-eqz v6, :cond_1

    .line 305
    iget v6, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLastLyricStatus:I

    iget-object v7, p0, Lcom/miui/player/helper/controller/MediaPlaybackController;->mControllerInfo:Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;

    iget v7, v7, Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;->mLyricStatus:I

    if-eq v6, v7, :cond_2

    move v4, v11

    .line 306
    :goto_1
    iget-object v6, p0, Lcom/miui/player/helper/controller/MediaPlaybackController;->mControllerInfo:Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;

    iget v6, v6, Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;->mLyricStatus:I

    iput v6, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLastLyricStatus:I

    .line 309
    :cond_1
    iget v6, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLastLyricStatus:I

    if-eq v6, v11, :cond_3

    iget v6, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLastLyricStatus:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    move v6, v4

    .line 311
    goto :goto_0

    :cond_2
    move v4, v10

    .line 305
    goto :goto_1

    .line 314
    :cond_3
    iget-object v2, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    .line 315
    .local v2, oldLyric:Lcom/miui/player/helper/LyricParser$Lyric;
    iget-object v6, p0, Lcom/miui/player/helper/controller/MediaPlaybackController;->mControllerInfo:Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;

    iget-object v5, v6, Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;->mTrackName:Ljava/lang/String;

    .line 316
    .local v5, tr:Ljava/lang/String;
    iget-object v6, p0, Lcom/miui/player/helper/controller/MediaPlaybackController;->mControllerInfo:Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;

    iget-object v0, v6, Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;->mArtistName:Ljava/lang/String;

    .line 317
    .local v0, ar:Ljava/lang/String;
    iget-object v6, p0, Lcom/miui/player/helper/controller/MediaPlaybackController;->mControllerInfo:Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;

    iget-object v3, v6, Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;->mTrackPath:Ljava/lang/String;

    .line 318
    .local v3, path:Ljava/lang/String;
    invoke-static {v5, v0, v3}, Lcom/miui/player/helper/MusicMetaManager;->getLyricFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 320
    .local v1, lyricFile:Ljava/io/File;
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    .line 321
    if-eqz v1, :cond_4

    .line 322
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/miui/player/helper/LyricParser$Lyric;->getOpenTime()J

    move-result-wide v6

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_6

    invoke-virtual {v2}, Lcom/miui/player/helper/LyricParser$Lyric;->getFilePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 325
    iput-object v2, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    .line 334
    :cond_4
    :goto_2
    if-nez v4, :cond_5

    iget-object v6, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    if-eq v2, v6, :cond_7

    :cond_5
    move v6, v11

    goto :goto_0

    .line 327
    :cond_6
    invoke-static {v1}, Lcom/miui/player/helper/LyricParser;->parseLyric(Ljava/io/File;)Lcom/miui/player/helper/LyricParser$Lyric;

    move-result-object v6

    iput-object v6, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    .line 328
    iget-object v6, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    if-nez v6, :cond_4

    .line 329
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_2

    :cond_7
    move v6, v10

    .line 334
    goto :goto_0
.end method


# virtual methods
.method public dirty(I)Z
    .locals 4
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, contentChanged:Z
    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    .line 181
    :cond_0
    iput-object v2, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    .line 182
    const/4 v0, 0x1

    .line 187
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 188
    iget-object v1, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyricMovementController:Lcom/miui/player/helper/controller/LyricMovementController;

    invoke-virtual {v1, v2}, Lcom/miui/player/helper/controller/LyricMovementController;->resetLyric(Lcom/miui/player/helper/LyricParser$Lyric;)V

    .line 189
    iget-object v1, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyricMovementController:Lcom/miui/player/helper/controller/LyricMovementController;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/miui/player/helper/controller/LyricMovementController;->setText(Ljava/lang/String;)V

    .line 192
    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/player/helper/controller/LyricViewController;->isDirty()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_3
    move v1, v3

    :goto_1
    return v1

    .line 183
    :cond_4
    if-ne p1, v3, :cond_1

    .line 184
    const/4 v0, 0x1

    goto :goto_0

    .line 192
    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public doUpdate()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 143
    iget-object v5, p0, Lcom/miui/player/helper/controller/LyricViewController;->mAnimationStatus:Lcom/miui/player/helper/controller/MediaPlaybackController$AnimationStatus;

    invoke-interface {v5}, Lcom/miui/player/helper/controller/MediaPlaybackController$AnimationStatus;->isActivityPaused()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/miui/player/helper/controller/LyricViewController;->clearAll()V

    move v5, v8

    .line 174
    :goto_0
    return v5

    .line 148
    :cond_0
    invoke-direct {p0}, Lcom/miui/player/helper/controller/LyricViewController;->updateLyric()Z

    move-result v3

    .line 149
    .local v3, lyricChanged:Z
    iget-object v4, p0, Lcom/miui/player/helper/controller/LyricViewController;->mCurrentAlbum:Landroid/graphics/drawable/Drawable;

    .line 150
    .local v4, oldAlbum:Landroid/graphics/drawable/Drawable;
    iget-object v5, p0, Lcom/miui/player/helper/controller/LyricViewController;->mAlbumController:Lcom/miui/player/helper/controller/AlbumViewController;

    invoke-virtual {v5}, Lcom/miui/player/helper/controller/AlbumViewController;->getCurrentAlbum()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 151
    .local v1, bm:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    .line 152
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/miui/player/helper/controller/LyricViewController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v5, p0, Lcom/miui/player/helper/controller/LyricViewController;->mCurrentAlbum:Landroid/graphics/drawable/Drawable;

    .line 158
    :goto_1
    iget-object v5, p0, Lcom/miui/player/helper/controller/LyricViewController;->mCurrentAlbum:Landroid/graphics/drawable/Drawable;

    if-eq v4, v5, :cond_3

    move v0, v7

    .line 160
    .local v0, albumChanged:Z
    :goto_2
    if-nez v0, :cond_4

    if-nez v3, :cond_4

    move v5, v7

    .line 161
    goto :goto_0

    .line 153
    .end local v0           #albumChanged:Z
    :cond_1
    iget-object v5, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    if-nez v5, :cond_2

    .line 154
    iget-object v5, p0, Lcom/miui/player/helper/controller/LyricViewController;->mDefaultAlbum:Landroid/graphics/drawable/Drawable;

    iput-object v5, p0, Lcom/miui/player/helper/controller/LyricViewController;->mCurrentAlbum:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 156
    :cond_2
    iput-object v9, p0, Lcom/miui/player/helper/controller/LyricViewController;->mCurrentAlbum:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_3
    move v0, v8

    .line 158
    goto :goto_2

    .line 164
    .restart local v0       #albumChanged:Z
    :cond_4
    invoke-virtual {p0}, Lcom/miui/player/helper/controller/LyricViewController;->isActive()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/miui/player/helper/controller/MediaPlaybackController;->mControllerInfo:Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/miui/player/helper/controller/MediaPlaybackController;->mControllerInfo:Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;

    invoke-virtual {v5}, Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;->isForced()Z

    move-result v5

    if-nez v5, :cond_6

    :cond_5
    if-nez v0, :cond_7

    .line 165
    :cond_6
    invoke-direct {p0}, Lcom/miui/player/helper/controller/LyricViewController;->refreshLyricBgStyle()V

    .line 166
    invoke-direct {p0}, Lcom/miui/player/helper/controller/LyricViewController;->changeLyric()Z

    move-result v5

    goto :goto_0

    .line 168
    :cond_7
    iget-object v5, p0, Lcom/miui/player/helper/controller/LyricViewController;->mAnimationStatus:Lcom/miui/player/helper/controller/MediaPlaybackController$AnimationStatus;

    invoke-interface {v5, v7}, Lcom/miui/player/helper/controller/MediaPlaybackController$AnimationStatus;->setAnimationPlaying(Z)V

    .line 169
    iget-object v5, p0, Lcom/miui/player/helper/controller/LyricViewController;->mActivity:Landroid/app/Activity;

    const v6, 0x7f040003

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    .line 170
    .local v2, fadeOut:Landroid/view/animation/Animation;
    new-instance v5, Lcom/miui/player/helper/controller/LyricViewController$LryicChangedAnimationListener;

    invoke-direct {v5, p0, v9}, Lcom/miui/player/helper/controller/LyricViewController$LryicChangedAnimationListener;-><init>(Lcom/miui/player/helper/controller/LyricViewController;Lcom/miui/player/helper/controller/LyricViewController$1;)V

    invoke-virtual {v2, v5}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 171
    iget-object v5, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyricViewFront:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    move v5, v7

    .line 174
    goto :goto_0
.end method

.method public existLyric()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 91
    iget-object v3, p0, Lcom/miui/player/helper/controller/LyricViewController;->mActivity:Landroid/app/Activity;

    const-string v4, "display_lyric"

    invoke-static {v3, v4}, Lcom/miui/player/ui/PreferencesActivity;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v5

    .line 108
    :goto_0
    return v3

    .line 96
    :cond_0
    iget-object v3, p0, Lcom/miui/player/helper/controller/MediaPlaybackController;->mControllerInfo:Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;

    if-nez v3, :cond_1

    move v3, v5

    .line 97
    goto :goto_0

    .line 100
    :cond_1
    iget-object v3, p0, Lcom/miui/player/helper/controller/MediaPlaybackController;->mControllerInfo:Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;

    iget-object v0, v3, Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;->mArtistName:Ljava/lang/String;

    .line 101
    .local v0, ar:Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/player/helper/controller/MediaPlaybackController;->mControllerInfo:Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;

    iget-object v2, v3, Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;->mTrackName:Ljava/lang/String;

    .line 102
    .local v2, tr:Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/player/helper/controller/MediaPlaybackController;->mControllerInfo:Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;

    iget-object v1, v3, Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;->mTrackPath:Ljava/lang/String;

    .line 104
    .local v1, path:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 105
    :cond_2
    invoke-static {v2, v0, v1}, Lcom/miui/player/helper/MusicMetaManager;->getLyricFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    move v3, v5

    goto :goto_0

    :cond_4
    move v3, v5

    .line 108
    goto :goto_0
.end method

.method public refreshLyric(J)V
    .locals 1
    .parameter "pos"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    if-eqz v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyricMovementController:Lcom/miui/player/helper/controller/LyricMovementController;

    invoke-virtual {v0, p1, p2}, Lcom/miui/player/helper/controller/LyricMovementController;->refreshLyric(J)V

    .line 283
    :cond_0
    return-void
.end method

.method public resetLyricHeaderOffset()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    invoke-virtual {v0}, Lcom/miui/player/helper/LyricParser$Lyric;->resetHeaderOffset()V

    .line 295
    :cond_0
    return-void
.end method

.method public saveLyric()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    invoke-virtual {v0}, Lcom/miui/player/helper/LyricParser$Lyric;->save()Z

    .line 289
    :cond_0
    return-void
.end method

.method public setDrawingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 197
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyricViewWrap:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 198
    return-void
.end method

.method public setLyricMode(I)V
    .locals 2
    .parameter "lryicMode"

    .prologue
    .line 133
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyricMovementController:Lcom/miui/player/helper/controller/LyricMovementController;

    invoke-virtual {v0, p1}, Lcom/miui/player/helper/controller/LyricMovementController;->setLyricMode(I)V

    .line 134
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 135
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyricModifyCommit:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyricModifyCommit:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 7
    .parameter "visible"

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 113
    iget-object v2, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyricModifyCommit:Landroid/view/View;

    const v3, 0x7f0c0002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 114
    .local v1, save:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyricModifyCommit:Landroid/view/View;

    const v3, 0x7f0c0003

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 115
    .local v0, cancel:Landroid/widget/TextView;
    if-eqz p1, :cond_0

    .line 116
    iget-object v2, p0, Lcom/miui/player/helper/controller/LyricViewController;->mTimeIndicatorView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-object v2, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyricViewWrap:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 118
    const v2, 0x7f080042

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 119
    iget-object v2, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyricSaveClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    const v2, 0x7f080043

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 121
    iget-object v2, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyricCancelClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    :goto_0
    invoke-direct {p0}, Lcom/miui/player/helper/controller/LyricViewController;->refreshLyricBgStyle()V

    .line 130
    return-void

    .line 123
    :cond_0
    iget-object v2, p0, Lcom/miui/player/helper/controller/LyricViewController;->mTimeIndicatorView:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 124
    iget-object v2, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyricViewWrap:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 125
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public startEnterAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 3
    .parameter "l"

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/miui/player/helper/controller/LyricViewController;->changeLyric()Z

    .line 203
    iget-object v1, p0, Lcom/miui/player/helper/controller/LyricViewController;->mActivity:Landroid/app/Activity;

    const v2, 0x7f040002

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 204
    .local v0, lrcIn:Landroid/view/animation/Animation;
    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 205
    iget-object v1, p0, Lcom/miui/player/helper/controller/LyricViewController;->mLyricViewFront:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 206
    return-void
.end method

.method public startLeaveAnimation(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 211
    return-void
.end method
