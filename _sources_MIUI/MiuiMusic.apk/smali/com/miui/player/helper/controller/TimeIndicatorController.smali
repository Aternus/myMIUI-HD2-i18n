.class public Lcom/miui/player/helper/controller/TimeIndicatorController;
.super Ljava/lang/Object;
.source "TimeIndicatorController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/helper/controller/TimeIndicatorController$1;,
        Lcom/miui/player/helper/controller/TimeIndicatorController$OnShuffleModeClickListener;,
        Lcom/miui/player/helper/controller/TimeIndicatorController$OnRepeatModeClickListener;,
        Lcom/miui/player/helper/controller/TimeIndicatorController$OnProgressSeekListener;,
        Lcom/miui/player/helper/controller/TimeIndicatorController$OnSeekPlayerPositionListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mCurrentTimeTextView:Landroid/widget/TextView;

.field private mDuration:J

.field private final mProgressBar:Landroid/widget/SeekBar;

.field private final mRepeatImage:Landroid/widget/ImageView;

.field private final mSeekListener:Lcom/miui/player/helper/controller/TimeIndicatorController$OnProgressSeekListener;

.field private final mShuffleImage:Landroid/widget/ImageView;

.field private final mTimeIndicatorView:Landroid/view/View;

.field private mToast:Landroid/widget/Toast;

.field private final mTotalTimeTextView:Landroid/widget/TextView;

