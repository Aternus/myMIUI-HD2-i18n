.class public Lcom/miui/player/helper/BufferedMediaPlayer;
.super Ljava/lang/Object;
.source "BufferedMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/helper/BufferedMediaPlayer$SafeMediaPlayer;,
        Lcom/miui/player/helper/BufferedMediaPlayer$RunnableList;,
        Lcom/miui/player/helper/BufferedMediaPlayer$RemovableRunnable;,
        Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;,
        Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;,
        Lcom/miui/player/helper/BufferedMediaPlayer$BufferContentObserver;,
        Lcom/miui/player/helper/BufferedMediaPlayer$OnBufferedPositionChangedListener;,
        Lcom/miui/player/helper/BufferedMediaPlayer$OnDownloadCompletedListener;,
        Lcom/miui/player/helper/BufferedMediaPlayer$OnBlockingChangedListener;,
        Lcom/miui/player/helper/BufferedMediaPlayer$RemoteControlInfo;,
        Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;
    }
.end annotation


# static fields
.field private static AUDIO_SESSION_ID:I = 0x0

.field private static final DEFAULT_REMOTE_MEDIA_DURATION:J = 0x493e0L

.field public static final FADEOUT_MODE_LONG:I = 0x1

.field public static final FADEOUT_MODE_NONE:I = 0x2

.field public static final FADEOUT_MODE_NORMAL:I = 0x0

.field public static final INVALIDE_SESSION_ID:I = -0x1

.field public static final INVALID_NEXT_ID:I = 0x0

.field public static final INVALID_TEMP_FILE_ID:I = 0x0

.field private static final MIN_BYTE_PER_SEC:I = 0x800

.field private static final ONLINE_MIN_SIZE:I = 0x100000

.field private static final PLAYER_CACHE_MSEC:I = 0x2710

.field private static final PLAYER_THRESHOLD_BYTES:I = 0x80000

.field private static final STATUS_BUFFER_IN_PROCESS:I = 0x1

.field private static final STATUS_BUFFER_SUCCESS:I = 0x2

.field private static final STATUS_DOWNLOAD_COMPLETED:I = 0x4

.field private static final STATUS_ERROR:I = 0x3

.field private static final STATUS_IDLE:I = 0x0

.field public static final TAG:Ljava/lang/String; = "com.miui.player.helper.BufferedMediaPlayer"

