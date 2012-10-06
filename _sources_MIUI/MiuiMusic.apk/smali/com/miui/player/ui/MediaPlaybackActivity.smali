.class public Lcom/miui/player/ui/MediaPlaybackActivity;
.super Lcom/miui/player/ui/BaseActivity;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Lcom/miui/player/MusicUtils$Defs;
.implements Lcom/miui/player/drawerActivityGroup/MainActivityGroup$ServiceConnectionObserver;
.implements Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$OptionsMenuProvider;
.implements Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup$TogglableDrawer;
.implements Lcom/miui/player/helper/controller/MediaPlaybackController$AnimationStatus;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/MediaPlaybackActivity$GotoEqualizer;,
        Lcom/miui/player/ui/MediaPlaybackActivity$RotateSwitchCallback;,
        Lcom/miui/player/ui/MediaPlaybackActivity$OnIndexerChangeAnimationListener;,
        Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick;,
        Lcom/miui/player/ui/MediaPlaybackActivity$OnRepeatClickListener;,
        Lcom/miui/player/ui/MediaPlaybackActivity$LyricModifyCancelListener;,
        Lcom/miui/player/ui/MediaPlaybackActivity$LyricModifySaveListener;,
        Lcom/miui/player/ui/MediaPlaybackActivity$OnPlayerSeekListener;,
        Lcom/miui/player/ui/MediaPlaybackActivity$RunnableAfterOpen;,
        Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;,
        Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable;,
        Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;,
        Lcom/miui/player/ui/MediaPlaybackActivity$LyricAsyncChooseRunnable;,
        Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;
    }
.end annotation


