.class public Lcom/miui/player/MediaPlaybackService;
.super Landroid/app/Service;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/MediaPlaybackService$ServiceStub;,
        Lcom/miui/player/MediaPlaybackService$LockScreenListener;,
        Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;,
        Lcom/miui/player/MediaPlaybackService$ClearNextBuffered;,
        Lcom/miui/player/MediaPlaybackService$Shuffler;,
        Lcom/miui/player/MediaPlaybackService$PrepareInfo;,
        Lcom/miui/player/MediaPlaybackService$AlbumInfo;,
        Lcom/miui/player/MediaPlaybackService$LyricOpenRunnable;,
        Lcom/miui/player/MediaPlaybackService$DownloadAlbumThread;
    }
.end annotation


# static fields
.field private static final ACTION_LOCKSCREEN_REQUEST:Ljava/lang/String; = "lockscreen.action.SONG_METADATA_REQUEST"

.field private static final ACTION_LOCKSRECCN_UPDATE:Ljava/lang/String; = "lockscreen.action.SONG_METADATA_UPDATED"

.field private static final ALBUM_ID:Ljava/lang/String; = "album_id"

.field private static final ALBUM_NAME:Ljava/lang/String; = "album"

.field private static final ARTIST_ID:Ljava/lang/String; = "artist_id"

.field private static final ARTIST_NAME:Ljava/lang/String; = "artist"

.field public static final BROADCAST_PREVFIX:Ljava/lang/String; = "com.miui.player"

.field public static final CMDALBUM:Ljava/lang/String; = "album"

.field public static final CMDLYRIC:Ljava/lang/String; = "lyric"

.field public static final CMDNAME:Ljava/lang/String; = "command"

.field public static final CMDNEXT:Ljava/lang/String; = "next"

.field public static final CMDPAUSE:Ljava/lang/String; = "pause"

.field public static final CMDPREVIOUS:Ljava/lang/String; = "previous"

.field public static final CMDREMOVE:Ljava/lang/String; = "remove"

.field public static final CMDSTOP:Ljava/lang/String; = "stop"

.field public static final CMDTOGGLEPAUSE:Ljava/lang/String; = "togglepause"

.field public static final CMDTRACK:Ljava/lang/String; = "track"

.field public static final CMDUNPAUSE:Ljava/lang/String; = "unpause"

.field public static final DATA_ID:Ljava/lang/String; = "id"

.field private static final FOCUSCHANGE:I = 0x4

.field private static final GO_BACKGROUND:I = 0x0

.field private static final IDCOLIDX:I = 0x0

.field private static final IDLE_DELAY:I = 0xea60

.field public static final INIT_GADGET:Ljava/lang/String; = "com.miui.player.init_gadget"

.field private static final KILL_PROCESS:I = 0x1

.field private static final KILL_PROCESS_DELAY:I = 0x1388

.field public static final LAST:I = 0x3

.field private static final LOGTAG:Ljava/lang/String; = "MediaPlaybackService"

.field public static final LYRIC_FAIL:I = 0x2

.field public static final LYRIC_IDLE:I = -0x1

.field public static final LYRIC_INVALID:I = -0x2

.field public static final LYRIC_NETWORK_ERROR:I = 0x4

.field public static final LYRIC_NO_NEED_DISPLAY:I = 0x6

.field public static final LYRIC_NO_NEED_SEARCH:I = 0x3

.field public static final LYRIC_OTHTER_NETWORK_OFF:I = 0x5

.field public static final LYRIC_SEARCHING:I = 0x0

.field public static final LYRIC_SUCCESS:I = 0x1

.field public static final META_CHANGED:Ljava/lang/String; = "com.miui.player.metachanged"

.field public static final META_CHANGED_ALBUM:Ljava/lang/String; = "meta_changed_album"

.field public static final META_CHANGED_BUFFERED_OVER:Ljava/lang/String; = "meta_changed_buffer"

.field public static final META_CHANGED_LYRIC:Ljava/lang/String; = "meta_changed_lyric"

.field public static final META_CHANGED_TRACK:Ljava/lang/String; = "meta_changed_track"

.field private static final MIN_SONG_SIZE:I = 0x100000

.field public static final MODE_REPEAT_ALL:I = 0x1

.field public static final MODE_REPEAT_CURRENT:I = 0x2

.field public static final MODE_REPEAT_NONE:I = 0x0

.field public static final MODE_SHUFFLE:I = 0x1

.field public static final MODE_SHUFFLE_NONE:I = 0x0

.field private static final MSG_DOWNLOAD_ALBUM:I = 0x1

.field private static final MSG_DOWNLOAD_LYRIC:I = 0x2

.field public static final NEXT:I = 0x2

.field public static final NEXT_ACTION:Ljava/lang/String; = "com.miui.player.musicservicecommand.next"

.field public static final NOW:I = 0x1

.field private static final ONLINE_ALBUM_ID:J = 0x7fffffffL

.field private static final ONLINE_ARTIST_ID:J = 0x7fffffffL

.field public static final PAUSE_ACTION:Ljava/lang/String; = "com.miui.player.musicservicecommand.pause"

.field public static final PLAYBACKSERVICE_STATUS:I = 0x1

.field public static final PLAYBACK_COMPLETE:Ljava/lang/String; = "com.miui.player.playbackcomplete"

.field public static final PLAYSTATE_CHANGED:Ljava/lang/String; = "com.miui.player.playstatechanged"

.field public static final PREVIOUS_ACTION:Ljava/lang/String; = "com.miui.player.musicservicecommand.previous"

.field public static final QUEUE_CHANGED:Ljava/lang/String; = "com.miui.player.queuechanged"

.field public static final QUIT_ACTION:Ljava/lang/String; = "com.miui.player.musicservicecommand.quit"

.field public static final REFRESH_PROGRESS:Ljava/lang/String; = "com.miui.player.refreshprogress"

.field private static final RELEASE_WAKELOCK:I = 0x2

.field private static final RELEASE_WAKELOCK_DELAY:I = 0x1388

.field public static final REQUEST_PREGRESS:Ljava/lang/String; = "com.miui.player.requestprogress"

.field private static final SERVER_DIED:I = 0x3

.field public static final SERVICECMD:Ljava/lang/String; = "com.miui.player.musicservicecommand"

.field private static final STOP_ONE_SHOT_DELAY:I = 0x1388

.field private static final TEMP_ALBUM_NAME:Ljava/lang/String; = "ablum.jpg"

.field public static final TOGGLEPAUSE_ACTION:Ljava/lang/String; = "com.miui.player.musicservicecommand.togglepause"

.field public static final TOGGLE_FAVORITE:Ljava/lang/String; = "com.miui.player.togglefavorite"

.field private static final TRACK_ENDED:I = 0x1

.field public static final UPDATE_META_ACTION:Ljava/lang/String; = "com.miui.player.musicservicecommand.update_meta"

.field public static final UPDATE_SHAKE_PREF_ACTION:Ljava/lang/String; = "com.miui.player.musicservicecommand.shake_pref"


# instance fields
.field completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private final mBinder:Landroid/os/IBinder;

.field private mCardId:I

.field private final mConnReceiver:Landroid/content/BroadcastReceiver;

.field private mCursor:Landroid/database/Cursor;

.field private final mDelayedStopHandler:Landroid/os/Handler;

.field private mDownloadAlbumThread:Lcom/miui/player/MediaPlaybackService$DownloadAlbumThread;

.field private mFileToPlay:Ljava/lang/String;

.field private final mId3ChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsSupposedToBePlaying:Z

