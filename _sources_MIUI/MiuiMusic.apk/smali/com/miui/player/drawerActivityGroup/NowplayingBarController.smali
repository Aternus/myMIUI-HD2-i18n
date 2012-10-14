.class public Lcom/miui/player/drawerActivityGroup/NowplayingBarController;
.super Ljava/lang/Object;
.source "NowplayingBarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OperationCallback;,
        Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OnTogglePauseClickListener;,
        Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OnShufflePlayClickListener;,
        Lcom/miui/player/drawerActivityGroup/NowplayingBarController$NowPlayingReceiver;,
        Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OnFavoriteClick;
    }
.end annotation


# static fields
.field public static final STATUS_BOTTOM:I = 0x2

.field public static final STATUS_SLIDING:I = 0x3

.field public static final STATUS_TOP:I = 0x1

.field public static final STATUS_UNINITIALIZED:I


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mArtistNameTextView:Landroid/widget/TextView;

.field final mFavoriteChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mFavoriteImageView:Landroid/widget/ImageView;

.field private mIsAnimationPlaying:Z

.field private final mNowplayingBar:Landroid/view/View;

.field private final mOperationFrame:Landroid/view/View;

.field private final mOperationFrameBg:Landroid/view/View;

.field private final mOperationImageProvider:Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OperationCallback;

.field private final mPlayingAlbumImageView:Landroid/widget/ImageView;

.field final mRotateSwitchAnimationChain:Lcom/miui/player/helper/RotateSwitchAnimationChain;

.field private mStatus:I

.field private final mStatusShowView:Landroid/widget/TextView;

.field private mToast:Landroid/view/View;

.field private final mTogglePauseImageView:Landroid/widget/ImageView;

.field private final mTrackInfoShowView:Landroid/view/View;

.field private final mTrackListener:Landroid/content/BroadcastReceiver;