.field private static final TEMP_FILE_ID_ARR:[I = null

.field public static final TEMP_MEDIA_NAME:Ljava/lang/String; = ".CURRENT_MIUI%d.mp3.tmp"

.field private static final TIME_OUT_FOR_DELETE_FILE:J = 0x1388L

.field public static final TOGGLE_PAUSE:I = 0x1

.field public static final TOGGLE_PLAY:I = 0x2

.field private static final VOLUME_FADEIN_DEGREE:F = 0.01f

.field private static final VOLUME_FADEOUT_DEGREE:F = 0.03f

.field private static final VOLUME_FADEOUT_DEGREE_LONG:F = 0.001f

.field private static final VOLUME_FADEOUT_INTERVAL_LONG:I = 0xa

.field private static final VOLUME_FADE_INTERVAL:I = 0xa

.field private static final WAIT_LOOP_TIMES:I = 0x3c

.field private static sFadeOutMode:I

.field private static final sNextDownloadLock:Ljava/lang/Object;

.field private static sVolume:F


# instance fields
.field private mBitrate:I

.field private final mBufferLock:Ljava/lang/Object;

.field private mContext:Landroid/content/Context;

.field private mCurrentBytes:J

.field private mCurrentFile:Ljava/io/File;

.field private mDownloadNextRunnable:Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;

.field private mDownloadObserver:Landroid/database/ContentObserver;

.field private mDownloadingUri:Landroid/net/Uri;

.field private mInterrupt:Z

.field private mIsBlocking:Z

.field private mIsFirst:Z

.field private final mListenerLock:Ljava/lang/Object;

.field private mListenerThread:Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;

.field private mNextMediaId:J

.field private final mPlayer:Landroid/media/MediaPlayer;

.field private mRemoteControlInfo:Lcom/miui/player/helper/BufferedMediaPlayer$RemoteControlInfo;

.field private mRemoteMediaInfo:Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;

.field private final mRunnableList:Lcom/miui/player/helper/BufferedMediaPlayer$RunnableList;

.field private mStatus:I

.field private final mTempDir:Ljava/lang/String;

.field private mTempId:I

.field private mTogglePause:I

.field private mTotalBytes:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, -0x1

    sput v0, Lcom/miui/player/helper/BufferedMediaPlayer;->AUDIO_SESSION_ID:I

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/player/helper/BufferedMediaPlayer;->TEMP_FILE_ID_ARR:[I

    .line 112
    const v0, 0x3c23d70a

    sput v0, Lcom/miui/player/helper/BufferedMediaPlayer;->sVolume:F

    .line 114
    const/4 v0, 0x0

    sput v0, Lcom/miui/player/helper/BufferedMediaPlayer;->sFadeOutMode:I

    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miui/player/helper/BufferedMediaPlayer;->sNextDownloadLock:Ljava/lang/Object;

    return-void

    .line 57
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/miui/player/helper/BufferedMediaPlayer$RunnableList;)V
    .locals 3
    .parameter "runnableList"

    .prologue
    const-wide/16 v1, 0x0

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mListenerLock:Ljava/lang/Object;

    .line 120
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mBufferLock:Ljava/lang/Object;

    .line 149
    iput-wide v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mTotalBytes:J

    .line 151
    iput-wide v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mCurrentBytes:J

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mBitrate:I

    .line 166
    iput-object p1, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mRunnableList:Lcom/miui/player/helper/BufferedMediaPlayer$RunnableList;

    .line 167
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mTempDir:Ljava/lang/String;

    .line 168
    new-instance v0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;

    iget-object v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mRunnableList:Lcom/miui/player/helper/BufferedMediaPlayer$RunnableList;

    iget-object v2, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mTempDir:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;-><init>(Lcom/miui/player/helper/BufferedMediaPlayer$RunnableList;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mDownloadNextRunnable:Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;

    .line 169
    new-instance v0, Lcom/miui/player/helper/BufferedMediaPlayer$SafeMediaPlayer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/player/helper/BufferedMediaPlayer$SafeMediaPlayer;-><init>(Lcom/miui/player/helper/BufferedMediaPlayer;Lcom/miui/player/helper/BufferedMediaPlayer$1;)V

    iput-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    .line 170
    sget v0, Lcom/miui/player/helper/BufferedMediaPlayer;->AUDIO_SESSION_ID:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 171
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    sput v0, Lcom/miui/player/helper/BufferedMediaPlayer;->AUDIO_SESSION_ID:I

    .line 175
    :goto_0
    return-void

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    sget v1, Lcom/miui/player/helper/BufferedMediaPlayer;->AUDIO_SESSION_ID:I

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/miui/player/helper/BufferedMediaPlayer;F)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/miui/player/helper/BufferedMediaPlayer;->runOnBufferedPositionChanged(F)V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/player/helper/BufferedMediaPlayer;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mBufferLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/player/helper/BufferedMediaPlayer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mTempDir:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/player/helper/BufferedMediaPlayer;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/player/helper/BufferedMediaPlayer;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/miui/player/helper/BufferedMediaPlayer;->hasBuffered(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/miui/player/helper/BufferedMediaPlayer;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/miui/player/helper/BufferedMediaPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/miui/player/helper/BufferedMediaPlayer;->runOnBlockingChanged()V

    return-void
.end method

.method static synthetic access$1700(Landroid/content/Context;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-static {p0}, Lcom/miui/player/helper/BufferedMediaPlayer;->isRemoveAfterPlay(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/miui/player/helper/BufferedMediaPlayer;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mCurrentFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/miui/player/helper/BufferedMediaPlayer;Ljava/io/File;)Ljava/io/File;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mCurrentFile:Ljava/io/File;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/miui/player/helper/BufferedMediaPlayer;)Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mRemoteMediaInfo:Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/player/helper/BufferedMediaPlayer;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/miui/player/helper/BufferedMediaPlayer;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/miui/player/helper/BufferedMediaPlayer;->deleteDownloadRecord(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-static {p0, p1}, Lcom/miui/player/helper/BufferedMediaPlayer;->copyFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/miui/player/helper/BufferedMediaPlayer;Ljava/io/File;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/miui/player/helper/BufferedMediaPlayer;->changeDataSource(Ljava/io/File;I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/miui/player/helper/BufferedMediaPlayer;Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/miui/player/helper/BufferedMediaPlayer;->runOnDownloadCompleted(Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/miui/player/helper/BufferedMediaPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/miui/player/helper/BufferedMediaPlayer;->needPrepare()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/miui/player/helper/BufferedMediaPlayer;)Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mDownloadNextRunnable:Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/miui/player/helper/BufferedMediaPlayer;)Lcom/miui/player/helper/BufferedMediaPlayer$RunnableList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mRunnableList:Lcom/miui/player/helper/BufferedMediaPlayer$RunnableList;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/miui/player/helper/BufferedMediaPlayer;Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;)Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mListenerThread:Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miui/player/helper/BufferedMediaPlayer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mIsBlocking:Z

    return v0
.end method

.method static synthetic access$302(Lcom/miui/player/helper/BufferedMediaPlayer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-boolean p1, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mIsBlocking:Z

    return p1
.end method

.method static synthetic access$3200()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/miui/player/helper/BufferedMediaPlayer;->sNextDownloadLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3300(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/player/helper/BufferedMediaPlayer$RunnableList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 43
    invoke-static {p0, p1, p2, p3}, Lcom/miui/player/helper/BufferedMediaPlayer;->deleteRecordAndFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/player/helper/BufferedMediaPlayer$RunnableList;)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/player/helper/BufferedMediaPlayer;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/player/helper/BufferedMediaPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mStatus:I

    return v0
.end method

.method static synthetic access$502(Lcom/miui/player/helper/BufferedMediaPlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mStatus:I

    return p1
.end method

.method static synthetic access$600(Lcom/miui/player/helper/BufferedMediaPlayer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mCurrentBytes:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/miui/player/helper/BufferedMediaPlayer;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mCurrentBytes:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/miui/player/helper/BufferedMediaPlayer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mTotalBytes:J

    return-wide v0
.end method

.method static synthetic access$702(Lcom/miui/player/helper/BufferedMediaPlayer;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mTotalBytes:J

    return-wide p1
.end method

.method static synthetic access$800(Lcom/miui/player/helper/BufferedMediaPlayer;)Landroid/database/ContentObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mDownloadObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$900(Lcom/miui/player/helper/BufferedMediaPlayer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mBitrate:I

    return v0
.end method

.method static synthetic access$902(Lcom/miui/player/helper/BufferedMediaPlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput p1, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mBitrate:I

    return p1
.end method

.method private static assertId(I)V
    .locals 7
    .parameter "id"

    .prologue
    .line 1057
    sget-object v0, Lcom/miui/player/helper/BufferedMediaPlayer;->TEMP_FILE_ID_ARR:[I

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, v0, v2

    .line 1058
    .local v1, i:I
    if-ne v1, p0, :cond_0

    .line 1059
    return-void

    .line 1057
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1062
    .end local v1           #i:I
    :cond_1
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bad temp file id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private changeDataSource(Ljava/io/File;I)V
    .locals 6
    .parameter "dst"
    .parameter "msec"

    .prologue
    .line 665
    iget-object v2, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mListenerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 667
    :try_start_0
    iget-wide v3, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mTotalBytes:J

    invoke-direct {p0, p1, v3, v4}, Lcom/miui/player/helper/BufferedMediaPlayer;->ensureFileSpace(Ljava/io/File;J)V

    .line 669
    iget-object v3, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    .line 670
    .local v0, isPlaying:Z
    iget-object v3, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    .line 671
    .local v1, pos:I
    iget-object v3, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V

    .line 672
    iget-object v3, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 673
    iget-object v3, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 674
    iget-object v3, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v3

    if-lt v3, p2, :cond_1

    .line 675
    iget-object v3, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, p2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 679
    :goto_0
    if-eqz v0, :cond_0

    .line 680
    iget-object v3, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 687
    .end local v0           #isPlaying:Z
    .end local v1           #pos:I
    :cond_0
    :goto_1
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 688
    return-void

    .line 677
    .restart local v0       #isPlaying:Z
    .restart local v1       #pos:I
    :cond_1
    :try_start_2
    iget-object v3, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 682
    .end local v0           #isPlaying:Z
    .end local v1           #pos:I
    :catch_0
    move-exception v3

    goto :goto_1

    .line 687
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3

    .line 685
    :catch_1
    move-exception v3

    goto :goto_1

    .line 684
    :catch_2
    move-exception v3

    goto :goto_1

    .line 683
    :catch_3
    move-exception v3

    goto :goto_1
.end method

.method private static copyFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "srcFile"
    .parameter "dstName"

    .prologue
    .line 1034
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1035
    .local v0, f:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 1036
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 1039
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/miui/player/helper/Global;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1040
    return-object v0
.end method

.method private deleteDownloadRecord(Landroid/content/Context;Ljava/lang/String;)V
    .locals 8
    .parameter "context"
    .parameter "appointName"

    .prologue
    .line 985
    iget-object v4, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mListenerLock:Ljava/lang/Object;

    monitor-enter v4

    .line 986
    const/4 v5, 0x1

    :try_start_0
    new-array v0, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mTempDir:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v5

    .line 990
    .local v0, args:[Ljava/lang/String;
    const-string v3, "hint = ?"

    .line 991
    .local v3, where:Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 992
    .local v1, cv:Landroid/content/ContentValues;
    const-string v5, "status"

    const/16 v6, 0xc8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 993
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 995
    .local v2, res:Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mRemoteControlInfo:Lcom/miui/player/helper/BufferedMediaPlayer$RemoteControlInfo;

    if-eqz v5, :cond_0

    invoke-static {p2}, Lcom/miui/player/helper/BufferedMediaPlayer;->isTempFileName(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 996
    :cond_0
    sget-object v5, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "hint = ?"

    invoke-virtual {v2, v5, v1, v6, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1006
    :goto_0
    monitor-exit v4

    .line 1007
    return-void

    .line 998
    :cond_1
    iget-object v5, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mRemoteControlInfo:Lcom/miui/player/helper/BufferedMediaPlayer$RemoteControlInfo;

    iget-object v5, v5, Lcom/miui/player/helper/BufferedMediaPlayer$RemoteControlInfo;->mHandler:Landroid/os/Handler;

    new-instance v6, Lcom/miui/player/helper/BufferedMediaPlayer$4;

    invoke-direct {v6, p0, v2, v1, v0}, Lcom/miui/player/helper/BufferedMediaPlayer$4;-><init>(Lcom/miui/player/helper/BufferedMediaPlayer;Landroid/content/ContentResolver;Landroid/content/ContentValues;[Ljava/lang/String;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1006
    .end local v0           #args:[Ljava/lang/String;
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v2           #res:Landroid/content/ContentResolver;
    .end local v3           #where:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method private static deleteRecordAndFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/player/helper/BufferedMediaPlayer$RunnableList;)V
    .locals 9
    .parameter "context"
    .parameter "appointName"
    .parameter "dir"
    .parameter "runnableList"

    .prologue
    .line 1011
    const-string v2, "hint=?"

    .line 1012
    .local v2, where:Ljava/lang/String;
    const-string v3, "com.miui.player.helper.BufferedMediaPlayer"

    invoke-interface {p3, v3}, Lcom/miui/player/helper/BufferedMediaPlayer$RunnableList;->remove(Ljava/lang/String;)V

    .line 1013
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1014
    .local v0, filePath:Ljava/lang/String;
    sget-object v3, Lcom/miui/player/helper/BufferedMediaPlayer;->sNextDownloadLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1015
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Downloads$Impl;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "hint=?"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v0, v7, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1020
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1022
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1023
    .local v1, nextFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1024
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1026
    :cond_0
    return-void

    .line 1020
    .end local v1           #nextFile:Ljava/io/File;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private downloadAndPrepare()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x3

    .line 369
    const/4 v3, 0x0

    .line 372
    .local v3, isSuccess:Z
    iput v9, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mBitrate:I

    .line 373
    iput-wide v4, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mTotalBytes:J

    .line 374
    iput-wide v4, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mCurrentBytes:J

    .line 375
    iput v7, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mStatus:I

    .line 376
    iput-boolean v7, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mIsBlocking:Z

    .line 377
    invoke-direct {p0}, Lcom/miui/player/helper/BufferedMediaPlayer;->runOnBlockingChanged()V

    .line 379
    iget-object v4, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    iget-object v6, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mDownloadObserver:Landroid/database/ContentObserver;

    invoke-static {v4, v5, v7, v6}, Lcom/miui/player/downloader/DownloadProvider;->registerDownloadObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 380
    iput v8, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mStatus:I

    move v4, v9

    .line 431
    :goto_0
    return v4

    .line 386
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    const/16 v4, 0x3c

    if-lt v2, v4, :cond_1

    iget-wide v4, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mCurrentBytes:J

    int-to-long v6, v2

    div-long/2addr v4, v6

    const-wide/16 v6, 0x800

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 387
    :cond_1
    const-wide/16 v4, 0x3e8

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 388
    iget v4, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mStatus:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    iget v4, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mStatus:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    .line 389
    :cond_2
    iget-object v4, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mTempDir:Ljava/lang/String;

    iget v5, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mTempId:I

    invoke-static {v5}, Lcom/miui/player/helper/BufferedMediaPlayer;->getTempFileName(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/miui/player/helper/BufferedMediaPlayer;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 390
    .local v1, f:Ljava/io/File;
    if-eqz v1, :cond_4

    .line 392
    :try_start_0
    iget-wide v4, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mTotalBytes:J

    invoke-direct {p0, v1, v4, v5}, Lcom/miui/player/helper/BufferedMediaPlayer;->ensureFileSpace(Ljava/io/File;J)V

    .line 393
    iget-object v4, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    iget-object v5, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 394
    iget-object v4, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :goto_2
    iget v4, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mStatus:I

    if-eq v4, v8, :cond_5

    .line 400
    iput-object v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mCurrentFile:Ljava/io/File;

    .line 401
    iput-boolean v9, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mIsBlocking:Z

    .line 402
    invoke-direct {p0}, Lcom/miui/player/helper/BufferedMediaPlayer;->runOnBlockingChanged()V

    .line 403
    new-instance v4, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;

    invoke-direct {v4, p0, v10}, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;-><init>(Lcom/miui/player/helper/BufferedMediaPlayer;Lcom/miui/player/helper/BufferedMediaPlayer$1;)V

    iput-object v4, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mListenerThread:Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;

    .line 404
    iget-object v4, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mListenerThread:Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;

    invoke-virtual {v4}, Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;->start()V

    .line 405
    const/4 v3, 0x1

    .line 420
    .end local v1           #f:Ljava/io/File;
    :cond_3
    if-nez v3, :cond_6

    .line 421
    iput v8, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mStatus:I

    .line 423
    iget-object v4, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mDownloadObserver:Landroid/database/ContentObserver;

    invoke-static {v4, v5}, Lcom/miui/player/downloader/DownloadProvider;->unregisterDownloadObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 424
    iget-object v4, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 426
    iget-boolean v4, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mInterrupt:Z

    if-eqz v4, :cond_6

    .line 427
    new-instance v4, Ljava/lang/InterruptedException;

    const-string v5, "com.miui.player.helper.BufferedMediaPlayer user interrupt prepare"

    invoke-direct {v4, v5}, Ljava/lang/InterruptedException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 395
    .restart local v1       #f:Ljava/io/File;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 396
    .local v0, e:Ljava/lang/Exception;
    iput v8, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mStatus:I

    goto :goto_2

    .line 410
    .end local v0           #e:Ljava/lang/Exception;
    :cond_4
    iput v8, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mStatus:I

    .line 414
    .end local v1           #f:Ljava/io/File;
    :cond_5
    iget v4, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mStatus:I

    if-eq v4, v8, :cond_3

    iget-boolean v4, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mInterrupt:Z

    if-nez v4, :cond_3

    .line 386
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_6
    move v4, v3

    .line 431
    goto/16 :goto_0
.end method

.method private ensureFileSpace(Ljava/io/File;J)V
    .locals 3
    .parameter "f"
    .parameter "space"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 691
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    cmp-long v1, v1, p2

    if-gez v1, :cond_0

    .line 692
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 693
    .local v0, raf:Ljava/io/RandomAccessFile;
    iget-wide v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mTotalBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 695
    .end local v0           #raf:Ljava/io/RandomAccessFile;
    :cond_0
    return-void
.end method

.method private fadeIn()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/high16 v5, 0x3f80

    .line 520
    iget-object v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mListenerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 521
    :try_start_0
    iget-object v2, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/miui/player/helper/BufferedMediaPlayer;->isFadeEffectActive(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 522
    iget-object v2, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    const/high16 v3, 0x3f80

    const/high16 v4, 0x3f80

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 523
    monitor-exit v1

    .line 551
    :goto_0
    return-void

    .line 526
    :cond_0
    iget-object v2, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_1

    .line 527
    monitor-exit v1

    goto :goto_0

    .line 550
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 530
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    sget v3, Lcom/miui/player/helper/BufferedMediaPlayer;->sVolume:F

    sget v4, Lcom/miui/player/helper/BufferedMediaPlayer;->sVolume:F

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 531
    const/4 v2, 0x2

    iput v2, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mTogglePause:I

    .line 532
    const/4 v0, 0x0

    .line 533
    .local v0, togglePause:Z
    :goto_1
    sget v2, Lcom/miui/player/helper/BufferedMediaPlayer;->sVolume:F

    cmpg-float v2, v2, v5

    if-gez v2, :cond_2

    .line 534
    iget v2, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mTogglePause:I

    if-eq v2, v6, :cond_4

    .line 535
    const/4 v0, 0x1

    .line 546
    :cond_2
    if-nez v0, :cond_3

    .line 547
    const/high16 v2, 0x3f80

    sput v2, Lcom/miui/player/helper/BufferedMediaPlayer;->sVolume:F

    .line 548
    iget-object v2, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    sget v3, Lcom/miui/player/helper/BufferedMediaPlayer;->sVolume:F

    sget v4, Lcom/miui/player/helper/BufferedMediaPlayer;->sVolume:F

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 550
    :cond_3
    monitor-exit v1

    goto :goto_0

    .line 538
    :cond_4
    iget-object v2, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    sget v3, Lcom/miui/player/helper/BufferedMediaPlayer;->sVolume:F

    sget v4, Lcom/miui/player/helper/BufferedMediaPlayer;->sVolume:F

    invoke-virtual {v2, v3, v4}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 540
    const-wide/16 v2, 0xa

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 543
    :goto_2
    :try_start_3
    sget v2, Lcom/miui/player/helper/BufferedMediaPlayer;->sVolume:F

    const v3, 0x3c23d70a

    add-float/2addr v2, v3

    sput v2, Lcom/miui/player/helper/BufferedMediaPlayer;->sVolume:F
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 541
    :catch_0
    move-exception v2

    goto :goto_2
.end method

.method private fadeOut()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 554
    iget-object v3, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mListenerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 555
    :try_start_0
    sget v4, Lcom/miui/player/helper/BufferedMediaPlayer;->sFadeOutMode:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    .line 556
    const/4 v4, 0x0

    sput v4, Lcom/miui/player/helper/BufferedMediaPlayer;->sFadeOutMode:I

    .line 557
    monitor-exit v3

    .line 598
    :goto_0
    return-void

    .line 560
    :cond_0
    iget-object v4, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/miui/player/helper/BufferedMediaPlayer;->isFadeEffectActive(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 561
    iget-object v4, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 562
    monitor-exit v3

    goto :goto_0

    .line 597
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 565
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v4

    if-nez v4, :cond_2

    .line 566
    monitor-exit v3

    goto :goto_0

    .line 569
    :cond_2
    const/4 v4, 0x1

    iput v4, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mTogglePause:I

    .line 570
    const/4 v2, 0x0

    .line 571
    .local v2, togglePause:Z
    const v0, 0x3cf5c28f

    .line 572
    .local v0, degree:F
    const/16 v1, 0xa

    .line 573
    .local v1, interval:I
    sget v4, Lcom/miui/player/helper/BufferedMediaPlayer;->sFadeOutMode:I

    if-ne v4, v7, :cond_3

    .line 574
    const/4 v4, 0x0

    sput v4, Lcom/miui/player/helper/BufferedMediaPlayer;->sFadeOutMode:I

    .line 575
    const v0, 0x3a83126f

    .line 576
    const/16 v1, 0xa

    .line 579
    :cond_3
    :goto_1
    sget v4, Lcom/miui/player/helper/BufferedMediaPlayer;->sVolume:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 580
    iget v4, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mTogglePause:I

    if-eq v4, v7, :cond_6

    .line 581
    const/4 v2, 0x1

    .line 592
    :cond_4
    if-nez v2, :cond_5

    .line 593
    const v4, 0x3c23d70a

    sput v4, Lcom/miui/player/helper/BufferedMediaPlayer;->sVolume:F

    .line 594
    iget-object v4, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    sget v5, Lcom/miui/player/helper/BufferedMediaPlayer;->sVolume:F

    sget v6, Lcom/miui/player/helper/BufferedMediaPlayer;->sVolume:F

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 597
    :cond_5
    monitor-exit v3

    goto :goto_0

    .line 584
    :cond_6
    iget-object v4, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    sget v5, Lcom/miui/player/helper/BufferedMediaPlayer;->sVolume:F

    sget v6, Lcom/miui/player/helper/BufferedMediaPlayer;->sVolume:F

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 586
    int-to-long v4, v1

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 589
    :goto_2
    :try_start_3
    sget v4, Lcom/miui/player/helper/BufferedMediaPlayer;->sVolume:F

    sub-float/2addr v4, v0

    sput v4, Lcom/miui/player/helper/BufferedMediaPlayer;->sVolume:F
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 587
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method public static getDefaultTempId()I
    .locals 2

    .prologue
    .line 1091
    sget-object v0, Lcom/miui/player/helper/BufferedMediaPlayer;->TEMP_FILE_ID_ARR:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method private static getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2
    .parameter "dir"
    .parameter "name"

    .prologue
    .line 361
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    .line 365
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getLongFadeOutTime()J
    .locals 2

    .prologue
    .line 601
    const-wide/16 v0, 0x2706

    return-wide v0
.end method

.method private static getTempFileName(I)Ljava/lang/String;
    .locals 4
    .parameter "id"

    .prologue
    .line 1077
    invoke-static {p0}, Lcom/miui/player/helper/BufferedMediaPlayer;->assertId(I)V

    .line 1078
    const-string v0, ".CURRENT_MIUI%d.mp3.tmp"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTempFileNameArr()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 1082
    sget-object v2, Lcom/miui/player/helper/BufferedMediaPlayer;->TEMP_FILE_ID_ARR:[I

    array-length v2, v2

    new-array v1, v2, [Ljava/lang/String;

    .line 1083
    .local v1, ret:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/miui/player/helper/BufferedMediaPlayer;->TEMP_FILE_ID_ARR:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 1084
    sget-object v2, Lcom/miui/player/helper/BufferedMediaPlayer;->TEMP_FILE_ID_ARR:[I

    aget v2, v2, v0

    invoke-static {v2}, Lcom/miui/player/helper/BufferedMediaPlayer;->getTempFileName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 1083
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1087
    :cond_0
    return-object v1
.end method

.method private hasBuffered(I)Z
    .locals 5
    .parameter "msec"

    .prologue
    const/4 v4, 0x1

    .line 698
    iget v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mBitrate:I

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mCurrentFile:Ljava/io/File;

    if-eqz v0, :cond_3

    .line 699
    iget-wide v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mTotalBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mCurrentBytes:J

    iget-wide v2, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mTotalBytes:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/helper/BufferedMediaPlayer;->getBufferdPercent()F

    move-result v0

    invoke-virtual {p0}, Lcom/miui/player/helper/BufferedMediaPlayer;->getDuration()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    int-to-float v1, p1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    :cond_1
    move v0, v4

    .line 703
    :goto_0
    return v0

    .line 699
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move v0, v4

    .line 703
    goto :goto_0
.end method

.method private static isFadeEffectActive(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 1049
    if-eqz p0, :cond_1

    .line 1050
    const-string v0, "fade_effect_active"

    invoke-static {p0, v0}, Lcom/miui/player/ui/PreferencesActivity;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/miui/player/helper/Global;->IS_LPA_DECODE:Z

    if-nez v0, :cond_0

    move v0, v1

    .line 1053
    :goto_0
    return v0

    .line 1050
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1053
    goto :goto_0
.end method

.method private static isRemoveAfterPlay(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 1044
    const-string v0, "play_and_download"

    invoke-static {p0, v0}, Lcom/miui/player/ui/PreferencesActivity;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Environment;->isExternalStorageMounted()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isTempFileName(Ljava/lang/String;)Z
    .locals 3
    .parameter "fileName"

    .prologue
    .line 1066
    invoke-static {}, Lcom/miui/player/helper/BufferedMediaPlayer;->getTempFileNameArr()[Ljava/lang/String;

    move-result-object v1

    .line 1067
    .local v1, tempArr:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 1068
    aget-object v2, v1, v0

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1069
    const/4 v2, 0x1

    .line 1073
    :goto_1
    return v2

    .line 1067
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1073
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private needPrepare()Z
    .locals 4

    .prologue
    .line 1029
    iget-wide v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mNextMediaId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mStatus:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mDownloadNextRunnable:Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;

    invoke-virtual {v0}, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->needDownload()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resetMediaInfo(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 707
    invoke-virtual {p0}, Lcom/miui/player/helper/BufferedMediaPlayer;->getNextId()I

    move-result v0

    invoke-static {v0}, Lcom/miui/player/helper/BufferedMediaPlayer;->getTempFileName(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mTempDir:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mRunnableList:Lcom/miui/player/helper/BufferedMediaPlayer$RunnableList;

    invoke-static {p1, v0, v1, v2}, Lcom/miui/player/helper/BufferedMediaPlayer;->deleteRecordAndFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/player/helper/BufferedMediaPlayer$RunnableList;)V

    .line 709
    iput-object v4, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mRemoteMediaInfo:Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;

    .line 710
    iput-wide v5, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mNextMediaId:J

    .line 711
    iput-object v4, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    .line 712
    iput-object v4, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mCurrentFile:Ljava/io/File;

    .line 713
    iput v3, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mStatus:I

    .line 714
    iput-wide v5, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mTotalBytes:J

    .line 715
    iput-wide v5, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mCurrentBytes:J

    .line 716
    iput v3, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mBitrate:I

    .line 718
    iput-boolean v3, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mIsBlocking:Z

    .line 719
    iput-boolean v3, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mInterrupt:Z

    .line 721
    iput-object v4, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mListenerThread:Lcom/miui/player/helper/BufferedMediaPlayer$PlayListenerTask;

    .line 722
    return-void
.end method

.method private runOnBlockingChanged()V
    .locals 3

    .prologue
    .line 793
    iget-object v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mRemoteControlInfo:Lcom/miui/player/helper/BufferedMediaPlayer$RemoteControlInfo;

    if-nez v1, :cond_1

    .line 807
    :cond_0
    :goto_0
    return-void

    .line 796
    :cond_1
    iget-object v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mRemoteControlInfo:Lcom/miui/player/helper/BufferedMediaPlayer$RemoteControlInfo;

    iget-object v0, v1, Lcom/miui/player/helper/BufferedMediaPlayer$RemoteControlInfo;->mBlockingChangedListener:Lcom/miui/player/helper/BufferedMediaPlayer$OnBlockingChangedListener;

    .line 797
    .local v0, l:Lcom/miui/player/helper/BufferedMediaPlayer$OnBlockingChangedListener;
    if-eqz v0, :cond_0

    .line 798
    iget-object v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mRemoteControlInfo:Lcom/miui/player/helper/BufferedMediaPlayer$RemoteControlInfo;

    iget-object v1, v1, Lcom/miui/player/helper/BufferedMediaPlayer$RemoteControlInfo;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/miui/player/helper/BufferedMediaPlayer$2;

    invoke-direct {v2, p0, v0}, Lcom/miui/player/helper/BufferedMediaPlayer$2;-><init>(Lcom/miui/player/helper/BufferedMediaPlayer;Lcom/miui/player/helper/BufferedMediaPlayer$OnBlockingChangedListener;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private runOnBufferedPositionChanged(F)V
    .locals 3
    .parameter "bufferedPer"

    .prologue
    .line 810
    iget-object v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mRemoteControlInfo:Lcom/miui/player/helper/BufferedMediaPlayer$RemoteControlInfo;

    if-nez v1, :cond_1

    .line 824
    :cond_0
    :goto_0
    return-void

    .line 813
    :cond_1
    iget-object v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mRemoteControlInfo:Lcom/miui/player/helper/BufferedMediaPlayer$RemoteControlInfo;

    iget-object v0, v1, Lcom/miui/player/helper/BufferedMediaPlayer$RemoteControlInfo;->mBufferedPositionChangedListener:Lcom/miui/player/helper/BufferedMediaPlayer$OnBufferedPositionChangedListener;

    .line 814
    .local v0, l:Lcom/miui/player/helper/BufferedMediaPlayer$OnBufferedPositionChangedListener;
    if-eqz v0, :cond_0

    .line 815
    iget-object v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mRemoteControlInfo:Lcom/miui/player/helper/BufferedMediaPlayer$RemoteControlInfo;

    iget-object v1, v1, Lcom/miui/player/helper/BufferedMediaPlayer$RemoteControlInfo;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/miui/player/helper/BufferedMediaPlayer$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/miui/player/helper/BufferedMediaPlayer$3;-><init>(Lcom/miui/player/helper/BufferedMediaPlayer;Lcom/miui/player/helper/BufferedMediaPlayer$OnBufferedPositionChangedListener;F)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private runOnDownloadCompleted(Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;)V
    .locals 7
    .parameter "mediaInfo"

    .prologue
    .line 769
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mRemoteControlInfo:Lcom/miui/player/helper/BufferedMediaPlayer$RemoteControlInfo;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 790
    :cond_0
    :goto_0
    return-void

    .line 772
    :cond_1
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mRemoteControlInfo:Lcom/miui/player/helper/BufferedMediaPlayer$RemoteControlInfo;

    iget-object v2, v0, Lcom/miui/player/helper/BufferedMediaPlayer$RemoteControlInfo;->mDownloadCompletedListener:Lcom/miui/player/helper/BufferedMediaPlayer$OnDownloadCompletedListener;

    .line 774
    .local v2, l:Lcom/miui/player/helper/BufferedMediaPlayer$OnDownloadCompletedListener;
    iget-object v3, p1, Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;->mId:Ljava/lang/String;

    .line 775
    .local v3, id:Ljava/lang/String;
    iget-object v4, p1, Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;->mAppointName:Ljava/lang/String;

    .line 776
    .local v4, appointName:Ljava/lang/String;
    iget-object v5, p1, Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;->mDetails:Ljava/lang/String;

    .line 777
    .local v5, details:Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mRemoteControlInfo:Lcom/miui/player/helper/BufferedMediaPlayer$RemoteControlInfo;

    iget-object v6, v0, Lcom/miui/player/helper/BufferedMediaPlayer$RemoteControlInfo;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/miui/player/helper/BufferedMediaPlayer$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/player/helper/BufferedMediaPlayer$1;-><init>(Lcom/miui/player/helper/BufferedMediaPlayer;Lcom/miui/player/helper/BufferedMediaPlayer$OnDownloadCompletedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static setUp(Lcom/miui/player/helper/BufferedMediaPlayer$RunnableList;)V
    .locals 1
    .parameter "runnableList"

    .prologue
    .line 1101
    const-string v0, "com.miui.player.helper.BufferedMediaPlayer"

    invoke-interface {p0, v0}, Lcom/miui/player/helper/BufferedMediaPlayer$RunnableList;->remove(Ljava/lang/String;)V

    .line 1102
    return-void
.end method

.method public static toggleFadeOutMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 1105
    if-ltz p0, :cond_0

    const/4 v0, 0x2

    if-le p0, v0, :cond_1

    .line 1106
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bad mode for fade out mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1109
    :cond_1
    sput p0, Lcom/miui/player/helper/BufferedMediaPlayer;->sFadeOutMode:I

    .line 1110
    return-void
.end method


# virtual methods
.method public cancelPrepare(Z)V
    .locals 2
    .parameter "abort"

    .prologue
    .line 656
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mNextMediaId:J

    .line 657
    if-eqz p1, :cond_0

    .line 658
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mDownloadNextRunnable:Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;

    invoke-virtual {v0}, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->abort()V

    .line 662
    :goto_0
    return-void

    .line 660
    :cond_0
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mDownloadNextRunnable:Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;

    invoke-virtual {v0}, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->detach()V

    goto :goto_0
.end method

.method public getAudioSessionId()I
    .locals 1

    .prologue
    .line 1316
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v0

    return v0
.end method

.method public getBufferdPercent()F
    .locals 5

    .prologue
    .line 459
    const/4 v0, 0x0

    .line 460
    .local v0, per:F
    iget-object v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    if-nez v1, :cond_1

    .line 461
    const/high16 v0, 0x3f80

    .line 466
    :cond_0
    :goto_0
    return v0

    .line 462
    :cond_1
    iget-wide v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mTotalBytes:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 463
    iget-wide v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mCurrentBytes:J

    long-to-float v1, v1

    iget-wide v2, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mTotalBytes:J

    long-to-float v2, v2

    div-float v0, v1, v2

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 451
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 455
    :goto_0
    return v0

    .line 452
    :catch_0
    move-exception v0

    .line 455
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 2

    .prologue
    .line 470
    const/4 v0, 0x1

    .line 471
    .local v0, duration:I
    iget-object v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mCurrentFile:Ljava/io/File;

    if-eqz v1, :cond_1

    .line 473
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 478
    :cond_1
    :goto_0
    return v0

    .line 474
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getNextId()I
    .locals 3

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/miui/player/helper/BufferedMediaPlayer;->TEMP_FILE_ID_ARR:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 186
    iget v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mTempId:I

    sget-object v2, Lcom/miui/player/helper/BufferedMediaPlayer;->TEMP_FILE_ID_ARR:[I

    aget v2, v2, v0

    if-ne v1, v2, :cond_2

    .line 191
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 192
    sget-object v1, Lcom/miui/player/helper/BufferedMediaPlayer;->TEMP_FILE_ID_ARR:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 193
    const/4 v0, 0x0

    .line 196
    :cond_1
    sget-object v1, Lcom/miui/player/helper/BufferedMediaPlayer;->TEMP_FILE_ID_ARR:[I

    aget v1, v1, v0

    return v1

    .line 185
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public interrupt()V
    .locals 1

    .prologue
    .line 442
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mInterrupt:Z

    .line 443
    return-void
.end method

.method public isBlocking()Z
    .locals 1

    .prologue
    .line 486
    iget-boolean v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mIsBlocking:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 482
    iget-boolean v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mIsBlocking:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPreparing()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 435
    iget v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mStatus:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 605
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 606
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mIsBlocking:Z

    .line 607
    invoke-direct {p0}, Lcom/miui/player/helper/BufferedMediaPlayer;->runOnBlockingChanged()V

    .line 608
    invoke-direct {p0}, Lcom/miui/player/helper/BufferedMediaPlayer;->fadeOut()V

    .line 609
    iget-object v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 610
    monitor-exit v0

    .line 611
    return-void

    .line 610
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public prepareDirectly(Landroid/content/Context;Lcom/miui/player/helper/BufferedMediaPlayer$RemoteControlInfo;Landroid/net/Uri;J)V
    .locals 6
    .parameter "context"
    .parameter "remoteControlInfo"
    .parameter "uri"
    .parameter "nextMediaId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 205
    invoke-direct {p0, p1}, Lcom/miui/player/helper/BufferedMediaPlayer;->resetMediaInfo(Landroid/content/Context;)V

    .line 206
    iput-object p2, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mRemoteControlInfo:Lcom/miui/player/helper/BufferedMediaPlayer$RemoteControlInfo;

    .line 207
    iput-wide p4, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mNextMediaId:J

    .line 208
    iput-object p1, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    .line 210
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/miui/player/helper/BufferedMediaPlayer$RemoteControlInfo;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mDownloadNextRunnable:Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;

    iget-object v2, p2, Lcom/miui/player/helper/BufferedMediaPlayer$RemoteControlInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/miui/player/helper/BufferedMediaPlayer;->getNextId()I

    move-result v1

    invoke-static {v1}, Lcom/miui/player/helper/BufferedMediaPlayer;->getTempFileName(I)Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move-wide v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->initialize(Landroid/content/Context;Landroid/os/Handler;JLjava/lang/String;)V

    .line 215
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mStatus:I

    .line 216
    sget-boolean v0, Landroid/os/Build;->IS_P990:Z

    if-eqz v0, :cond_1

    .line 220
    invoke-static {p1, p3}, Lcom/miui/player/helper/Global;->translateToFileUri(Landroid/content/Context;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p3

    .line 223
    :cond_1
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1, p3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 225
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 227
    const/4 v0, 0x2

    iput v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mStatus:I

    .line 228
    invoke-direct {p0}, Lcom/miui/player/helper/BufferedMediaPlayer;->needPrepare()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mRunnableList:Lcom/miui/player/helper/BufferedMediaPlayer$RunnableList;

    const-string v1, "com.miui.player.helper.BufferedMediaPlayer"

    iget-object v2, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mDownloadNextRunnable:Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;

    const-wide/16 v3, 0x1388

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/miui/player/helper/BufferedMediaPlayer$RunnableList;->add(Ljava/lang/String;Lcom/miui/player/helper/BufferedMediaPlayer$RemovableRunnable;J)V

    .line 231
    :cond_2
    return-void
.end method

.method public prepareWithBuffer(Landroid/content/Context;Lcom/miui/player/helper/BufferedMediaPlayer$RemoteControlInfo;Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;J)V
    .locals 26
    .parameter "context"
    .parameter "remoteControlInfo"
    .parameter "remoteMediaInfo"
    .parameter "nextMediaId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 241
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/miui/player/helper/BufferedMediaPlayer$RemoteControlInfo;->isValid()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;->isValid()Z

    move-result v3

    if-nez v3, :cond_1

    .line 243
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "com.miui.player.helper.BufferedMediaPlayer  prepareRemote  "

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 246
    :cond_1
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;->mAppointName:Ljava/lang/String;

    move-object v15, v0

    .line 247
    .local v15, appointName:Ljava/lang/String;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;->mAppointName:Ljava/lang/String;

    move-object v3, v0

    const-string v4, "music/mp3"

    invoke-static {v3, v4}, Lcom/miui/player/helper/MusicMetaManager;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v22

    .line 248
    .local v22, localMedia:Ljava/io/File;
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;->mId:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/miui/player/downloader/DownloadProvider;->queryRunning(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    .line 251
    .local v25, uri:Landroid/net/Uri;
    if-eqz v22, :cond_3

    if-nez v25, :cond_3

    .line 252
    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/miui/player/helper/BufferedMediaPlayer;->prepareDirectly(Landroid/content/Context;Lcom/miui/player/helper/BufferedMediaPlayer$RemoteControlInfo;Landroid/net/Uri;J)V

    .line 358
    :cond_2
    :goto_0
    return-void

    .line 259
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/helper/BufferedMediaPlayer;->mTempId:I

    move v3, v0

    invoke-static {v3}, Lcom/miui/player/helper/BufferedMediaPlayer;->getTempFileName(I)Ljava/lang/String;

    move-result-object v23

    .line 261
    .local v23, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/miui/player/helper/BufferedMediaPlayer;->mIsFirst:Z

    move v3, v0

    if-nez v3, :cond_8

    .line 263
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/helper/BufferedMediaPlayer;->mTempDir:Ljava/lang/String;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/miui/player/helper/BufferedMediaPlayer;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v22

    .line 264
    if-eqz v22, :cond_4

    .line 265
    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lcom/miui/player/downloader/DownloadProvider;->queryRunning(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v25

    .line 267
    :cond_4
    if-eqz v22, :cond_8

    if-nez v25, :cond_8

    .line 268
    const/16 v24, 0x0

    .line 269
    .local v24, renamed:Z
    invoke-static/range {p1 .. p1}, Lcom/miui/player/helper/BufferedMediaPlayer;->isRemoveAfterPlay(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v5, 0x100000

    cmp-long v3, v3, v5

    if-lez v3, :cond_6

    .line 270
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;->mAppointName:Ljava/lang/String;

    move-object v3, v0

    const-string v4, "music/mp3"

    invoke-static {v3, v4}, Lcom/miui/player/helper/MusicMetaManager;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 271
    .local v18, dst:Ljava/lang/String;
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 272
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/miui/player/helper/BufferedMediaPlayer;->copyFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v22

    .line 273
    const/16 v24, 0x1

    .line 275
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lcom/miui/player/helper/BufferedMediaPlayer;->deleteDownloadRecord(Landroid/content/Context;Ljava/lang/String;)V

    .line 278
    .end local v18           #dst:Ljava/lang/String;
    :cond_6
    :try_start_0
    invoke-static/range {v22 .. v22}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v7, p4

    invoke-virtual/range {v3 .. v8}, Lcom/miui/player/helper/BufferedMediaPlayer;->prepareDirectly(Landroid/content/Context;Lcom/miui/player/helper/BufferedMediaPlayer$RemoteControlInfo;Landroid/net/Uri;J)V

    .line 279
    if-eqz v24, :cond_2

    .line 280
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/miui/player/helper/BufferedMediaPlayer;->runOnDownloadCompleted(Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 287
    :catch_0
    move-exception v3

    move-object/from16 v19, v3

    .line 288
    .local v19, e:Ljava/lang/Exception;
    if-eqz v24, :cond_7

    .line 289
    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->delete()Z

    .line 292
    :cond_7
    const/16 v22, 0x0

    .line 297
    .end local v19           #e:Ljava/lang/Exception;
    .end local v24           #renamed:Z
    :cond_8
    invoke-direct/range {p0 .. p1}, Lcom/miui/player/helper/BufferedMediaPlayer;->resetMediaInfo(Landroid/content/Context;)V

    .line 298
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/helper/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    .line 300
    move-object/from16 v0, p3

    iget-object v0, v0, Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;->mId:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/miui/player/helper/OnlinePlayHelper;->requestCandidateUrls(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v16

    .line 301
    .local v16, candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v16, :cond_9

    .line 302
    new-instance v3, Ljava/io/IOException;

    const-string v4, "online play failed ! maybe no candidate exists"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 305
    :cond_9
    move-object/from16 v0, v16

    move-object/from16 v1, p3

    iput-object v0, v1, Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;->mCandidateUrls:Ljava/util/ArrayList;

    .line 306
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/helper/BufferedMediaPlayer;->mRemoteMediaInfo:Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;

    .line 307
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/helper/BufferedMediaPlayer;->mRemoteControlInfo:Lcom/miui/player/helper/BufferedMediaPlayer$RemoteControlInfo;

    .line 308
    move-wide/from16 v0, p4

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/miui/player/helper/BufferedMediaPlayer;->mNextMediaId:J

    .line 309
    new-instance v3, Lcom/miui/player/helper/BufferedMediaPlayer$BufferContentObserver;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/miui/player/helper/BufferedMediaPlayer$RemoteControlInfo;->mHandler:Landroid/os/Handler;

    move-object v4, v0

    move-object v0, v3

    move-object/from16 v1, p0

    move-object v2, v4

    invoke-direct {v0, v1, v2}, Lcom/miui/player/helper/BufferedMediaPlayer$BufferContentObserver;-><init>(Lcom/miui/player/helper/BufferedMediaPlayer;Landroid/os/Handler;)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/helper/BufferedMediaPlayer;->mDownloadObserver:Landroid/database/ContentObserver;

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/helper/BufferedMediaPlayer;->mDownloadNextRunnable:Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;

    move-object v3, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/miui/player/helper/BufferedMediaPlayer$RemoteControlInfo;->mHandler:Landroid/os/Handler;

    move-object v5, v0

    invoke-virtual/range {p0 .. p0}, Lcom/miui/player/helper/BufferedMediaPlayer;->getNextId()I

    move-result v4

    invoke-static {v4}, Lcom/miui/player/helper/BufferedMediaPlayer;->getTempFileName(I)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v4, p1

    move-wide/from16 v6, p4

    invoke-virtual/range {v3 .. v8}, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->initialize(Landroid/content/Context;Landroid/os/Handler;JLjava/lang/String;)V

    .line 313
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 314
    .local v21, len:I
    const/16 v17, 0x0

    .line 315
    .local v17, currentTryIdx:I
    const/16 v20, 0x0

    .line 317
    .local v20, isSuccess:Z
    if-eqz v25, :cond_d

    .line 318
    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/helper/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    .line 335
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/helper/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    move-object v3, v0

    if-eqz v3, :cond_b

    .line 336
    invoke-direct/range {p0 .. p0}, Lcom/miui/player/helper/BufferedMediaPlayer;->downloadAndPrepare()Z

    move-result v20

    .line 340
    :cond_b
    add-int/lit8 v17, v17, 0x1

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_e

    if-nez v20, :cond_e

    .line 341
    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/helper/BufferedMediaPlayer;->mRemoteMediaInfo:Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;

    move-object v3, v0

    iget-object v6, v3, Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;->mDetails:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/helper/BufferedMediaPlayer;->mTempDir:Ljava/lang/String;

    move-object v7, v0

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/16 v11, 0xbe

    const-wide/16 v12, 0x1388

    const/4 v14, 0x1

    move-object/from16 v3, p1

    move-object/from16 v5, v23

    move-object/from16 v8, v23

    invoke-static/range {v3 .. v14}, Lcom/miui/player/downloader/DownloadProvider;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IIJZ)Landroid/net/Uri;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/helper/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    .line 345
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/helper/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    move-object v3, v0

    if-eqz v3, :cond_c

    .line 346
    invoke-direct/range {p0 .. p0}, Lcom/miui/player/helper/BufferedMediaPlayer;->downloadAndPrepare()Z

    move-result v20

    .line 340
    :cond_c
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 323
    :cond_d
    :goto_2
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/helper/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    move-object v3, v0

    if-nez v3, :cond_a

    .line 325
    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/helper/BufferedMediaPlayer;->mRemoteMediaInfo:Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;

    move-object v3, v0

    iget-object v6, v3, Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;->mDetails:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/helper/BufferedMediaPlayer;->mTempDir:Ljava/lang/String;

    move-object v7, v0

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/16 v11, 0xbe

    const-wide/16 v12, 0x1388

    const/4 v14, 0x1

    move-object/from16 v3, p1

    move-object/from16 v5, v23

    move-object/from16 v8, v23

    invoke-static/range {v3 .. v14}, Lcom/miui/player/downloader/DownloadProvider;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IIJZ)Landroid/net/Uri;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/helper/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    .line 323
    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 350
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/helper/BufferedMediaPlayer;->mStatus:I

    move v3, v0

    if-nez v3, :cond_f

    .line 351
    const/4 v3, 0x3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/player/helper/BufferedMediaPlayer;->mStatus:I

    .line 354
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/helper/BufferedMediaPlayer;->mStatus:I

    move v3, v0

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 355
    new-instance v3, Ljava/io/IOException;

    const-string v4, "com.miui.player.helper.BufferedMediaPlayer download remote media failed!"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public release(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "stopNextDownload"

    .prologue
    .line 640
    invoke-virtual {p0, p2}, Lcom/miui/player/helper/BufferedMediaPlayer;->reset(Z)V

    .line 641
    iget-object v2, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v1

    .line 642
    .local v1, id:I
    iget-object v2, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->release()V

    .line 643
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 644
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.media.action.CLOSE_AUDIO_EFFECT_CONTROL_SESSION"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 645
    .local v0, i:Landroid/content/Intent;
    const-string v2, "android.media.extra.AUDIO_SESSION"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 646
    const-string v2, "android.media.extra.PACKAGE_NAME"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 647
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 649
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public reset(Z)V
    .locals 4
    .parameter "stopNextDownload"

    .prologue
    const/4 v2, 0x0

    .line 617
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mBufferLock:Ljava/lang/Object;

    monitor-enter v0

    .line 618
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mStatus:I

    .line 619
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mDownloadObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 621
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mDownloadObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v1}, Lcom/miui/player/downloader/DownloadProvider;->unregisterDownloadObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    .line 622
    iput-object v2, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mDownloadObserver:Landroid/database/ContentObserver;

    .line 625
    :cond_0
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 626
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 627
    iput-object v2, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mDownloadingUri:Landroid/net/Uri;

    .line 629
    :cond_1
    invoke-direct {p0}, Lcom/miui/player/helper/BufferedMediaPlayer;->fadeOut()V

    .line 630
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 632
    if-eqz p1, :cond_2

    iget-wide v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mNextMediaId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 633
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/player/helper/BufferedMediaPlayer;->cancelPrepare(Z)V

    .line 637
    :goto_0
    return-void

    .line 619
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 635
    :cond_2
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mDownloadNextRunnable:Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;

    invoke-virtual {v0}, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->detach()V

    goto :goto_0
.end method

.method public seekTo(I)V
    .locals 2
    .parameter "msec"

    .prologue
    .line 498
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 499
    add-int/lit16 v1, p1, 0x2710

    :try_start_0
    invoke-direct {p0, v1}, Lcom/miui/player/helper/BufferedMediaPlayer;->hasBuffered(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 500
    iget-object v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 502
    :cond_0
    monitor-exit v0

    .line 503
    return-void

    .line 502
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAudioStreamType(I)V
    .locals 1
    .parameter "streamtype"

    .prologue
    .line 652
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 653
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 490
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 491
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 494
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 495
    return-void
.end method

.method public setTempId(IZ)V
    .locals 0
    .parameter "id"
    .parameter "isFirst"

    .prologue
    .line 178
    invoke-static {p1}, Lcom/miui/player/helper/BufferedMediaPlayer;->assertId(I)V

    .line 179
    iput p1, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mTempId:I

    .line 180
    iput-boolean p2, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mIsFirst:Z

    .line 181
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    .line 506
    iget-object v2, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mListenerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 508
    :try_start_0
    iget-boolean v3, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mIsBlocking:Z

    if-nez v3, :cond_0

    .line 509
    invoke-virtual {p0}, Lcom/miui/player/helper/BufferedMediaPlayer;->getCurrentPosition()I

    move-result v3

    add-int/lit16 v1, v3, 0x2710

    .line 510
    .local v1, newPos:I
    invoke-direct {p0, v1}, Lcom/miui/player/helper/BufferedMediaPlayer;->hasBuffered(I)Z

    move-result v0

    .line 511
    .local v0, isBuffered:Z
    if-eqz v0, :cond_0

    .line 512
    iget-object v3, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 513
    invoke-direct {p0}, Lcom/miui/player/helper/BufferedMediaPlayer;->fadeIn()V

    .line 516
    .end local v0           #isBuffered:Z
    .end local v1           #newPos:I
    :cond_0
    monitor-exit v2

    .line 517
    return-void

    .line 516
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public togglePause(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 446
    iput p1, p0, Lcom/miui/player/helper/BufferedMediaPlayer;->mTogglePause:I

    .line 447
    return-void
.end method