.field mLocalCursorCols:[Ljava/lang/String;

.field private final mLockScreenListener:Lcom/miui/player/MediaPlaybackService$LockScreenListener;

.field private mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

.field private mLyricStatus:I

.field private mMediaMountedCount:I

.field private final mMediaplayerHandler:Landroid/os/Handler;

.field private final mMetaDownloadHandler:Landroid/os/Handler;

.field private mOneShot:Z

.field mOnlineCursorCols:[Ljava/lang/String;

.field private mOpenFailedCounter:I

.field private mPlayList:[J

.field private mPlayListLen:I

.field private mPlayPos:I

.field private mPlayer:Lcom/miui/player/helper/AsyncMusicPlayer;

.field private mPlayerResponser:Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private final mQuitReceiver:Landroid/content/BroadcastReceiver;

.field private mRepeatMode:I

.field private mResumeAfterAudioFocusGain:Z

.field private mServiceInUse:Z

.field private mServiceStartId:I

.field private mShakeListener:Lcom/miui/player/helper/ShakeListener;

.field private mShuffleMode:I

.field private final mShuffleTracer:Lcom/miui/player/helper/ShuffleTracer;

.field private final mShuffler:Lcom/miui/player/MediaPlaybackService$Shuffler;

.field private mSleepTriggerTime:J

.field private mToast:Landroid/widget/Toast;

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 100
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 241
    iput v3, p0, Lcom/miui/player/MediaPlaybackService;->mRepeatMode:I

    .line 243
    iput v3, p0, Lcom/miui/player/MediaPlaybackService;->mShuffleMode:I

    .line 245
    iput v3, p0, Lcom/miui/player/MediaPlaybackService;->mMediaMountedCount:I

    .line 249
    iput-object v4, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    .line 251
    iput v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    .line 255
    iput v5, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    .line 259
    new-instance v0, Lcom/miui/player/helper/ShuffleTracer;

    new-instance v1, Lcom/miui/player/MediaPlaybackService$ClearNextBuffered;

    invoke-direct {v1, p0, v4}, Lcom/miui/player/MediaPlaybackService$ClearNextBuffered;-><init>(Lcom/miui/player/MediaPlaybackService;Lcom/miui/player/MediaPlaybackService$1;)V

    invoke-direct {v0, v1}, Lcom/miui/player/helper/ShuffleTracer;-><init>(Lcom/miui/player/helper/ShuffleTracer$OnTraceableShufferExpand;)V

    iput-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mShuffleTracer:Lcom/miui/player/helper/ShuffleTracer;

    .line 261
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/player/MediaPlaybackService;->mSleepTriggerTime:J

    .line 263
    iput v3, p0, Lcom/miui/player/MediaPlaybackService;->mOpenFailedCounter:I

    .line 269
    iput v5, p0, Lcom/miui/player/MediaPlaybackService;->mLyricStatus:I

    .line 277
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "audio._id AS _id"

    aput-object v1, v0, v3

    const-string v1, "artist"

    aput-object v1, v0, v6

    const-string v1, "album"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "album_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "artist_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mLocalCursorCols:[Ljava/lang/String;

    .line 283
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "artist"

    aput-object v1, v0, v6

    const-string v1, "album"

    aput-object v1, v0, v7

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "online_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mOnlineCursorCols:[Ljava/lang/String;

    .line 300
    iput-object v4, p0, Lcom/miui/player/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 302
    iput v5, p0, Lcom/miui/player/MediaPlaybackService;->mServiceStartId:I

    .line 304
    iput-boolean v3, p0, Lcom/miui/player/MediaPlaybackService;->mServiceInUse:Z

    .line 306
    iput-boolean v3, p0, Lcom/miui/player/MediaPlaybackService;->mResumeAfterAudioFocusGain:Z

    .line 308
    iput-boolean v3, p0, Lcom/miui/player/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 324
    new-instance v0, Lcom/miui/player/MediaPlaybackService$1;

    invoke-direct {v0, p0}, Lcom/miui/player/MediaPlaybackService$1;-><init>(Lcom/miui/player/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    .line 424
    new-instance v0, Lcom/miui/player/MediaPlaybackService$2;

    invoke-direct {v0, p0}, Lcom/miui/player/MediaPlaybackService$2;-><init>(Lcom/miui/player/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mMetaDownloadHandler:Landroid/os/Handler;

    .line 486
    new-instance v0, Lcom/miui/player/MediaPlaybackService$3;

    invoke-direct {v0, p0}, Lcom/miui/player/MediaPlaybackService$3;-><init>(Lcom/miui/player/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 532
    new-instance v0, Lcom/miui/player/MediaPlaybackService$4;

    invoke-direct {v0, p0}, Lcom/miui/player/MediaPlaybackService$4;-><init>(Lcom/miui/player/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mId3ChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 569
    new-instance v0, Lcom/miui/player/MediaPlaybackService$5;

    invoke-direct {v0, p0}, Lcom/miui/player/MediaPlaybackService$5;-><init>(Lcom/miui/player/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mQuitReceiver:Landroid/content/BroadcastReceiver;

    .line 929
    new-instance v0, Lcom/miui/player/MediaPlaybackService$6;

    invoke-direct {v0, p0}, Lcom/miui/player/MediaPlaybackService$6;-><init>(Lcom/miui/player/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    .line 1872
    new-instance v0, Lcom/miui/player/MediaPlaybackService$Shuffler;

    invoke-direct {v0, v4}, Lcom/miui/player/MediaPlaybackService$Shuffler;-><init>(Lcom/miui/player/MediaPlaybackService$1;)V

    iput-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mShuffler:Lcom/miui/player/MediaPlaybackService$Shuffler;

    .line 2323
    new-instance v0, Lcom/miui/player/MediaPlaybackService$8;

    invoke-direct {v0, p0}, Lcom/miui/player/MediaPlaybackService$8;-><init>(Lcom/miui/player/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/miui/player/MediaPlaybackService;->completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 2335
    iput-object v4, p0, Lcom/miui/player/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    .line 2506
    new-instance v0, Lcom/miui/player/MediaPlaybackService$LockScreenListener;

    invoke-direct {v0, p0, v4}, Lcom/miui/player/MediaPlaybackService$LockScreenListener;-><init>(Lcom/miui/player/MediaPlaybackService;Lcom/miui/player/MediaPlaybackService$1;)V

    iput-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mLockScreenListener:Lcom/miui/player/MediaPlaybackService$LockScreenListener;

    .line 2621
    new-instance v0, Lcom/miui/player/MediaPlaybackService$9;

    invoke-direct {v0, p0}, Lcom/miui/player/MediaPlaybackService$9;-><init>(Lcom/miui/player/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    .line 2810
    new-instance v0, Lcom/miui/player/MediaPlaybackService$10;

    invoke-direct {v0, p0}, Lcom/miui/player/MediaPlaybackService$10;-><init>(Lcom/miui/player/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 2993
    new-instance v0, Lcom/miui/player/MediaPlaybackService$ServiceStub;

    invoke-direct {v0, p0}, Lcom/miui/player/MediaPlaybackService$ServiceStub;-><init>(Lcom/miui/player/MediaPlaybackService;)V

    iput-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$100(Lcom/miui/player/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/miui/player/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/miui/player/MediaPlaybackService;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/miui/player/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/miui/player/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/miui/player/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/player/MediaPlaybackService;)Lcom/miui/player/helper/ShakeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mShakeListener:Lcom/miui/player/helper/ShakeListener;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/player/MediaPlaybackService;)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/player/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/miui/player/MediaPlaybackService;->mLyricStatus:I

    return v0
.end method

.method static synthetic access$1302(Lcom/miui/player/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput p1, p0, Lcom/miui/player/MediaPlaybackService;->mLyricStatus:I

    return p1
.end method

.method static synthetic access$1400(Lcom/miui/player/MediaPlaybackService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/miui/player/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/player/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/miui/player/MediaPlaybackService;->updateNotificationBar()V

    return-void
.end method

.method static synthetic access$1600(Lcom/miui/player/MediaPlaybackService;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/miui/player/MediaPlaybackService;->mSleepTriggerTime:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcom/miui/player/MediaPlaybackService;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-wide p1, p0, Lcom/miui/player/MediaPlaybackService;->mSleepTriggerTime:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/miui/player/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/miui/player/MediaPlaybackService;->mServiceInUse:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/miui/player/MediaPlaybackService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/player/MediaPlaybackService;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/miui/player/MediaPlaybackService;->stop(ZZ)V

    return-void
.end method

.method static synthetic access$2000(Lcom/miui/player/MediaPlaybackService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/miui/player/MediaPlaybackService;->saveQueue(Z)V

    return-void
.end method

.method static synthetic access$2100(Lcom/miui/player/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/miui/player/MediaPlaybackService;->mServiceStartId:I

    return v0
.end method

.method static synthetic access$2200(Lcom/miui/player/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/miui/player/MediaPlaybackService;->mCardId:I

    return v0
.end method

.method static synthetic access$2202(Lcom/miui/player/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput p1, p0, Lcom/miui/player/MediaPlaybackService;->mCardId:I

    return p1
.end method

.method static synthetic access$2300(Lcom/miui/player/MediaPlaybackService;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2408(Lcom/miui/player/MediaPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/miui/player/MediaPlaybackService;->mMediaMountedCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/miui/player/MediaPlaybackService;->mMediaMountedCount:I

    return v0
.end method

.method static synthetic access$2500(Lcom/miui/player/MediaPlaybackService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/miui/player/MediaPlaybackService;->reloadQueue()V

    return-void
.end method

.method static synthetic access$2900(Lcom/miui/player/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/miui/player/MediaPlaybackService;->mShuffleMode:I

    return v0
.end method

.method static synthetic access$300(Lcom/miui/player/MediaPlaybackService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/miui/player/MediaPlaybackService;->openCurrent(Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/miui/player/MediaPlaybackService;)Lcom/miui/player/helper/AsyncMusicPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/helper/AsyncMusicPlayer;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/miui/player/MediaPlaybackService;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/miui/player/MediaPlaybackService;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/miui/player/MediaPlaybackService;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/miui/player/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/miui/player/MediaPlaybackService;->mOpenFailedCounter:I

    return v0
.end method

.method static synthetic access$3202(Lcom/miui/player/MediaPlaybackService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput p1, p0, Lcom/miui/player/MediaPlaybackService;->mOpenFailedCounter:I

    return p1
.end method

.method static synthetic access$3208(Lcom/miui/player/MediaPlaybackService;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/miui/player/MediaPlaybackService;->mOpenFailedCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/miui/player/MediaPlaybackService;->mOpenFailedCounter:I

    return v0
.end method

.method static synthetic access$3300(Lcom/miui/player/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    return v0
.end method

.method static synthetic access$3400(Lcom/miui/player/MediaPlaybackService;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/miui/player/MediaPlaybackService;Ljava/lang/String;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2}, Lcom/miui/player/MediaPlaybackService;->notifyScreenManager(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$3900(Lcom/miui/player/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/miui/player/MediaPlaybackService;->copyAlbum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/player/MediaPlaybackService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget v0, p0, Lcom/miui/player/MediaPlaybackService;->mRepeatMode:I

    return v0
.end method

.method static synthetic access$4000(Lcom/miui/player/MediaPlaybackService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/miui/player/MediaPlaybackService;->saveFlowHint(Z)V

    return-void
.end method

.method static synthetic access$4100(Lcom/miui/player/MediaPlaybackService;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 100
    invoke-direct/range {p0 .. p5}, Lcom/miui/player/MediaPlaybackService;->updateLyricStatus(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/miui/player/MediaPlaybackService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/player/MediaPlaybackService$AlbumInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/player/MediaPlaybackService;->updateAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/player/MediaPlaybackService$AlbumInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/player/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/miui/player/MediaPlaybackService;->mOneShot:Z

    return v0
.end method

.method static synthetic access$502(Lcom/miui/player/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/miui/player/MediaPlaybackService;->mOneShot:Z

    return p1
.end method

.method static synthetic access$600(Lcom/miui/player/MediaPlaybackService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/miui/player/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/player/MediaPlaybackService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/player/MediaPlaybackService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/miui/player/MediaPlaybackService;->mResumeAfterAudioFocusGain:Z

    return v0
.end method

.method static synthetic access$802(Lcom/miui/player/MediaPlaybackService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 100
    iput-boolean p1, p0, Lcom/miui/player/MediaPlaybackService;->mResumeAfterAudioFocusGain:Z

    return p1
.end method

.method static synthetic access$900(Lcom/miui/player/MediaPlaybackService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mMetaDownloadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private addToPlayList([JI)V
    .locals 7
    .parameter "list"
    .parameter "position"

    .prologue
    .line 1226
    array-length v0, p1

    .line 1227
    .local v0, addlen:I
    if-gez p2, :cond_0

    .line 1228
    const/4 v3, 0x0

    iput v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    .line 1229
    const/4 p2, 0x0

    .line 1231
    :cond_0
    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    add-int/2addr v3, v0

    invoke-direct {p0, v3}, Lcom/miui/player/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 1232
    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    if-le p2, v3, :cond_1

    .line 1233
    iget p2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    .line 1237
    :cond_1
    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    sub-int v2, v3, p2

    .line 1238
    .local v2, tailsize:I
    move v1, v2

    .local v1, i:I
    :goto_0
    if-lez v1, :cond_2

    .line 1239
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    add-int v4, p2, v1

    iget-object v5, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    add-int v6, p2, v1

    sub-int/2addr v6, v0

    aget-wide v5, v5, v6

    aput-wide v5, v3, v4

    .line 1238
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1243
    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    .line 1244
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    add-int v4, p2, v1

    aget-wide v5, p1, v1

    aput-wide v5, v3, v4

    .line 1243
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1246
    :cond_3
    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    add-int/2addr v3, v0

    iput v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    .line 1247
    return-void
.end method

.method private canPlay(Ljava/lang/String;Z)Z
    .locals 6
    .parameter "path"
    .parameter "isFirst"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 2685
    const-string v3, "content://com.miui.player/"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    .line 2715
    :goto_0
    return v3

    .line 2689
    :cond_0
    invoke-static {p0}, Lcom/miui/player/helper/NetworkUtils;->isWIFIConnected(Landroid/content/Context;)Z

    move-result v2

    .line 2690
    .local v2, isWifiConnected:Z
    if-eqz v2, :cond_1

    move v3, v4

    .line 2691
    goto :goto_0

    .line 2694
    :cond_1
    const-string v3, "other_connect_listen"

    invoke-static {p0, v3}, Lcom/miui/player/ui/PreferencesActivity;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 2696
    .local v1, isOnlineAllow:Z
    const/4 v0, 0x1

    .line 2700
    .local v0, allOnline:Z
    if-eqz v1, :cond_4

    .line 2701
    if-nez p2, :cond_2

    const-string v3, "flow_save_hint"

    invoke-static {p0, v3}, Lcom/miui/player/ui/PreferencesActivity;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2702
    invoke-direct {p0, v4}, Lcom/miui/player/MediaPlaybackService;->showNetworkHelperInfo(Z)V

    .line 2715
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    if-nez v0, :cond_5

    :cond_3
    move v3, v4

    goto :goto_0

    .line 2705
    :cond_4
    if-nez p2, :cond_2

    .line 2706
    invoke-direct {p0}, Lcom/miui/player/MediaPlaybackService;->isAllOnline()Z

    move-result v0

    .line 2707
    if-eqz v0, :cond_2

    .line 2708
    invoke-direct {p0, v5}, Lcom/miui/player/MediaPlaybackService;->showNetworkHelperInfo(Z)V

    goto :goto_1

    :cond_5
    move v3, v5

    .line 2715
    goto :goto_0
.end method

.method private copyAlbum(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "destPath"

    .prologue
    .line 2534
    const/4 v3, 0x0

    .line 2535
    .local v3, inputStream:Ljava/io/InputStream;
    const-string v5, "display_album"

    invoke-static {p0, v5}, Lcom/miui/player/ui/PreferencesActivity;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2536
    const-string v5, "android_album"

    invoke-static {p0, v5}, Lcom/miui/player/ui/PreferencesActivity;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2537
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getAudioId()J

    move-result-wide v5

    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getAlbumId()J

    move-result-wide v7

    invoke-static {p0, v5, v6, v7, v8}, Lcom/miui/player/helper/AlbumManager;->getArtworkStream(Landroid/content/Context;JJ)Ljava/io/InputStream;

    move-result-object v3

    .line 2539
    :cond_0
    if-nez v3, :cond_1

    .line 2540
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/miui/player/MediaPlaybackService;->getAlbumFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 2541
    .local v0, albumFile:Ljava/io/File;
    if-eqz v0, :cond_1

    .line 2543
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    .end local v3           #inputStream:Ljava/io/InputStream;
    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2550
    .end local v0           #albumFile:Ljava/io/File;
    .restart local v3       #inputStream:Ljava/io/InputStream;
    :cond_1
    :goto_0
    if-nez v3, :cond_4

    .line 2551
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2552
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2553
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 2555
    :cond_2
    const/4 p1, 0x0

    .line 2576
    .end local v2           #file:Ljava/io/File;
    :cond_3
    :goto_1
    return-object p1

    .line 2544
    .end local v3           #inputStream:Ljava/io/InputStream;
    .restart local v0       #albumFile:Ljava/io/File;
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 2545
    .local v1, e:Ljava/io/FileNotFoundException;
    const/4 v3, 0x0

    .restart local v3       #inputStream:Ljava/io/InputStream;
    goto :goto_0

    .line 2557
    .end local v0           #albumFile:Ljava/io/File;
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :cond_4
    const/4 v4, 0x0

    .line 2559
    .local v4, outputStream:Ljava/io/FileOutputStream;
    :try_start_1
    const-string v5, "ablum.jpg"

    const/4 v6, 0x1

    invoke-virtual {p0, v5, v6}, Lcom/miui/player/MediaPlaybackService;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    .line 2565
    :goto_2
    if-eqz v4, :cond_3

    .line 2566
    invoke-static {v3, v4}, Lcom/miui/player/helper/Global;->copyFile(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 2568
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 2569
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 2570
    :catch_1
    move-exception v5

    goto :goto_1

    .line 2561
    :catch_2
    move-exception v5

    move-object v1, v5

    .line 2562
    .restart local v1       #e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_2
.end method

.method private downloadAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "trackName"
    .parameter "albumName"
    .parameter "artistName"

    .prologue
    .line 1125
    invoke-static {p0}, Lcom/miui/player/helper/NetworkUtils;->isWIFIConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "other_connect_album"

    invoke-static {p0, v2}, Lcom/miui/player/ui/PreferencesActivity;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1127
    :cond_0
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mDownloadAlbumThread:Lcom/miui/player/MediaPlaybackService$DownloadAlbumThread;

    if-eqz v2, :cond_3

    .line 1128
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mDownloadAlbumThread:Lcom/miui/player/MediaPlaybackService$DownloadAlbumThread;

    #getter for: Lcom/miui/player/MediaPlaybackService$DownloadAlbumThread;->mAlbumName:Ljava/lang/String;
    invoke-static {v2}, Lcom/miui/player/MediaPlaybackService$DownloadAlbumThread;->access$2600(Lcom/miui/player/MediaPlaybackService$DownloadAlbumThread;)Ljava/lang/String;

    move-result-object v0

    .line 1129
    .local v0, downloadAlbumName:Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mDownloadAlbumThread:Lcom/miui/player/MediaPlaybackService$DownloadAlbumThread;

    #getter for: Lcom/miui/player/MediaPlaybackService$DownloadAlbumThread;->mArtistName:Ljava/lang/String;
    invoke-static {v2}, Lcom/miui/player/MediaPlaybackService$DownloadAlbumThread;->access$2700(Lcom/miui/player/MediaPlaybackService$DownloadAlbumThread;)Ljava/lang/String;

    move-result-object v1

    .line 1130
    .local v1, downloadArtistName:Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1140
    .end local v0           #downloadAlbumName:Ljava/lang/String;
    .end local v1           #downloadArtistName:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 1133
    .restart local v0       #downloadAlbumName:Ljava/lang/String;
    .restart local v1       #downloadArtistName:Ljava/lang/String;
    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1137
    .end local v0           #downloadAlbumName:Ljava/lang/String;
    .end local v1           #downloadArtistName:Ljava/lang/String;
    :cond_3
    new-instance v2, Lcom/miui/player/MediaPlaybackService$DownloadAlbumThread;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/miui/player/MediaPlaybackService$DownloadAlbumThread;-><init>(Lcom/miui/player/MediaPlaybackService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mDownloadAlbumThread:Lcom/miui/player/MediaPlaybackService$DownloadAlbumThread;

    .line 1138
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mDownloadAlbumThread:Lcom/miui/player/MediaPlaybackService$DownloadAlbumThread;

    invoke-virtual {v2}, Lcom/miui/player/MediaPlaybackService$DownloadAlbumThread;->start()V

    goto :goto_0
.end method

.method private ensurePlayListCapacity(I)V
    .locals 5
    .parameter "size"

    .prologue
    .line 1209
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    array-length v3, v3

    if-le p1, v3, :cond_3

    .line 1213
    :cond_0
    mul-int/lit8 v3, p1, 0x2

    new-array v2, v3, [J

    .line 1214
    .local v2, newlist:[J
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    array-length v3, v3

    move v1, v3

    .line 1215
    .local v1, len:I
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 1216
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    aget-wide v3, v3, v0

    aput-wide v3, v2, v0

    .line 1215
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1214
    .end local v0           #i:I
    .end local v1           #len:I
    :cond_1
    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    move v1, v3

    goto :goto_0

    .line 1218
    .restart local v0       #i:I
    .restart local v1       #len:I
    :cond_2
    iput-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    .line 1222
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #newlist:[J
    :cond_3
    return-void
.end method

.method private getAlbumFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "albumName"
    .parameter "artistName"

    .prologue
    .line 1091
    const/4 v0, 0x0

    .line 1092
    .local v0, albumFile:Ljava/io/File;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1093
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/miui/player/helper/MusicMetaManager;->getAlbumFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1095
    :cond_1
    return-object v0
.end method

.method private getNextId()J
    .locals 6

    .prologue
    .line 1506
    const-wide/16 v1, 0x0

    .line 1507
    .local v1, ret:J
    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v3, 0x1

    .line 1509
    .local v0, nextIdx:I
    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mShuffleMode:I

    if-nez v3, :cond_4

    .line 1510
    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mRepeatMode:I

    if-nez v3, :cond_2

    .line 1511
    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    if-ge v0, v3, :cond_0

    .line 1512
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    aget-wide v1, v3, v0

    .line 1526
    :cond_0
    :goto_0
    invoke-static {v1, v2}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1527
    const-wide/16 v1, 0x0

    .line 1530
    :cond_1
    return-wide v1

    .line 1515
    :cond_2
    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    if-lt v0, v3, :cond_3

    .line 1516
    const/4 v0, 0x0

    .line 1518
    :cond_3
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    aget-wide v1, v3, v0

    goto :goto_0

    .line 1521
    :cond_4
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mShuffleTracer:Lcom/miui/player/helper/ShuffleTracer;

    iget v4, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    iget v5, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {v3, v4, v5}, Lcom/miui/player/helper/ShuffleTracer;->peekNext(II)I

    move-result v0

    .line 1522
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    aget-wide v1, v3, v0

    goto :goto_0
.end method

.method private gotoIdleState(Z)V
    .locals 2
    .parameter "removeStatusIcon"

    .prologue
    .line 1840
    const/4 v0, 0x0

    const v1, 0xea60

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/player/MediaPlaybackService;->gotoIdleState(ZII)V

    .line 1841
    return-void
.end method

.method private gotoIdleState(ZII)V
    .locals 4
    .parameter "removeStatusIcon"
    .parameter "what"
    .parameter "delay"

    .prologue
    .line 1844
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1845
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1846
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    int-to-long v2, p3

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1847
    invoke-virtual {p0, p1}, Lcom/miui/player/MediaPlaybackService;->stopForeground(Z)V

    .line 1848
    return-void
.end method

.method private isAllOnline()Z
    .locals 5

    .prologue
    .line 2655
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    .line 2656
    .local v2, queue:[J
    const/4 v1, 0x1

    .line 2658
    .local v1, isAllOnline:Z
    if-eqz v2, :cond_2

    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    if-lez v3, :cond_2

    .line 2659
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    if-ge v0, v3, :cond_0

    .line 2660
    aget-wide v3, v2, v0

    invoke-static {v3, v4}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2661
    const/4 v1, 0x0

    .line 2669
    .end local v0           #i:I
    :cond_0
    :goto_1
    return v1

    .line 2659
    .restart local v0       #i:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2666
    .end local v0           #i:I
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private makeAllShuffleList()Z
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1874
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1875
    .local v0, res:Landroid/content/ContentResolver;
    const/4 v6, 0x0

    .line 1877
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    invoke-static {p0}, Lcom/miui/player/MusicUtils;->wrapWithBlacklist(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "title"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1881
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_2

    .line 1897
    :cond_0
    if-eqz v6, :cond_1

    .line 1898
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move v1, v10

    .line 1901
    :goto_0
    return v1

    .line 1884
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 1885
    .local v8, len:I
    new-array v9, v8, [J

    .line 1886
    .local v9, list:[J
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v8, :cond_3

    .line 1887
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 1888
    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    aput-wide v1, v9, v7

    .line 1886
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1890
    :cond_3
    const/4 v1, -0x1

    invoke-virtual {p0, v9, v1}, Lcom/miui/player/MediaPlaybackService;->open([JI)V

    .line 1891
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/miui/player/MediaPlaybackService;->setShuffleMode(I)V

    .line 1892
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->play()V

    .line 1893
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.music.SHUFFLE_PLAY_PREPARED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/miui/player/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1897
    if-eqz v6, :cond_4

    .line 1898
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move v1, v11

    goto :goto_0

    .line 1895
    .end local v7           #i:I
    .end local v8           #len:I
    .end local v9           #list:[J
    :catch_0
    move-exception v1

    .line 1897
    if-eqz v6, :cond_5

    .line 1898
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    move v1, v10

    .line 1901
    goto :goto_0

    .line 1897
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_6

    .line 1898
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v1
.end method

.method private needSearch()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1195
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getAudioId()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v7

    .line 1205
    :goto_0
    return v3

    .line 1198
    :cond_0
    const/4 v2, 0x0

    .line 1199
    .local v2, ret:Z
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 1200
    .local v1, path:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1201
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1202
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v5, 0x100000

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    move v2, v7

    .end local v0           #f:Ljava/io/File;
    :cond_1
    :goto_1
    move v3, v2

    .line 1205
    goto :goto_0

    .line 1202
    .restart local v0       #f:Ljava/io/File;
    :cond_2
    const/4 v3, 0x0

    move v2, v3

    goto :goto_1
.end method

.method private notifyChange(Ljava/lang/String;)V
    .locals 2
    .parameter "what"

    .prologue
    .line 1025
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/miui/player/MediaPlaybackService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1026
    return-void
.end method

.method private notifyChange(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 21
    .parameter "what"
    .parameter "extra"
    .parameter "reset"

    .prologue
    .line 1029
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v8

    .line 1030
    .local v8, artistName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v7

    .line 1031
    .local v7, albumName:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v6

    .line 1033
    .local v6, trackName:Ljava/lang/String;
    const/4 v10, 0x0

    .line 1034
    .local v10, filePath:Ljava/lang/String;
    const/16 v18, 0x0

    .line 1035
    .local v18, uri:Landroid/net/Uri;
    const-string v4, "meta_changed_album"

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "meta_changed_track"

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.miui.player.playstatechanged"

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_0
    const/4 v4, 0x1

    move v15, v4

    .line 1037
    .local v15, needAlbum:Z
    :goto_0
    if-eqz v15, :cond_1

    .line 1038
    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/player/MediaPlaybackService;->updateAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/player/MediaPlaybackService$AlbumInfo;

    move-result-object v12

    .line 1039
    .local v12, info:Lcom/miui/player/MediaPlaybackService$AlbumInfo;
    iget-object v10, v12, Lcom/miui/player/MediaPlaybackService$AlbumInfo;->mFilePath:Ljava/lang/String;

    .line 1040
    move-object v0, v12

    iget-object v0, v0, Lcom/miui/player/MediaPlaybackService$AlbumInfo;->mUri:Landroid/net/Uri;

    move-object/from16 v18, v0

    .line 1043
    .end local v12           #info:Lcom/miui/player/MediaPlaybackService$AlbumInfo;
    :cond_1
    const/4 v14, 0x0

    .line 1044
    .local v14, lyricStrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/16 v17, 0x0

    .line 1045
    .local v17, timeArr:[I
    const-string v4, "meta_changed_lyric"

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "meta_changed_track"

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_2
    const/4 v4, 0x1

    move v5, v4

    .line 1046
    .local v5, needLyric:Z
    :goto_1
    if-nez v5, :cond_3

    const-string v4, "meta_changed_buffer"

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_3
    const/4 v4, 0x1

    move/from16 v16, v4

    .line 1047
    .local v16, needLyricStatus:Z
    :goto_2
    if-eqz v16, :cond_4

    move-object/from16 v4, p0

    move/from16 v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/miui/player/MediaPlaybackService;->updateLyricStatus(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1049
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/MediaPlaybackService;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    move-object v13, v0

    .line 1050
    .local v13, lrc:Lcom/miui/player/helper/LyricParser$Lyric;
    if-eqz v13, :cond_4

    .line 1051
    invoke-virtual {v13}, Lcom/miui/player/helper/LyricParser$Lyric;->getStringArr()Ljava/util/ArrayList;

    move-result-object v14

    .line 1052
    invoke-virtual {v13}, Lcom/miui/player/helper/LyricParser$Lyric;->getTimeArr()[I

    move-result-object v17

    .line 1053
    invoke-virtual {v13}, Lcom/miui/player/helper/LyricParser$Lyric;->recyleContent()V

    .line 1058
    .end local v13           #lrc:Lcom/miui/player/helper/LyricParser$Lyric;
    :cond_4
    new-instance v11, Landroid/content/Intent;

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1059
    .local v11, i:Landroid/content/Intent;
    const-string v4, "id"

    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/MediaPlaybackService;->getAudioId()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .end local v5           #needLyric:Z
    invoke-virtual {v11, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1060
    const-string v4, "artist"

    invoke-virtual {v11, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1061
    const-string v4, "album"

    invoke-virtual {v11, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1062
    const-string v4, "track"

    invoke-virtual {v11, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1063
    const-string v4, "album_uri"

    move-object v0, v11

    move-object v1, v4

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1064
    const-string v4, "album_path"

    invoke-virtual {v11, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1065
    const-string v4, "lyric_status"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/MediaPlaybackService;->mLyricStatus:I

    move v5, v0

    invoke-virtual {v11, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1066
    const-string v4, "lyric"

    invoke-virtual {v11, v4, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1067
    const-string v4, "lyric_time"

    move-object v0, v11

    move-object v1, v4

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 1068
    const-string v4, "playing"

    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/MediaPlaybackService;->isPlaying()Z

    move-result v5

    invoke-virtual {v11, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1069
    const-string v4, "block"

    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/MediaPlaybackService;->isBlocking()Z

    move-result v5

    invoke-virtual {v11, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1070
    const-string v4, "current_time"

    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/MediaPlaybackService;->position()J

    move-result-wide v19

    move-object v0, v11

    move-object v1, v4

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1071
    const-string v4, "total_time"

    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/MediaPlaybackService;->duration()J

    move-result-wide v19

    move-object v0, v11

    move-object v1, v4

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1072
    const-string v4, "buffer"

    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/MediaPlaybackService;->isBuffering()Z

    move-result v5

    invoke-virtual {v11, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1073
    const-string v4, "buffered_pos"

    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/MediaPlaybackService;->getBufferedPosition()J

    move-result-wide v19

    move-object v0, v11

    move-object v1, v4

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1074
    const-string v4, "current_system_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    move-object v0, v11

    move-object v1, v4

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1075
    const-string v4, "favorite"

    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/MediaPlaybackService;->getAudioId()J

    move-result-wide v19

    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/MediaPlaybackService;->getOnlineId()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-wide/from16 v1, v19

    move-object v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/miui/player/helper/FavoritePlaylist;->contains(Landroid/content/Context;JLjava/lang/String;)Z

    move-result v5

    invoke-virtual {v11, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1076
    const-string v4, "oneshot"

    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/MediaPlaybackService;->isOneShot()Z

    move-result v5

    invoke-virtual {v11, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1077
    if-eqz p2, :cond_5

    .line 1078
    const-string v4, "other"

    move-object v0, v11

    move-object v1, v4

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1080
    :cond_5
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/miui/player/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 1082
    const-string v4, "com.miui.player.queuechanged"

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 1083
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/miui/player/MediaPlaybackService;->saveQueue(Z)V

    .line 1088
    :cond_6
    :goto_3
    return-void

    .line 1035
    .end local v11           #i:Landroid/content/Intent;
    .end local v14           #lyricStrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .end local v15           #needAlbum:Z
    .end local v16           #needLyricStatus:Z
    .end local v17           #timeArr:[I
    :cond_7
    const/4 v4, 0x0

    move v15, v4

    goto/16 :goto_0

    .line 1045
    .restart local v14       #lyricStrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local v15       #needAlbum:Z
    .restart local v17       #timeArr:[I
    :cond_8
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_1

    .line 1046
    .restart local v5       #needLyric:Z
    :cond_9
    const/4 v4, 0x0

    move/from16 v16, v4

    goto/16 :goto_2

    .line 1084
    .end local v5           #needLyric:Z
    .restart local v11       #i:Landroid/content/Intent;
    .restart local v16       #needLyricStatus:Z
    :cond_a
    const-string v4, "com.miui.player.playbackcomplete"

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "com.miui.player.metachanged"

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_b

    const-string v4, "com.miui.player.playstatechanged"

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1086
    :cond_b
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/miui/player/MediaPlaybackService;->saveQueue(Z)V

    goto :goto_3
.end method

.method private notifyMetaChange(Ljava/lang/String;)V
    .locals 2
    .parameter "subType"

    .prologue
    .line 1021
    const-string v0, "com.miui.player.metachanged"

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/miui/player/MediaPlaybackService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1022
    return-void
.end method

.method private notifyMetaChange(Ljava/lang/String;Z)V
    .locals 1
    .parameter "subType"
    .parameter "reset"

    .prologue
    .line 1017
    const-string v0, "com.miui.player.metachanged"

    invoke-direct {p0, v0, p1, p2}, Lcom/miui/player/MediaPlaybackService;->notifyChange(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1018
    return-void
.end method

.method private notifyScreenManager(Ljava/lang/String;Z)V
    .locals 3
    .parameter "tempAlbumPath"
    .parameter "isShowMusic"

    .prologue
    .line 2510
    new-instance v0, Landroid/content/Intent;

    const-string v1, "lockscreen.action.SONG_METADATA_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2511
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "tmp_album_path"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2512
    const-string v1, "is_showmusic"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2513
    const-string v1, "artist"

    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2514
    const-string v1, "album"

    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2515
    const-string v1, "track"

    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2516
    const-string v1, "playing"

    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->isPlaying()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2517
    invoke-virtual {p0, v0}, Lcom/miui/player/MediaPlaybackService;->sendBroadcast(Landroid/content/Intent;)V

    .line 2518
    return-void
.end method

.method private openCurrent(Z)V
    .locals 1
    .parameter "toPlay"

    .prologue
    .line 1389
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/player/MediaPlaybackService;->openCurrent(ZZ)V

    .line 1390
    return-void
.end method

.method private openCurrent(ZZ)V
    .locals 8
    .parameter "toPlay"
    .parameter "isFirst"

    .prologue
    const-string v0, "_id="

    const-string v0, "/"

    .line 1396
    monitor-enter p0

    .line 1397
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 1398
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1399
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1401
    :cond_0
    iget v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    if-nez v0, :cond_1

    .line 1402
    monitor-exit p0

    .line 1427
    :goto_0
    return-void

    .line 1405
    :cond_1
    iget v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    array-length v1, v1

    if-lt v0, v1, :cond_3

    .line 1406
    :cond_2
    monitor-exit p0

    goto :goto_0

    .line 1426
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1409
    :cond_3
    const/4 v7, 0x0

    .line 1410
    .local v7, path:Ljava/lang/String;
    :try_start_1
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    iget v1, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    .line 1411
    .local v6, id:Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    iget v1, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1412
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiNowPlayingAudio;->EXTERNAL_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mOnlineCursorCols:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1414
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/miui/player/provider/PlayerStore$MiuiNowPlayingAudio;->EXTERNAL_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1422
    :goto_1
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_4

    .line 1423
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1424
    const/4 v0, 0x0

    invoke-virtual {p0, v7, v0, p1, p2}, Lcom/miui/player/MediaPlaybackService;->open(Ljava/lang/String;ZZZ)V

    .line 1426
    :cond_4
    monitor-exit p0

    goto :goto_0

    .line 1416
    :cond_5
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mLocalCursorCols:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    goto :goto_1
.end method

.method private registerConnReceiver()V
    .locals 2

    .prologue
    .line 2755
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2756
    .local v0, f:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2757
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/player/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2758
    return-void
.end method

.method private registerMediaButtonReceiver()V
    .locals 4

    .prologue
    .line 2793
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/miui/player/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2794
    .local v0, am:Landroid/media/AudioManager;
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/miui/player/MediaButtonIntentReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2796
    .local v1, rec:Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 2797
    return-void
.end method

.method private registerScreenlock()V
    .locals 2

    .prologue
    .line 2522
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2523
    .local v0, screenlockFilter:Landroid/content/IntentFilter;
    const-string v1, "lockscreen.action.SONG_METADATA_REQUEST"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2524
    const-string v1, "com.miui.player.musicservicecommand.update_meta"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2525
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mLockScreenListener:Lcom/miui/player/MediaPlaybackService$LockScreenListener;

    invoke-virtual {p0, v1, v0}, Lcom/miui/player/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 2526
    return-void
.end method

.method private reloadQueue()V
    .locals 12

    .prologue
    .line 748
    const/4 v6, 0x0

    .line 750
    .local v6, q:Ljava/lang/String;
    iget v2, p0, Lcom/miui/player/MediaPlaybackService;->mCardId:I

    .line 751
    .local v2, id:I
    iget-object v9, p0, Lcom/miui/player/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v10, "cardid"

    invoke-interface {v9, v10}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 752
    iget-object v9, p0, Lcom/miui/player/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v10, "cardid"

    iget v11, p0, Lcom/miui/player/MediaPlaybackService;->mCardId:I

    xor-int/lit8 v11, v11, -0x1

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 754
    :cond_0
    iget v9, p0, Lcom/miui/player/MediaPlaybackService;->mCardId:I

    if-ne v2, v9, :cond_1

    .line 757
    iget-object v9, p0, Lcom/miui/player/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v10, "queue"

    const-string v11, ""

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 759
    :cond_1
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    move v7, v9

    .line 760
    .local v7, qlen:I
    :goto_0
    const/4 v9, 0x1

    if-le v7, v9, :cond_8

    .line 762
    const/4 v4, 0x0

    .line 763
    .local v4, plen:I
    const/4 v3, 0x0

    .line 764
    .local v3, n:I
    const/4 v8, 0x0

    .line 765
    .local v8, shift:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v7, :cond_6

    .line 766
    invoke-virtual {v6, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 767
    .local v0, c:C
    const/16 v9, 0x3b

    if-ne v0, v9, :cond_3

    .line 768
    add-int/lit8 v9, v4, 0x1

    invoke-direct {p0, v9}, Lcom/miui/player/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 769
    iget-object v9, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    int-to-long v10, v3

    aput-wide v10, v9, v4

    .line 770
    add-int/lit8 v4, v4, 0x1

    .line 771
    const/4 v3, 0x0

    .line 772
    const/4 v8, 0x0

    .line 765
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 759
    .end local v0           #c:C
    .end local v1           #i:I
    .end local v3           #n:I
    .end local v4           #plen:I
    .end local v7           #qlen:I
    .end local v8           #shift:I
    :cond_2
    const/4 v9, 0x0

    move v7, v9

    goto :goto_0

    .line 774
    .restart local v0       #c:C
    .restart local v1       #i:I
    .restart local v3       #n:I
    .restart local v4       #plen:I
    .restart local v7       #qlen:I
    .restart local v8       #shift:I
    :cond_3
    const/16 v9, 0x30

    if-lt v0, v9, :cond_4

    const/16 v9, 0x39

    if-gt v0, v9, :cond_4

    .line 775
    const/16 v9, 0x30

    sub-int v9, v0, v9

    shl-int/2addr v9, v8

    add-int/2addr v3, v9

    .line 783
    :goto_3
    add-int/lit8 v8, v8, 0x4

    goto :goto_2

    .line 776
    :cond_4
    const/16 v9, 0x61

    if-lt v0, v9, :cond_5

    const/16 v9, 0x66

    if-gt v0, v9, :cond_5

    .line 777
    add-int/lit8 v9, v0, 0xa

    const/16 v10, 0x61

    sub-int/2addr v9, v10

    shl-int/2addr v9, v8

    add-int/2addr v3, v9

    goto :goto_3

    .line 780
    :cond_5
    const/4 v4, 0x0

    .line 786
    .end local v0           #c:C
    :cond_6
    iput v4, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    .line 788
    iget-object v9, p0, Lcom/miui/player/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v10, "curpos"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 789
    .local v5, pos:I
    if-ltz v5, :cond_7

    iget v9, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    if-lt v5, v9, :cond_9

    .line 791
    :cond_7
    const/4 v9, 0x0

    iput v9, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    .line 822
    .end local v1           #i:I
    .end local v3           #n:I
    .end local v4           #plen:I
    .end local v5           #pos:I
    .end local v8           #shift:I
    :cond_8
    :goto_4
    return-void

    .line 794
    .restart local v1       #i:I
    .restart local v3       #n:I
    .restart local v4       #plen:I
    .restart local v5       #pos:I
    .restart local v8       #shift:I
    :cond_9
    iput v5, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    .line 807
    const/16 v9, 0x14

    iput v9, p0, Lcom/miui/player/MediaPlaybackService;->mOpenFailedCounter:I

    .line 808
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct {p0, v9, v10}, Lcom/miui/player/MediaPlaybackService;->openCurrent(ZZ)V

    .line 809
    iget-object v9, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/helper/AsyncMusicPlayer;

    invoke-virtual {v9}, Lcom/miui/player/helper/AsyncMusicPlayer;->isInitialized()Z

    move-result v9

    if-nez v9, :cond_a

    .line 811
    const/4 v9, 0x0

    iput v9, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    goto :goto_4

    .line 814
    :cond_a
    iget-object v9, p0, Lcom/miui/player/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v10, "repeatmode"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/miui/player/MediaPlaybackService;->mRepeatMode:I

    .line 815
    iget-object v9, p0, Lcom/miui/player/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    const-string v10, "shufflemode"

    const/4 v11, 0x0

    invoke-interface {v9, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v9

    iput v9, p0, Lcom/miui/player/MediaPlaybackService;->mShuffleMode:I

    .line 817
    iget v9, p0, Lcom/miui/player/MediaPlaybackService;->mShuffleMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8

    .line 819
    iget-object v9, p0, Lcom/miui/player/MediaPlaybackService;->mShuffleTracer:Lcom/miui/player/helper/ShuffleTracer;

    iget-object v10, p0, Lcom/miui/player/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    iget v11, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v9, v10, v11}, Lcom/miui/player/helper/ShuffleTracer;->load(Landroid/content/SharedPreferences;I)V

    goto :goto_4
.end method

.method private removeTracksInternal(II)I
    .locals 8
    .parameter "first"
    .parameter "last"

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 1996
    iget-object v4, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    if-nez v4, :cond_0

    move v4, v5

    .line 2033
    :goto_0
    return v4

    .line 1999
    :cond_0
    monitor-enter p0

    .line 2000
    if-ge p2, p1, :cond_1

    .line 2001
    :try_start_0
    monitor-exit p0

    move v4, v5

    goto :goto_0

    .line 2002
    :cond_1
    if-gez p1, :cond_2

    .line 2003
    const/4 p1, 0x0

    .line 2004
    :cond_2
    iget v4, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    if-lt p2, v4, :cond_3

    .line 2005
    iget v4, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    sub-int p2, v4, v6

    .line 2007
    :cond_3
    const/4 v0, 0x0

    .line 2008
    .local v0, gotonext:Z
    iget v4, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    if-gt p1, v4, :cond_5

    iget v4, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    if-gt v4, p2, :cond_5

    .line 2009
    iput p1, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    .line 2010
    const/4 v0, 0x1

    .line 2014
    :cond_4
    :goto_1
    iget v4, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    sub-int/2addr v4, p2

    sub-int v2, v4, v6

    .line 2015
    .local v2, num:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v2, :cond_6

    .line 2016
    iget-object v4, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    add-int v5, p1, v1

    iget-object v6, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    add-int/lit8 v7, p2, 0x1

    add-int/2addr v7, v1

    aget-wide v6, v6, v7

    aput-wide v6, v4, v5

    .line 2015
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2011
    .end local v1           #i:I
    .end local v2           #num:I
    :cond_5
    iget v4, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    if-le v4, p2, :cond_4

    .line 2012
    iget v4, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    sub-int v5, p2, p1

    add-int/lit8 v5, v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 2034
    .end local v0           #gotonext:Z
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 2018
    .restart local v0       #gotonext:Z
    .restart local v1       #i:I
    .restart local v2       #num:I
    :cond_6
    :try_start_1
    iget v4, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    sub-int v5, p2, p1

    add-int/lit8 v5, v5, 0x1

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    .line 2020
    if-eqz v0, :cond_7

    .line 2021
    iget v4, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    if-nez v4, :cond_8

    .line 2022
    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/miui/player/MediaPlaybackService;->stop(ZZ)V

    .line 2023
    const/4 v4, -0x1

    iput v4, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    .line 2033
    :cond_7
    :goto_3
    sub-int v4, p2, p1

    add-int/lit8 v4, v4, 0x1

    monitor-exit p0

    goto :goto_0

    .line 2025
    :cond_8
    iget v4, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    iget v5, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    if-lt v4, v5, :cond_9

    .line 2026
    const/4 v4, 0x0

    iput v4, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    .line 2028
    :cond_9
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->isPlaying()Z

    move-result v3

    .line 2029
    .local v3, wasPlaying:Z
    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/miui/player/MediaPlaybackService;->stop(ZZ)V

    .line 2030
    invoke-direct {p0, v3}, Lcom/miui/player/MediaPlaybackService;->openCurrent(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method private saveFlowHint(Z)V
    .locals 12
    .parameter "force"

    .prologue
    const/4 v11, 0x1

    .line 2719
    invoke-static {p0}, Lcom/miui/player/helper/NetworkUtils;->isWIFIConnected(Landroid/content/Context;)Z

    move-result v5

    .line 2720
    .local v5, isWifiConnected:Z
    if-nez v5, :cond_0

    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->isPlaying()Z

    move-result v9

    if-nez v9, :cond_1

    .line 2752
    :cond_0
    :goto_0
    return-void

    .line 2724
    :cond_1
    if-nez v5, :cond_2

    const-string v9, "other_connect_listen"

    invoke-static {p0, v9}, Lcom/miui/player/ui/PreferencesActivity;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_2
    move v4, v11

    .line 2728
    .local v4, isOnlineAllow:Z
    :goto_1
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getQueue()[J

    move-result-object v8

    .line 2729
    .local v8, queue:[J
    const/4 v7, 0x0

    .line 2731
    .local v7, onlineCount:I
    move-object v0, v8

    .local v0, arr$:[J
    array-length v6, v0

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2
    if-ge v3, v6, :cond_5

    aget-wide v1, v0, v3

    .line 2732
    .local v1, i:J
    invoke-static {v1, v2}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2733
    add-int/lit8 v7, v7, 0x1

    .line 2731
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2724
    .end local v0           #arr$:[J
    .end local v1           #i:J
    .end local v3           #i$:I
    .end local v4           #isOnlineAllow:Z
    .end local v6           #len$:I
    .end local v7           #onlineCount:I
    .end local v8           #queue:[J
    :cond_4
    const/4 v9, 0x0

    move v4, v9

    goto :goto_1

    .line 2740
    .restart local v0       #arr$:[J
    .restart local v3       #i$:I
    .restart local v4       #isOnlineAllow:Z
    .restart local v6       #len$:I
    .restart local v7       #onlineCount:I
    .restart local v8       #queue:[J
    :cond_5
    if-eqz p1, :cond_6

    if-nez v7, :cond_7

    :cond_6
    if-nez v4, :cond_8

    array-length v9, v8

    if-ne v7, v9, :cond_8

    .line 2741
    :cond_7
    invoke-direct {p0, v4}, Lcom/miui/player/MediaPlaybackService;->showNetworkHelperInfo(Z)V

    .line 2744
    :cond_8
    if-nez v4, :cond_0

    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getAudioId()J

    move-result-wide v9

    invoke-static {v9, v10}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2745
    array-length v9, v8

    if-ge v7, v9, :cond_9

    .line 2746
    invoke-virtual {p0, v11}, Lcom/miui/player/MediaPlaybackService;->next(Z)V

    goto :goto_0

    .line 2748
    :cond_9
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->stop()V

    .line 2749
    const-string v9, "meta_changed_track"

    invoke-direct {p0, v9}, Lcom/miui/player/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private saveQueue(Z)V
    .locals 11
    .parameter "full"

    .prologue
    const-wide/16 v9, 0x0

    .line 702
    iget-boolean v7, p0, Lcom/miui/player/MediaPlaybackService;->mOneShot:Z

    if-nez v7, :cond_0

    iget v7, p0, Lcom/miui/player/MediaPlaybackService;->mCardId:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_1

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 705
    :cond_1
    iget-object v7, p0, Lcom/miui/player/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 706
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_5

    .line 707
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 715
    .local v6, q:Ljava/lang/StringBuilder;
    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    .line 716
    .local v3, len:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_4

    .line 717
    iget-object v7, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    aget-wide v4, v7, v2

    .line 718
    .local v4, n:J
    cmp-long v7, v4, v9

    if-nez v7, :cond_2

    .line 719
    const-string v7, "0;"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 721
    :cond_2
    :goto_3
    cmp-long v7, v4, v9

    if-eqz v7, :cond_3

    .line 722
    const-wide/16 v7, 0xf

    and-long/2addr v7, v4

    long-to-int v0, v7

    .line 723
    .local v0, digit:I
    const/4 v7, 0x4

    shr-long/2addr v4, v7

    .line 724
    sget-object v7, Lcom/miui/player/helper/MediaPlayerConstants;->HEX_DIGITS:[C

    aget-char v7, v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 726
    .end local v0           #digit:I
    :cond_3
    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 729
    .end local v4           #n:J
    :cond_4
    const-string v7, "queue"

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 730
    const-string v7, "cardid"

    iget v8, p0, Lcom/miui/player/MediaPlaybackService;->mCardId:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 732
    .end local v2           #i:I
    .end local v3           #len:I
    .end local v6           #q:Ljava/lang/StringBuilder;
    :cond_5
    iget v7, p0, Lcom/miui/player/MediaPlaybackService;->mShuffleMode:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_6

    .line 734
    iget v7, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    if-lez v7, :cond_6

    .line 735
    iget-object v7, p0, Lcom/miui/player/MediaPlaybackService;->mShuffleTracer:Lcom/miui/player/helper/ShuffleTracer;

    iget v8, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    iget v9, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {v7, v1, v8, v9, p1}, Lcom/miui/player/helper/ShuffleTracer;->save(Landroid/content/SharedPreferences$Editor;IIZ)V

    .line 738
    :cond_6
    const-string v7, "curpos"

    iget v8, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 739
    iget-object v7, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/helper/AsyncMusicPlayer;

    invoke-virtual {v7}, Lcom/miui/player/helper/AsyncMusicPlayer;->isInitialized()Z

    move-result v7

    if-eqz v7, :cond_7

    iget-boolean v7, p0, Lcom/miui/player/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    if-nez v7, :cond_7

    .line 740
    const-string v7, "seekpos"

    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->position()J

    move-result-wide v8

    invoke-interface {v1, v7, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 742
    :cond_7
    const-string v7, "repeatmode"

    iget v8, p0, Lcom/miui/player/MediaPlaybackService;->mRepeatMode:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 743
    const-string v7, "shufflemode"

    iget v8, p0, Lcom/miui/player/MediaPlaybackService;->mShuffleMode:I

    invoke-interface {v1, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 744
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0
.end method

.method private showNetworkHelperInfo(Z)V
    .locals 4
    .parameter "isOnlineAllow"

    .prologue
    .line 2673
    invoke-static {p0}, Lcom/miui/player/helper/NetworkUtils;->isConnectivityActive(Landroid/content/Context;)Z

    move-result v1

    .line 2674
    .local v1, isConnectivity:Z
    if-eqz v1, :cond_0

    .line 2675
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.miui.music.CONN_CHANGED_HINT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2676
    .local v0, i:Landroid/content/Intent;
    const-class v2, Lcom/miui/player/ui/ConnChangedHintActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 2677
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2678
    const-string v2, "is_online_allow"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2679
    invoke-virtual {p0, v0}, Lcom/miui/player/MediaPlaybackService;->startActivity(Landroid/content/Intent;)V

    .line 2683
    .end local v0           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 2681
    :cond_0
    const v2, 0x7f080093

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private stop(ZZ)V
    .locals 3
    .parameter "removeStatusIcon"
    .parameter "orderChanged"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1626
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayerResponser:Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->stopBuffering()V

    .line 1627
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/helper/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/helper/AsyncMusicPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1628
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/helper/AsyncMusicPlayer;

    invoke-virtual {v0, p2}, Lcom/miui/player/helper/AsyncMusicPlayer;->stop(Z)V

    .line 1630
    :cond_0
    iput-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    .line 1631
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 1632
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1633
    iput-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1635
    :cond_1
    iget-boolean v0, p0, Lcom/miui/player/MediaPlaybackService;->mOneShot:Z

    if-eqz v0, :cond_2

    .line 1636
    const/16 v0, 0x1388

    invoke-direct {p0, p1, v1, v0}, Lcom/miui/player/MediaPlaybackService;->gotoIdleState(ZII)V

    .line 1641
    :goto_0
    iput-boolean v1, p0, Lcom/miui/player/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1642
    invoke-virtual {p0, v1, v1}, Lcom/miui/player/MediaPlaybackService;->onPlayStateChanged(ZZ)V

    .line 1643
    return-void

    .line 1638
    :cond_2
    invoke-direct {p0, p1}, Lcom/miui/player/MediaPlaybackService;->gotoIdleState(Z)V

    goto :goto_0
.end method

.method private unregisterConnReceiver()V
    .locals 1

    .prologue
    .line 2761
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mConnReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/player/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2762
    return-void
.end method

.method private unregisterMediaButtonReceiver()V
    .locals 4

    .prologue
    .line 2800
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/miui/player/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2801
    .local v0, am:Landroid/media/AudioManager;
    new-instance v1, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/miui/player/MediaButtonIntentReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2803
    .local v1, rec:Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 2804
    return-void
.end method

.method private unregisterScreenlock()V
    .locals 2

    .prologue
    .line 2529
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/player/MediaPlaybackService;->notifyScreenManager(Ljava/lang/String;Z)V

    .line 2530
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mLockScreenListener:Lcom/miui/player/MediaPlaybackService$LockScreenListener;

    invoke-virtual {p0, v0}, Lcom/miui/player/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2531
    return-void
.end method

.method private updateAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/player/MediaPlaybackService$AlbumInfo;
    .locals 6
    .parameter "trackName"
    .parameter "albumName"
    .parameter "artistName"

    .prologue
    .line 1104
    new-instance v1, Lcom/miui/player/MediaPlaybackService$AlbumInfo;

    invoke-direct {v1}, Lcom/miui/player/MediaPlaybackService$AlbumInfo;-><init>()V

    .line 1105
    .local v1, info:Lcom/miui/player/MediaPlaybackService$AlbumInfo;
    const-string v2, "display_album"

    invoke-static {p0, v2}, Lcom/miui/player/ui/PreferencesActivity;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1121
    :cond_0
    :goto_0
    return-object v1

    .line 1108
    :cond_1
    const-string v2, "android_album"

    invoke-static {p0, v2}, Lcom/miui/player/ui/PreferencesActivity;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1109
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getAudioId()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getAlbumId()J

    move-result-wide v4

    invoke-static {p0, v2, v3, v4, v5}, Lcom/miui/player/helper/AlbumManager;->getArtworkUri(Landroid/content/Context;JJ)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/player/MediaPlaybackService$AlbumInfo;->mUri:Landroid/net/Uri;

    .line 1111
    :cond_2
    iget-object v2, v1, Lcom/miui/player/MediaPlaybackService$AlbumInfo;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_3

    .line 1112
    invoke-direct {p0, p2, p3}, Lcom/miui/player/MediaPlaybackService;->getAlbumFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1113
    .local v0, albumFile:Ljava/io/File;
    if-eqz v0, :cond_3

    .line 1114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 1115
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/player/MediaPlaybackService$AlbumInfo;->mFilePath:Ljava/lang/String;

    .line 1118
    .end local v0           #albumFile:Ljava/io/File;
    :cond_3
    iget-object v2, v1, Lcom/miui/player/MediaPlaybackService$AlbumInfo;->mFilePath:Ljava/lang/String;

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/miui/player/MediaPlaybackService$AlbumInfo;->mUri:Landroid/net/Uri;

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/miui/player/MediaPlaybackService;->needSearch()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1119
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/player/MediaPlaybackService;->downloadAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateLyricStatus(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 10
    .parameter "needLyric"
    .parameter "trackName"
    .parameter "albumName"
    .parameter "artistName"
    .parameter "reset"

    .prologue
    const/4 v9, -0x1

    const/4 v3, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1143
    const-string v2, "display_lyric"

    invoke-static {p0, v2}, Lcom/miui/player/ui/PreferencesActivity;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1144
    const/4 v2, 0x6

    iput v2, p0, Lcom/miui/player/MediaPlaybackService;->mLyricStatus:I

    .line 1145
    iput-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    move v2, v6

    .line 1191
    :goto_0
    return v2

    .line 1149
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_1

    if-nez p5, :cond_1

    iget v2, p0, Lcom/miui/player/MediaPlaybackService;->mLyricStatus:I

    if-eq v2, v9, :cond_1

    move v2, v6

    .line 1150
    goto :goto_0

    .line 1153
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1154
    iput-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    .line 1155
    iput v8, p0, Lcom/miui/player/MediaPlaybackService;->mLyricStatus:I

    move v2, v6

    .line 1156
    goto :goto_0

    .line 1159
    :cond_2
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, p4, v2}, Lcom/miui/player/helper/MusicMetaManager;->getLyricFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1160
    .local v0, lyricFile:Ljava/io/File;
    if-eqz v0, :cond_6

    .line 1161
    if-nez p5, :cond_3

    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    invoke-virtual {v2}, Lcom/miui/player/helper/LyricParser$Lyric;->getFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    invoke-virtual {v2}, Lcom/miui/player/helper/LyricParser$Lyric;->getOpenTime()J

    move-result-wide v2

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_4

    .line 1164
    :cond_3
    invoke-static {v0}, Lcom/miui/player/helper/LyricParser;->parseLyric(Ljava/io/File;)Lcom/miui/player/helper/LyricParser$Lyric;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    .line 1165
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    .line 1166
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    if-nez v2, :cond_4

    .line 1167
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1168
    iput v8, p0, Lcom/miui/player/MediaPlaybackService;->mLyricStatus:I

    .line 1175
    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    if-eqz v2, :cond_7

    .line 1176
    iput v7, p0, Lcom/miui/player/MediaPlaybackService;->mLyricStatus:I

    .line 1191
    :cond_5
    :goto_2
    iget v2, p0, Lcom/miui/player/MediaPlaybackService;->mLyricStatus:I

    if-ne v2, v7, :cond_a

    if-eqz p1, :cond_a

    move v2, v7

    goto :goto_0

    .line 1172
    :cond_6
    iput-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mLyric:Lcom/miui/player/helper/LyricParser$Lyric;

    goto :goto_1

    .line 1177
    :cond_7
    iget v2, p0, Lcom/miui/player/MediaPlaybackService;->mLyricStatus:I

    if-ne v2, v9, :cond_9

    .line 1178
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->isBuffering()Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez p5, :cond_8

    move v2, v6

    .line 1179
    goto/16 :goto_0

    .line 1181
    :cond_8
    const/4 v2, 0x3

    iput v2, p0, Lcom/miui/player/MediaPlaybackService;->mLyricStatus:I

    .line 1182
    invoke-direct {p0}, Lcom/miui/player/MediaPlaybackService;->needSearch()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1183
    new-instance v1, Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;

    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, p4, p3, v2}, Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    .local v1, searchInfo:Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getApplication()Landroid/app/Application;

    move-result-object v2

    new-instance v3, Lcom/miui/player/MediaPlaybackService$LyricOpenRunnable;

    invoke-direct {v3, p0, p2, p4}, Lcom/miui/player/MediaPlaybackService$LyricOpenRunnable;-><init>(Lcom/miui/player/MediaPlaybackService;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v1, v3}, Lcom/miui/player/helper/MusicMetaManager;->downloadLyricFile(Landroid/content/Context;Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;Lcom/miui/player/helper/LyricDownloader$LyricAsyncCallback;)I

    move-result v2

    iput v2, p0, Lcom/miui/player/MediaPlaybackService;->mLyricStatus:I

    goto :goto_2

    .line 1187
    .end local v1           #searchInfo:Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;
    :cond_9
    iget v2, p0, Lcom/miui/player/MediaPlaybackService;->mLyricStatus:I

    if-nez v2, :cond_5

    if-eqz p1, :cond_5

    .line 1188
    iput v8, p0, Lcom/miui/player/MediaPlaybackService;->mLyricStatus:I

    goto :goto_2

    :cond_a
    move v2, v6

    .line 1191
    goto/16 :goto_0
.end method

.method private updateNotificationBar()V
    .locals 14

    .prologue
    .line 1548
    const v4, 0x7f0200ac

    .line 1549
    .local v4, icon:I
    const/4 v9, 0x0

    .line 1550
    .local v9, title:Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .line 1551
    .local v3, descript:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getAudioId()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-gez v10, :cond_0

    .line 1553
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 1554
    const-string v3, ""

    .line 1572
    :goto_0
    new-instance v7, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v7, v4, v9, v10, v11}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 1573
    .local v7, notification:Landroid/app/Notification;
    iget v10, v7, Landroid/app/Notification;->flags:I

    or-int/lit8 v10, v10, 0x2

    iput v10, v7, Landroid/app/Notification;->flags:I

    .line 1574
    new-instance v8, Landroid/content/Intent;

    const-string v10, "com.miui.music.NOW_PLAYING"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1575
    .local v8, notificationIntent:Landroid/content/Intent;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {p0, v10, v8, v11}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1577
    .local v2, contentIntent:Landroid/app/PendingIntent;
    invoke-virtual {v7, p0, v9, v3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1579
    const/4 v10, 0x1

    invoke-virtual {p0, v10, v7}, Lcom/miui/player/MediaPlaybackService;->startForeground(ILandroid/app/Notification;)V

    .line 1580
    return-void

    .line 1556
    .end local v2           #contentIntent:Landroid/app/PendingIntent;
    .end local v7           #notification:Landroid/app/Notification;
    .end local v8           #notificationIntent:Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v9

    .line 1557
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/miui/player/helper/MediaInfo;->getLocaleArtistName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1558
    .local v1, artist:Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v10

    invoke-static {p0, v10}, Lcom/miui/player/helper/MediaInfo;->getLocaleAlbumName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1559
    .local v0, album:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    const/4 v10, 0x1

    move v6, v10

    .line 1560
    .local v6, isArtistValid:Z
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    const/4 v10, 0x1

    move v5, v10

    .line 1561
    .local v5, isAlbumValid:Z
    :goto_2
    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    .line 1562
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "  <"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ">"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1559
    .end local v5           #isAlbumValid:Z
    .end local v6           #isArtistValid:Z
    :cond_1
    const/4 v10, 0x0

    move v6, v10

    goto :goto_1

    .line 1560
    .restart local v6       #isArtistValid:Z
    :cond_2
    const/4 v10, 0x0

    move v5, v10

    goto :goto_2

    .line 1563
    .restart local v5       #isAlbumValid:Z
    :cond_3
    if-eqz v6, :cond_4

    .line 1564
    move-object v3, v1

    goto :goto_0

    .line 1565
    :cond_4
    if-eqz v5, :cond_5

    .line 1566
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "<"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ">"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 1568
    :cond_5
    const-string v3, ""

    goto/16 :goto_0
.end method


# virtual methods
.method public closeExternalStorageFiles(Ljava/lang/String;)V
    .locals 1
    .parameter "storagePath"

    .prologue
    const/4 v0, 0x1

    .line 955
    invoke-direct {p0, v0, v0}, Lcom/miui/player/MediaPlaybackService;->stop(ZZ)V

    .line 956
    const-string v0, "com.miui.player.queuechanged"

    invoke-direct {p0, v0}, Lcom/miui/player/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 957
    const-string v0, "meta_changed_track"

    invoke-direct {p0, v0}, Lcom/miui/player/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;)V

    .line 958
    return-void
.end method

.method public duration()J
    .locals 2

    .prologue
    .line 2280
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/helper/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/helper/AsyncMusicPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2281
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/helper/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/helper/AsyncMusicPlayer;->duration()J

    move-result-wide v0

    .line 2283
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public enqueue([JI)V
    .locals 3
    .parameter "list"
    .parameter "action"

    .prologue
    const/4 v2, 0x1

    const-string v0, "meta_changed_track"

    const-string v0, "com.miui.player.queuechanged"

    .line 1258
    monitor-enter p0

    .line 1259
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    :try_start_0
    iget v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    if-ge v0, v1, :cond_2

    .line 1260
    iget v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/miui/player/MediaPlaybackService;->addToPlayList([JI)V

    .line 1261
    const-string v0, "com.miui.player.queuechanged"

    invoke-direct {p0, v0}, Lcom/miui/player/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1275
    :cond_0
    iget v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    if-gez v0, :cond_1

    .line 1276
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    .line 1277
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/player/MediaPlaybackService;->stop(ZZ)V

    .line 1278
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/player/MediaPlaybackService;->openCurrent(Z)V

    .line 1279
    const-string v0, "meta_changed_track"

    invoke-direct {p0, v0}, Lcom/miui/player/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;)V

    .line 1281
    :cond_1
    monitor-exit p0

    .line 1282
    :goto_0
    return-void

    .line 1265
    :cond_2
    const v0, 0x7fffffff

    invoke-direct {p0, p1, v0}, Lcom/miui/player/MediaPlaybackService;->addToPlayList([JI)V

    .line 1266
    const-string v0, "com.miui.player.queuechanged"

    invoke-direct {p0, v0}, Lcom/miui/player/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1267
    if-ne p2, v2, :cond_0

    .line 1268
    iget v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    array-length v1, p1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    .line 1269
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/player/MediaPlaybackService;->stop(ZZ)V

    .line 1270
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/player/MediaPlaybackService;->openCurrent(Z)V

    .line 1271
    const-string v0, "meta_changed_track"

    invoke-direct {p0, v0}, Lcom/miui/player/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;)V

    .line 1272
    monitor-exit p0

    goto :goto_0

    .line 1281
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2253
    monitor-enter p0

    .line 2254
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 2255
    const/4 v1, 0x0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2267
    :goto_0
    return-object v1

    .line 2258
    :cond_0
    const/4 v0, 0x0

    .line 2260
    .local v0, ret:Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getAudioId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    if-eqz v1, :cond_1

    .line 2261
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v0

    goto :goto_0

    .line 2263
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v3, "_data"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v0

    .line 2267
    :goto_1
    :try_start_4
    monitor-exit p0

    move-object v1, v0

    goto :goto_0

    .line 2268
    .end local v0           #ret:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 2264
    .restart local v0       #ret:Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public getAlbumId()J
    .locals 5

    .prologue
    .line 2222
    monitor-enter p0

    .line 2223
    :try_start_0
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_0

    .line 2224
    const-wide/16 v2, -0x1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2233
    :goto_0
    return-wide v2

    .line 2227
    :cond_0
    const-wide/32 v0, 0x7fffffff

    .line 2229
    .local v0, albumId:J
    :try_start_1
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v4, "album_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    .line 2233
    :goto_1
    :try_start_2
    monitor-exit p0

    move-wide v2, v0

    goto :goto_0

    .line 2234
    .end local v0           #albumId:J
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2230
    .restart local v0       #albumId:J
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2208
    monitor-enter p0

    .line 2209
    const/4 v1, 0x0

    .line 2210
    .local v1, ret:Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 2212
    :try_start_1
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v3, "album"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 2213
    .local v0, col:I
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 2217
    .end local v0           #col:I
    :cond_0
    :goto_0
    :try_start_2
    invoke-static {v1}, Lcom/miui/player/helper/MediaInfo;->getRawName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    monitor-exit p0

    return-object v2

    .line 2218
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2214
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getArtistId()J
    .locals 5

    .prologue
    .line 2191
    monitor-enter p0

    .line 2192
    :try_start_0
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_0

    .line 2193
    const-wide/16 v2, -0x1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2203
    :goto_0
    return-wide v2

    .line 2196
    :cond_0
    const-wide/32 v0, 0x7fffffff

    .line 2198
    .local v0, artistId:J
    :try_start_1
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v4, "artist_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-wide v0

    .line 2203
    :goto_1
    :try_start_2
    monitor-exit p0

    move-wide v2, v0

    goto :goto_0

    .line 2204
    .end local v0           #artistId:J
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2199
    .restart local v0       #artistId:J
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2159
    monitor-enter p0

    .line 2160
    const/4 v0, 0x0

    .line 2162
    .local v0, ret:Ljava/lang/String;
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 2164
    :try_start_1
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v3, "artist"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 2168
    :cond_0
    :goto_0
    :try_start_2
    invoke-static {v0}, Lcom/miui/player/helper/MediaInfo;->getRawName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 2169
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 2165
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getAudioId()J
    .locals 2

    .prologue
    .line 2124
    monitor-enter p0

    .line 2125
    :try_start_0
    iget v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/helper/AsyncMusicPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/helper/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/helper/AsyncMusicPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2126
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    iget v1, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    aget-wide v0, v0, v1

    monitor-exit p0

    .line 2129
    :goto_0
    return-wide v0

    .line 2128
    :cond_0
    monitor-exit p0

    .line 2129
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 2128
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBufferedPercent()F
    .locals 1

    .prologue
    .line 1714
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/helper/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/helper/AsyncMusicPlayer;->getBufferedPercent()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1718
    :goto_0
    return v0

    .line 1715
    :catch_0
    move-exception v0

    .line 1718
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBufferedPosition()J
    .locals 2

    .prologue
    .line 1705
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/helper/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/helper/AsyncMusicPlayer;->duration()J

    move-result-wide v0

    long-to-float v0, v0

    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/helper/AsyncMusicPlayer;

    invoke-virtual {v1}, Lcom/miui/player/helper/AsyncMusicPlayer;->getBufferedPercent()F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 1709
    :goto_0
    return-wide v0

    .line 1706
    :catch_0
    move-exception v0

    .line 1709
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->position()J

    move-result-wide v0

    goto :goto_0
.end method

.method public getLyricStatus()I
    .locals 1

    .prologue
    .line 2272
    iget v0, p0, Lcom/miui/player/MediaPlaybackService;->mLyricStatus:I

    return v0
.end method

.method public getMediaMountedCount()I
    .locals 1

    .prologue
    .line 2104
    iget v0, p0, Lcom/miui/player/MediaPlaybackService;->mMediaMountedCount:I

    return v0
.end method

.method public getOnlineId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2174
    monitor-enter p0

    .line 2175
    :try_start_0
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_0

    .line 2176
    const/4 v2, 0x0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2186
    :goto_0
    return-object v2

    .line 2179
    :cond_0
    const/4 v1, 0x0

    .line 2181
    .local v1, ret:Ljava/lang/String;
    :try_start_1
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v3, "online_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 2182
    .local v0, col:I
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 2186
    .end local v0           #col:I
    :goto_1
    :try_start_2
    monitor-exit p0

    move-object v2, v1

    goto :goto_0

    .line 2187
    .end local v1           #ret:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 2183
    .restart local v1       #ret:Ljava/lang/String;
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2116
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    return-object v0
.end method

.method public getQueue()[J
    .locals 5

    .prologue
    .line 1378
    monitor-enter p0

    .line 1379
    :try_start_0
    iget v1, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    .line 1380
    .local v1, len:I
    new-array v2, v1, [J

    .line 1381
    .local v2, list:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1382
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    aget-wide v3, v3, v0

    aput-wide v3, v2, v0

    .line 1381
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1384
    :cond_0
    monitor-exit p0

    return-object v2

    .line 1385
    .end local v0           #i:I
    .end local v1           #len:I
    .end local v2           #list:[J
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getQueuePosition()I
    .locals 1

    .prologue
    .line 2138
    monitor-enter p0

    .line 2139
    :try_start_0
    iget v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    monitor-exit p0

    return v0

    .line 2140
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 2067
    iget v0, p0, Lcom/miui/player/MediaPlaybackService;->mRepeatMode:I

    return v0
.end method

.method public getShuffleMode()I
    .locals 1

    .prologue
    .line 2071
    iget v0, p0, Lcom/miui/player/MediaPlaybackService;->mShuffleMode:I

    return v0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2238
    monitor-enter p0

    .line 2239
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_0

    .line 2240
    const/4 v1, 0x0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2248
    :goto_0
    return-object v1

    .line 2242
    :cond_0
    const/4 v0, 0x0

    .line 2244
    .local v0, ret:Ljava/lang/String;
    :try_start_1
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    const-string v3, "title"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 2248
    :goto_1
    :try_start_2
    monitor-exit p0

    move-object v1, v0

    goto :goto_0

    .line 2249
    .end local v0           #ret:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 2245
    .restart local v0       #ret:Ljava/lang/String;
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public isBlocking()Z
    .locals 1

    .prologue
    .line 1696
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/helper/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/helper/AsyncMusicPlayer;->isBlocking()Z

    move-result v0

    return v0
.end method

.method public isBuffering()Z
    .locals 1

    .prologue
    .line 1692
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayerResponser:Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;

    iget-boolean v0, v0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->mIsBuffering:Z

    return v0
.end method

.method public isOneShot()Z
    .locals 1

    .prologue
    .line 2108
    iget-boolean v0, p0, Lcom/miui/player/MediaPlaybackService;->mOneShot:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 1687
    iget-boolean v0, p0, Lcom/miui/player/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayerResponser:Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;

    iget-boolean v0, v0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->mIsBuffering:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayerResponser:Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;

    iget-boolean v0, v0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->mPlayAfterBuffer:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public moveQueueItem(II)V
    .locals 7
    .parameter "index1"
    .parameter "index2"

    .prologue
    const/4 v6, 0x1

    .line 1337
    monitor-enter p0

    .line 1338
    :try_start_0
    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    if-lt p1, v3, :cond_0

    .line 1339
    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    sub-int p1, v3, v6

    .line 1341
    :cond_0
    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    if-lt p2, v3, :cond_1

    .line 1342
    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    sub-int p2, v3, v6

    .line 1344
    :cond_1
    if-ge p1, p2, :cond_5

    .line 1345
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    aget-wide v1, v3, p1

    .line 1346
    .local v1, tmp:J
    move v0, p1

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_2

    .line 1347
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    iget-object v4, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    add-int/lit8 v5, v0, 0x1

    aget-wide v4, v4, v5

    aput-wide v4, v3, v0

    .line 1346
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1349
    :cond_2
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    aput-wide v1, v3, p2

    .line 1350
    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    if-ne v3, p1, :cond_4

    .line 1351
    iput p2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    .line 1367
    .end local v0           #i:I
    .end local v1           #tmp:J
    :cond_3
    :goto_1
    const-string v3, "com.miui.player.queuechanged"

    invoke-direct {p0, v3}, Lcom/miui/player/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1368
    monitor-exit p0

    .line 1369
    return-void

    .line 1352
    .restart local v0       #i:I
    .restart local v1       #tmp:J
    :cond_4
    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    if-lt v3, p1, :cond_3

    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    if-gt v3, p2, :cond_3

    .line 1353
    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    sub-int/2addr v3, v6

    iput v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 1368
    .end local v0           #i:I
    .end local v1           #tmp:J
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1355
    :cond_5
    if-ge p2, p1, :cond_3

    .line 1356
    :try_start_1
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    aget-wide v1, v3, p1

    .line 1357
    .restart local v1       #tmp:J
    move v0, p1

    .restart local v0       #i:I
    :goto_2
    if-le v0, p2, :cond_6

    .line 1358
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    iget-object v4, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    sub-int v5, v0, v6

    aget-wide v4, v4, v5

    aput-wide v4, v3, v0

    .line 1357
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 1360
    :cond_6
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    aput-wide v1, v3, p2

    .line 1361
    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    if-ne v3, p1, :cond_7

    .line 1362
    iput p2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 1363
    :cond_7
    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    if-lt v3, p2, :cond_3

    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    if-gt v3, p1, :cond_3

    .line 1364
    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public next(Z)V
    .locals 4
    .parameter "force"

    .prologue
    const/4 v3, 0x1

    .line 1790
    monitor-enter p0

    .line 1791
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/player/MediaPlaybackService;->mOneShot:Z

    if-eqz v1, :cond_0

    .line 1794
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/miui/player/MediaPlaybackService;->seek(J)J

    .line 1795
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->play()V

    .line 1796
    monitor-exit p0

    .line 1837
    :goto_0
    return-void

    .line 1799
    :cond_0
    iget v1, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    if-gtz v1, :cond_1

    .line 1800
    const-string v1, "MediaPlaybackService"

    const-string v2, "No play queue"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    monitor-exit p0

    goto :goto_0

    .line 1835
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1804
    :cond_1
    const/4 v0, 0x0

    .line 1805
    .local v0, allCompleted:Z
    :try_start_1
    iget v1, p0, Lcom/miui/player/MediaPlaybackService;->mShuffleMode:I

    if-ne v1, v3, :cond_5

    .line 1806
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mShuffleTracer:Lcom/miui/player/helper/ShuffleTracer;

    invoke-virtual {v1}, Lcom/miui/player/helper/ShuffleTracer;->getTracer()I

    move-result v1

    iget v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_2

    iget v1, p0, Lcom/miui/player/MediaPlaybackService;->mRepeatMode:I

    if-eq v1, v3, :cond_2

    if-eqz p1, :cond_4

    .line 1808
    :cond_2
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mShuffleTracer:Lcom/miui/player/helper/ShuffleTracer;

    iget v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/player/helper/ShuffleTracer;->randNext(II)I

    move-result v1

    iput v1, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    .line 1825
    :cond_3
    :goto_1
    if-eqz v0, :cond_9

    .line 1826
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/miui/player/MediaPlaybackService;->gotoIdleState(Z)V

    .line 1827
    const-string v1, "com.miui.player.playbackcomplete"

    invoke-direct {p0, v1}, Lcom/miui/player/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1828
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/player/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1829
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/miui/player/MediaPlaybackService;->onPlayStateChanged(ZZ)V

    .line 1835
    :goto_2
    monitor-exit p0

    goto :goto_0

    .line 1810
    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    .line 1813
    :cond_5
    iget v1, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    iget v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_8

    .line 1815
    iget v1, p0, Lcom/miui/player/MediaPlaybackService;->mRepeatMode:I

    if-nez v1, :cond_6

    if-nez p1, :cond_6

    .line 1816
    const/4 v0, 0x1

    goto :goto_1

    .line 1817
    :cond_6
    iget v1, p0, Lcom/miui/player/MediaPlaybackService;->mRepeatMode:I

    if-eq v1, v3, :cond_7

    if-eqz p1, :cond_3

    .line 1818
    :cond_7
    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 1821
    :cond_8
    iget v1, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 1831
    :cond_9
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/miui/player/MediaPlaybackService;->stop(ZZ)V

    .line 1832
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/miui/player/MediaPlaybackService;->openCurrent(Z)V

    .line 1833
    const-string v1, "meta_changed_track"

    invoke-direct {p0, v1}, Lcom/miui/player/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "intent"

    .prologue
    .line 826
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 827
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/MediaPlaybackService;->mServiceInUse:Z

    .line 828
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 587
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 589
    invoke-direct {p0}, Lcom/miui/player/MediaPlaybackService;->registerMediaButtonReceiver()V

    .line 591
    new-instance v8, Lcom/miui/player/helper/ShakeListener;

    invoke-direct {v8, p0}, Lcom/miui/player/helper/ShakeListener;-><init>(Lcom/miui/player/MediaPlaybackService;)V

    iput-object v8, p0, Lcom/miui/player/MediaPlaybackService;->mShakeListener:Lcom/miui/player/helper/ShakeListener;

    .line 592
    iget-object v8, p0, Lcom/miui/player/MediaPlaybackService;->mShakeListener:Lcom/miui/player/helper/ShakeListener;

    invoke-virtual {v8}, Lcom/miui/player/helper/ShakeListener;->initialize()V

    .line 594
    const-string v8, "power"

    invoke-virtual {p0, v8}, Lcom/miui/player/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    .line 595
    .local v5, pm:Landroid/os/PowerManager;
    const/4 v8, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    iput-object v8, p0, Lcom/miui/player/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 596
    iget-object v8, p0, Lcom/miui/player/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8, v10}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 598
    const-string v8, "Music"

    const/4 v9, 0x3

    invoke-virtual {p0, v8, v9}, Lcom/miui/player/MediaPlaybackService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    iput-object v8, p0, Lcom/miui/player/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;

    .line 599
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/os/FileUtils;->getFatVolumeId(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/miui/player/MediaPlaybackService;->mCardId:I

    .line 601
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->registerExternalStorageListener()V

    .line 605
    new-instance v8, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;

    invoke-direct {v8, p0, v11}, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;-><init>(Lcom/miui/player/MediaPlaybackService;Lcom/miui/player/MediaPlaybackService$1;)V

    iput-object v8, p0, Lcom/miui/player/MediaPlaybackService;->mPlayerResponser:Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;

    .line 606
    new-instance v8, Lcom/miui/player/helper/AsyncMusicPlayer;

    iget-object v9, p0, Lcom/miui/player/MediaPlaybackService;->mPlayerResponser:Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;

    invoke-direct {v8, v11, v9}, Lcom/miui/player/helper/AsyncMusicPlayer;-><init>(Ljava/lang/String;Lcom/miui/player/helper/AsyncMusicPlayer$AsyncPrepareResponser;)V

    iput-object v8, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/helper/AsyncMusicPlayer;

    .line 607
    invoke-static {p0}, Lcom/miui/player/ui/EqualizerActivity;->isEqualizerEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 608
    invoke-static {p0}, Lcom/miui/player/ui/EqualizerActivity;->getEqualizerConfigId(Landroid/content/Context;)I

    move-result v1

    .line 609
    .local v1, equalizerConf:I
    const/4 v8, -0x1

    if-eq v1, v8, :cond_0

    .line 610
    invoke-static {p0, v1}, Lcom/miui/player/provider/PlayerProviderUtils;->getEqualizerConfigData(Landroid/content/Context;I)[I

    move-result-object v3

    .line 611
    .local v3, levels:[I
    invoke-virtual {p0, v3}, Lcom/miui/player/MediaPlaybackService;->updateEqualizerBands([I)V

    .line 615
    .end local v1           #equalizerConf:I
    .end local v3           #levels:[I
    :cond_0
    invoke-direct {p0}, Lcom/miui/player/MediaPlaybackService;->reloadQueue()V

    .line 617
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 618
    .local v0, commandFilter:Landroid/content/IntentFilter;
    const-string v8, "com.miui.player.musicservicecommand"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 619
    const-string v8, "com.miui.player.musicservicecommand.togglepause"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 620
    const-string v8, "com.miui.player.musicservicecommand.pause"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 621
    const-string v8, "com.miui.player.musicservicecommand.next"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 622
    const-string v8, "com.miui.player.musicservicecommand.previous"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 623
    const-string v8, "com.miui.player.musicservicecommand.update_meta"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 624
    const-string v8, "com.miui.player.musicservicecommand.shake_pref"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 625
    const-string v8, "com.miui.player.musicservicecommand.quit"

    invoke-virtual {v0, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 626
    iget-object v8, p0, Lcom/miui/player/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v0}, Lcom/miui/player/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 628
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 629
    .local v6, quitFilter:Landroid/content/IntentFilter;
    const-string v8, "com.miui.music.quit"

    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 630
    iget-object v8, p0, Lcom/miui/player/MediaPlaybackService;->mQuitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v6}, Lcom/miui/player/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 632
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 633
    .local v2, id3ChangedFilter:Landroid/content/IntentFilter;
    const-string v8, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 634
    const-string v8, "file"

    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 635
    iget-object v8, p0, Lcom/miui/player/MediaPlaybackService;->mId3ChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v2}, Lcom/miui/player/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 637
    invoke-direct {p0}, Lcom/miui/player/MediaPlaybackService;->registerScreenlock()V

    .line 638
    invoke-direct {p0}, Lcom/miui/player/MediaPlaybackService;->registerConnReceiver()V

    .line 640
    const-string v8, "wifi"

    invoke-virtual {p0, v8}, Lcom/miui/player/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    .line 641
    .local v7, wm:Landroid/net/wifi/WifiManager;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v8

    iput-object v8, p0, Lcom/miui/player/MediaPlaybackService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    .line 642
    iget-object v8, p0, Lcom/miui/player/MediaPlaybackService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v8, v10}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    .line 643
    iget-object v8, p0, Lcom/miui/player/MediaPlaybackService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v8}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 648
    iget-object v8, p0, Lcom/miui/player/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 649
    .local v4, msg:Landroid/os/Message;
    iget-object v8, p0, Lcom/miui/player/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v9, 0xea60

    invoke-virtual {v8, v4, v9, v10}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 650
    return-void
.end method

.method public onDestroy()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const-string v4, "MediaPlaybackService"

    .line 656
    invoke-virtual {p0, v1, v1}, Lcom/miui/player/MediaPlaybackService;->onPlayStateChanged(ZZ)V

    .line 658
    invoke-direct {p0}, Lcom/miui/player/MediaPlaybackService;->unregisterMediaButtonReceiver()V

    .line 660
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/miui/player/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 661
    .local v0, am:Landroid/media/AudioManager;
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 663
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 664
    const-string v1, "MediaPlaybackService"

    const-string v1, "Service being destroyed while still playing."

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    :cond_0
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/helper/AsyncMusicPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/miui/player/helper/AsyncMusicPlayer;->stop(Z)V

    .line 670
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 671
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 673
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    .line 674
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 675
    iput-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 678
    :cond_1
    invoke-direct {p0}, Lcom/miui/player/MediaPlaybackService;->unregisterScreenlock()V

    .line 679
    invoke-direct {p0}, Lcom/miui/player/MediaPlaybackService;->unregisterConnReceiver()V

    .line 681
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/miui/player/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 682
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mQuitReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/miui/player/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 683
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mId3ChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/miui/player/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 684
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    .line 685
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/miui/player/MediaPlaybackService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 686
    iput-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 689
    :cond_2
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mShakeListener:Lcom/miui/player/helper/ShakeListener;

    invoke-virtual {v1}, Lcom/miui/player/helper/ShakeListener;->release()V

    .line 691
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mWifiLock:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 692
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 693
    const-string v1, "MediaPlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " wakelock release  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 697
    :cond_3
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/helper/AsyncMusicPlayer;

    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miui/player/helper/AsyncMusicPlayer;->release(Landroid/content/Context;)V

    .line 698
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 699
    return-void
.end method

.method onPlayStateChanged(ZZ)V
    .locals 4
    .parameter "isPlay"
    .parameter "isPrepare"

    .prologue
    const/4 v3, 0x2

    .line 2771
    if-eqz p1, :cond_2

    .line 2772
    invoke-direct {p0}, Lcom/miui/player/MediaPlaybackService;->registerMediaButtonReceiver()V

    .line 2773
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2774
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2775
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2776
    const-string v0, "MediaPlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " wakelock acquire "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2779
    :cond_0
    if-nez p2, :cond_1

    .line 2780
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mShakeListener:Lcom/miui/player/helper/ShakeListener;

    invoke-virtual {v0}, Lcom/miui/player/helper/ShakeListener;->register()V

    .line 2790
    :cond_1
    :goto_0
    return-void

    .line 2783
    :cond_2
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2784
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2785
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2788
    :cond_3
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mShakeListener:Lcom/miui/player/helper/ShakeListener;

    invoke-virtual {v0}, Lcom/miui/player/helper/ShakeListener;->unregister()V

    goto :goto_0
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 833
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 834
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/MediaPlaybackService;->mServiceInUse:Z

    .line 835
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 9
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 839
    iput p3, p0, Lcom/miui/player/MediaPlaybackService;->mServiceStartId:I

    .line 840
    iget-object v6, p0, Lcom/miui/player/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 842
    if-eqz p1, :cond_1

    .line 843
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 844
    .local v0, action:Ljava/lang/String;
    const-string v6, "command"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 846
    .local v3, cmd:Ljava/lang/String;
    const-string v6, "next"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "com.miui.player.musicservicecommand.next"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 847
    :cond_0
    const/4 v6, 0x1

    invoke-virtual {p0, v6}, Lcom/miui/player/MediaPlaybackService;->next(Z)V

    .line 894
    .end local v0           #action:Ljava/lang/String;
    .end local v3           #cmd:Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/miui/player/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 895
    iget-object v6, p0, Lcom/miui/player/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v6}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v5

    .line 896
    .local v5, msg:Landroid/os/Message;
    iget-object v6, p0, Lcom/miui/player/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v7, 0xea60

    invoke-virtual {v6, v5, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 898
    const/4 v6, 0x2

    .end local v5           #msg:Landroid/os/Message;
    :goto_1
    return v6

    .line 848
    .restart local v0       #action:Ljava/lang/String;
    .restart local v3       #cmd:Ljava/lang/String;
    :cond_2
    const-string v6, "previous"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "com.miui.player.musicservicecommand.previous"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 849
    :cond_3
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->prev()V

    goto :goto_0

    .line 850
    :cond_4
    const-string v6, "togglepause"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "com.miui.player.musicservicecommand.togglepause"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 851
    :cond_5
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->isPlaying()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 852
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->pause()V

    goto :goto_0

    .line 854
    :cond_6
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->play()V

    .line 855
    const-string v6, "meta_changed_track"

    invoke-direct {p0, v6}, Lcom/miui/player/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;)V

    goto :goto_0

    .line 857
    :cond_7
    const-string v6, "pause"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "com.miui.player.musicservicecommand.pause"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 858
    :cond_8
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->pause()V

    goto :goto_0

    .line 859
    :cond_9
    const-string v6, "stop"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 860
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->pause()V

    .line 861
    const-wide/16 v6, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/miui/player/MediaPlaybackService;->seek(J)J

    goto :goto_0

    .line 862
    :cond_a
    const-string v6, "remove"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 863
    const-string v6, "id"

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 864
    .local v4, id:I
    if-eqz v4, :cond_1

    .line 865
    int-to-long v6, v4

    invoke-virtual {p0, v6, v7}, Lcom/miui/player/MediaPlaybackService;->removeTrack(J)I

    goto/16 :goto_0

    .line 867
    .end local v4           #id:I
    :cond_b
    const-string v6, "com.miui.player.requestprogress"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 868
    const-string v6, "com.miui.player.refreshprogress"

    invoke-direct {p0, v6}, Lcom/miui/player/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 869
    :cond_c
    const-string v6, "com.miui.player.init_gadget"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 870
    const-string v6, "meta_changed_track"

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/miui/player/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 871
    :cond_d
    const-string v6, "com.miui.player.togglefavorite"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 872
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getAudioId()J

    move-result-wide v1

    .line 873
    .local v1, audioId:J
    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-gtz v6, :cond_e

    .line 874
    const/4 v6, 0x2

    goto/16 :goto_1

    .line 876
    :cond_e
    invoke-static {v1, v2}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v6

    if-nez v6, :cond_f

    .line 877
    invoke-static {p0, v1, v2}, Lcom/miui/player/model/TrackBrowserHelper;->handleLocalClick(Landroid/content/Context;J)V

    goto/16 :goto_0

    .line 879
    :cond_f
    invoke-static {p0, v1, v2}, Lcom/miui/player/model/TrackBrowserHelper;->handlOnlineClick(Landroid/content/Context;J)V

    goto/16 :goto_0

    .line 881
    .end local v1           #audioId:J
    :cond_10
    const-string v6, "com.miui.player.musicservicecommand.update_meta"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 882
    const-string v6, "lyric"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 883
    const/4 v6, -0x1

    iput v6, p0, Lcom/miui/player/MediaPlaybackService;->mLyricStatus:I

    .line 884
    const-string v6, "meta_changed_lyric"

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/miui/player/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 885
    :cond_11
    const-string v6, "album"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 886
    const-string v6, "meta_changed_album"

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/miui/player/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 5
    .parameter "intent"

    .prologue
    const/4 v4, 0x1

    .line 903
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/player/MediaPlaybackService;->mServiceInUse:Z

    .line 906
    invoke-direct {p0, v4}, Lcom/miui/player/MediaPlaybackService;->saveQueue(Z)V

    .line 908
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/player/MediaPlaybackService;->mResumeAfterAudioFocusGain:Z

    if-eqz v1, :cond_1

    :cond_0
    move v1, v4

    .line 926
    :goto_0
    return v1

    .line 918
    :cond_1
    iget v1, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 919
    :cond_2
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 920
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move v1, v4

    .line 921
    goto :goto_0

    .line 925
    .end local v0           #msg:Landroid/os/Message;
    :cond_3
    iget v1, p0, Lcom/miui/player/MediaPlaybackService;->mServiceStartId:I

    invoke-virtual {p0, v1}, Lcom/miui/player/MediaPlaybackService;->stopSelf(I)V

    move v1, v4

    .line 926
    goto :goto_0
.end method

.method public open(Ljava/lang/String;ZZZ)V
    .locals 11
    .parameter "path"
    .parameter "oneshot"
    .parameter "toPlay"
    .parameter "isFirst"

    .prologue
    .line 1437
    monitor-enter p0

    .line 1438
    if-nez p1, :cond_0

    .line 1439
    :try_start_0
    monitor-exit p0

    .line 1503
    :goto_0
    return-void

    .line 1442
    :cond_0
    if-eqz p2, :cond_1

    .line 1443
    const/4 v2, 0x0

    iput v2, p0, Lcom/miui/player/MediaPlaybackService;->mRepeatMode:I

    .line 1444
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/miui/player/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 1445
    const/4 v2, 0x1

    iput v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    .line 1446
    const/4 v2, -0x1

    iput v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    .line 1450
    :cond_1
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-nez v2, :cond_2

    .line 1451
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1455
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v2, "content://media/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1456
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 1457
    .local v1, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    .line 1458
    .local v3, where:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1468
    .local v4, selectionArgs:[Ljava/lang/String;
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mLocalCursorCols:[Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .line 1470
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_2

    .line 1471
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_6

    .line 1472
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1473
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1485
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    .end local v3           #where:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    :cond_2
    :goto_2
    :try_start_2
    iput-object p1, p0, Lcom/miui/player/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    .line 1486
    iput-boolean p2, p0, Lcom/miui/player/MediaPlaybackService;->mOneShot:Z

    .line 1487
    iget-boolean v2, p0, Lcom/miui/player/MediaPlaybackService;->mOneShot:Z

    if-nez v2, :cond_3

    invoke-direct {p0, p1, p4}, Lcom/miui/player/MediaPlaybackService;->canPlay(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1488
    :cond_3
    const/4 v2, -0x1

    iput v2, p0, Lcom/miui/player/MediaPlaybackService;->mLyricStatus:I

    .line 1490
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayerResponser:Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;

    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    invoke-virtual {v2, v3, p3}, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->resetBufferingPath(Ljava/lang/String;Z)V

    .line 1491
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/helper/AsyncMusicPlayer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/player/helper/AsyncMusicPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1492
    if-eqz p3, :cond_7

    invoke-direct {p0}, Lcom/miui/player/MediaPlaybackService;->getNextId()J

    move-result-wide v5

    move-wide v8, v5

    .line 1493
    .local v8, nextId:J
    :goto_3
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/helper/AsyncMusicPlayer;

    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mFileToPlay:Ljava/lang/String;

    new-instance v5, Lcom/miui/player/MediaPlaybackService$PrepareInfo;

    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v10

    move-object v6, p0

    move v7, p4

    invoke-direct/range {v5 .. v10}, Lcom/miui/player/MediaPlaybackService$PrepareInfo;-><init>(Lcom/miui/player/MediaPlaybackService;ZJLjava/lang/String;)V

    invoke-virtual {v2, v3, v5}, Lcom/miui/player/helper/AsyncMusicPlayer;->prepare(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1494
    if-eqz p3, :cond_4

    .line 1495
    invoke-direct {p0}, Lcom/miui/player/MediaPlaybackService;->updateNotificationBar()V

    .line 1497
    :cond_4
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/miui/player/MediaPlaybackService;->onPlayStateChanged(ZZ)V

    .line 1502
    .end local v8           #nextId:J
    :goto_4
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 1460
    .restart local v0       #resolver:Landroid/content/ContentResolver;
    :cond_5
    :try_start_3
    invoke-static {p1}, Landroid/provider/MediaStore$Audio$Media;->getContentUriForPath(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1461
    .restart local v1       #uri:Landroid/net/Uri;
    const-string v3, "_data= ?"

    .line 1462
    .restart local v3       #where:Ljava/lang/String;
    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v4, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .restart local v4       #selectionArgs:[Ljava/lang/String;
    goto :goto_1

    .line 1475
    :cond_6
    :try_start_4
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 1476
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/miui/player/MediaPlaybackService;->ensurePlayListCapacity(I)V

    .line 1477
    const/4 v2, 0x1

    iput v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    .line 1478
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miui/player/MediaPlaybackService;->mCursor:Landroid/database/Cursor;

    .end local v3           #where:Ljava/lang/String;
    .end local v4           #selectionArgs:[Ljava/lang/String;
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    aput-wide v5, v2, v3

    .line 1479
    const/4 v2, 0x0

    iput v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 1482
    :catch_0
    move-exception v2

    goto :goto_2

    .line 1492
    .end local v0           #resolver:Landroid/content/ContentResolver;
    .end local v1           #uri:Landroid/net/Uri;
    :cond_7
    const-wide/16 v5, 0x0

    move-wide v8, v5

    goto :goto_3

    .line 1499
    :cond_8
    :try_start_5
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->stop()V

    .line 1500
    const-string v2, "meta_changed_track"

    invoke-direct {p0, v2}, Lcom/miui/player/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4
.end method

.method public open([JI)V
    .locals 9
    .parameter "list"
    .parameter "position"

    .prologue
    .line 1292
    monitor-enter p0

    .line 1293
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getAudioId()J

    move-result-wide v3

    .line 1294
    .local v3, oldId:J
    array-length v1, p1

    .line 1295
    .local v1, listlength:I
    const/4 v2, 0x1

    .line 1296
    .local v2, newlist:Z
    iget v5, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    if-ne v5, v1, :cond_0

    iget-object v5, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    if-eqz v5, :cond_0

    .line 1298
    const/4 v2, 0x0

    .line 1299
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1300
    aget-wide v5, p1, v0

    iget-object v7, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    aget-wide v7, v7, v0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_5

    .line 1301
    const/4 v2, 0x1

    .line 1306
    .end local v0           #i:I
    :cond_0
    if-eqz v2, :cond_1

    .line 1307
    const/4 v5, -0x1

    invoke-direct {p0, p1, v5}, Lcom/miui/player/MediaPlaybackService;->addToPlayList([JI)V

    .line 1310
    :cond_1
    if-ltz p2, :cond_6

    .line 1311
    iput p2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    .line 1315
    :goto_1
    iget-object v5, p0, Lcom/miui/player/MediaPlaybackService;->mShuffler:Lcom/miui/player/MediaPlaybackService$Shuffler;

    invoke-virtual {v5}, Lcom/miui/player/MediaPlaybackService$Shuffler;->reset()V

    .line 1316
    iget-object v5, p0, Lcom/miui/player/MediaPlaybackService;->mShuffleTracer:Lcom/miui/player/helper/ShuffleTracer;

    invoke-virtual {v5}, Lcom/miui/player/helper/ShuffleTracer;->clear()V

    .line 1317
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-direct {p0, v5, v6}, Lcom/miui/player/MediaPlaybackService;->stop(ZZ)V

    .line 1318
    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/miui/player/MediaPlaybackService;->openCurrent(Z)V

    .line 1319
    if-eqz v2, :cond_2

    .line 1320
    const-string v5, "com.miui.player.queuechanged"

    invoke-direct {p0, v5}, Lcom/miui/player/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1323
    :cond_2
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getAudioId()J

    move-result-wide v5

    cmp-long v5, v3, v5

    if-nez v5, :cond_3

    invoke-static {v3, v4}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1324
    :cond_3
    const-string v5, "meta_changed_track"

    invoke-direct {p0, v5}, Lcom/miui/player/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;)V

    .line 1327
    :cond_4
    monitor-exit p0

    .line 1328
    return-void

    .line 1299
    .restart local v0       #i:I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1313
    .end local v0           #i:I
    :cond_6
    iget-object v5, p0, Lcom/miui/player/MediaPlaybackService;->mShuffler:Lcom/miui/player/MediaPlaybackService$Shuffler;

    iget v6, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    invoke-virtual {v5, v6}, Lcom/miui/player/MediaPlaybackService$Shuffler;->nextInt(I)I

    move-result v5

    iput v5, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 1327
    .end local v1           #listlength:I
    .end local v2           #newlist:Z
    .end local v3           #oldId:J
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 1666
    monitor-enter p0

    .line 1667
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/miui/player/MediaPlaybackService;->mResumeAfterAudioFocusGain:Z

    .line 1668
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1669
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/helper/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/helper/AsyncMusicPlayer;->pause()V

    .line 1670
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/player/MediaPlaybackService;->gotoIdleState(Z)V

    .line 1671
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1672
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayerResponser:Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->stopBuffering()V

    .line 1673
    const-string v0, "com.miui.player.playstatechanged"

    invoke-direct {p0, v0}, Lcom/miui/player/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1676
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/miui/player/MediaPlaybackService;->onPlayStateChanged(ZZ)V

    .line 1677
    monitor-exit p0

    .line 1678
    return-void

    .line 1677
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public play()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1586
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/helper/AsyncMusicPlayer;

    invoke-virtual {v2}, Lcom/miui/player/helper/AsyncMusicPlayer;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1587
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayerResponser:Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;

    iget-boolean v2, v2, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->mIsBuffering:Z

    if-eqz v2, :cond_2

    .line 1588
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayerResponser:Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;

    iget-object v1, v2, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->mCurrentBufferingPath:Ljava/lang/String;

    .line 1589
    .local v1, bufferingPath:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1590
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayerResponser:Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;

    iput-boolean v4, v2, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->mPlayAfterBuffer:Z

    .line 1591
    invoke-virtual {p0, v4, v4}, Lcom/miui/player/MediaPlaybackService;->onPlayStateChanged(ZZ)V

    .line 1597
    .end local v1           #bufferingPath:Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/helper/AsyncMusicPlayer;

    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService;->completionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v2, v3}, Lcom/miui/player/helper/AsyncMusicPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 1598
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/miui/player/MediaPlaybackService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1599
    .local v0, am:Landroid/media/AudioManager;
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mAudioFocusListener:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1602
    invoke-direct {p0}, Lcom/miui/player/MediaPlaybackService;->updateNotificationBar()V

    .line 1603
    iget-boolean v2, p0, Lcom/miui/player/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    if-nez v2, :cond_1

    .line 1604
    iput-boolean v4, p0, Lcom/miui/player/MediaPlaybackService;->mIsSupposedToBePlaying:Z

    .line 1605
    const-string v2, "com.miui.player.playstatechanged"

    invoke-direct {p0, v2}, Lcom/miui/player/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1623
    .end local v0           #am:Landroid/media/AudioManager;
    :cond_1
    :goto_1
    return-void

    .line 1594
    :cond_2
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/helper/AsyncMusicPlayer;

    invoke-virtual {v2}, Lcom/miui/player/helper/AsyncMusicPlayer;->start()V

    .line 1595
    invoke-virtual {p0, v4, v3}, Lcom/miui/player/MediaPlaybackService;->onPlayStateChanged(ZZ)V

    goto :goto_0

    .line 1612
    :cond_3
    invoke-direct {p0}, Lcom/miui/player/MediaPlaybackService;->isAllOnline()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1613
    invoke-static {p0}, Lcom/miui/player/helper/NetworkUtils;->isConnectivityActive(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 1614
    const v2, 0x7f080093

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1616
    :cond_4
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    .line 1617
    iput v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    .line 1618
    const/4 v2, -0x1

    iput v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    goto :goto_1

    .line 1620
    :cond_5
    invoke-direct {p0}, Lcom/miui/player/MediaPlaybackService;->makeAllShuffleList()Z

    goto :goto_1
.end method

.method public position()J
    .locals 2

    .prologue
    .line 2290
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->isBuffering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2291
    const-wide/16 v0, 0x0

    .line 2297
    :goto_0
    return-wide v0

    .line 2294
    :cond_0
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/helper/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/helper/AsyncMusicPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2295
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/helper/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/helper/AsyncMusicPlayer;->position()J

    move-result-wide v0

    goto :goto_0

    .line 2297
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public prev()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 1756
    monitor-enter p0

    .line 1757
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/player/MediaPlaybackService;->mOneShot:Z

    if-eqz v1, :cond_0

    .line 1760
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/miui/player/MediaPlaybackService;->seek(J)J

    .line 1761
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->play()V

    .line 1762
    monitor-exit p0

    .line 1787
    :goto_0
    return-void

    .line 1764
    :cond_0
    iget v1, p0, Lcom/miui/player/MediaPlaybackService;->mShuffleMode:I

    if-ne v1, v2, :cond_3

    .line 1766
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mShuffleTracer:Lcom/miui/player/helper/ShuffleTracer;

    iget v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    iget v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    invoke-virtual {v1, v2, v3}, Lcom/miui/player/helper/ShuffleTracer;->back(II)I

    move-result v0

    .line 1767
    .local v0, pos:I
    if-gez v0, :cond_1

    .line 1769
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/miui/player/MediaPlaybackService;->seek(J)J

    .line 1770
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->play()V

    .line 1771
    monitor-exit p0

    goto :goto_0

    .line 1786
    .end local v0           #pos:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 1773
    .restart local v0       #pos:I
    :cond_1
    :try_start_1
    iput v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    .line 1783
    .end local v0           #pos:I
    :cond_2
    :goto_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/miui/player/MediaPlaybackService;->stop(ZZ)V

    .line 1784
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/miui/player/MediaPlaybackService;->openCurrent(Z)V

    .line 1785
    const-string v1, "meta_changed_track"

    invoke-direct {p0, v1}, Lcom/miui/player/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;)V

    .line 1786
    monitor-exit p0

    goto :goto_0

    .line 1775
    :cond_3
    iget v1, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    if-lez v1, :cond_4

    .line 1776
    iget v1, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    .line 1779
    :cond_4
    iget v1, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    if-gez v1, :cond_2

    .line 1780
    iget v1, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public quit()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1656
    invoke-direct {p0, v1}, Lcom/miui/player/MediaPlaybackService;->saveQueue(Z)V

    .line 1657
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->pause()V

    .line 1659
    const/16 v0, 0x1388

    invoke-direct {p0, v1, v1, v0}, Lcom/miui/player/MediaPlaybackService;->gotoIdleState(ZII)V

    .line 1660
    return-void
.end method

.method public registerExternalStorageListener()V
    .locals 2

    .prologue
    .line 967
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 968
    new-instance v1, Lcom/miui/player/MediaPlaybackService$7;

    invoke-direct {v1, p0}, Lcom/miui/player/MediaPlaybackService$7;-><init>(Lcom/miui/player/MediaPlaybackService;)V

    iput-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    .line 995
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 996
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 997
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 998
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 999
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/player/MediaPlaybackService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1001
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public removeTrack(J)I
    .locals 6
    .parameter "id"

    .prologue
    .line 2044
    iget-object v4, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    if-nez v4, :cond_0

    .line 2045
    const/4 v4, 0x0

    .line 2063
    :goto_0
    return v4

    .line 2047
    :cond_0
    const/4 v3, 0x0

    .line 2048
    .local v3, numremoved:I
    invoke-virtual {p0}, Lcom/miui/player/MediaPlaybackService;->getAudioId()J

    move-result-wide v0

    .line 2049
    .local v0, currentId:J
    monitor-enter p0

    .line 2050
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    :try_start_0
    iget v4, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    if-ge v2, v4, :cond_2

    .line 2051
    iget-object v4, p0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    aget-wide v4, v4, v2

    cmp-long v4, v4, p1

    if-nez v4, :cond_1

    .line 2052
    invoke-direct {p0, v2, v2}, Lcom/miui/player/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2053
    add-int/lit8 v2, v2, -0x1

    .line 2050
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2056
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2057
    if-lez v3, :cond_3

    .line 2058
    const-string v4, "com.miui.player.queuechanged"

    invoke-direct {p0, v4}, Lcom/miui/player/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 2059
    cmp-long v4, v0, p1

    if-nez v4, :cond_3

    .line 2060
    const-string v4, "meta_changed_track"

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/miui/player/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;Z)V

    :cond_3
    move v4, v3

    .line 2063
    goto :goto_0

    .line 2056
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public removeTracks(II)I
    .locals 4
    .parameter "first"
    .parameter "last"

    .prologue
    const/4 v3, 0x1

    .line 1914
    iget v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    if-lt v2, p1, :cond_1

    iget v2, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    if-gt v2, p2, :cond_1

    move v0, v3

    .line 1915
    .local v0, isTrackChange:Z
    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/miui/player/MediaPlaybackService;->removeTracksInternal(II)I

    move-result v1

    .line 1916
    .local v1, numremoved:I
    if-lez v1, :cond_0

    .line 1917
    const-string v2, "com.miui.player.queuechanged"

    invoke-direct {p0, v2}, Lcom/miui/player/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1918
    if-eqz v0, :cond_0

    .line 1919
    const-string v2, "meta_changed_track"

    invoke-direct {p0, v2, v3}, Lcom/miui/player/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;Z)V

    .line 1922
    :cond_0
    return v1

    .line 1914
    .end local v0           #isTrackChange:Z
    .end local v1           #numremoved:I
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public removeTracks([I)I
    .locals 18
    .parameter "rmPosArr"

    .prologue
    .line 1926
    monitor-enter p0

    .line 1927
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    move-object v14, v0

    if-nez v14, :cond_0

    .line 1928
    const/4 v14, 0x0

    monitor-exit p0

    .line 1991
    :goto_0
    return v14

    .line 1931
    :cond_0
    move-object/from16 v0, p1

    array-length v0, v0

    move v6, v0

    .line 1932
    .local v6, len:I
    if-gtz v6, :cond_1

    .line 1933
    const/4 v14, 0x0

    monitor-exit p0

    goto :goto_0

    .line 1992
    .end local v6           #len:I
    :catchall_0
    move-exception v14

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v14

    .line 1936
    .restart local v6       #len:I
    :cond_1
    const/4 v4, 0x0

    .line 1937
    .local v4, gotoNext:Z
    const/4 v3, 0x0

    .line 1938
    .local v3, beforeCurrent:I
    const/4 v9, 0x0

    .line 1939
    .local v9, removeCount:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v6, :cond_4

    .line 1940
    :try_start_1
    aget v8, p1, v5

    .line 1941
    .local v8, pos:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    move v14, v0

    if-ge v8, v14, :cond_2

    .line 1942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    move-object v14, v0

    const-wide/16 v15, -0x1

    aput-wide v15, v14, v8

    .line 1943
    add-int/lit8 v9, v9, 0x1

    .line 1944
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    move v14, v0

    if-ge v8, v14, :cond_3

    .line 1945
    add-int/lit8 v3, v3, 0x1

    .line 1939
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1946
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    move v14, v0

    if-ne v8, v14, :cond_2

    .line 1947
    const/4 v4, 0x1

    goto :goto_2

    .line 1952
    .end local v8           #pos:I
    :cond_4
    const/4 v10, 0x0

    .line 1953
    .local v10, step:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    move v14, v0

    sub-int v7, v14, v9

    .line 1954
    .local v7, newLen:I
    const/4 v5, 0x0

    :goto_3
    if-ge v5, v7, :cond_7

    .line 1955
    :goto_4
    add-int v14, v5, v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    move v15, v0

    if-gt v14, v15, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    move-object v14, v0

    add-int v15, v5, v10

    aget-wide v14, v14, v15

    const-wide/16 v16, 0x0

    cmp-long v14, v14, v16

    if-gez v14, :cond_5

    .line 1956
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 1959
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    move-object v14, v0

    add-int v15, v5, v10

    aget-wide v11, v14, v15

    .line 1960
    .local v11, tmp:J
    const-wide/16 v14, 0x0

    cmp-long v14, v11, v14

    if-ltz v14, :cond_6

    .line 1961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    move-object v14, v0

    aput-wide v11, v14, v5

    .line 1954
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1965
    .end local v11           #tmp:J
    :cond_7
    move v5, v7

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    move v14, v0

    if-ge v5, v14, :cond_8

    .line 1966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/MediaPlaybackService;->mPlayList:[J

    move-object v14, v0

    const-wide/16 v15, 0x0

    aput-wide v15, v14, v5

    .line 1965
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1969
    :cond_8
    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    .line 1970
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    move v14, v0

    sub-int/2addr v14, v3

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    .line 1972
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    move v14, v0

    if-gtz v14, :cond_b

    .line 1973
    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    invoke-direct {v0, v1, v2}, Lcom/miui/player/MediaPlaybackService;->stop(ZZ)V

    .line 1974
    const/4 v14, -0x1

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    .line 1985
    :cond_9
    :goto_6
    if-lez v9, :cond_a

    .line 1986
    const-string v14, "com.miui.player.queuechanged"

    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/miui/player/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V

    .line 1987
    if-eqz v4, :cond_a

    .line 1988
    const-string v14, "meta_changed_track"

    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object v1, v14

    move v2, v15

    invoke-direct {v0, v1, v2}, Lcom/miui/player/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;Z)V

    .line 1991
    :cond_a
    monitor-exit p0

    move v14, v9

    goto/16 :goto_0

    .line 1975
    :cond_b
    if-eqz v4, :cond_9

    .line 1976
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    move v14, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    move v15, v0

    if-lt v14, v15, :cond_c

    .line 1977
    const/4 v14, 0x0

    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    .line 1980
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/MediaPlaybackService;->isPlaying()Z

    move-result v13

    .line 1981
    .local v13, wasPlaying:Z
    const/4 v14, 0x0

    const/4 v15, 0x1

    move-object/from16 v0, p0

    move v1, v14

    move v2, v15

    invoke-direct {v0, v1, v2}, Lcom/miui/player/MediaPlaybackService;->stop(ZZ)V

    .line 1982
    move-object/from16 v0, p0

    move v1, v13

    invoke-direct {v0, v1}, Lcom/miui/player/MediaPlaybackService;->openCurrent(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6
.end method

.method public seek(J)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 2306
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/helper/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/helper/AsyncMusicPlayer;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2307
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 2308
    const-wide/16 p1, 0x0

    .line 2309
    :cond_0
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/helper/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/helper/AsyncMusicPlayer;->duration()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    .line 2310
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/helper/AsyncMusicPlayer;

    invoke-virtual {v0}, Lcom/miui/player/helper/AsyncMusicPlayer;->duration()J

    move-result-wide p1

    .line 2311
    :cond_1
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/helper/AsyncMusicPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/miui/player/helper/AsyncMusicPlayer;->seek(J)V

    move-wide v0, p1

    .line 2315
    :goto_0
    return-wide v0

    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public setQueuePosition(I)V
    .locals 2
    .parameter "pos"

    .prologue
    .line 2149
    monitor-enter p0

    .line 2150
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mShuffleTracer:Lcom/miui/player/helper/ShuffleTracer;

    invoke-virtual {v0}, Lcom/miui/player/helper/ShuffleTracer;->clear()V

    .line 2151
    iput p1, p0, Lcom/miui/player/MediaPlaybackService;->mPlayPos:I

    .line 2152
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/miui/player/MediaPlaybackService;->stop(ZZ)V

    .line 2153
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/miui/player/MediaPlaybackService;->openCurrent(Z)V

    .line 2154
    const-string v0, "meta_changed_track"

    invoke-direct {p0, v0}, Lcom/miui/player/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;)V

    .line 2155
    monitor-exit p0

    .line 2156
    return-void

    .line 2155
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRepeatMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 2076
    monitor-enter p0

    .line 2077
    :try_start_0
    iput p1, p0, Lcom/miui/player/MediaPlaybackService;->mRepeatMode:I

    .line 2078
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/player/MediaPlaybackService;->saveQueue(Z)V

    .line 2079
    monitor-exit p0

    .line 2080
    return-void

    .line 2079
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setShuffleMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 2083
    iget v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I

    if-gtz v0, :cond_0

    .line 2093
    :goto_0
    return-void

    .line 2087
    :cond_0
    monitor-enter p0

    .line 2088
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/helper/AsyncMusicPlayer;

    iget v1, p0, Lcom/miui/player/MediaPlaybackService;->mShuffleMode:I

    invoke-virtual {v0, v1, p1}, Lcom/miui/player/helper/AsyncMusicPlayer;->changeMode(II)V

    .line 2089
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService;->mShuffleTracer:Lcom/miui/player/helper/ShuffleTracer;

    invoke-virtual {v0}, Lcom/miui/player/helper/ShuffleTracer;->clear()V

    .line 2090
    iput p1, p0, Lcom/miui/player/MediaPlaybackService;->mShuffleMode:I

    .line 2091
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/player/MediaPlaybackService;->saveQueue(Z)V

    .line 2092
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 1649
    invoke-direct {p0, v0, v0}, Lcom/miui/player/MediaPlaybackService;->stop(ZZ)V

    .line 1650
    return-void
.end method

.method public updateEqualizerBands([I)V
    .locals 5
    .parameter "levels"

    .prologue
    .line 1722
    if-nez p1, :cond_0

    .line 1723
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/helper/AsyncMusicPlayer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/miui/player/helper/AsyncMusicPlayer;->updateEqualizerBands([S)V

    .line 1733
    :goto_0
    return-void

    .line 1727
    :cond_0
    array-length v1, p1

    .line 1728
    .local v1, len:I
    new-array v2, v1, [S

    .line 1729
    .local v2, tmp:[S
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    .line 1730
    aget v3, p1, v0

    int-to-short v3, v3

    aput-short v3, v2, v0

    .line 1729
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1732
    :cond_1
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/helper/AsyncMusicPlayer;

    invoke-virtual {v3, v2}, Lcom/miui/player/helper/AsyncMusicPlayer;->updateEqualizerBands([S)V

    goto :goto_0
.end method