.field private final mTrackNameTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OperationCallback;)V
    .locals 8
    .parameter "activity"
    .parameter "operationCallback"

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput v2, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mStatus:I

    .line 78
    iput-boolean v2, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mIsAnimationPlaying:Z

    .line 391
    new-instance v2, Lcom/miui/player/helper/RotateSwitchAnimationChain;

    new-instance v3, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$2;

    invoke-direct {v3, p0}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$2;-><init>(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;)V

    const-wide/16 v4, 0x12c

    const/high16 v6, -0x3d90

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/miui/player/helper/RotateSwitchAnimationChain;-><init>(Lcom/miui/player/helper/RotateSwitchAnimationChain$SwitchCallback;JF)V

    iput-object v2, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mRotateSwitchAnimationChain:Lcom/miui/player/helper/RotateSwitchAnimationChain;

    .line 409
    new-instance v2, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$3;

    invoke-direct {v2, p0}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$3;-><init>(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;)V

    iput-object v2, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mFavoriteChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 81
    iput-object p1, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mActivity:Landroid/app/Activity;

    .line 82
    iput-object p2, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mOperationImageProvider:Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OperationCallback;

    .line 84
    const v2, 0x7f0c0062

    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mNowplayingBar:Landroid/view/View;

    .line 85
    const v2, 0x7f0c0064

    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mToast:Landroid/view/View;

    .line 86
    iget-object v2, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mToast:Landroid/view/View;

    const v3, 0x102000b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 87
    .local v1, toastText:Landroid/widget/TextView;
    const v2, 0x1040016

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 89
    iget-object v2, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mNowplayingBar:Landroid/view/View;

    const v3, 0x7f0c0087

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mStatusShowView:Landroid/widget/TextView;

    .line 90
    iget-object v2, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mNowplayingBar:Landroid/view/View;

    const v3, 0x7f0c0081

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mTrackInfoShowView:Landroid/view/View;

    .line 91
    iget-object v2, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mTrackInfoShowView:Landroid/view/View;

    const v3, 0x7f0c0086

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mTrackNameTextView:Landroid/widget/TextView;

    .line 92
    iget-object v2, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mTrackInfoShowView:Landroid/view/View;

    const v3, 0x7f0c002a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mArtistNameTextView:Landroid/widget/TextView;

    .line 93
    iget-object v2, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mTrackInfoShowView:Landroid/view/View;

    const v3, 0x7f0c0085

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mFavoriteImageView:Landroid/widget/ImageView;

    .line 94
    iget-object v2, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mTrackInfoShowView:Landroid/view/View;

    const v3, 0x7f0c0082

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mOperationFrameBg:Landroid/view/View;

    .line 95
    iget-object v2, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mTrackInfoShowView:Landroid/view/View;

    const v3, 0x7f0c0083

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mOperationFrame:Landroid/view/View;

    .line 96
    iget-object v2, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mOperationFrame:Landroid/view/View;

    const v3, 0x7f0c0084

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mTogglePauseImageView:Landroid/widget/ImageView;

    .line 97
    iget-object v2, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mOperationFrame:Landroid/view/View;

    const v3, 0x7f0c003b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mPlayingAlbumImageView:Landroid/widget/ImageView;

    .line 99
    new-instance v2, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$NowPlayingReceiver;

    invoke-direct {v2, p0, v7}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$NowPlayingReceiver;-><init>(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;Lcom/miui/player/drawerActivityGroup/NowplayingBarController$1;)V

    iput-object v2, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mTrackListener:Landroid/content/BroadcastReceiver;

    .line 100
    iget-object v2, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mFavoriteImageView:Landroid/widget/ImageView;

    new-instance v3, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OnFavoriteClick;

    invoke-direct {v3, p0, v7}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OnFavoriteClick;-><init>(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;Lcom/miui/player/drawerActivityGroup/NowplayingBarController$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    new-instance v0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OnTogglePauseClickListener;

    invoke-direct {v0, p0}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OnTogglePauseClickListener;-><init>(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;)V

    .line 102
    .local v0, l:Landroid/view/View$OnClickListener;
    iget-object v2, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mTogglePauseImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v2, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mPlayingAlbumImageView:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v2, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mStatusShowView:Landroid/widget/TextView;

    new-instance v3, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OnShufflePlayClickListener;

    invoke-direct {v3, p0, v7}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OnShufflePlayClickListener;-><init>(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;Lcom/miui/player/drawerActivityGroup/NowplayingBarController$1;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    invoke-direct {p0}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->updateFavoriteHint()V

    .line 106
    return-void
.end method

.method static synthetic access$1000(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget v0, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mStatus:I

    return v0
.end method

.method static synthetic access$1100(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mOperationFrameBg:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$302(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mIsAnimationPlaying:Z

    return p1
.end method

.method static synthetic access$400(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->refreshTogglePause()V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$600(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mOperationFrame:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->updateFavoriteHint()V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;)Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OperationCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mOperationImageProvider:Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OperationCallback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->hasPlayableTrack()Z

    move-result v0

    return v0
.end method

.method private hasPlayableTrack()Z
    .locals 10

    .prologue
    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 287
    const/4 v7, 0x0

    .line 288
    .local v7, ret:Z
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "count(*)"

    aput-object v3, v2, v8

    iget-object v3, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/miui/player/MusicUtils;->wrapWithBlacklist(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 292
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_2

    move v7, v9

    .line 296
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 297
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 301
    :cond_1
    return v7

    :cond_2
    move v7, v8

    .line 293
    goto :goto_0

    .line 296
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 297
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private refreshTogglePause()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 188
    sget-object v0, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/miui/player/MusicUtils;->isOneShot()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mFavoriteImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mOperationFrame:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 196
    :goto_0
    iget v0, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mStatus:I

    packed-switch v0, :pswitch_data_0

    .line 223
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mTogglePauseImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 226
    :goto_1
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mFavoriteImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mOperationFrame:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 198
    :pswitch_0
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mOperationImageProvider:Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OperationCallback;

    invoke-interface {v0}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OperationCallback;->isShowCurrentMask()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mTogglePauseImageView:Landroid/widget/ImageView;

    const v1, 0x7f020050

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 200
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mTogglePauseImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 205
    :goto_2
    invoke-static {}, Lcom/miui/player/MusicUtils;->isOneShot()Z

    move-result v0

    if-nez v0, :cond_3

    .line 206
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mPlayingAlbumImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mPlayingAlbumImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mOperationImageProvider:Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OperationCallback;

    invoke-interface {v1}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$OperationCallback;->getCurrentImage()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 202
    :cond_2
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mTogglePauseImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 209
    :cond_3
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mPlayingAlbumImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 214
    :pswitch_1
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mTogglePauseImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 215
    invoke-static {}, Lcom/miui/player/MusicUtils;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 216
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mTogglePauseImageView:Landroid/widget/ImageView;

    const v1, 0x7f02008a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 220
    :goto_3
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mPlayingAlbumImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 218
    :cond_4
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mTogglePauseImageView:Landroid/widget/ImageView;

    const v1, 0x7f02008d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 196
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateFavoriteHint()V
    .locals 4

    .prologue
    .line 276
    invoke-static {}, Lcom/miui/player/MusicUtils;->getCurrentAudioId()J

    move-result-wide v0

    .line 277
    .local v0, id:J
    iget-object v2, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mActivity:Landroid/app/Activity;

    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Lcom/miui/player/helper/FavoritePlaylist;->contains(Landroid/content/Context;JLjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 278
    iget-object v2, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mFavoriteImageView:Landroid/widget/ImageView;

    const v3, 0x7f02005d

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 284
    :goto_0
    return-void

    .line 281
    :cond_0
    iget-object v2, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mFavoriteImageView:Landroid/widget/ImageView;

    const v3, 0x7f020073

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mNowplayingBar:Landroid/view/View;

    return-object v0
.end method

.method public refresh()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/16 v9, 0x8

    .line 135
    invoke-static {}, Lcom/miui/player/MusicUtils;->isMusicLoaded()Z

    move-result v7

    if-nez v7, :cond_1

    .line 136
    invoke-static {}, Landroid/os/Environment;->isExternalStorageMounted()Z

    move-result v7

    if-nez v7, :cond_0

    .line 137
    iget-object v7, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mStatusShowView:Landroid/widget/TextView;

    const-string v8, ""

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v7, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mToast:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 143
    :goto_0
    iget-object v7, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mStatusShowView:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    iget-object v7, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mTrackInfoShowView:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 185
    :goto_1
    return-void

    .line 140
    :cond_0
    iget-object v7, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mToast:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 141
    iget-object v7, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mStatusShowView:Landroid/widget/TextView;

    const v8, 0x7f08009f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 147
    :cond_1
    iget-object v7, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mToast:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 148
    iget-object v7, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mStatusShowView:Landroid/widget/TextView;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 149
    iget-object v7, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mTrackInfoShowView:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 152
    sget-object v2, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    .line 153
    .local v2, service:Lcom/miui/player/IMediaPlaybackService;
    if-eqz v2, :cond_3

    .line 155
    :try_start_0
    invoke-interface {v2}, Lcom/miui/player/IMediaPlaybackService;->getAudioId()J

    move-result-wide v4

    .line 156
    .local v4, songid:J
    invoke-interface {v2}, Lcom/miui/player/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, path:Ljava/lang/String;
    const-wide/16 v7, 0x0

    cmp-long v7, v4, v7

    if-gez v7, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "http://"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 159
    iget-object v7, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mTrackNameTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    :cond_2
    :goto_2
    iget-object v7, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mActivity:Landroid/app/Activity;

    invoke-interface {v2}, Lcom/miui/player/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2}, Lcom/miui/player/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v8, v9}, Lcom/miui/player/helper/MediaInfo;->getDescript(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 175
    .local v3, showName:Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mArtistNameTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    .end local v1           #path:Ljava/lang/String;
    .end local v3           #showName:Ljava/lang/CharSequence;
    .end local v4           #songid:J
    :cond_3
    :goto_3
    invoke-direct {p0}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->refreshTogglePause()V

    .line 184
    invoke-direct {p0}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->updateFavoriteHint()V

    goto :goto_1

    .line 160
    .restart local v1       #path:Ljava/lang/String;
    .restart local v4       #songid:J
    :cond_4
    :try_start_1
    invoke-interface {v2}, Lcom/miui/player/IMediaPlaybackService;->isOneShot()Z

    move-result v7

    if-eqz v7, :cond_5

    if-eqz v1, :cond_5

    .line 161
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 162
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 163
    iget-object v7, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mTrackNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 176
    .end local v0           #f:Ljava/io/File;
    .end local v1           #path:Ljava/lang/String;
    .end local v4           #songid:J
    :catch_0
    move-exception v7

    goto :goto_3

    .line 166
    .restart local v1       #path:Ljava/lang/String;
    .restart local v4       #songid:J
    :cond_5
    invoke-interface {v2}, Lcom/miui/player/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v6

    .line 167
    .local v6, trackName:Ljava/lang/String;
    if-nez v6, :cond_6

    .line 168
    const-string v6, ""

    .line 170
    :cond_6
    iget-object v7, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mTrackNameTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public register()V
    .locals 3

    .prologue
    .line 109
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 110
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "com.miui.player.metachanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    const-string v1, "com.miui.player.playbackcomplete"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string v1, "com.miui.player.playstatechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    const-string v1, "com.miui.player.queuechanged"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string v1, "com.miui.music.SHUFFLE_PLAY_PREPARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mTrackListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    new-instance v0, Landroid/content/IntentFilter;

    .end local v0           #f:Landroid/content/IntentFilter;
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 118
    .restart local v0       #f:Landroid/content/IntentFilter;
    const-string v1, "com.miui.music.FAVORITE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mFavoriteChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 121
    invoke-virtual {p0}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->refresh()V

    .line 122
    return-void
.end method

.method public startSlide()V
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x3

    iput v0, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mStatus:I

    .line 269
    return-void
.end method

.method public unregister()V
    .locals 3

    .prologue
    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mTrackListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 127
    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mActivity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mFavoriteChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 129
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method public updateState(ZZ)V
    .locals 4
    .parameter "top"
    .parameter "anim"

    .prologue
    const/4 v3, 0x1

    .line 229
    if-eqz p1, :cond_0

    move v1, v3

    :goto_0
    iput v1, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mStatus:I

    .line 230
    iget-boolean v1, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mIsAnimationPlaying:Z

    if-eqz v1, :cond_1

    .line 265
    :goto_1
    return-void

    .line 229
    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    .line 234
    :cond_1
    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mOperationFrame:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 235
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mIsAnimationPlaying:Z

    .line 237
    if-eqz p2, :cond_2

    .line 238
    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mActivity:Landroid/app/Activity;

    const v2, 0x7f040003

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 239
    .local v0, fadeOut:Landroid/view/animation/Animation;
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 240
    new-instance v1, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$1;

    invoke-direct {v1, p0}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController$1;-><init>(Lcom/miui/player/drawerActivityGroup/NowplayingBarController;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 260
    iput-boolean v3, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mIsAnimationPlaying:Z

    .line 261
    iget-object v1, p0, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->mOperationFrame:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 263
    .end local v0           #fadeOut:Landroid/view/animation/Animation;
    :cond_2
    invoke-direct {p0}, Lcom/miui/player/drawerActivityGroup/NowplayingBarController;->refreshTogglePause()V

    goto :goto_1
.end method