# static fields
.field private static final ACTIVE_INTERVAL:[I = null

.field private static final ALBUM_INDEXER:I = 0x0

.field private static final EDIT_ID3:I = 0x1d

.field private static final EQUALIZER:I = 0x23

.field private static final INDEXER_COUNT:I = 0x3

.field private static final LYRIC_INDEXER:I = 0x1

.field private static final LYRIC_PROGRESS_MODIFY:I = 0x22

.field private static final MAX_CHOOSE_COUNT:I = 0x5

.field private static final MSG_LYRIC_CHOOSE:I = 0x1

.field private static final MSG_VISULIZER_PREPARED:I = 0x1

.field private static final PLAYLIST_INDEXER:I = 0x2

.field public static final PREFERENCE_PLAYBACK_SELECTION:Ljava/lang/String; = "preference_plackback_selection"

.field private static final QUIT:I = 0x2

.field private static final REFRESH:I = 0x1

.field private static final REFRESH_DELAY_ON_VISIBLE:I = 0x1f4

.field private static final SAVE_AS_PLAYLIST:I = 0x24

.field private static final SEARCH_ALBUM:I = 0x1f

.field private static final SEARCH_LYRIC:I = 0x1e

.field public static final TAG:Ljava/lang/String; = "com.miui.player.ui.MediaPlaybackActivity"

.field private static final USE_AS_RINGTONE:I = 0x1c

.field private static final USE_LOCAL_ALBUM:I = 0x21

.field private static final USE_LOCAL_LYRIC:I = 0x20


# instance fields
.field private mActiveIndexer:I

.field private mAdapterSent:Z

.field private mAlbumController:Lcom/miui/player/helper/controller/AlbumViewController;

.field private mControllers:[Lcom/miui/player/helper/controller/MediaPlaybackController;

.field private mCurrentDownloadedId:J

.field private mDestroyFromDrawer:Z

.field private mDisplayView:Landroid/view/View;

.field private mDownloadFreezeDialog:Landroid/app/ProgressDialog;

.field private mEuqalizerFrameView:Landroid/view/View;

.field private final mFavoriteChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mHandler:Landroid/os/Handler;

.field private mIndexerOfSecondLevel:I

.field private mIsAnimationPlaying:Z

.field private mIsLyricProgressModify:Z

.field private mIsOnline:Z

.field private mIsRotateAnimationPlaying:Z

.field private mLyricController:Lcom/miui/player/helper/controller/LyricViewController;

.field private mLyricDir:Ljava/io/File;

.field private final mLyricHandler:Landroid/os/Handler;

.field private mMainView:Landroid/view/ViewGroup;

.field private mOneShot:Z

.field private mPlayerCommonController:Lcom/miui/player/helper/controller/PlayerCommonController;

.field private mPlaylistController:Lcom/miui/player/helper/controller/PlaylistViewController;

.field private mPreparedHandler:Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;

.field private mResumeFromDrawer:Z

.field private mRotateAnimation:Lcom/miui/player/helper/RotateSwitchAnimationChain;

.field private mService:Lcom/miui/player/IMediaPlaybackService;

.field private mStartRefresh:Z

.field private final mStatusListener:Landroid/content/BroadcastReceiver;

.field private mTimeIndicatorController:Lcom/miui/player/helper/controller/TimeIndicatorController;

.field private mTrackChangedWhilePaused:Z

.field private mTrackChangedWhileSliding:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/player/ui/MediaPlaybackActivity;->ACTIVE_INTERVAL:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xc8t 0x0t 0x0t 0x0t
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 98
    invoke-direct {p0}, Lcom/miui/player/ui/BaseActivity;-><init>()V

    .line 137
    iput-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    .line 144
    iput-boolean v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mResumeFromDrawer:Z

    .line 145
    iput-boolean v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDestroyFromDrawer:Z

    .line 146
    iput-boolean v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mIsAnimationPlaying:Z

    .line 149
    iput-boolean v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mOneShot:Z

    .line 199
    new-instance v0, Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPreparedHandler:Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;

    .line 387
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mCurrentDownloadedId:J

    .line 1039
    iput-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    .line 1043
    new-instance v0, Lcom/miui/player/ui/MediaPlaybackActivity$3;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/MediaPlaybackActivity$3;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricHandler:Landroid/os/Handler;

    .line 1347
    new-instance v0, Lcom/miui/player/ui/MediaPlaybackActivity$4;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/MediaPlaybackActivity$4;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    .line 1381
    iput-boolean v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mStartRefresh:Z

    .line 1387
    iput-boolean v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackChangedWhileSliding:Z

    .line 1394
    iput-boolean v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackChangedWhilePaused:Z

    .line 1430
    new-instance v0, Lcom/miui/player/ui/MediaPlaybackActivity$5;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/MediaPlaybackActivity$5;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    .line 1598
    new-instance v0, Lcom/miui/player/ui/MediaPlaybackActivity$6;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/MediaPlaybackActivity$6;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    iput-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mFavoriteChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 1833
    new-instance v0, Lcom/miui/player/helper/RotateSwitchAnimationChain;

    new-instance v1, Lcom/miui/player/ui/MediaPlaybackActivity$RotateSwitchCallback;

    invoke-direct {v1, p0, v2}, Lcom/miui/player/ui/MediaPlaybackActivity$RotateSwitchCallback;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;Lcom/miui/player/ui/MediaPlaybackActivity$1;)V

    const-wide/16 v2, 0x12c

    const/high16 v4, 0x4396

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/player/helper/RotateSwitchAnimationChain;-><init>(Lcom/miui/player/helper/RotateSwitchAnimationChain$SwitchCallback;JF)V

    iput-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mRotateAnimation:Lcom/miui/player/helper/RotateSwitchAnimationChain;

    .line 1835
    iput-boolean v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mIsRotateAnimationPlaying:Z

    .line 1889
    return-void
.end method

.method static synthetic access$1000(Lcom/miui/player/ui/MediaPlaybackActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/player/ui/MediaPlaybackActivity;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/miui/player/ui/MediaPlaybackActivity;->showDownloadDialog(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/miui/player/ui/MediaPlaybackActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mStartRefresh:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/miui/player/ui/MediaPlaybackActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mStartRefresh:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/miui/player/ui/MediaPlaybackActivity;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mMainView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/miui/player/ui/MediaPlaybackActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackChangedWhileSliding:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/miui/player/ui/MediaPlaybackActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackChangedWhileSliding:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/miui/player/ui/MediaPlaybackActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackChangedWhilePaused:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/miui/player/ui/MediaPlaybackActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackChangedWhilePaused:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/IMediaPlaybackService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/miui/player/ui/MediaPlaybackActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mIsLyricProgressModify:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/miui/player/ui/MediaPlaybackActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/miui/player/ui/MediaPlaybackActivity;->leaveLyricProgressModifyMode(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/miui/player/ui/MediaPlaybackActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mOneShot:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/helper/controller/PlayerCommonController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlayerCommonController:Lcom/miui/player/helper/controller/PlayerCommonController;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/helper/controller/PlaylistViewController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlaylistController:Lcom/miui/player/helper/controller/PlaylistViewController;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/helper/controller/TimeIndicatorController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTimeIndicatorController:Lcom/miui/player/helper/controller/TimeIndicatorController;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/helper/controller/LyricViewController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricController:Lcom/miui/player/helper/controller/LyricViewController;

    return-object v0
.end method

.method static synthetic access$2900()[I
    .locals 1

    .prologue
    .line 98
    sget-object v0, Lcom/miui/player/ui/MediaPlaybackActivity;->ACTIVE_INTERVAL:[I

    return-object v0
.end method

.method static synthetic access$3000(Lcom/miui/player/ui/MediaPlaybackActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I

    return v0
.end method

.method static synthetic access$3100(Lcom/miui/player/ui/MediaPlaybackActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->refreshTimeIndicator()V

    return-void
.end method

.method static synthetic access$3200(Lcom/miui/player/ui/MediaPlaybackActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mIsAnimationPlaying:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/miui/player/ui/MediaPlaybackActivity;)[Lcom/miui/player/helper/controller/MediaPlaybackController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mControllers:[Lcom/miui/player/helper/controller/MediaPlaybackController;

    return-object v0
.end method

.method static synthetic access$3602(Lcom/miui/player/ui/MediaPlaybackActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-boolean p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mIsRotateAnimationPlaying:Z

    return p1
.end method

.method static synthetic access$600(Lcom/miui/player/ui/MediaPlaybackActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1}, Lcom/miui/player/ui/MediaPlaybackActivity;->updateTrackInfo(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/player/ui/MediaPlaybackActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->refreshNow()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$800(Lcom/miui/player/ui/MediaPlaybackActivity;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    invoke-direct {p0, p1, p2}, Lcom/miui/player/ui/MediaPlaybackActivity;->queueNextRefresh(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/player/ui/MediaPlaybackActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$902(Lcom/miui/player/ui/MediaPlaybackActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method private connectService()V
    .locals 2

    .prologue
    .line 1291
    invoke-static {p0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->getServiceFromParent(Landroid/app/Activity;)Lcom/miui/player/IMediaPlaybackService;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    .line 1292
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 1293
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTimeIndicatorController:Lcom/miui/player/helper/controller/TimeIndicatorController;

    invoke-virtual {v0}, Lcom/miui/player/helper/controller/TimeIndicatorController;->refreshRepeatImage()V

    .line 1294
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTimeIndicatorController:Lcom/miui/player/helper/controller/TimeIndicatorController;

    invoke-virtual {v0}, Lcom/miui/player/helper/controller/TimeIndicatorController;->refreshShuffleImage()V

    .line 1295
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->startPlayback()V

    .line 1296
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlaylistController:Lcom/miui/player/helper/controller/PlaylistViewController;

    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/controller/PlaylistViewController;->initPlayingList(Lcom/miui/player/IMediaPlaybackService;)V

    .line 1300
    :goto_0
    return-void

    .line 1298
    :cond_0
    invoke-static {p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->destroyDrawerActivity(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method private doPickAlbumFromGallery()V
    .locals 7

    .prologue
    .line 733
    :try_start_0
    iget-object v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/miui/player/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 734
    .local v0, album:Ljava/lang/String;
    iget-object v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/miui/player/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v1

    .line 735
    .local v1, artist:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 745
    .end local v0           #album:Ljava/lang/String;
    .end local v1           #artist:Ljava/lang/String;
    :goto_0
    return-void

    .line 738
    .restart local v0       #album:Ljava/lang/String;
    .restart local v1       #artist:Ljava/lang/String;
    :cond_0
    const-string v5, "music/album"

    invoke-static {v0, v1, v5}, Lcom/miui/player/helper/MusicMetaManager;->getFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 739
    .local v4, path:Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/miui/player/ui/MediaPlaybackActivity;->getAlbumPickIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 740
    .local v3, intent:Landroid/content/Intent;
    const/16 v5, 0x12

    invoke-virtual {p0, v3, v5}, Lcom/miui/player/ui/MediaPlaybackActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 741
    .end local v0           #album:Ljava/lang/String;
    .end local v1           #artist:Ljava/lang/String;
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #path:Ljava/lang/String;
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 742
    .local v2, e:Landroid/content/ActivityNotFoundException;
    const v5, 0x7f0800c0

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 743
    .end local v2           #e:Landroid/content/ActivityNotFoundException;
    :catch_1
    move-exception v5

    goto :goto_0
.end method

.method private doPickLyricFromFileExplorer()V
    .locals 4

    .prologue
    .line 701
    :try_start_0
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->getLyricPickIntent()Landroid/content/Intent;

    move-result-object v1

    .line 702
    .local v1, intent:Landroid/content/Intent;
    const/16 v2, 0x13

    invoke-virtual {p0, v1, v2}, Lcom/miui/player/ui/MediaPlaybackActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 706
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 703
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 704
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const v2, 0x7f0800c1

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private editId3(Landroid/content/Intent;)Z
    .locals 13
    .parameter "intent"

    .prologue
    const/4 v12, 0x0

    .line 784
    const-string v11, "search_track_name"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 785
    .local v3, editTrack:Ljava/lang/String;
    const-string v11, "search_artist_name"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 786
    .local v2, editArtist:Ljava/lang/String;
    const-string v11, "search_album_name"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 787
    .local v1, editAlbum:Ljava/lang/String;
    const-string v11, "raw_path"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 789
    .local v4, filePath:Ljava/lang/String;
    const-string v11, "raw_track_name"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 790
    .local v10, rawTrack:Ljava/lang/String;
    const-string v11, "raw_artist_name"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 791
    .local v9, rawArtist:Ljava/lang/String;
    const-string v11, "raw_album_name"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 793
    .local v8, rawAlbum:Ljava/lang/String;
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    :cond_0
    move v11, v12

    .line 810
    :goto_0
    return v11

    .line 798
    :cond_1
    const/4 v6, 0x0

    .line 799
    .local v6, isModifyed:Z
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 800
    .local v0, audioUri:Landroid/net/Uri;
    invoke-static {p0, v0}, Lcom/miui/player/helper/Global;->translateToFileUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 801
    .local v5, fileUri:Landroid/net/Uri;
    if-eqz v5, :cond_2

    .line 802
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 804
    .local v7, path:Ljava/lang/String;
    new-instance v11, Ljava/io/File;

    invoke-direct {v11, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v11, v3, v2, v1}, Lcom/miui/player/helper/MediaInfo;->correctID3(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    .line 806
    if-nez v6, :cond_2

    .line 807
    const v11, 0x7f0800be

    invoke-static {p0, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v11

    invoke-virtual {v11}, Landroid/widget/Toast;->show()V

    .end local v7           #path:Ljava/lang/String;
    :cond_2
    move v11, v6

    .line 810
    goto :goto_0
.end method

.method private enableSpectrumVisualizer(Z)V
    .locals 3
    .parameter "isPlaying"

    .prologue
    const/4 v2, 0x1

    .line 1542
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mStartRefresh:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mIsAnimationPlaying:Z

    if-nez v1, :cond_0

    iget v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I

    if-nez v1, :cond_0

    const-string v1, "display_spectrogram"

    invoke-static {p0, v1}, Lcom/miui/player/ui/PreferencesActivity;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPreparedHandler:Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;

    invoke-virtual {v1, v2}, Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    .line 1547
    .local v0, enabled:Z
    :goto_0
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumController:Lcom/miui/player/helper/controller/AlbumViewController;

    invoke-virtual {v1, v0}, Lcom/miui/player/helper/controller/AlbumViewController;->enableUpdate(Z)V

    .line 1548
    return-void

    .line 1542
    .end local v0           #enabled:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private enterLyricProgressModifyMode()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x1

    .line 672
    iput-boolean v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mIsLyricProgressModify:Z

    .line 673
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricController:Lcom/miui/player/helper/controller/LyricViewController;

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/controller/LyricViewController;->setLyricMode(I)V

    .line 674
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlayerCommonController:Lcom/miui/player/helper/controller/PlayerCommonController;

    invoke-virtual {v0, v2}, Lcom/miui/player/helper/controller/PlayerCommonController;->setVisible(I)V

    .line 675
    invoke-static {p0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->getNowplayingBar(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 676
    const/4 v0, 0x0

    const v1, 0x7f0800ca

    invoke-static {p0, v0, v1}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->setTitleVisible(Landroid/app/Activity;II)V

    .line 677
    return-void
.end method

.method private getAlbumPickIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .parameter "path"

    .prologue
    const/4 v3, 0x1

    .line 752
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 754
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 755
    const-string v1, "crop"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 756
    const-string v1, "aspectX"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 757
    const-string v1, "aspectY"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 758
    const-string v1, "output"

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 759
    const-string v1, "noFaceDetection"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 760
    const-string v1, "noShowToast"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 761
    return-object v0
.end method

.method private getLyricPickIntent()Landroid/content/Intent;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 712
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 713
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricDir:Ljava/io/File;

    if-nez v2, :cond_0

    .line 714
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricDir:Ljava/io/File;

    .line 716
    :cond_0
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricDir:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 717
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 719
    const-string v2, "root_directory"

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 720
    const-string v2, "ext_filter"

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "lrc"

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 723
    const-string v2, "ext_file_first"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 724
    const-string v2, "back_to_parent_directory"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 725
    return-object v0
.end method

.method private getPreferenceSelection()I
    .locals 4

    .prologue
    .line 1703
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "preference_plackback_selection"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1705
    .local v0, ret:I
    if-ltz v0, :cond_0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    .line 1706
    :cond_0
    const/4 v0, 0x0

    .line 1709
    :cond_1
    return v0
.end method

.method private leaveLyricProgressModifyMode(Z)V
    .locals 2
    .parameter "needRefreshLyric"

    .prologue
    const/4 v1, 0x0

    .line 683
    iput-boolean v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mIsLyricProgressModify:Z

    .line 684
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricController:Lcom/miui/player/helper/controller/LyricViewController;

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/controller/LyricViewController;->setLyricMode(I)V

    .line 685
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlayerCommonController:Lcom/miui/player/helper/controller/PlayerCommonController;

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/controller/PlayerCommonController;->setVisible(I)V

    .line 686
    invoke-static {p0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->getNowplayingBar(Landroid/app/Activity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 687
    const/16 v0, 0x8

    const v1, 0x7f0800ca

    invoke-static {p0, v0, v1}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->setTitleVisible(Landroid/app/Activity;II)V

    .line 688
    if-nez p1, :cond_0

    .line 694
    :goto_0
    return-void

    .line 693
    :cond_0
    const-string v0, "lyric"

    invoke-direct {p0, v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->requestUpdate(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private queueNextRefresh(J)V
    .locals 4
    .parameter "delay"

    .prologue
    const/4 v3, 0x1

    .line 1303
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->isPaused()Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 1304
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1305
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1306
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1308
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private refreshEqualizerSurface()V
    .locals 5

    .prologue
    .line 1900
    sget-boolean v3, Lcom/miui/player/helper/Global;->IS_LPA_DECODE:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mOneShot:Z

    if-nez v3, :cond_0

    invoke-static {p0}, Lcom/miui/player/ui/EqualizerActivity;->isEqualizerEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1901
    invoke-static {p0}, Lcom/miui/player/ui/EqualizerActivity;->getEqualizerConfigId(Landroid/content/Context;)I

    move-result v0

    .line 1902
    .local v0, config:I
    invoke-static {p0, v0}, Lcom/miui/player/provider/PlayerProviderUtils;->getEqualizerConfigData(Landroid/content/Context;I)[I

    move-result-object v2

    .line 1903
    .local v2, levels:[I
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mEuqalizerFrameView:Landroid/view/View;

    const v4, 0x7f0c00a6

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/miui/player/ui/view/EqualizerView;

    .line 1904
    .local v1, ev:Lcom/miui/player/ui/view/EqualizerView;
    invoke-virtual {v1, v2}, Lcom/miui/player/ui/view/EqualizerView;->setBands([I)V

    .line 1905
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mEuqalizerFrameView:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1909
    .end local v0           #config:I
    .end local v1           #ev:Lcom/miui/player/ui/view/EqualizerView;
    .end local v2           #levels:[I
    :goto_0
    return-void

    .line 1907
    :cond_0
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mEuqalizerFrameView:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private refreshNow()J
    .locals 14

    .prologue
    .line 1311
    const-wide/16 v10, -0x1

    .line 1312
    .local v10, ret:J
    const/4 v4, 0x0

    .line 1314
    .local v4, isPlaying:Z
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    if-eqz v0, :cond_3

    .line 1316
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->isPlaying()Z

    move-result v4

    .line 1319
    iget v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 1320
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->position()J

    move-result-wide v1

    .line 1321
    .local v1, pos:J
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->duration()J

    move-result-wide v6

    .line 1322
    .local v6, duration:J
    sget-object v0, Lcom/miui/player/ui/MediaPlaybackActivity;->ACTIVE_INTERVAL:[I

    iget v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I

    aget v0, v0, v3

    int-to-long v8, v0

    .line 1323
    .local v8, interval:J
    const-wide/16 v12, 0x0

    cmp-long v0, v8, v12

    if-lez v0, :cond_0

    .line 1324
    rem-long v12, v1, v8

    sub-long v10, v8, v12

    .line 1326
    :cond_0
    const-wide/16 v12, 0x0

    cmp-long v0, v1, v12

    if-ltz v0, :cond_2

    const-wide/16 v12, 0x0

    cmp-long v0, v6, v12

    if-lez v0, :cond_2

    .line 1327
    if-nez v4, :cond_1

    .line 1328
    const-wide/16 v10, -0x1

    .line 1330
    :cond_1
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricController:Lcom/miui/player/helper/controller/LyricViewController;

    invoke-virtual {v0, v1, v2}, Lcom/miui/player/helper/controller/LyricViewController;->refreshLyric(J)V

    .line 1333
    :cond_2
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->getBufferedPercent()F

    move-result v3

    .line 1334
    .local v3, bufferedPer:F
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->isBuffering()Z

    move-result v5

    .line 1335
    .local v5, isBuffering:Z
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTimeIndicatorController:Lcom/miui/player/helper/controller/TimeIndicatorController;

    invoke-virtual/range {v0 .. v5}, Lcom/miui/player/helper/controller/TimeIndicatorController;->refresh(JFZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1341
    .end local v1           #pos:J
    .end local v3           #bufferedPer:F
    .end local v5           #isBuffering:Z
    .end local v6           #duration:J
    .end local v8           #interval:J
    :cond_3
    :goto_0
    sget-boolean v0, Lcom/miui/player/helper/Global;->IS_LPA_DECODE:Z

    if-nez v0, :cond_4

    .line 1342
    invoke-direct {p0, v4}, Lcom/miui/player/ui/MediaPlaybackActivity;->enableSpectrumVisualizer(Z)V

    .line 1344
    :cond_4
    iget-boolean v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mIsAnimationPlaying:Z

    if-eqz v0, :cond_5

    const-wide/16 v12, -0x1

    :goto_1
    return-wide v12

    :cond_5
    move-wide v12, v10

    goto :goto_1

    .line 1337
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private refreshTimeIndicator()V
    .locals 8

    .prologue
    .line 1584
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 1586
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->position()J

    move-result-wide v1

    .line 1587
    .local v1, pos:J
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->duration()J

    move-result-wide v6

    .line 1588
    .local v6, dur:J
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->getBufferedPercent()F

    move-result v3

    .line 1589
    .local v3, bufferedPer:F
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->isPlaying()Z

    move-result v4

    .line 1590
    .local v4, isPlaying:Z
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->isBuffering()Z

    move-result v5

    .line 1591
    .local v5, isBuffering:Z
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTimeIndicatorController:Lcom/miui/player/helper/controller/TimeIndicatorController;

    invoke-virtual {v0, v6, v7}, Lcom/miui/player/helper/controller/TimeIndicatorController;->setTotalTime(J)V

    .line 1592
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTimeIndicatorController:Lcom/miui/player/helper/controller/TimeIndicatorController;

    invoke-virtual/range {v0 .. v5}, Lcom/miui/player/helper/controller/TimeIndicatorController;->refresh(JFZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1596
    .end local v1           #pos:J
    .end local v3           #bufferedPer:F
    .end local v4           #isPlaying:Z
    .end local v5           #isBuffering:Z
    .end local v6           #dur:J
    :cond_0
    :goto_0
    return-void

    .line 1593
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private requestUpdate(Ljava/lang/String;)V
    .locals 2
    .parameter "command"

    .prologue
    .line 814
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.player.musicservicecommand.update_meta"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 815
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "command"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 816
    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 817
    return-void
.end method

.method public static savePreferenceSelection(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "indexer"

    .prologue
    .line 1713
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1714
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "preference_plackback_selection"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1715
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1716
    return-void
.end method

.method private showDownloadDialog(I)Z
    .locals 3
    .parameter "titleId"

    .prologue
    const/4 v2, 0x1

    .line 765
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 766
    const/4 v0, 0x0

    .line 780
    :goto_0
    return v0

    .line 769
    :cond_0
    const-string v0, ""

    invoke-virtual {p0, p1}, Lcom/miui/player/ui/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    .line 770
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 771
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/miui/player/ui/MediaPlaybackActivity$2;

    invoke-direct {v1, p0}, Lcom/miui/player/ui/MediaPlaybackActivity$2;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    move v0, v2

    .line 780
    goto :goto_0
.end method

.method private startPlayback()V
    .locals 9

    .prologue
    .line 1252
    iget-object v6, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    if-nez v6, :cond_1

    .line 1288
    :cond_0
    :goto_0
    return-void

    .line 1255
    :cond_1
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 1256
    .local v2, intent:Landroid/content/Intent;
    const-string v1, ""

    .line 1257
    .local v1, filename:Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 1258
    .local v5, uri:Landroid/net/Uri;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 1261
    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    .line 1262
    .local v4, scheme:Ljava/lang/String;
    const-string v6, "file"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1263
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1268
    :goto_1
    const/4 v3, 0x0

    .line 1269
    .local v3, isInBlacklist:Z
    :try_start_0
    const-string v6, "content"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "media"

    invoke-virtual {v5}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 1271
    :cond_2
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mOneShot:Z

    .line 1272
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->refreshEqualizerSurface()V

    .line 1273
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/miui/player/ui/MediaPlaybackActivity;->changeActiveIndexer(I)V

    .line 1278
    :goto_2
    iget-object v6, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/miui/player/IMediaPlaybackService;->stop()V

    .line 1279
    if-nez v3, :cond_0

    .line 1280
    iget-object v6, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    iget-boolean v7, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mOneShot:Z

    invoke-interface {v6, v1, v7}, Lcom/miui/player/IMediaPlaybackService;->openFile(Ljava/lang/String;Z)V

    .line 1281
    iget-object v6, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v6}, Lcom/miui/player/IMediaPlaybackService;->play()V

    .line 1282
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0, v6}, Lcom/miui/player/ui/MediaPlaybackActivity;->setIntent(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1284
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 1285
    .local v0, ex:Ljava/lang/Exception;
    const-string v6, "MediaPlaybackActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "couldn\'t start playback: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1265
    .end local v0           #ex:Ljava/lang/Exception;
    .end local v3           #isInBlacklist:Z
    :cond_3
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1275
    .restart local v3       #isInBlacklist:Z
    :cond_4
    :try_start_1
    invoke-static {p0, v5}, Lcom/miui/player/MusicUtils;->isUriAllInBlacklist(Landroid/content/Context;Landroid/net/Uri;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    goto :goto_2
.end method

.method private updateByVisible(Z)V
    .locals 4
    .parameter "visible"

    .prologue
    const/4 v3, 0x1

    .line 372
    if-eqz p1, :cond_1

    .line 373
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPreparedHandler:Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;

    invoke-virtual {v0, v3}, Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;->removeMessages(I)V

    .line 374
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPreparedHandler:Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 375
    const-string v0, "screen_bright_wake"

    invoke-static {p0, v0}, Lcom/miui/player/ui/PreferencesActivity;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumController:Lcom/miui/player/helper/controller/AlbumViewController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/controller/AlbumViewController;->enableUpdate(Z)V

    .line 381
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method private updateTrackInfo(I)V
    .locals 20
    .parameter "metaChanged"

    .prologue
    .line 1492
    const/4 v13, 0x0

    move v0, v13

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackChangedWhileSliding:Z

    .line 1493
    const/4 v13, 0x0

    move v0, v13

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackChangedWhilePaused:Z

    .line 1494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    move-object v13, v0

    if-nez v13, :cond_0

    .line 1539
    :goto_0
    return-void

    .line 1498
    :cond_0
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    move-object v13, v0

    invoke-interface {v13}, Lcom/miui/player/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v17

    .line 1499
    .local v17, path:Ljava/lang/String;
    if-nez v17, :cond_1

    .line 1500
    invoke-static/range {p0 .. p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->destroyDrawerActivity(Landroid/app/Activity;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1536
    .end local v17           #path:Ljava/lang/String;
    :catch_0
    move-exception v13

    move-object/from16 v16, v13

    .line 1537
    .local v16, ex:Landroid/os/RemoteException;
    invoke-static/range {p0 .. p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->destroyDrawerActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 1504
    .end local v16           #ex:Landroid/os/RemoteException;
    .restart local v17       #path:Ljava/lang/String;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    move-object v13, v0

    invoke-interface {v13}, Lcom/miui/player/IMediaPlaybackService;->duration()J

    move-result-wide v14

    .line 1505
    .local v14, duration:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    move-object v13, v0

    invoke-interface {v13}, Lcom/miui/player/IMediaPlaybackService;->getAudioId()J

    move-result-wide v4

    .line 1506
    .local v4, trId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    move-object v13, v0

    invoke-interface {v13}, Lcom/miui/player/IMediaPlaybackService;->getAlbumId()J

    move-result-wide v6

    .line 1507
    .local v6, alId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    move-object v13, v0

    invoke-interface {v13}, Lcom/miui/player/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v8

    .line 1508
    .local v8, tr:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    move-object v13, v0

    invoke-interface {v13}, Lcom/miui/player/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v10

    .line 1509
    .local v10, ar:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    move-object v13, v0

    invoke-interface {v13}, Lcom/miui/player/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v9

    .line 1510
    .local v9, al:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    move-object v13, v0

    invoke-interface {v13}, Lcom/miui/player/IMediaPlaybackService;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    .line 1511
    .local v11, trPath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    move-object v13, v0

    invoke-interface {v13}, Lcom/miui/player/IMediaPlaybackService;->getLyricStatus()I

    move-result v12

    .line 1513
    .local v12, lrcStatus:I
    invoke-static {v9}, Lcom/miui/player/helper/MediaInfo;->isUnknowName(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 1514
    const-wide/16 v6, -0x1

    .line 1517
    :cond_2
    const-wide/16 v18, 0x0

    cmp-long v13, v4, v18

    if-gez v13, :cond_3

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v16, "http://"

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 1518
    const-wide/16 v4, -0x1

    .line 1519
    const-wide/16 v6, -0x1

    .line 1521
    :cond_3
    new-instance v3, Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;

    move/from16 v13, p1

    invoke-direct/range {v3 .. v13}, Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;-><init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 1522
    .local v3, info:Lcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;
    if-eqz p1, :cond_4

    .line 1523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumController:Lcom/miui/player/helper/controller/AlbumViewController;

    move-object v13, v0

    move-object v0, v13

    move/from16 v1, p1

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/miui/player/helper/controller/AlbumViewController;->touch(ILcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;)V

    .line 1524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlaylistController:Lcom/miui/player/helper/controller/PlaylistViewController;

    move-object v13, v0

    move-object v0, v13

    move/from16 v1, p1

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/miui/player/helper/controller/PlaylistViewController;->touch(ILcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;)V

    .line 1528
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricController:Lcom/miui/player/helper/controller/LyricViewController;

    move-object v13, v0

    move-object v0, v13

    move/from16 v1, p1

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/miui/player/helper/controller/LyricViewController;->touch(ILcom/miui/player/helper/controller/MediaPlaybackController$ControllerInfo;)V

    .line 1529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mControllers:[Lcom/miui/player/helper/controller/MediaPlaybackController;

    move-object v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I

    move/from16 v16, v0

    aget-object v13, v13, v16

    invoke-virtual {v13}, Lcom/miui/player/helper/controller/MediaPlaybackController;->update()V

    .line 1531
    const/4 v13, 0x5

    move/from16 v0, p1

    move v1, v13

    if-eq v0, v1, :cond_5

    .line 1532
    invoke-static/range {p0 .. p0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->refreshNowPlayingBar(Landroid/app/Activity;)V

    .line 1534
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTimeIndicatorController:Lcom/miui/player/helper/controller/TimeIndicatorController;

    move-object v13, v0

    invoke-virtual {v13, v14, v15}, Lcom/miui/player/helper/controller/TimeIndicatorController;->setTotalTime(J)V

    .line 1535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlayerCommonController:Lcom/miui/player/helper/controller/PlayerCommonController;

    move-object v13, v0

    invoke-virtual {v13}, Lcom/miui/player/helper/controller/PlayerCommonController;->refresh()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method changeActiveIndexer(I)V
    .locals 2
    .parameter "newIndexer"

    .prologue
    .line 1688
    iget v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I

    if-eq v0, p1, :cond_0

    .line 1689
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mControllers:[Lcom/miui/player/helper/controller/MediaPlaybackController;

    iget v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/miui/player/helper/controller/MediaPlaybackController;->deactive()V

    .line 1690
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mControllers:[Lcom/miui/player/helper/controller/MediaPlaybackController;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/player/helper/controller/MediaPlaybackController;->active()V

    .line 1691
    iput p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I

    .line 1692
    iget v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I

    invoke-static {p0, v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->savePreferenceSelection(Landroid/content/Context;I)V

    .line 1694
    iget-boolean v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mIsLyricProgressModify:Z

    if-eqz v0, :cond_0

    .line 1695
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->leaveLyricProgressModifyMode(Z)V

    .line 1699
    :cond_0
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->refreshNow()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->queueNextRefresh(J)V

    .line 1700
    return-void
.end method

.method public clickExternalIndexer()V
    .locals 3

    .prologue
    .line 1810
    iget-boolean v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mOneShot:Z

    if-eqz v0, :cond_0

    .line 1815
    :goto_0
    return-void

    .line 1814
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mRotateAnimation:Lcom/miui/player/helper/RotateSwitchAnimationChain;

    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDisplayView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->isClockwise()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/player/helper/RotateSwitchAnimationChain;->startAnimation(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public getActiveIndexerDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 1643
    const/4 v2, 0x0

    .line 1644
    .local v2, ret:Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I

    .line 1645
    .local v1, indexer:I
    iget-boolean v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mIsRotateAnimationPlaying:Z

    if-eqz v3, :cond_0

    .line 1646
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->getNextIndexerWhenExternalClick()I

    move-result v1

    .line 1648
    :cond_0
    packed-switch v1, :pswitch_data_0

    .line 1662
    :goto_0
    return-object v2

    .line 1651
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020053

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 1652
    goto :goto_0

    .line 1654
    :pswitch_1
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumController:Lcom/miui/player/helper/controller/AlbumViewController;

    invoke-virtual {v3}, Lcom/miui/player/helper/controller/AlbumViewController;->getCurrentAlbum()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1655
    .local v0, bm:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_1

    .line 1656
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    .end local v2           #ret:Landroid/graphics/drawable/Drawable;
    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .restart local v2       #ret:Landroid/graphics/drawable/Drawable;
    goto :goto_0

    .line 1658
    :cond_1
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 1648
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getNextIndexerWhenExternalClick()I
    .locals 3

    .prologue
    .line 1818
    const/4 v0, 0x0

    .line 1819
    .local v0, newIndexer:I
    iget v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 1820
    iget v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mIndexerOfSecondLevel:I

    .line 1826
    :goto_0
    return v0

    .line 1822
    :cond_0
    iget v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I

    iput v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mIndexerOfSecondLevel:I

    .line 1823
    const/4 v0, 0x2

    goto :goto_0
.end method

.method getNextIndexerWhenInternalClick()I
    .locals 3

    .prologue
    .line 1799
    const/4 v0, 0x0

    .line 1800
    .local v0, newIndexer:I
    iget v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I

    if-nez v1, :cond_1

    .line 1801
    const/4 v0, 0x1

    .line 1806
    :cond_0
    :goto_0
    return v0

    .line 1802
    :cond_1
    iget v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1803
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isActiveIndexerMask()Z
    .locals 2

    .prologue
    .line 1666
    iget v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I

    .line 1667
    .local v0, indexer:I
    iget-boolean v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mIsRotateAnimationPlaying:Z

    if-eqz v1, :cond_0

    .line 1668
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->getNextIndexerWhenExternalClick()I

    move-result v0

    .line 1670
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isActivityPaused()Z
    .locals 1

    .prologue
    .line 1733
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->isPaused()Z

    move-result v0

    return v0
.end method

.method public isAnimationPlaying()Z
    .locals 1

    .prologue
    .line 1720
    iget-boolean v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mIsAnimationPlaying:Z

    return v0
.end method

.method public isClockwise()Z
    .locals 2

    .prologue
    .line 1830
    iget v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnableScanReceiver()Z
    .locals 1

    .prologue
    .line 1886
    const/4 v0, 0x1

    return v0
.end method

.method public isOneShot()Z
    .locals 1

    .prologue
    .line 1913
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    if-eqz v0, :cond_0

    .line 1915
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->isOneShot()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1920
    :goto_0
    return v0

    .line 1916
    :catch_0
    move-exception v0

    .line 1920
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecoveryCompleteReceiver()Z
    .locals 1

    .prologue
    .line 1881
    const/4 v0, 0x1

    return v0
.end method

.method public notifyConnection(Lcom/miui/player/IMediaPlaybackService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 1552
    if-eqz p1, :cond_0

    .line 1553
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    .line 1554
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->connectService()V

    .line 1558
    :goto_0
    return-void

    .line 1556
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->finish()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 29
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "intent"

    .prologue
    .line 949
    const/4 v3, -0x1

    move/from16 v0, p2

    move v1, v3

    if-eq v0, v1, :cond_1

    .line 1037
    :cond_0
    :goto_0
    return-void

    .line 955
    :cond_1
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 957
    :pswitch_1
    const-string v3, "artist"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 958
    .local v9, albumArtist:Ljava/lang/String;
    const-string v3, "album"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 959
    .local v8, albumAlbum:Ljava/lang/String;
    const-string v3, "raw_artist"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 960
    .local v26, rawAlbumArtist:Ljava/lang/String;
    const-string v3, "raw_album"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 961
    .local v25, rawAlbumAlbum:Ljava/lang/String;
    new-instance v3, Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/miui/player/model/AlbumBrowserAdapter;->removeCacheAlbum(Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;)Z

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    move-object v3, v0

    if-eqz v3, :cond_0

    .line 965
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    move-object v3, v0

    invoke-interface {v3}, Lcom/miui/player/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v20

    .line 966
    .local v20, currentArtistName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    move-object v3, v0

    invoke-interface {v3}, Lcom/miui/player/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v19

    .line 968
    .local v19, currentAlbumName:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, v19

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    move-object/from16 v0, v20

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 972
    :cond_3
    new-instance v18, Landroid/content/Intent;

    const-string v3, "com.miui.player.musicservicecommand.update_meta"

    move-object/from16 v0, v18

    move-object v1, v3

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 973
    .local v18, albumIntent:Landroid/content/Intent;
    const-string v3, "command"

    const-string v4, "album"

    move-object/from16 v0, v18

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 974
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 976
    .end local v18           #albumIntent:Landroid/content/Intent;
    .end local v19           #currentAlbumName:Ljava/lang/String;
    .end local v20           #currentArtistName:Ljava/lang/String;
    :catch_0
    move-exception v3

    goto/16 :goto_0

    .line 983
    .end local v8           #albumAlbum:Ljava/lang/String;
    .end local v9           #albumArtist:Ljava/lang/String;
    .end local v25           #rawAlbumAlbum:Ljava/lang/String;
    .end local v26           #rawAlbumArtist:Ljava/lang/String;
    :pswitch_2
    if-eqz p3, :cond_0

    .line 984
    const-string v3, "data"

    move-object/from16 v0, p3

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v28

    check-cast v28, Landroid/net/Uri;

    .line 985
    .local v28, uri:Landroid/net/Uri;
    const/4 v3, -0x1

    move/from16 v0, p2

    move v1, v3

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    move-object v3, v0

    if-eqz v3, :cond_0

    .line 987
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    move-object v3, v0

    invoke-interface {v3}, Lcom/miui/player/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v16

    .line 988
    .local v16, artistName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    move-object v3, v0

    invoke-interface {v3}, Lcom/miui/player/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v15

    .line 989
    .local v15, albumName:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 992
    :cond_4
    const-string v3, "music/album"

    move-object v0, v15

    move-object/from16 v1, v16

    move-object v2, v3

    invoke-static {v0, v1, v2}, Lcom/miui/player/helper/MusicMetaManager;->getFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 994
    .local v17, albumFilePath:Ljava/lang/String;
    if-eqz v17, :cond_0

    if-eqz v28, :cond_0

    .line 995
    new-instance v10, Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    move-object v3, v0

    invoke-interface {v3}, Lcom/miui/player/IMediaPlaybackService;->getAlbumId()J

    move-result-wide v12

    const/4 v14, 0x0

    move-object/from16 v11, p0

    invoke-direct/range {v10 .. v16}, Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v10}, Lcom/miui/player/model/AlbumBrowserAdapter;->removeCacheAlbum(Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;)Z

    .line 1000
    const-string v3, "album"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->requestUpdate(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 1002
    .end local v15           #albumName:Ljava/lang/String;
    .end local v16           #artistName:Ljava/lang/String;
    .end local v17           #albumFilePath:Ljava/lang/String;
    :catch_1
    move-exception v3

    goto/16 :goto_0

    .line 1003
    :catch_2
    move-exception v3

    move-object/from16 v21, v3

    .line 1004
    .local v21, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual/range {v21 .. v21}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto/16 :goto_0

    .line 1010
    .end local v21           #e:Ljava/lang/OutOfMemoryError;
    .end local v28           #uri:Landroid/net/Uri;
    :pswitch_3
    if-eqz p3, :cond_0

    .line 1011
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v24

    .line 1012
    .local v24, lyricOldPath:Ljava/lang/String;
    const/4 v3, -0x1

    move/from16 v0, p2

    move v1, v3

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    move-object v3, v0

    if-eqz v3, :cond_0

    .line 1014
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    move-object v3, v0

    invoke-interface {v3}, Lcom/miui/player/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v16

    .line 1015
    .restart local v16       #artistName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    move-object v3, v0

    invoke-interface {v3}, Lcom/miui/player/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v27

    .line 1016
    .local v27, trackName:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1017
    :cond_5
    const-string v3, "music/lyric"

    move-object/from16 v0, v27

    move-object/from16 v1, v16

    move-object v2, v3

    invoke-static {v0, v1, v2}, Lcom/miui/player/helper/MusicMetaManager;->getFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1019
    .local v23, lyricNewPath:Ljava/lang/String;
    if-eqz v23, :cond_0

    if-eqz v24, :cond_0

    .line 1020
    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/miui/player/helper/Global;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1021
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v22

    .line 1022
    .local v22, lastPos:I
    new-instance v3, Ljava/io/File;

    const/4 v4, 0x0

    move-object/from16 v0, v24

    move v1, v4

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricDir:Ljava/io/File;

    .line 1023
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricDir:Ljava/io/File;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1024
    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricDir:Ljava/io/File;

    .line 1026
    :cond_6
    const-string v3, "lyric"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->requestUpdate(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    .line 1030
    .end local v16           #artistName:Ljava/lang/String;
    .end local v22           #lastPos:I
    .end local v23           #lyricNewPath:Ljava/lang/String;
    .end local v27           #trackName:Ljava/lang/String;
    :catch_3
    move-exception v3

    goto/16 :goto_0

    .line 955
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 665
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlaylistController:Lcom/miui/player/helper/controller/PlaylistViewController;

    invoke-virtual {v0, p1}, Lcom/miui/player/helper/controller/PlaylistViewController;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "icicle"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v2, 0x0

    const-string v3, "oneshot"

    .line 154
    invoke-super {p0, p1}, Lcom/miui/player/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 155
    const v0, 0x7f03000e

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->setContentView(I)V

    .line 156
    if-eqz p1, :cond_0

    .line 157
    const-string v0, "oneshot"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mOneShot:Z

    .line 162
    :goto_0
    const v0, 0x7f0c002e

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mMainView:Landroid/view/ViewGroup;

    .line 163
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mMainView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 164
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mMainView:Landroid/view/ViewGroup;

    const v1, 0x7f0c002f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDisplayView:Landroid/view/View;

    .line 165
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDisplayView:Landroid/view/View;

    const v1, 0x7f0c00a5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mEuqalizerFrameView:Landroid/view/View;

    .line 166
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mEuqalizerFrameView:Landroid/view/View;

    new-instance v1, Lcom/miui/player/ui/MediaPlaybackActivity$GotoEqualizer;

    invoke-direct {v1, p0, v2}, Lcom/miui/player/ui/MediaPlaybackActivity$GotoEqualizer;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;Lcom/miui/player/ui/MediaPlaybackActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mEuqalizerFrameView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 169
    new-instance v0, Lcom/miui/player/helper/controller/PlayerCommonController;

    new-instance v1, Lcom/miui/player/ui/MediaPlaybackActivity$OnRepeatClickListener;

    invoke-direct {v1, p0, v2}, Lcom/miui/player/ui/MediaPlaybackActivity$OnRepeatClickListener;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;Lcom/miui/player/ui/MediaPlaybackActivity$1;)V

    invoke-direct {v0, p0, v1}, Lcom/miui/player/helper/controller/PlayerCommonController;-><init>(Landroid/app/Activity;Lcom/miui/player/helper/controller/PlayerCommonController$RepeatClickCallback;)V

    iput-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlayerCommonController:Lcom/miui/player/helper/controller/PlayerCommonController;

    .line 170
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlayerCommonController:Lcom/miui/player/helper/controller/PlayerCommonController;

    invoke-virtual {v0}, Lcom/miui/player/helper/controller/PlayerCommonController;->refresh()V

    .line 171
    new-instance v0, Lcom/miui/player/helper/controller/TimeIndicatorController;

    new-instance v1, Lcom/miui/player/ui/MediaPlaybackActivity$OnPlayerSeekListener;

    invoke-direct {v1, p0, v2}, Lcom/miui/player/ui/MediaPlaybackActivity$OnPlayerSeekListener;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;Lcom/miui/player/ui/MediaPlaybackActivity$1;)V

    invoke-direct {v0, p0, v1}, Lcom/miui/player/helper/controller/TimeIndicatorController;-><init>(Landroid/app/Activity;Lcom/miui/player/helper/controller/TimeIndicatorController$OnProgressSeekListener;)V

    iput-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mTimeIndicatorController:Lcom/miui/player/helper/controller/TimeIndicatorController;

    .line 172
    new-instance v4, Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick;

    invoke-direct {v4, p0, v2}, Lcom/miui/player/ui/MediaPlaybackActivity$OnInternalIndexerClick;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;Lcom/miui/player/ui/MediaPlaybackActivity$1;)V

    .line 173
    .local v4, l:Landroid/view/View$OnClickListener;
    new-instance v0, Lcom/miui/player/helper/controller/AlbumViewController;

    invoke-direct {v0, p0, p0, v4}, Lcom/miui/player/helper/controller/AlbumViewController;-><init>(Landroid/app/Activity;Lcom/miui/player/helper/controller/MediaPlaybackController$AnimationStatus;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumController:Lcom/miui/player/helper/controller/AlbumViewController;

    .line 174
    new-instance v0, Lcom/miui/player/helper/controller/LyricViewController;

    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumController:Lcom/miui/player/helper/controller/AlbumViewController;

    new-instance v5, Lcom/miui/player/ui/MediaPlaybackActivity$LyricModifySaveListener;

    invoke-direct {v5, p0, v2}, Lcom/miui/player/ui/MediaPlaybackActivity$LyricModifySaveListener;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;Lcom/miui/player/ui/MediaPlaybackActivity$1;)V

    new-instance v6, Lcom/miui/player/ui/MediaPlaybackActivity$LyricModifyCancelListener;

    invoke-direct {v6, p0, v2}, Lcom/miui/player/ui/MediaPlaybackActivity$LyricModifyCancelListener;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;Lcom/miui/player/ui/MediaPlaybackActivity$1;)V

    move-object v1, p0

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/player/helper/controller/LyricViewController;-><init>(Landroid/app/Activity;Lcom/miui/player/helper/controller/MediaPlaybackController$AnimationStatus;Lcom/miui/player/helper/controller/AlbumViewController;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricController:Lcom/miui/player/helper/controller/LyricViewController;

    .line 176
    new-instance v0, Lcom/miui/player/helper/controller/PlaylistViewController;

    invoke-direct {v0, p0}, Lcom/miui/player/helper/controller/PlaylistViewController;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlaylistController:Lcom/miui/player/helper/controller/PlaylistViewController;

    .line 177
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlaylistController:Lcom/miui/player/helper/controller/PlaylistViewController;

    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/controller/PlaylistViewController;->setNonConfigurationInstance(Ljava/lang/Object;)V

    .line 178
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/miui/player/helper/controller/MediaPlaybackController;

    iput-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mControllers:[Lcom/miui/player/helper/controller/MediaPlaybackController;

    .line 179
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mControllers:[Lcom/miui/player/helper/controller/MediaPlaybackController;

    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumController:Lcom/miui/player/helper/controller/AlbumViewController;

    aput-object v1, v0, v10

    .line 180
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mControllers:[Lcom/miui/player/helper/controller/MediaPlaybackController;

    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricController:Lcom/miui/player/helper/controller/LyricViewController;

    aput-object v1, v0, v9

    .line 181
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mControllers:[Lcom/miui/player/helper/controller/MediaPlaybackController;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlaylistController:Lcom/miui/player/helper/controller/PlaylistViewController;

    aput-object v2, v0, v1

    .line 182
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->getPreferenceSelection()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->setActiveIndexer(I)V

    .line 184
    invoke-static {p0, p0}, Lcom/miui/player/drawerActivityGroup/MainActivityGroup;->registerParentServiceConnection(Landroid/app/Activity;Lcom/miui/player/drawerActivityGroup/MainActivityGroup$ServiceConnectionObserver;)V

    .line 186
    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 187
    .local v7, f:Landroid/content/IntentFilter;
    const-string v0, "com.miui.player.playstatechanged"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    const-string v0, "com.miui.player.metachanged"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 189
    const-string v0, "com.miui.player.playbackcomplete"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 190
    const-string v0, "com.miui.player.refreshprogress"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 191
    const-string v0, "com.miui.player.queuechanged"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0, v7}, Lcom/miui/player/ui/MediaPlaybackActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 194
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    .line 195
    .local v8, pm:Landroid/os/PowerManager;
    const/16 v0, 0xa

    const-string v1, "com.miui.player.ui.MediaPlaybackActivity"

    invoke-virtual {v8, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 196
    return-void

    .line 159
    .end local v4           #l:Landroid/view/View$OnClickListener;
    .end local v7           #f:Landroid/content/IntentFilter;
    .end local v8           #pm:Landroid/os/PowerManager;
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "oneshot"

    invoke-virtual {v0, v3, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mOneShot:Z

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenuForParent(Landroid/view/Menu;)Z
    .locals 13
    .parameter "menu"

    .prologue
    .line 397
    iget-object v9, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    if-nez v9, :cond_0

    .line 398
    const/4 v9, 0x0

    .line 473
    :goto_0
    return v9

    .line 400
    :cond_0
    iget-boolean v9, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mIsLyricProgressModify:Z

    if-nez v9, :cond_1

    iget-boolean v9, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mOneShot:Z

    if-nez v9, :cond_1

    invoke-static {}, Landroid/os/Environment;->isExternalStorageMounted()Z

    move-result v9

    if-nez v9, :cond_2

    .line 401
    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 404
    :cond_2
    iget v9, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    .line 405
    const/4 v9, 0x0

    const/16 v10, 0x24

    const/4 v11, 0x0

    const v12, 0x7f080033

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x108004e

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 470
    :cond_3
    :goto_1
    const/4 v9, 0x0

    const/4 v10, 0x7

    const/4 v11, 0x0

    const v12, 0x7f0800b2

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f02003b

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 471
    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    const v12, 0x7f08003d

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020036

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 473
    const/4 v9, 0x1

    goto :goto_0

    .line 408
    :cond_4
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mCurrentDownloadedId:J

    .line 409
    invoke-static {}, Lcom/miui/player/MusicUtils;->getCurrentAudioId()J

    move-result-wide v2

    .line 411
    .local v2, audioId:J
    const-wide/16 v9, 0x0

    cmp-long v9, v2, v9

    if-ltz v9, :cond_3

    .line 412
    const/4 v7, 0x0

    .line 413
    .local v7, tr:Ljava/lang/String;
    const/4 v1, 0x0

    .line 414
    .local v1, ar:Ljava/lang/String;
    const/4 v0, 0x0

    .line 416
    .local v0, al:Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v9}, Lcom/miui/player/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v7

    .line 417
    iget-object v9, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v9}, Lcom/miui/player/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v1

    .line 418
    iget-object v9, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v9}, Lcom/miui/player/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 419
    invoke-static {p0, v7, v1, v2, v3}, Lcom/miui/player/provider/PlayerProviderUtils;->getDownloadedAudioId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v9

    iput-wide v9, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mCurrentDownloadedId:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 424
    :goto_2
    iget-wide v9, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mCurrentDownloadedId:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_5

    .line 425
    const/4 v9, 0x0

    const/16 v10, 0xa

    const/4 v11, 0x0

    const v12, 0x7f080002

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020030

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 429
    :cond_5
    iget-object v9, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mEuqalizerFrameView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_d

    const/4 v9, 0x1

    move v8, v9

    .line 430
    .local v8, visible:Z
    :goto_3
    if-eqz v8, :cond_e

    const v9, 0x7f0800d8

    move v4, v9

    .line 431
    .local v4, equalizerHint:I
    :goto_4
    const/4 v9, 0x0

    const/16 v10, 0x23

    const/4 v11, 0x0

    invoke-interface {p1, v9, v10, v11, v4}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f020034

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 433
    const/4 v9, 0x0

    const/16 v10, 0xd

    const/4 v11, 0x0

    const v12, 0x7f0800bd

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v9

    const v10, 0x7f020035

    invoke-interface {v9, v10}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v5

    .line 436
    .local v5, subMeta:Landroid/view/SubMenu;
    invoke-interface {v5}, Landroid/view/SubMenu;->clear()V

    .line 437
    invoke-static {v2, v3}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v9

    iput-boolean v9, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mIsOnline:Z

    .line 438
    iget-boolean v9, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mIsOnline:Z

    if-nez v9, :cond_6

    .line 439
    const/4 v9, 0x1

    const/16 v10, 0x1d

    const/4 v11, 0x0

    const v12, 0x7f0800bb

    invoke-interface {v5, v9, v10, v11, v12}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 442
    :cond_6
    const/4 v9, 0x1

    const/16 v10, 0x1e

    const/4 v11, 0x0

    const v12, 0x7f0800c3

    invoke-interface {v5, v9, v10, v11, v12}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 443
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_8

    .line 444
    :cond_7
    const/4 v9, 0x1

    const/16 v10, 0x20

    const/4 v11, 0x0

    const v12, 0x7f0800c6

    invoke-interface {v5, v9, v10, v11, v12}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 448
    :cond_8
    iget-object v9, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricController:Lcom/miui/player/helper/controller/LyricViewController;

    invoke-virtual {v9}, Lcom/miui/player/helper/controller/LyricViewController;->existLyric()Z

    move-result v9

    if-eqz v9, :cond_9

    iget v9, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9

    .line 449
    const/4 v9, 0x1

    const/16 v10, 0x22

    const/4 v11, 0x0

    const v12, 0x7f0800c9

    invoke-interface {v5, v9, v10, v11, v12}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 451
    :cond_9
    const/4 v9, 0x1

    const/16 v10, 0x1f

    const/4 v11, 0x0

    const v12, 0x7f0800cb

    invoke-interface {v5, v9, v10, v11, v12}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 452
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 453
    :cond_a
    const/4 v9, 0x1

    const/16 v10, 0x21

    const/4 v11, 0x0

    const v12, 0x7f0800ce

    invoke-interface {v5, v9, v10, v11, v12}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    .line 455
    :cond_b
    iget-wide v9, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mCurrentDownloadedId:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_c

    .line 456
    const/4 v9, 0x0

    const/16 v10, 0x1c

    const/4 v11, 0x0

    const v12, 0x7f080022

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v9

    const v10, 0x7f02003a

    invoke-interface {v9, v10}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 460
    :cond_c
    const/4 v9, 0x0

    const/16 v10, 0x14

    const/4 v11, 0x0

    const v12, 0x7f080025

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->addSubMenu(IIII)Landroid/view/SubMenu;

    move-result-object v9

    const v10, 0x7f02002e

    invoke-interface {v9, v10}, Landroid/view/SubMenu;->setIcon(I)Landroid/view/SubMenu;

    move-result-object v6

    .line 462
    .local v6, subPlaylist:Landroid/view/SubMenu;
    invoke-static {p0, v6}, Lcom/miui/player/MusicUtils;->makePlaylistMenu(Landroid/content/Context;Landroid/view/SubMenu;)V

    .line 464
    iget-wide v9, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mCurrentDownloadedId:J

    const-wide/16 v11, 0x0

    cmp-long v9, v9, v11

    if-lez v9, :cond_3

    .line 465
    const/4 v9, 0x0

    const/16 v10, 0xb

    const/4 v11, 0x0

    const v12, 0x7f080001

    invoke-interface {p1, v9, v10, v11, v12}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 429
    .end local v4           #equalizerHint:I
    .end local v5           #subMeta:Landroid/view/SubMenu;
    .end local v6           #subPlaylist:Landroid/view/SubMenu;
    .end local v8           #visible:Z
    :cond_d
    const/4 v9, 0x0

    move v8, v9

    goto/16 :goto_3

    .line 430
    .restart local v8       #visible:Z
    :cond_e
    const v9, 0x7f0800d7

    move v4, v9

    goto/16 :goto_4

    .line 421
    .end local v8           #visible:Z
    :catch_0
    move-exception v9

    goto/16 :goto_2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mStatusListener:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v0}, Lcom/miui/player/MusicUtils;->unregisterReceiverSafe(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 303
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 305
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlaylistController:Lcom/miui/player/helper/controller/PlaylistViewController;

    iget-boolean v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAdapterSent:Z

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/controller/PlaylistViewController;->release(Z)V

    .line 306
    iget v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I

    invoke-static {p0, v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->savePreferenceSelection(Landroid/content/Context;I)V

    .line 308
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 310
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    .line 313
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 314
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 317
    :cond_1
    invoke-super {p0}, Lcom/miui/player/ui/BaseActivity;->onDestroy()V

    .line 318
    return-void
.end method

.method public onDialogResult(IZLandroid/content/Intent;)V
    .locals 43
    .parameter "requestCode"
    .parameter "confirm"
    .parameter "intent"

    .prologue
    .line 824
    sparse-switch p1, :sswitch_data_0

    .line 945
    :cond_0
    :goto_0
    return-void

    .line 826
    :sswitch_0
    if-eqz p2, :cond_0

    .line 827
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v42

    .line 828
    .local v42, uri:Landroid/net/Uri;
    if-eqz v42, :cond_0

    .line 829
    const/4 v5, 0x1

    move v0, v5

    new-array v0, v0, [J

    move-object/from16 v22, v0

    .line 830
    .local v22, list:[J
    const/4 v5, 0x0

    invoke-static {}, Lcom/miui/player/MusicUtils;->getCurrentAudioId()J

    move-result-wide v6

    aput-wide v6, v22, v5

    .line 831
    invoke-virtual/range {v42 .. v42}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    .line 832
    .local v25, playlist:I
    move/from16 v0, v25

    int-to-long v0, v0

    move-wide v5, v0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-wide v2, v5

    move v4, v7

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/player/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJZ)V

    goto :goto_0

    .line 837
    .end local v22           #list:[J
    .end local v25           #playlist:I
    .end local v42           #uri:Landroid/net/Uri;
    :sswitch_1
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 841
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->editId3(Landroid/content/Intent;)Z

    goto :goto_0

    .line 844
    :sswitch_2
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 847
    const v5, 0x7f0800c4

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->showDownloadDialog(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 851
    const-string v5, "search_track_name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v41

    .line 852
    .local v41, searchLrcTrack:Ljava/lang/String;
    const-string v5, "search_artist_name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    .line 853
    .local v40, searchLrcArtist:Ljava/lang/String;
    const-string v5, "search_album_name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39

    .line 854
    .local v39, searchLrcAlbum:Ljava/lang/String;
    const-string v5, "raw_track_name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    .line 855
    .local v31, rawLrcTrack:Ljava/lang/String;
    const-string v5, "raw_artist_name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 856
    .local v30, rawLrcArtist:Ljava/lang/String;
    const-string v5, "raw_path"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 858
    .local v32, rawPath:Ljava/lang/String;
    move-object/from16 v35, v31

    .line 859
    .local v35, saveTrack:Ljava/lang/String;
    move-object/from16 v34, v30

    .line 860
    .local v34, saveArtist:Ljava/lang/String;
    const-string v5, "modify_id3"

    const/4 v6, 0x0

    move-object/from16 v0, p3

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v23

    .line 861
    .local v23, needModifyId3:Z
    if-eqz v23, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->editId3(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 862
    move-object/from16 v35, v41

    .line 863
    move-object/from16 v34, v40

    .line 866
    :cond_1
    const/16 v24, 0x0

    .line 867
    .local v24, path:Ljava/lang/String;
    invoke-static/range {v32 .. v32}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 868
    invoke-static/range {v32 .. v32}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/miui/player/helper/Global;->translateToFileUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v21

    .line 869
    .local v21, fileUri:Landroid/net/Uri;
    if-eqz v21, :cond_2

    .line 870
    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v24

    .line 874
    .end local v21           #fileUri:Landroid/net/Uri;
    :cond_2
    new-instance v33, Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;

    move-object/from16 v0, v33

    move-object/from16 v1, v41

    move-object/from16 v2, v40

    move-object/from16 v3, v39

    move-object/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 875
    .local v33, sInfo:Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->getApplication()Landroid/app/Application;

    move-result-object v5

    new-instance v6, Lcom/miui/player/ui/MediaPlaybackActivity$LyricAsyncChooseRunnable;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, v35

    move-object/from16 v3, v34

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/player/ui/MediaPlaybackActivity$LyricAsyncChooseRunnable;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, v33

    move-object v2, v6

    invoke-static {v0, v1, v2}, Lcom/miui/player/helper/MusicMetaManager;->downloadLyricFile(Landroid/content/Context;Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;Lcom/miui/player/helper/LyricDownloader$LyricAsyncCallback;)I

    move-result v20

    .line 878
    .local v20, downloadStatus:I
    if-eqz v20, :cond_0

    .line 879
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    move-object v5, v0

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 880
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 881
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;

    .line 883
    :cond_3
    const/4 v5, 0x4

    move/from16 v0, v20

    move v1, v5

    if-ne v0, v1, :cond_4

    .line 884
    const v5, 0x7f080093

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 886
    :cond_4
    const/4 v5, 0x5

    move/from16 v0, v20

    move v1, v5

    if-ne v0, v1, :cond_0

    .line 887
    const v5, 0x7f0800c7

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 893
    .end local v20           #downloadStatus:I
    .end local v23           #needModifyId3:Z
    .end local v24           #path:Ljava/lang/String;
    .end local v30           #rawLrcArtist:Ljava/lang/String;
    .end local v31           #rawLrcTrack:Ljava/lang/String;
    .end local v32           #rawPath:Ljava/lang/String;
    .end local v33           #sInfo:Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;
    .end local v34           #saveArtist:Ljava/lang/String;
    .end local v35           #saveTrack:Ljava/lang/String;
    .end local v39           #searchLrcAlbum:Ljava/lang/String;
    .end local v40           #searchLrcArtist:Ljava/lang/String;
    .end local v41           #searchLrcTrack:Ljava/lang/String;
    :sswitch_3
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 896
    invoke-static/range {p0 .. p0}, Lcom/miui/player/helper/NetworkUtils;->isConnectivityActive(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 897
    const v5, 0x7f080093

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 902
    :cond_5
    const v5, 0x7f0800cb

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->showDownloadDialog(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 906
    const-string v5, "search_track_name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 908
    .local v38, searchAlbumTrack:Ljava/lang/String;
    const-string v5, "search_artist_name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v37

    .line 910
    .local v37, searchAlbumArtist:Ljava/lang/String;
    const-string v5, "search_album_name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    .line 913
    .local v36, searchAlbumAlbum:Ljava/lang/String;
    const-string v5, "raw_track_name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    .line 914
    .local v29, rawAlbumTrack:Ljava/lang/String;
    const-string v5, "raw_artist_name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 916
    .local v28, rawAlbumArtist:Ljava/lang/String;
    const-string v5, "raw_album_name"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 918
    .local v27, rawAlbumAlbum:Ljava/lang/String;
    new-instance v8, Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;

    move-object v0, v8

    move-object/from16 v1, v38

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    .local v8, searchInfo:Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;
    new-instance v7, Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;

    move-object v0, v7

    move-object/from16 v1, v29

    move-object/from16 v2, v27

    move-object/from16 v3, v28

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    .local v7, rawInfo:Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;
    const-string v5, "modify_id3"

    const/4 v6, 0x0

    move-object/from16 v0, p3

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v23

    .line 923
    .restart local v23       #needModifyId3:Z
    const-string v5, "track_id"

    const-wide/16 v9, -0x1

    move-object/from16 v0, p3

    move-object v1, v5

    move-wide v2, v9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 924
    .local v10, trackId:J
    const-string v5, "album_id"

    const-wide/16 v12, -0x1

    move-object/from16 v0, p3

    move-object v1, v5

    move-wide v2, v12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v12

    .line 925
    .local v12, albumId:J
    const/4 v9, 0x0

    .line 926
    .local v9, modifyId3Success:Z
    if-eqz v23, :cond_6

    .line 927
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->editId3(Landroid/content/Intent;)Z

    move-result v9

    .line 929
    :cond_6
    new-instance v5, Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v13}, Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;ZJJ)V

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Void;

    invoke-virtual {v5, v6}, Lcom/miui/player/ui/MediaPlaybackActivity$AlbumDownloadTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    .line 933
    .end local v7           #rawInfo:Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;
    .end local v8           #searchInfo:Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;
    .end local v9           #modifyId3Success:Z
    .end local v10           #trackId:J
    .end local v12           #albumId:J
    .end local v23           #needModifyId3:Z
    .end local v27           #rawAlbumAlbum:Ljava/lang/String;
    .end local v28           #rawAlbumArtist:Ljava/lang/String;
    .end local v29           #rawAlbumTrack:Ljava/lang/String;
    .end local v36           #searchAlbumAlbum:Ljava/lang/String;
    .end local v37           #searchAlbumArtist:Ljava/lang/String;
    .end local v38           #searchAlbumTrack:Ljava/lang/String;
    :sswitch_4
    if-eqz p2, :cond_0

    .line 934
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v42

    .line 935
    .restart local v42       #uri:Landroid/net/Uri;
    if-eqz v42, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 936
    invoke-virtual/range {v42 .. v42}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    .line 938
    .local v26, plid:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    move-object v5, v0

    invoke-interface {v5}, Lcom/miui/player/IMediaPlaybackService;->getQueue()[J

    move-result-object v15

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v16, v0

    const/16 v18, 0x1

    const/16 v19, 0x0

    move-object/from16 v14, p0

    invoke-static/range {v14 .. v19}, Lcom/miui/player/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 939
    :catch_0
    move-exception v5

    goto/16 :goto_0

    .line 824
    nop

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_2
        0xf -> :sswitch_3
        0x11 -> :sswitch_1
        0x16 -> :sswitch_0
        0x24 -> :sswitch_4
    .end sparse-switch
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v1, 0x0

    .line 322
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/MediaPlaybackActivity;->setIntent(Landroid/content/Intent;)V

    .line 323
    const-string v0, "oneshot"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mOneShot:Z

    .line 324
    iget-boolean v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mOneShot:Z

    if-eqz v0, :cond_0

    .line 325
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->refreshEqualizerSurface()V

    .line 326
    invoke-virtual {p0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->changeActiveIndexer(I)V

    .line 329
    :cond_0
    return-void
.end method

.method public onOptionsItemSelectedForParent(Landroid/view/MenuItem;)Z
    .locals 29
    .parameter "item"

    .prologue
    .line 486
    :try_start_0
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v24

    packed-switch v24, :pswitch_data_0

    .line 660
    :cond_0
    :goto_0
    :pswitch_0
    const/16 v24, 0x0

    :goto_1
    return v24

    .line 488
    :pswitch_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mCurrentDownloadedId:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Lcom/miui/player/MusicUtils;->setRingtone(Landroid/content/Context;J)V

    .line 489
    const/16 v24, 0x1

    goto :goto_1

    .line 493
    :pswitch_2
    const/16 v24, 0x16

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/miui/player/ui/CreatorDialog;->makePlaylistCreator(Landroid/app/Activity;Lcom/miui/player/MusicUtils$OnDialogCallback;I)Lcom/miui/player/ui/CreatorDialog;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/miui/player/ui/CreatorDialog;->show()V

    .line 494
    const/16 v24, 0x1

    goto :goto_1

    .line 498
    :pswitch_3
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [J

    move-object v14, v0

    .line 499
    .local v14, list:[J
    const/16 v24, 0x0

    invoke-static {}, Lcom/miui/player/MusicUtils;->getCurrentAudioId()J

    move-result-wide v25

    aput-wide v25, v14, v24

    .line 500
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getIntent()Landroid/content/Intent;

    move-result-object v24

    const-string v25, "playlist"

    const-wide/16 v26, 0x0

    invoke-virtual/range {v24 .. v27}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    .line 501
    .local v16, playlist:J
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move-object v1, v14

    move-wide/from16 v2, v16

    move/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Lcom/miui/player/MusicUtils;->addToPlaylist(Landroid/content/Context;[JJZ)V

    .line 502
    const/16 v24, 0x1

    goto :goto_1

    .line 506
    .end local v14           #list:[J
    .end local v16           #playlist:J
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    move-object/from16 v24, v0

    if-eqz v24, :cond_1

    .line 507
    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [J

    move-object v14, v0

    .line 508
    .restart local v14       #list:[J
    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mCurrentDownloadedId:J

    move-wide/from16 v25, v0

    aput-wide v25, v14, v24

    .line 509
    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    .line 510
    .local v10, b:Landroid/os/Bundle;
    const-string v24, "description"

    const v25, 0x7f080008

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lcom/miui/player/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lcom/miui/player/ui/MediaPlaybackActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object v0, v10

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    const-string v24, "items"

    move-object v0, v10

    move-object/from16 v1, v24

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 513
    new-instance v24, Lcom/miui/player/ui/DeleteItems;

    const/16 v25, 0xa

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object v2, v10

    move-object/from16 v3, p0

    move/from16 v4, v25

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/player/ui/DeleteItems;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/miui/player/MusicUtils$OnDialogCallback;I)V

    invoke-virtual/range {v24 .. v24}, Lcom/miui/player/ui/DeleteItems;->show()V

    .line 515
    .end local v10           #b:Landroid/os/Bundle;
    .end local v14           #list:[J
    :cond_1
    const/16 v24, 0x1

    goto/16 :goto_1

    .line 518
    :pswitch_5
    new-instance v19, Lcom/miui/player/helper/SleepModeManager;

    invoke-direct/range {v19 .. v19}, Lcom/miui/player/helper/SleepModeManager;-><init>()V

    .line 519
    .local v19, sleepModeManager:Lcom/miui/player/helper/SleepModeManager;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/SleepModeManager;->showSelectTimeDialog(Landroid/app/Activity;)V

    .line 520
    const/16 v24, 0x1

    goto/16 :goto_1

    .line 523
    .end local v19           #sleepModeManager:Lcom/miui/player/helper/SleepModeManager;
    :pswitch_6
    new-instance v18, Landroid/content/Intent;

    const-class v24, Lcom/miui/player/ui/PreferencesActivity;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 524
    .local v18, settingIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->startActivity(Landroid/content/Intent;)V

    .line 525
    const/16 v24, 0x1

    goto/16 :goto_1

    .line 528
    .end local v18           #settingIntent:Landroid/content/Intent;
    :pswitch_7
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 530
    .local v12, editID3Bundle:Landroid/os/Bundle;
    const-string v24, "search_title"

    const v25, 0x7f0800bb

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object v0, v12

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/miui/player/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v5

    .line 534
    .local v5, album:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/miui/player/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v9

    .line 535
    .local v9, artist:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/miui/player/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v20

    .line 536
    .local v20, track:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/miui/player/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 537
    .local v13, filePath:Ljava/lang/String;
    const-string v24, "raw_album_name"

    invoke-static {v5}, Lcom/miui/player/helper/MediaInfo;->getRawName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object v0, v12

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    const-string v24, "raw_artist_name"

    invoke-static {v9}, Lcom/miui/player/helper/MediaInfo;->getRawName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object v0, v12

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string v24, "raw_track_name"

    move-object v0, v12

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const-string v24, "raw_path"

    move-object v0, v12

    move-object/from16 v1, v24

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    new-instance v11, Lcom/miui/player/ui/MusicInfoEditDialog;

    const/16 v24, 0x11

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v3, p0

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/player/ui/MusicInfoEditDialog;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/miui/player/MusicUtils$OnDialogCallback;I)V

    .line 545
    .local v11, dialog:Lcom/miui/player/ui/MusicInfoEditDialog;
    const/16 v24, 0x1

    move-object v0, v11

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/MusicInfoEditDialog;->setSaveAsConfirm(Z)V

    .line 546
    const/16 v24, 0x0

    const/16 v25, 0x1

    move-object v0, v11

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/miui/player/ui/MusicInfoEditDialog;->setModifyID3CheckBoxStatus(ZZ)V

    .line 547
    invoke-virtual {v11}, Lcom/miui/player/ui/MusicInfoEditDialog;->show()V

    .line 548
    const/16 v24, 0x1

    goto/16 :goto_1

    .line 551
    .end local v5           #album:Ljava/lang/String;
    .end local v9           #artist:Ljava/lang/String;
    .end local v11           #dialog:Lcom/miui/player/ui/MusicInfoEditDialog;
    .end local v12           #editID3Bundle:Landroid/os/Bundle;
    .end local v13           #filePath:Ljava/lang/String;
    .end local v20           #track:Ljava/lang/String;
    :pswitch_8
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    .line 553
    .local v15, lrcSearchBundle:Landroid/os/Bundle;
    const-string v24, "search_title"

    const v25, 0x7f0800c3

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object v0, v15

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/miui/player/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v5

    .line 557
    .restart local v5       #album:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/miui/player/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v9

    .line 558
    .restart local v9       #artist:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/miui/player/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v20

    .line 559
    .restart local v20       #track:Ljava/lang/String;
    const-string v24, "raw_album_name"

    invoke-static {v5}, Lcom/miui/player/helper/MediaInfo;->getRawName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object v0, v15

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    const-string v24, "raw_artist_name"

    invoke-static {v9}, Lcom/miui/player/helper/MediaInfo;->getRawName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object v0, v15

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    const-string v24, "raw_track_name"

    move-object v0, v15

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mIsOnline:Z

    move/from16 v24, v0

    if-nez v24, :cond_2

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/miui/player/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 566
    .restart local v13       #filePath:Ljava/lang/String;
    const-string v24, "raw_path"

    move-object v0, v15

    move-object/from16 v1, v24

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    .end local v13           #filePath:Ljava/lang/String;
    :cond_2
    new-instance v11, Lcom/miui/player/ui/MusicInfoEditDialog;

    const/16 v24, 0xe

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v15

    move-object/from16 v3, p0

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/player/ui/MusicInfoEditDialog;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/miui/player/MusicUtils$OnDialogCallback;I)V

    .line 570
    .restart local v11       #dialog:Lcom/miui/player/ui/MusicInfoEditDialog;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mIsOnline:Z

    move/from16 v24, v0

    if-nez v24, :cond_3

    const/16 v24, 0x1

    :goto_2
    const/16 v25, 0x0

    move-object v0, v11

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/miui/player/ui/MusicInfoEditDialog;->setModifyID3CheckBoxStatus(ZZ)V

    .line 571
    const/16 v24, 0x0

    move-object v0, v11

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/MusicInfoEditDialog;->setSaveAsConfirm(Z)V

    .line 572
    invoke-virtual {v11}, Lcom/miui/player/ui/MusicInfoEditDialog;->show()V

    .line 573
    const/16 v24, 0x1

    goto/16 :goto_1

    .line 570
    :cond_3
    const/16 v24, 0x0

    goto :goto_2

    .line 577
    .end local v5           #album:Ljava/lang/String;
    .end local v9           #artist:Ljava/lang/String;
    .end local v11           #dialog:Lcom/miui/player/ui/MusicInfoEditDialog;
    .end local v15           #lrcSearchBundle:Landroid/os/Bundle;
    .end local v20           #track:Ljava/lang/String;
    :pswitch_9
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 579
    .local v8, albumSearchBundle:Landroid/os/Bundle;
    const-string v24, "search_title"

    const v25, 0x7f0800cb

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->getString(I)Ljava/lang/String;

    move-result-object v25

    move-object v0, v8

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/miui/player/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v5

    .line 583
    .restart local v5       #album:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/miui/player/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v9

    .line 584
    .restart local v9       #artist:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/miui/player/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v20

    .line 585
    .restart local v20       #track:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/miui/player/IMediaPlaybackService;->getAudioId()J

    move-result-wide v21

    .line 586
    .local v21, trackId:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/miui/player/IMediaPlaybackService;->getAlbumId()J

    move-result-wide v6

    .line 588
    .local v6, albumId:J
    const-string v24, "raw_album_name"

    invoke-static {v5}, Lcom/miui/player/helper/MediaInfo;->getRawName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object v0, v8

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    const-string v24, "raw_artist_name"

    invoke-static {v9}, Lcom/miui/player/helper/MediaInfo;->getRawName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    move-object v0, v8

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const-string v24, "raw_track_name"

    move-object v0, v8

    move-object/from16 v1, v24

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mIsOnline:Z

    move/from16 v24, v0

    if-nez v24, :cond_4

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    move-object/from16 v24, v0

    invoke-interface/range {v24 .. v24}, Lcom/miui/player/IMediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v13

    .line 595
    .restart local v13       #filePath:Ljava/lang/String;
    const-string v24, "raw_path"

    move-object v0, v8

    move-object/from16 v1, v24

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    .end local v13           #filePath:Ljava/lang/String;
    :cond_4
    const-string v24, "track_id"

    move-object v0, v8

    move-object/from16 v1, v24

    move-wide/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 598
    const-string v24, "album_id"

    move-object v0, v8

    move-object/from16 v1, v24

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 600
    new-instance v11, Lcom/miui/player/ui/MusicInfoEditDialog;

    const/16 v24, 0xf

    move-object v0, v11

    move-object/from16 v1, p0

    move-object v2, v8

    move-object/from16 v3, p0

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/player/ui/MusicInfoEditDialog;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/miui/player/MusicUtils$OnDialogCallback;I)V

    .line 601
    .restart local v11       #dialog:Lcom/miui/player/ui/MusicInfoEditDialog;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mIsOnline:Z

    move/from16 v24, v0

    if-nez v24, :cond_5

    const/16 v24, 0x1

    :goto_3
    const/16 v25, 0x0

    move-object v0, v11

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/miui/player/ui/MusicInfoEditDialog;->setModifyID3CheckBoxStatus(ZZ)V

    .line 602
    const/16 v24, 0x0

    move-object v0, v11

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/miui/player/ui/MusicInfoEditDialog;->setSaveAsConfirm(Z)V

    .line 603
    invoke-virtual {v11}, Lcom/miui/player/ui/MusicInfoEditDialog;->show()V

    .line 604
    const/16 v24, 0x1

    goto/16 :goto_1

    .line 601
    :cond_5
    const/16 v24, 0x0

    goto :goto_3

    .line 607
    .end local v5           #album:Ljava/lang/String;
    .end local v6           #albumId:J
    .end local v8           #albumSearchBundle:Landroid/os/Bundle;
    .end local v9           #artist:Ljava/lang/String;
    .end local v11           #dialog:Lcom/miui/player/ui/MusicInfoEditDialog;
    .end local v20           #track:Ljava/lang/String;
    .end local v21           #trackId:J
    :pswitch_a
    invoke-direct/range {p0 .. p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->doPickAlbumFromGallery()V

    .line 608
    const/16 v24, 0x1

    goto/16 :goto_1

    .line 610
    :pswitch_b
    invoke-direct/range {p0 .. p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->doPickLyricFromFileExplorer()V

    goto/16 :goto_0

    .line 658
    :catch_0
    move-exception v24

    goto/16 :goto_0

    .line 613
    :pswitch_c
    invoke-direct/range {p0 .. p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->enterLyricProgressModifyMode()V

    goto/16 :goto_0

    .line 616
    :pswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mEuqalizerFrameView:Landroid/view/View;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getVisibility()I

    move-result v24

    if-nez v24, :cond_6

    const/16 v24, 0x1

    move/from16 v23, v24

    .line 617
    .local v23, visible:Z
    :goto_4
    if-eqz v23, :cond_7

    .line 618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mEuqalizerFrameView:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x8

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 619
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/miui/player/ui/EqualizerActivity;->setEqualizerEnabled(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 616
    .end local v23           #visible:Z
    :cond_6
    const/16 v24, 0x0

    move/from16 v23, v24

    goto :goto_4

    .line 621
    .restart local v23       #visible:Z
    :cond_7
    sget-boolean v24, Lcom/miui/player/helper/Global;->IS_LPA_DECODE:Z

    if-nez v24, :cond_8

    .line 622
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mEuqalizerFrameView:Landroid/view/View;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Landroid/view/View;->setVisibility(I)V

    .line 623
    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-static {v0, v1}, Lcom/miui/player/ui/EqualizerActivity;->setEqualizerEnabled(Landroid/content/Context;Z)V

    .line 624
    invoke-direct/range {p0 .. p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->refreshEqualizerSurface()V

    goto/16 :goto_0

    .line 626
    :cond_8
    new-instance v24, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget-object v25, Landroid/app/AlertDialog$Indicator;->Warning:Landroid/app/AlertDialog$Indicator;

    invoke-virtual/range {v24 .. v25}, Landroid/app/AlertDialog$Builder;->setIndicator(Landroid/app/AlertDialog$Indicator;)Landroid/app/AlertDialog$Builder;

    move-result-object v24

    const/16 v25, 0x1

    invoke-virtual/range {v24 .. v25}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v24

    const/high16 v25, 0x104

    const/16 v26, 0x0

    invoke-virtual/range {v24 .. v26}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v24

    const v25, 0x104000a

    new-instance v26, Lcom/miui/player/ui/MediaPlaybackActivity$1;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity$1;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    invoke-virtual/range {v24 .. v26}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v24

    const v25, 0x7f0800e4

    invoke-virtual/range {v24 .. v25}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 650
    .end local v23           #visible:Z
    :pswitch_e
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mCurrentDownloadedId:J

    move-wide/from16 v24, v0

    const-wide/16 v26, 0x0

    cmp-long v24, v24, v26

    if-lez v24, :cond_0

    .line 651
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/player/ui/MediaPlaybackActivity;->mCurrentDownloadedId:J

    move-wide/from16 v24, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-static {v0, v1, v2}, Lcom/miui/player/MusicUtils;->sendByChooser(Landroid/content/Context;J)V

    goto/16 :goto_0

    .line 655
    :pswitch_f
    const/16 v24, 0x24

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/miui/player/ui/CreatorDialog;->makePlaylistCreator(Landroid/app/Activity;Lcom/miui/player/MusicUtils$OnDialogCallback;I)Lcom/miui/player/ui/CreatorDialog;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/miui/player/ui/CreatorDialog;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 656
    const/16 v24, 0x1

    goto/16 :goto_1

    .line 486
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_f
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlaylistController:Lcom/miui/player/helper/controller/PlaylistViewController;

    invoke-virtual {v0}, Lcom/miui/player/helper/controller/PlaylistViewController;->reset()Z

    .line 257
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumController:Lcom/miui/player/helper/controller/AlbumViewController;

    invoke-virtual {v0}, Lcom/miui/player/helper/controller/AlbumViewController;->unregister()V

    .line 258
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mFavoriteChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p0, v0}, Lcom/miui/player/MusicUtils;->unregisterReceiverSafe(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 259
    invoke-super {p0}, Lcom/miui/player/ui/BaseActivity;->onPause()V

    .line 260
    return-void
.end method

.method public onPrepareOptionsMenuForParent(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 478
    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 479
    .local v0, km:Landroid/app/KeyguardManager;
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    invoke-interface {p1, v2, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 480
    return v2

    .line 479
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 220
    invoke-super {p0}, Lcom/miui/player/ui/BaseActivity;->onResume()V

    .line 221
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAlbumController:Lcom/miui/player/helper/controller/AlbumViewController;

    invoke-virtual {v1}, Lcom/miui/player/helper/controller/AlbumViewController;->register()V

    .line 225
    iget-boolean v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mResumeFromDrawer:Z

    if-eqz v1, :cond_2

    .line 226
    iput-boolean v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mResumeFromDrawer:Z

    .line 227
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricDir:Ljava/io/File;

    .line 228
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPreparedHandler:Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;

    iput-boolean v2, v1, Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;->mEnabled:Z

    .line 232
    :goto_0
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlaylistController:Lcom/miui/player/helper/controller/PlaylistViewController;

    invoke-virtual {v1, v2}, Lcom/miui/player/helper/controller/PlaylistViewController;->setUserClick(Z)V

    .line 233
    iget-boolean v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mIsLyricProgressModify:Z

    if-eqz v1, :cond_0

    .line 234
    invoke-direct {p0, v3}, Lcom/miui/player/ui/MediaPlaybackActivity;->leaveLyricProgressModifyMode(Z)V

    .line 237
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.miui.music.FAVORITE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 238
    .local v0, f:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mFavoriteChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 239
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 243
    const-string v1, "com.miui.player.ui.MediaPlaybackActivity"

    const-string v2, "still has window focus, start refresh manually"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const-wide/16 v1, 0x1f4

    invoke-direct {p0, v1, v2}, Lcom/miui/player/ui/MediaPlaybackActivity;->queueNextRefresh(J)V

    .line 246
    :cond_1
    return-void

    .line 230
    .end local v0           #f:Landroid/content/IntentFilter;
    :cond_2
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPreparedHandler:Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;

    iput-boolean v3, v1, Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;->mEnabled:Z

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 333
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlaylistController:Lcom/miui/player/helper/controller/PlaylistViewController;

    invoke-virtual {v1}, Lcom/miui/player/helper/controller/PlaylistViewController;->getNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 334
    .local v0, a:Ljava/lang/Object;
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mAdapterSent:Z

    .line 335
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 340
    const-string v0, "oneshot"

    iget-boolean v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mOneShot:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 341
    invoke-super {p0, p1}, Lcom/miui/player/ui/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 342
    return-void
.end method

.method public onScanReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1867
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1868
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1870
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 1871
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 1872
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlaylistController:Lcom/miui/player/helper/controller/PlaylistViewController;

    invoke-virtual {v2}, Lcom/miui/player/helper/controller/PlaylistViewController;->requery()V

    .line 1873
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlaylistController:Lcom/miui/player/helper/controller/PlaylistViewController;

    invoke-virtual {v2}, Lcom/miui/player/helper/controller/PlaylistViewController;->updateViews()V

    .line 1876
    .end local v1           #uri:Landroid/net/Uri;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/miui/player/ui/BaseActivity;->onScanReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1877
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 264
    invoke-super {p0}, Lcom/miui/player/ui/BaseActivity;->onStart()V

    .line 265
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->refreshEqualizerSurface()V

    .line 266
    return-void
.end method

.method public onStop()V
    .locals 6

    .prologue
    .line 270
    iget-object v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mOneShot:Z

    if-eqz v5, :cond_3

    .line 272
    :try_start_0
    iget-object v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/miui/player/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v4

    .line 273
    .local v4, tr:Ljava/lang/String;
    iget-object v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/miui/player/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, al:Ljava/lang/String;
    iget-object v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/miui/player/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    .line 275
    .local v2, ar:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 276
    const-string v5, "music/lyric"

    invoke-static {v4, v2, v5}, Lcom/miui/player/helper/MusicMetaManager;->getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 277
    .local v3, lrc:Ljava/io/File;
    if-eqz v3, :cond_0

    .line 278
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 281
    .end local v3           #lrc:Ljava/io/File;
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 282
    const-string v5, "music/album"

    invoke-static {v4, v0, v5}, Lcom/miui/player/helper/MusicMetaManager;->getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 283
    .local v1, album:Ljava/io/File;
    if-eqz v1, :cond_1

    .line 284
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 288
    .end local v1           #album:Ljava/io/File;
    :cond_1
    iget-boolean v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDestroyFromDrawer:Z

    if-nez v5, :cond_2

    .line 289
    iget-object v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;

    invoke-interface {v5}, Lcom/miui/player/IMediaPlaybackService;->stop()V

    .line 290
    invoke-static {p0}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->finishParent(Landroid/app/Activity;)V

    .line 292
    :cond_2
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDestroyFromDrawer:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    .end local v0           #al:Ljava/lang/String;
    .end local v2           #ar:Ljava/lang/String;
    .end local v4           #tr:Ljava/lang/String;
    :cond_3
    :goto_0
    invoke-super {p0}, Lcom/miui/player/ui/BaseActivity;->onStop()V

    .line 298
    return-void

    .line 293
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public onVisibleChanged(Z)V
    .locals 0
    .parameter "add"

    .prologue
    .line 368
    invoke-direct {p0, p1}, Lcom/miui/player/ui/MediaPlaybackActivity;->updateByVisible(Z)V

    .line 369
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 250
    invoke-super {p0, p1}, Lcom/miui/player/ui/BaseActivity;->onWindowFocusChanged(Z)V

    .line 251
    invoke-direct {p0, p1}, Lcom/miui/player/ui/MediaPlaybackActivity;->updateByVisible(Z)V

    .line 252
    return-void
.end method

.method public playNew(Landroid/content/Intent;)V
    .locals 0
    .parameter "newIntent"

    .prologue
    .line 345
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/MediaPlaybackActivity;->setIntent(Landroid/content/Intent;)V

    .line 346
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->startPlayback()V

    .line 347
    return-void
.end method

.method public prepareToClose()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 357
    iget-boolean v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mIsLyricProgressModify:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlaylistController:Lcom/miui/player/helper/controller/PlaylistViewController;

    invoke-virtual {v1}, Lcom/miui/player/helper/controller/PlaylistViewController;->isBatchSelectMode()Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v2

    .line 358
    .local v0, closable:Z
    :goto_0
    iget-boolean v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mIsLyricProgressModify:Z

    if-eqz v1, :cond_0

    .line 359
    invoke-direct {p0, v2}, Lcom/miui/player/ui/MediaPlaybackActivity;->leaveLyricProgressModifyMode(Z)V

    .line 362
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlaylistController:Lcom/miui/player/helper/controller/PlaylistViewController;

    invoke-virtual {v1}, Lcom/miui/player/helper/controller/PlaylistViewController;->reset()Z

    .line 363
    return v0

    .line 357
    .end local v0           #closable:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public refreshAfterRecovery()V
    .locals 1

    .prologue
    .line 1859
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->updateTrackInfo(I)V

    .line 1860
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlaylistController:Lcom/miui/player/helper/controller/PlaylistViewController;

    invoke-virtual {v0}, Lcom/miui/player/helper/controller/PlaylistViewController;->requery()V

    .line 1861
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mPlaylistController:Lcom/miui/player/helper/controller/PlaylistViewController;

    invoke-virtual {v0}, Lcom/miui/player/helper/controller/PlaylistViewController;->updateViews()V

    .line 1862
    invoke-super {p0}, Lcom/miui/player/ui/BaseActivity;->refreshAfterRecovery()V

    .line 1863
    return-void
.end method

.method public setActiveIndexer(I)V
    .locals 4
    .parameter "indexer"

    .prologue
    .line 1674
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mControllers:[Lcom/miui/player/helper/controller/MediaPlaybackController;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/miui/player/helper/controller/MediaPlaybackController;->active()V

    .line 1675
    iput p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I

    .line 1676
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/player/ui/MediaPlaybackActivity$7;

    invoke-direct {v1, p0}, Lcom/miui/player/ui/MediaPlaybackActivity$7;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1685
    return-void
.end method

.method public setAnimationPlaying(Z)V
    .locals 2
    .parameter "isAnimationPlaying"

    .prologue
    .line 1725
    iput-boolean p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mIsAnimationPlaying:Z

    .line 1726
    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1727
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->refreshNow()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->queueNextRefresh(J)V

    .line 1729
    :cond_0
    return-void
.end method

.method public setSliding(ZZ)V
    .locals 4
    .parameter "isSliding"
    .parameter "isClose"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1413
    if-eqz p1, :cond_0

    .line 1414
    iput-boolean v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mStartRefresh:Z

    .line 1415
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mMainView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 1416
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1417
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->refreshNow()J

    .line 1428
    :goto_0
    return-void

    .line 1419
    :cond_0
    if-eqz p2, :cond_1

    .line 1420
    iput-boolean v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mStartRefresh:Z

    .line 1421
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mMainView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 1422
    invoke-direct {p0}, Lcom/miui/player/ui/MediaPlaybackActivity;->refreshNow()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->queueNextRefresh(J)V

    goto :goto_0

    .line 1424
    :cond_1
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/player/ui/MediaPlaybackActivity$RunnableAfterOpen;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/player/ui/MediaPlaybackActivity$RunnableAfterOpen;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;Lcom/miui/player/ui/MediaPlaybackActivity$1;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public toggleFromParent()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 351
    iput-boolean v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mResumeFromDrawer:Z

    .line 352
    iput-boolean v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity;->mDestroyFromDrawer:Z

    .line 353
    return-void
.end method