.field private mUserTouch:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/player/helper/controller/TimeIndicatorController$OnProgressSeekListener;)V
    .locals 3
    .parameter "a"
    .parameter "listener"

    .prologue
    const/4 v2, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mDuration:J

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mUserTouch:Z

    .line 38
    iput-object p1, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mContext:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mSeekListener:Lcom/miui/player/helper/controller/TimeIndicatorController$OnProgressSeekListener;

    .line 41
    const v0, 0x7f0c0030

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mTimeIndicatorView:Landroid/view/View;

    .line 43
    iget-object v0, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mTimeIndicatorView:Landroid/view/View;

    const v1, 0x102000d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mProgressBar:Landroid/widget/SeekBar;

    .line 44
    iget-object v0, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mProgressBar:Landroid/widget/SeekBar;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 45
    iget-object v0, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mProgressBar:Landroid/widget/SeekBar;

    new-instance v1, Lcom/miui/player/helper/controller/TimeIndicatorController$OnSeekPlayerPositionListener;

    invoke-direct {v1, p0, v2}, Lcom/miui/player/helper/controller/TimeIndicatorController$OnSeekPlayerPositionListener;-><init>(Lcom/miui/player/helper/controller/TimeIndicatorController;Lcom/miui/player/helper/controller/TimeIndicatorController$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 47
    iget-object v0, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mTimeIndicatorView:Landroid/view/View;

    const v1, 0x7f0c00a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mCurrentTimeTextView:Landroid/widget/TextView;

    .line 48
    iget-object v0, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mTimeIndicatorView:Landroid/view/View;

    const v1, 0x7f0c00a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mTotalTimeTextView:Landroid/widget/TextView;

    .line 49
    iget-object v0, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mTimeIndicatorView:Landroid/view/View;

    const v1, 0x7f0c00a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mRepeatImage:Landroid/widget/ImageView;

    .line 50
    iget-object v0, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mRepeatImage:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/player/helper/controller/TimeIndicatorController$OnRepeatModeClickListener;

    invoke-direct {v1, p0, v2}, Lcom/miui/player/helper/controller/TimeIndicatorController$OnRepeatModeClickListener;-><init>(Lcom/miui/player/helper/controller/TimeIndicatorController;Lcom/miui/player/helper/controller/TimeIndicatorController$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    iget-object v0, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mTimeIndicatorView:Landroid/view/View;

    const v1, 0x7f0c00a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mShuffleImage:Landroid/widget/ImageView;

    .line 52
    iget-object v0, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mShuffleImage:Landroid/widget/ImageView;

    new-instance v1, Lcom/miui/player/helper/controller/TimeIndicatorController$OnShuffleModeClickListener;

    invoke-direct {v1, p0, v2}, Lcom/miui/player/helper/controller/TimeIndicatorController$OnShuffleModeClickListener;-><init>(Lcom/miui/player/helper/controller/TimeIndicatorController;Lcom/miui/player/helper/controller/TimeIndicatorController$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method

.method static synthetic access$300(Lcom/miui/player/helper/controller/TimeIndicatorController;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 19
    iget-wide v0, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mDuration:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/miui/player/helper/controller/TimeIndicatorController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/player/helper/controller/TimeIndicatorController;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mCurrentTimeTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/miui/player/helper/controller/TimeIndicatorController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mUserTouch:Z

    return p1
.end method

.method static synthetic access$700(Lcom/miui/player/helper/controller/TimeIndicatorController;)Lcom/miui/player/helper/controller/TimeIndicatorController$OnProgressSeekListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mSeekListener:Lcom/miui/player/helper/controller/TimeIndicatorController$OnProgressSeekListener;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/player/helper/controller/TimeIndicatorController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/miui/player/helper/controller/TimeIndicatorController;->showToast(I)V

    return-void
.end method

.method private showToast(I)V
    .locals 3
    .parameter "resid"

    .prologue
    .line 235
    iget-object v0, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mContext:Landroid/content/Context;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mToast:Landroid/widget/Toast;

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 239
    iget-object v0, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 240
    return-void
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mTimeIndicatorView:Landroid/view/View;

    return-object v0
.end method

.method public refresh(JFZZ)V
    .locals 7
    .parameter "pos"
    .parameter "bufferedPer"
    .parameter "isPlaying"
    .parameter "isBuffering"

    .prologue
    const-wide/16 v5, 0x3e8

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 56
    cmp-long v0, p1, v3

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mDuration:J

    cmp-long v0, v0, v3

    if-lez v0, :cond_2

    .line 57
    if-eqz p4, :cond_0

    .line 58
    iget-object v0, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mCurrentTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    :cond_0
    iget-boolean v0, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mUserTouch:Z

    if-nez v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mProgressBar:Landroid/widget/SeekBar;

    mul-long v1, v5, p1

    iget-wide v3, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mDuration:J

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 63
    iget-object v0, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mCurrentTimeTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mContext:Landroid/content/Context;

    const-wide/16 v2, 0x1f4

    add-long/2addr v2, p1

    div-long/2addr v2, v5

    const v4, 0x7f0800e7

    invoke-static {v1, v2, v3, v4}, Lcom/miui/player/MusicUtils;->makeTimeString(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mProgressBar:Landroid/widget/SeekBar;

    const/high16 v1, 0x447a

    mul-float/2addr v1, p3

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 73
    return-void

    .line 68
    :cond_2
    iget-object v0, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mCurrentTimeTextView:Landroid/widget/TextView;

    const-string v1, "--:--"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mProgressBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    goto :goto_0
.end method

.method public refreshRepeatImage()V
    .locals 3

    .prologue
    .line 199
    sget-object v0, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    .line 200
    .local v0, s:Lcom/miui/player/IMediaPlaybackService;
    if-eqz v0, :cond_0

    .line 202
    :try_start_0
    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->getRepeatMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 210
    iget-object v1, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mRepeatImage:Landroid/widget/ImageView;

    const v2, 0x7f02009c

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 204
    :pswitch_0
    iget-object v1, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mRepeatImage:Landroid/widget/ImageView;

    const v2, 0x7f02009b

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 213
    :catch_0
    move-exception v1

    goto :goto_0

    .line 207
    :pswitch_1
    iget-object v1, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mRepeatImage:Landroid/widget/ImageView;

    const v2, 0x7f02009a

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 202
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public refreshShuffleImage()V
    .locals 3

    .prologue
    .line 219
    sget-object v0, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    .line 220
    .local v0, s:Lcom/miui/player/IMediaPlaybackService;
    if-eqz v0, :cond_0

    .line 222
    :try_start_0
    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->getShuffleMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 223
    iget-object v1, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mShuffleImage:Landroid/widget/ImageView;

    const v2, 0x7f0200a9

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 225
    :cond_1
    iget-object v1, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mShuffleImage:Landroid/widget/ImageView;

    const v2, 0x7f0200a8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 227
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setTotalTime(J)V
    .locals 6
    .parameter "dur"

    .prologue
    .line 87
    :try_start_0
    sget-object v0, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->isBuffering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mTotalTimeTextView:Landroid/widget/TextView;

    const v1, 0x7f08008c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 96
    :goto_0
    return-void

    .line 90
    :cond_0
    iput-wide p1, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mDuration:J

    .line 91
    iget-object v0, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mTotalTimeTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mContext:Landroid/content/Context;

    const-wide/16 v2, 0x1f4

    add-long/2addr v2, p1

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    const v4, 0x7f0800e7

    invoke-static {v1, v2, v3, v4}, Lcom/miui/player/MusicUtils;->makeTimeString(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/miui/player/helper/controller/TimeIndicatorController;->mTimeIndicatorView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    return-void

    .line 76
    :cond_0
    const/4 v1, 0x4

    goto :goto_0
.end method
