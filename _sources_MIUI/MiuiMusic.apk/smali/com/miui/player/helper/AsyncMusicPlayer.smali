.class public Lcom/miui/player/helper/AsyncMusicPlayer;
.super Ljava/lang/Object;
.source "AsyncMusicPlayer.java"

# interfaces
.implements Lcom/miui/player/helper/BufferedMediaPlayer$RunnableList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/helper/AsyncMusicPlayer$AsyncPrepareResponser;,
        Lcom/miui/player/helper/AsyncMusicPlayer$ErrorMessage;,
        Lcom/miui/player/helper/AsyncMusicPlayer$Thread;,
        Lcom/miui/player/helper/AsyncMusicPlayer$RunnableInfo;,
        Lcom/miui/player/helper/AsyncMusicPlayer$MessageObj;,
        Lcom/miui/player/helper/AsyncMusicPlayer$Command;
    }
.end annotation


# static fields
.field private static final ADD_RUNNABLE:I = 0x7

.field private static final DATA_SET:I = 0x1

.field private static final MODE_CHANGE:I = 0x6

.field private static final ON_COMPLETION:I = 0x64

.field private static final ON_ERROR:I = 0x65

.field private static final ON_EXCEPTION:I = 0x66

.field private static final ON_SUCCESS:I = 0x67

.field private static final PAUSE:I = 0x5

.field private static final RELEASE:I = 0x9

.field private static final REMOVE_RUNNABLE:I = 0x8

.field private static final SEEK:I = 0x4

.field private static final START:I = 0x2

.field private static final STOP:I = 0x3


# instance fields
.field private mBandLevels:[S

.field private final mCmdQueue:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/miui/player/helper/AsyncMusicPlayer$Command;",
            ">;"
        }
    .end annotation
.end field

.field private mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private final mDataSourceStarter:Lcom/miui/player/helper/AsyncMusicPlayer$AsyncPrepareResponser;

.field private mEqualizer:Landroid/media/audiofx/Equalizer;

.field private final mEqualizerLock:Ljava/lang/Object;

.field private mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private final mHandler:Landroid/os/Handler;

.field private mLastDuration:J

.field private mLastPosition:J

.field private mNextId:I

.field private final mOnCompletionListenerAsync:Landroid/media/MediaPlayer$OnCompletionListener;

.field private final mOnErrorListenerAsync:Landroid/media/MediaPlayer$OnErrorListener;

.field private final mPlayer:Lcom/miui/player/helper/BufferedMediaPlayer;

.field private mReleased:Z

.field private mSessionId:I

.field private mState:I

.field private mTag:Ljava/lang/String;

.field private mThread:Lcom/miui/player/helper/AsyncMusicPlayer$Thread;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/miui/player/helper/AsyncMusicPlayer$AsyncPrepareResponser;)V
    .locals 2
    .parameter "tag"
    .parameter "starter"

    .prologue
    const/4 v1, 0x0

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mSessionId:I

    .line 87
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    .line 89
    iput-boolean v1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mReleased:Z

    .line 91
    iput v1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mNextId:I

    .line 370
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mEqualizerLock:Ljava/lang/Object;

    .line 376
    const/4 v0, 0x3

    iput v0, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mState:I

    .line 397
    new-instance v0, Lcom/miui/player/helper/AsyncMusicPlayer$1;

    invoke-direct {v0, p0}, Lcom/miui/player/helper/AsyncMusicPlayer$1;-><init>(Lcom/miui/player/helper/AsyncMusicPlayer;)V

    iput-object v0, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mHandler:Landroid/os/Handler;

    .line 441
    new-instance v0, Lcom/miui/player/helper/AsyncMusicPlayer$2;

    invoke-direct {v0, p0}, Lcom/miui/player/helper/AsyncMusicPlayer$2;-><init>(Lcom/miui/player/helper/AsyncMusicPlayer;)V

    iput-object v0, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mOnCompletionListenerAsync:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 466
    new-instance v0, Lcom/miui/player/helper/AsyncMusicPlayer$3;

    invoke-direct {v0, p0}, Lcom/miui/player/helper/AsyncMusicPlayer$3;-><init>(Lcom/miui/player/helper/AsyncMusicPlayer;)V

    iput-object v0, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mOnErrorListenerAsync:Landroid/media/MediaPlayer$OnErrorListener;

    .line 586
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mLastDuration:J

    .line 604
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mLastPosition:J

    .line 386
    if-eqz p1, :cond_0

    .line 387
    iput-object p1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mTag:Ljava/lang/String;

    .line 391
    :goto_0
    iput-object p2, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mDataSourceStarter:Lcom/miui/player/helper/AsyncMusicPlayer$AsyncPrepareResponser;

    .line 392
    new-instance v0, Lcom/miui/player/helper/BufferedMediaPlayer;

    invoke-direct {v0, p0}, Lcom/miui/player/helper/BufferedMediaPlayer;-><init>(Lcom/miui/player/helper/BufferedMediaPlayer$RunnableList;)V

    iput-object v0, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/helper/BufferedMediaPlayer;

    .line 393
    iget-object v0, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/helper/BufferedMediaPlayer;

    iget-object v1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mOnErrorListenerAsync:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/BufferedMediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 394
    iget-object v0, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/helper/BufferedMediaPlayer;

    iget-object v1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mOnCompletionListenerAsync:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/BufferedMediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 395
    return-void

    .line 389
    :cond_0
    const-string v0, "AsyncPlayer"

    iput-object v0, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mTag:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/miui/player/helper/AsyncMusicPlayer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/player/helper/AsyncMusicPlayer;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/player/helper/AsyncMusicPlayer;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/miui/player/helper/AsyncMusicPlayer;)Lcom/miui/player/helper/AsyncMusicPlayer$AsyncPrepareResponser;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mDataSourceStarter:Lcom/miui/player/helper/AsyncMusicPlayer$AsyncPrepareResponser;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/miui/player/helper/AsyncMusicPlayer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/player/helper/AsyncMusicPlayer;)Ljava/util/LinkedList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/player/helper/AsyncMusicPlayer;)Lcom/miui/player/helper/AsyncMusicPlayer$Command;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/miui/player/helper/AsyncMusicPlayer;->popNextUsableCommand()Lcom/miui/player/helper/AsyncMusicPlayer$Command;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/player/helper/AsyncMusicPlayer;Lcom/miui/player/helper/AsyncMusicPlayer$Command;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/miui/player/helper/AsyncMusicPlayer;->startSound(Lcom/miui/player/helper/AsyncMusicPlayer$Command;)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/player/helper/AsyncMusicPlayer;)Lcom/miui/player/helper/BufferedMediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/helper/BufferedMediaPlayer;

    return-object v0
.end method

.method static synthetic access$602(Lcom/miui/player/helper/AsyncMusicPlayer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mNextId:I

    return p1
.end method

.method static synthetic access$700(Lcom/miui/player/helper/AsyncMusicPlayer;Lcom/miui/player/helper/AsyncMusicPlayer$Command;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/miui/player/helper/AsyncMusicPlayer;->enqueueLocked(Lcom/miui/player/helper/AsyncMusicPlayer$Command;)V

    return-void
.end method

.method static synthetic access$802(Lcom/miui/player/helper/AsyncMusicPlayer;Lcom/miui/player/helper/AsyncMusicPlayer$Thread;)Lcom/miui/player/helper/AsyncMusicPlayer$Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mThread:Lcom/miui/player/helper/AsyncMusicPlayer$Thread;

    return-object p1
.end method

.method static synthetic access$900(Lcom/miui/player/helper/AsyncMusicPlayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/miui/player/helper/AsyncMusicPlayer;->releaseWakeLock()V

    return-void
.end method

.method private acquireWakeLock()V
    .locals 1

    .prologue
    .line 793
    iget-object v0, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 796
    :cond_0
    return-void
.end method

.method private static createEqualizer(I)Landroid/media/audiofx/Equalizer;
    .locals 3
    .parameter "sessionId"

    .prologue
    .line 680
    :try_start_0
    new-instance v1, Landroid/media/audiofx/Equalizer;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Landroid/media/audiofx/Equalizer;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 684
    :goto_0
    return-object v1

    .line 681
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 682
    .local v0, e:Ljava/lang/UnsupportedOperationException;
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    .line 684
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private enqueueLocked(Lcom/miui/player/helper/AsyncMusicPlayer$Command;)V
    .locals 1
    .parameter "cmd"

    .prologue
    .line 737
    iget-boolean v0, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mReleased:Z

    if-eqz v0, :cond_1

    .line 746
    :cond_0
    :goto_0
    return-void

    .line 740
    :cond_1
    iget-object v0, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 741
    iget-object v0, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mThread:Lcom/miui/player/helper/AsyncMusicPlayer$Thread;

    if-nez v0, :cond_0

    .line 742
    invoke-direct {p0}, Lcom/miui/player/helper/AsyncMusicPlayer;->acquireWakeLock()V

    .line 743
    new-instance v0, Lcom/miui/player/helper/AsyncMusicPlayer$Thread;

    invoke-direct {v0, p0}, Lcom/miui/player/helper/AsyncMusicPlayer$Thread;-><init>(Lcom/miui/player/helper/AsyncMusicPlayer;)V

    iput-object v0, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mThread:Lcom/miui/player/helper/AsyncMusicPlayer$Thread;

    .line 744
    iget-object v0, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mThread:Lcom/miui/player/helper/AsyncMusicPlayer$Thread;

    invoke-virtual {v0}, Lcom/miui/player/helper/AsyncMusicPlayer$Thread;->start()V

    goto :goto_0
.end method

.method private popNextUsableCommand()Lcom/miui/player/helper/AsyncMusicPlayer$Command;
    .locals 14

    .prologue
    .line 192
    iget-object v12, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    invoke-virtual {v12}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/player/helper/AsyncMusicPlayer$Command;

    .line 194
    .local v2, firstCmd:Lcom/miui/player/helper/AsyncMusicPlayer$Command;
    iget v12, v2, Lcom/miui/player/helper/AsyncMusicPlayer$Command;->code:I

    const/4 v13, 0x3

    if-eq v12, v13, :cond_0

    iget v12, v2, Lcom/miui/player/helper/AsyncMusicPlayer$Command;->code:I

    const/4 v13, 0x6

    if-ne v12, v13, :cond_1

    :cond_0
    move-object v12, v2

    .line 247
    :goto_0
    return-object v12

    .line 198
    :cond_1
    iget-object v12, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    invoke-virtual {v12}, Ljava/util/LinkedList;->size()I

    move-result v9

    .line 199
    .local v9, size:I
    if-nez v9, :cond_2

    move-object v12, v2

    .line 200
    goto :goto_0

    .line 203
    :cond_2
    iget v3, v2, Lcom/miui/player/helper/AsyncMusicPlayer$Command;->code:I

    .line 204
    .local v3, firstCode:I
    const/4 v7, 0x0

    .line 205
    .local v7, priorityCmd:Lcom/miui/player/helper/AsyncMusicPlayer$Command;
    const/4 v10, -0x1

    .line 206
    .local v10, stopAndMetaChangeIdx:I
    const/4 v6, -0x1

    .line 207
    .local v6, modeChangeIdx:I
    const/4 v11, -0x1

    .line 208
    .local v11, stopOrStartIdx:I
    const/4 v8, -0x1

    .line 210
    .local v8, priorityIdx:I
    iget-object v12, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    invoke-virtual {v12, v9}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v5

    .line 214
    .local v5, iter:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Lcom/miui/player/helper/AsyncMusicPlayer$Command;>;"
    move v4, v9

    .local v4, i:I
    :goto_1
    invoke-interface {v5}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 215
    invoke-interface {v5}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/helper/AsyncMusicPlayer$Command;

    .line 216
    .local v0, cmd:Lcom/miui/player/helper/AsyncMusicPlayer$Command;
    iget v1, v0, Lcom/miui/player/helper/AsyncMusicPlayer$Command;->code:I

    .line 217
    .local v1, code:I
    const/4 v12, 0x3

    if-ne v1, v12, :cond_5

    iget-object v0, v0, Lcom/miui/player/helper/AsyncMusicPlayer$Command;->extra:Ljava/lang/Object;

    .end local v0           #cmd:Lcom/miui/player/helper/AsyncMusicPlayer$Command;
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 218
    move v10, v4

    .line 227
    .end local v1           #code:I
    :cond_3
    const/4 v12, -0x1

    if-le v10, v12, :cond_9

    .line 228
    move v8, v10

    .line 237
    :cond_4
    :goto_2
    const/4 v12, -0x1

    if-le v8, v12, :cond_b

    .line 238
    iget-object v12, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    invoke-virtual {v12, v8}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v5

    .line 239
    invoke-interface {v5}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v7

    .end local v7           #priorityCmd:Lcom/miui/player/helper/AsyncMusicPlayer$Command;
    check-cast v7, Lcom/miui/player/helper/AsyncMusicPlayer$Command;

    .line 240
    .restart local v7       #priorityCmd:Lcom/miui/player/helper/AsyncMusicPlayer$Command;
    invoke-interface {v5}, Ljava/util/ListIterator;->remove()V

    .line 241
    :goto_3
    invoke-interface {v5}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v12

    if-eqz v12, :cond_b

    .line 242
    invoke-interface {v5}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 243
    invoke-interface {v5}, Ljava/util/ListIterator;->remove()V

    goto :goto_3

    .line 220
    .restart local v1       #code:I
    :cond_5
    const/4 v12, 0x6

    if-ne v1, v12, :cond_7

    .line 221
    move v6, v4

    .line 214
    :cond_6
    :goto_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 222
    :cond_7
    const/4 v12, 0x3

    if-eq v1, v12, :cond_8

    const/4 v12, 0x1

    if-ne v1, v12, :cond_6

    .line 223
    :cond_8
    move v11, v4

    goto :goto_4

    .line 229
    .end local v1           #code:I
    :cond_9
    const/4 v12, -0x1

    if-le v6, v12, :cond_a

    .line 230
    const/4 v12, 0x3

    if-eq v3, v12, :cond_4

    const/4 v12, 0x1

    if-eq v3, v12, :cond_4

    .line 231
    move v8, v6

    goto :goto_2

    .line 233
    :cond_a
    const/4 v12, -0x1

    if-le v11, v12, :cond_4

    .line 234
    move v8, v11

    goto :goto_2

    .line 247
    :cond_b
    if-eqz v7, :cond_c

    move-object v12, v7

    goto :goto_0

    :cond_c
    move-object v12, v2

    goto :goto_0
.end method

.method private static releaseEqualzier(Landroid/media/audiofx/Equalizer;)V
    .locals 2
    .parameter "equalizer"

    .prologue
    .line 690
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 691
    .local v0, device:Ljava/lang/String;
    const-string v1, "ace"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "vision"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 692
    invoke-virtual {p0}, Landroid/media/audiofx/Equalizer;->release()V

    .line 696
    :goto_0
    return-void

    .line 694
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/media/audiofx/Equalizer;->setEnabled(Z)I

    goto :goto_0
.end method

.method private releaseWakeLock()V
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 802
    :cond_0
    return-void
.end method

.method private static setBands(Landroid/media/audiofx/Equalizer;[S)V
    .locals 2
    .parameter "eq"
    .parameter "bands"

    .prologue
    .line 731
    const/4 v0, 0x0

    .local v0, i:S
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 732
    aget-short v1, p1, v0

    invoke-virtual {p0, v0, v1}, Landroid/media/audiofx/Equalizer;->setBandLevel(SS)V

    .line 731
    add-int/lit8 v1, v0, 0x1

    int-to-short v0, v1

    goto :goto_0

    .line 734
    :cond_0
    return-void
.end method

.method private startSound(Lcom/miui/player/helper/AsyncMusicPlayer$Command;)V
    .locals 10
    .parameter "cmd"

    .prologue
    const/4 v9, 0x0

    .line 147
    const/4 v1, 0x0

    .line 150
    .local v1, exception:Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 151
    .local v2, id:I
    const/4 v3, 0x0

    .line 152
    .local v3, isFirst:Z
    :try_start_0
    iget v5, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mNextId:I

    if-nez v5, :cond_1

    .line 153
    invoke-static {p0}, Lcom/miui/player/helper/BufferedMediaPlayer;->setUp(Lcom/miui/player/helper/BufferedMediaPlayer$RunnableList;)V

    .line 154
    invoke-static {}, Lcom/miui/player/helper/BufferedMediaPlayer;->getDefaultTempId()I

    move-result v2

    .line 155
    const/4 v3, 0x1

    .line 160
    :goto_0
    iget-object v5, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/helper/BufferedMediaPlayer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/miui/player/helper/BufferedMediaPlayer;->cancelPrepare(Z)V

    .line 161
    iget-object v5, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/helper/BufferedMediaPlayer;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/miui/player/helper/BufferedMediaPlayer;->reset(Z)V

    .line 162
    iget-object v5, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/helper/BufferedMediaPlayer;

    invoke-virtual {v5, v2, v3}, Lcom/miui/player/helper/BufferedMediaPlayer;->setTempId(IZ)V

    .line 163
    iget-object v5, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/helper/BufferedMediaPlayer;

    invoke-virtual {v5}, Lcom/miui/player/helper/BufferedMediaPlayer;->getAudioSessionId()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/miui/player/helper/AsyncMusicPlayer;->updateEqualizerSessionId(I)V

    .line 164
    iget-object v5, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mDataSourceStarter:Lcom/miui/player/helper/AsyncMusicPlayer$AsyncPrepareResponser;

    iget-object v6, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/helper/BufferedMediaPlayer;

    iget-object v7, p1, Lcom/miui/player/helper/AsyncMusicPlayer$Command;->path:Ljava/lang/String;

    iget-object v8, p1, Lcom/miui/player/helper/AsyncMusicPlayer$Command;->extra:Ljava/lang/Object;

    invoke-interface {v5, v6, v7, v8}, Lcom/miui/player/helper/AsyncMusicPlayer$AsyncPrepareResponser;->prepareAsync(Lcom/miui/player/helper/BufferedMediaPlayer;Ljava/lang/String;Ljava/lang/Object;)V

    .line 166
    iget-object v5, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/helper/BufferedMediaPlayer;

    invoke-virtual {v5}, Lcom/miui/player/helper/BufferedMediaPlayer;->getNextId()I

    move-result v5

    iput v5, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mNextId:I

    .line 167
    iget-object v5, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x67

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 168
    .local v4, msg:Landroid/os/Message;
    new-instance v5, Lcom/miui/player/helper/AsyncMusicPlayer$MessageObj;

    iget-object v6, p1, Lcom/miui/player/helper/AsyncMusicPlayer$Command;->path:Ljava/lang/String;

    iget-object v7, p1, Lcom/miui/player/helper/AsyncMusicPlayer$Command;->extra:Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-direct {v5, p0, v6, v7, v8}, Lcom/miui/player/helper/AsyncMusicPlayer$MessageObj;-><init>(Lcom/miui/player/helper/AsyncMusicPlayer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;)V

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 169
    iget-object v5, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/miui/player/helper/OnlinePlayHelper$OnlinePlayDeniedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4

    .line 182
    .end local v4           #msg:Landroid/os/Message;
    :goto_1
    if-eqz v1, :cond_0

    .line 183
    iput v9, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mNextId:I

    .line 184
    iget-object v5, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x66

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 185
    .restart local v4       #msg:Landroid/os/Message;
    new-instance v5, Lcom/miui/player/helper/AsyncMusicPlayer$MessageObj;

    iget-object v6, p1, Lcom/miui/player/helper/AsyncMusicPlayer$Command;->path:Ljava/lang/String;

    iget-object v7, p1, Lcom/miui/player/helper/AsyncMusicPlayer$Command;->extra:Ljava/lang/Object;

    invoke-direct {v5, p0, v6, v7, v1}, Lcom/miui/player/helper/AsyncMusicPlayer$MessageObj;-><init>(Lcom/miui/player/helper/AsyncMusicPlayer;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;)V

    iput-object v5, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 186
    iget-object v5, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 187
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 189
    .end local v4           #msg:Landroid/os/Message;
    :cond_0
    return-void

    .line 157
    :cond_1
    :try_start_1
    iget v2, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mNextId:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/miui/player/helper/OnlinePlayHelper$OnlinePlayDeniedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    .line 170
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 171
    .local v0, e:Ljava/io/IOException;
    move-object v1, v0

    .line 180
    goto :goto_1

    .line 172
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 173
    .local v0, e:Ljava/lang/IllegalStateException;
    move-object v1, v0

    .line 180
    goto :goto_1

    .line 174
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v5

    move-object v0, v5

    .line 175
    .local v0, e:Ljava/lang/IllegalArgumentException;
    move-object v1, v0

    .line 180
    goto :goto_1

    .line 176
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v5

    move-object v0, v5

    .line 177
    .local v0, e:Lcom/miui/player/helper/OnlinePlayHelper$OnlinePlayDeniedException;
    move-object v1, v0

    .line 180
    goto :goto_1

    .line 178
    .end local v0           #e:Lcom/miui/player/helper/OnlinePlayHelper$OnlinePlayDeniedException;
    :catch_4
    move-exception v5

    move-object v0, v5

    .line 179
    .local v0, e:Ljava/lang/InterruptedException;
    move-object v1, v0

    goto :goto_1
.end method


# virtual methods
.method public add(Ljava/lang/String;Lcom/miui/player/helper/BufferedMediaPlayer$RemovableRunnable;J)V
    .locals 3
    .parameter "name"
    .parameter "r"
    .parameter "delay"

    .prologue
    .line 107
    new-instance v0, Lcom/miui/player/helper/AsyncMusicPlayer$Command;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/player/helper/AsyncMusicPlayer$Command;-><init>(Lcom/miui/player/helper/AsyncMusicPlayer$1;)V

    .line 108
    .local v0, cmd:Lcom/miui/player/helper/AsyncMusicPlayer$Command;
    const/4 v1, 0x7

    iput v1, v0, Lcom/miui/player/helper/AsyncMusicPlayer$Command;->code:I

    .line 109
    iput-object p1, v0, Lcom/miui/player/helper/AsyncMusicPlayer$Command;->path:Ljava/lang/String;

    .line 110
    new-instance v1, Lcom/miui/player/helper/AsyncMusicPlayer$RunnableInfo;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/miui/player/helper/AsyncMusicPlayer$RunnableInfo;-><init>(Lcom/miui/player/helper/AsyncMusicPlayer;Lcom/miui/player/helper/BufferedMediaPlayer$RemovableRunnable;J)V

    iput-object v1, v0, Lcom/miui/player/helper/AsyncMusicPlayer$Command;->extra:Ljava/lang/Object;

    .line 111
    iget-object v1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 112
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/miui/player/helper/AsyncMusicPlayer;->doRemoveRunnable(Ljava/lang/String;)V

    .line 113
    invoke-direct {p0, v0}, Lcom/miui/player/helper/AsyncMusicPlayer;->enqueueLocked(Lcom/miui/player/helper/AsyncMusicPlayer$Command;)V

    .line 114
    monitor-exit v1

    .line 115
    return-void

    .line 114
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public changeMode(II)V
    .locals 3
    .parameter "oldMode"
    .parameter "newMode"

    .prologue
    const/4 v1, 0x1

    .line 526
    if-eq p2, v1, :cond_0

    if-ne p1, v1, :cond_1

    .line 528
    :cond_0
    new-instance v0, Lcom/miui/player/helper/AsyncMusicPlayer$Command;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/player/helper/AsyncMusicPlayer$Command;-><init>(Lcom/miui/player/helper/AsyncMusicPlayer$1;)V

    .line 529
    .local v0, cmd:Lcom/miui/player/helper/AsyncMusicPlayer$Command;
    const/4 v1, 0x6

    iput v1, v0, Lcom/miui/player/helper/AsyncMusicPlayer$Command;->code:I

    .line 530
    iget-object v1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 531
    :try_start_0
    invoke-direct {p0, v0}, Lcom/miui/player/helper/AsyncMusicPlayer;->enqueueLocked(Lcom/miui/player/helper/AsyncMusicPlayer$Command;)V

    .line 532
    monitor-exit v1

    .line 534
    .end local v0           #cmd:Lcom/miui/player/helper/AsyncMusicPlayer$Command;
    :cond_1
    return-void

    .line 532
    .restart local v0       #cmd:Lcom/miui/player/helper/AsyncMusicPlayer$Command;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method doRemoveRunnable(Ljava/lang/String;)V
    .locals 4
    .parameter "name"

    .prologue
    .line 132
    iget-object v2, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 133
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/miui/player/helper/AsyncMusicPlayer$Command;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 134
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/helper/AsyncMusicPlayer$Command;

    .line 135
    .local v0, c:Lcom/miui/player/helper/AsyncMusicPlayer$Command;
    iget v2, v0, Lcom/miui/player/helper/AsyncMusicPlayer$Command;->code:I

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    iget v2, v0, Lcom/miui/player/helper/AsyncMusicPlayer$Command;->code:I

    const/4 v3, 0x7

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/miui/player/helper/AsyncMusicPlayer$Command;->path:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 140
    .end local v0           #c:Lcom/miui/player/helper/AsyncMusicPlayer$Command;
    :cond_2
    return-void
.end method

.method public duration()J
    .locals 3

    .prologue
    .line 590
    iget-object v0, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v0

    .line 592
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/helper/BufferedMediaPlayer;

    if-eqz v1, :cond_0

    .line 593
    iget-object v1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/helper/BufferedMediaPlayer;

    invoke-virtual {v1}, Lcom/miui/player/helper/BufferedMediaPlayer;->getDuration()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mLastDuration:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 601
    iget-wide v0, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mLastDuration:J

    return-wide v0

    .line 595
    :cond_0
    const-wide/16 v1, 0x1

    :try_start_2
    iput-wide v1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mLastDuration:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 597
    :catch_0
    move-exception v1

    goto :goto_0

    .line 599
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public getBufferedPercent()F
    .locals 2

    .prologue
    .line 633
    :try_start_0
    iget-object v0, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 634
    :try_start_1
    iget-object v1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/helper/BufferedMediaPlayer;

    if-eqz v1, :cond_0

    .line 635
    iget-object v1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/helper/BufferedMediaPlayer;

    invoke-virtual {v1}, Lcom/miui/player/helper/BufferedMediaPlayer;->getBufferdPercent()F

    move-result v1

    monitor-exit v0

    move v0, v1

    .line 641
    :goto_0
    return v0

    .line 637
    :cond_0
    monitor-exit v0

    .line 641
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 637
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 638
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public isBlocking()Z
    .locals 2

    .prologue
    .line 622
    iget-object v0, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v0

    .line 623
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/helper/BufferedMediaPlayer;

    if-eqz v1, :cond_0

    .line 624
    iget-object v1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/helper/BufferedMediaPlayer;

    invoke-virtual {v1}, Lcom/miui/player/helper/BufferedMediaPlayer;->isBlocking()Z

    move-result v1

    monitor-exit v0

    move v0, v1

    .line 627
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    move v0, v1

    goto :goto_0

    .line 628
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isInitialized()Z
    .locals 2

    .prologue
    .line 549
    iget v0, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pause()V
    .locals 4

    .prologue
    const/4 v2, 0x5

    .line 537
    new-instance v0, Lcom/miui/player/helper/AsyncMusicPlayer$Command;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/player/helper/AsyncMusicPlayer$Command;-><init>(Lcom/miui/player/helper/AsyncMusicPlayer$1;)V

    .line 538
    .local v0, cmd:Lcom/miui/player/helper/AsyncMusicPlayer$Command;
    iput v2, v0, Lcom/miui/player/helper/AsyncMusicPlayer$Command;->code:I

    .line 539
    iget-object v1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 540
    :try_start_0
    iget-object v2, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/helper/BufferedMediaPlayer;

    if-eqz v2, :cond_0

    .line 541
    iget-object v2, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/helper/BufferedMediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/miui/player/helper/BufferedMediaPlayer;->togglePause(I)V

    .line 543
    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/player/helper/AsyncMusicPlayer;->enqueueLocked(Lcom/miui/player/helper/AsyncMusicPlayer$Command;)V

    .line 544
    const/4 v2, 0x5

    iput v2, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mState:I

    .line 545
    monitor-exit v1

    .line 546
    return-void

    .line 545
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public position()J
    .locals 3

    .prologue
    .line 607
    iget-object v0, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v0

    .line 609
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/helper/BufferedMediaPlayer;

    if-eqz v1, :cond_0

    .line 610
    iget-object v1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/helper/BufferedMediaPlayer;

    invoke-virtual {v1}, Lcom/miui/player/helper/BufferedMediaPlayer;->getCurrentPosition()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mLastPosition:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 618
    iget-wide v0, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mLastPosition:J

    return-wide v0

    .line 612
    :cond_0
    const-wide/16 v1, 0x0

    :try_start_2
    iput-wide v1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mLastPosition:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 614
    :catch_0
    move-exception v1

    goto :goto_0

    .line 616
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public prepare(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .parameter "path"
    .parameter "extra"

    .prologue
    const/4 v2, 0x1

    .line 493
    new-instance v0, Lcom/miui/player/helper/AsyncMusicPlayer$Command;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/player/helper/AsyncMusicPlayer$Command;-><init>(Lcom/miui/player/helper/AsyncMusicPlayer$1;)V

    .line 494
    .local v0, cmd:Lcom/miui/player/helper/AsyncMusicPlayer$Command;
    iput v2, v0, Lcom/miui/player/helper/AsyncMusicPlayer$Command;->code:I

    .line 495
    iput-object p1, v0, Lcom/miui/player/helper/AsyncMusicPlayer$Command;->path:Ljava/lang/String;

    .line 496
    iput-object p2, v0, Lcom/miui/player/helper/AsyncMusicPlayer$Command;->extra:Ljava/lang/Object;

    .line 497
    iget-object v1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 498
    :try_start_0
    invoke-direct {p0, v0}, Lcom/miui/player/helper/AsyncMusicPlayer;->enqueueLocked(Lcom/miui/player/helper/AsyncMusicPlayer$Command;)V

    .line 499
    const/4 v2, 0x1

    iput v2, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mState:I

    .line 500
    monitor-exit v1

    .line 501
    return-void

    .line 500
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public release(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 504
    new-instance v0, Lcom/miui/player/helper/AsyncMusicPlayer$Command;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/player/helper/AsyncMusicPlayer$Command;-><init>(Lcom/miui/player/helper/AsyncMusicPlayer$1;)V

    .line 505
    .local v0, cmd:Lcom/miui/player/helper/AsyncMusicPlayer$Command;
    const/16 v1, 0x9

    iput v1, v0, Lcom/miui/player/helper/AsyncMusicPlayer$Command;->code:I

    .line 506
    iput-object p1, v0, Lcom/miui/player/helper/AsyncMusicPlayer$Command;->extra:Ljava/lang/Object;

    .line 507
    iget-object v1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 508
    :try_start_0
    invoke-direct {p0, v0}, Lcom/miui/player/helper/AsyncMusicPlayer;->enqueueLocked(Lcom/miui/player/helper/AsyncMusicPlayer$Command;)V

    .line 509
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mReleased:Z

    .line 510
    monitor-exit v1

    .line 511
    return-void

    .line 510
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method releaseAll(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 645
    iget-object v0, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mEqualizerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 646
    :try_start_0
    iget-object v1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mEqualizer:Landroid/media/audiofx/Equalizer;

    if-eqz v1, :cond_0

    .line 647
    iget-object v1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mEqualizer:Landroid/media/audiofx/Equalizer;

    invoke-static {v1}, Lcom/miui/player/helper/AsyncMusicPlayer;->releaseEqualzier(Landroid/media/audiofx/Equalizer;)V

    .line 648
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mEqualizer:Landroid/media/audiofx/Equalizer;

    .line 650
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 651
    iget-object v0, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v0

    .line 653
    :try_start_1
    iget-object v1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/helper/BufferedMediaPlayer;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/miui/player/helper/BufferedMediaPlayer;->release(Landroid/content/Context;Z)V

    .line 654
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 655
    return-void

    .line 650
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 654
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public remove(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 122
    new-instance v0, Lcom/miui/player/helper/AsyncMusicPlayer$Command;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/player/helper/AsyncMusicPlayer$Command;-><init>(Lcom/miui/player/helper/AsyncMusicPlayer$1;)V

    .line 123
    .local v0, cmd:Lcom/miui/player/helper/AsyncMusicPlayer$Command;
    const/16 v1, 0x8

    iput v1, v0, Lcom/miui/player/helper/AsyncMusicPlayer$Command;->code:I

    .line 124
    iput-object p1, v0, Lcom/miui/player/helper/AsyncMusicPlayer$Command;->path:Ljava/lang/String;

    .line 125
    iget-object v1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 126
    :try_start_0
    invoke-direct {p0, v0}, Lcom/miui/player/helper/AsyncMusicPlayer;->enqueueLocked(Lcom/miui/player/helper/AsyncMusicPlayer$Command;)V

    .line 127
    monitor-exit v1

    .line 128
    return-void

    .line 127
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public seek(J)V
    .locals 3
    .parameter "pos"

    .prologue
    .line 576
    iget-object v1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 577
    :try_start_0
    new-instance v0, Lcom/miui/player/helper/AsyncMusicPlayer$Command;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/miui/player/helper/AsyncMusicPlayer$Command;-><init>(Lcom/miui/player/helper/AsyncMusicPlayer$1;)V

    .line 578
    .local v0, cmd:Lcom/miui/player/helper/AsyncMusicPlayer$Command;
    const/4 v2, 0x4

    iput v2, v0, Lcom/miui/player/helper/AsyncMusicPlayer$Command;->code:I

    .line 579
    long-to-int v2, p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/player/helper/AsyncMusicPlayer$Command;->extra:Ljava/lang/Object;

    .line 580
    invoke-direct {p0, v0}, Lcom/miui/player/helper/AsyncMusicPlayer;->enqueueLocked(Lcom/miui/player/helper/AsyncMusicPlayer$Command;)V

    .line 582
    iput-wide p1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mLastPosition:J

    .line 583
    monitor-exit v1

    .line 584
    return-void

    .line 583
    .end local v0           #cmd:Lcom/miui/player/helper/AsyncMusicPlayer$Command;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 434
    iput-object p1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 435
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 438
    iput-object p1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 439
    return-void
.end method

.method public setUsesWakeLock(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 782
    iget-object v1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mThread:Lcom/miui/player/helper/AsyncMusicPlayer$Thread;

    if-eqz v1, :cond_1

    .line 785
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "assertion failed mWakeLock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mThread="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mThread:Lcom/miui/player/helper/AsyncMusicPlayer$Thread;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 788
    :cond_1
    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 789
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 790
    return-void
.end method

.method public start()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    .line 514
    new-instance v0, Lcom/miui/player/helper/AsyncMusicPlayer$Command;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/player/helper/AsyncMusicPlayer$Command;-><init>(Lcom/miui/player/helper/AsyncMusicPlayer$1;)V

    .line 515
    .local v0, cmd:Lcom/miui/player/helper/AsyncMusicPlayer$Command;
    iput v2, v0, Lcom/miui/player/helper/AsyncMusicPlayer$Command;->code:I

    .line 516
    iget-object v1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 517
    :try_start_0
    iget-object v2, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/helper/BufferedMediaPlayer;

    if-eqz v2, :cond_0

    .line 518
    iget-object v2, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/helper/BufferedMediaPlayer;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/miui/player/helper/BufferedMediaPlayer;->togglePause(I)V

    .line 520
    :cond_0
    invoke-direct {p0, v0}, Lcom/miui/player/helper/AsyncMusicPlayer;->enqueueLocked(Lcom/miui/player/helper/AsyncMusicPlayer$Command;)V

    .line 521
    const/4 v2, 0x2

    iput v2, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mState:I

    .line 522
    monitor-exit v1

    .line 523
    return-void

    .line 522
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public stop(Z)V
    .locals 5
    .parameter "orderChanged"

    .prologue
    const/4 v4, 0x3

    .line 557
    iget-object v1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 558
    :try_start_0
    iget-object v2, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/helper/BufferedMediaPlayer;

    if-eqz v2, :cond_0

    .line 559
    iget-object v2, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/helper/BufferedMediaPlayer;

    invoke-virtual {v2}, Lcom/miui/player/helper/BufferedMediaPlayer;->interrupt()V

    .line 560
    iget-object v2, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/helper/BufferedMediaPlayer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/miui/player/helper/BufferedMediaPlayer;->togglePause(I)V

    .line 565
    :cond_0
    iget v2, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mState:I

    if-eq v2, v4, :cond_1

    .line 566
    new-instance v0, Lcom/miui/player/helper/AsyncMusicPlayer$Command;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/miui/player/helper/AsyncMusicPlayer$Command;-><init>(Lcom/miui/player/helper/AsyncMusicPlayer$1;)V

    .line 567
    .local v0, cmd:Lcom/miui/player/helper/AsyncMusicPlayer$Command;
    const/4 v2, 0x3

    iput v2, v0, Lcom/miui/player/helper/AsyncMusicPlayer$Command;->code:I

    .line 568
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/miui/player/helper/AsyncMusicPlayer$Command;->extra:Ljava/lang/Object;

    .line 569
    invoke-direct {p0, v0}, Lcom/miui/player/helper/AsyncMusicPlayer;->enqueueLocked(Lcom/miui/player/helper/AsyncMusicPlayer$Command;)V

    .line 570
    const/4 v2, 0x3

    iput v2, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mState:I

    .line 572
    .end local v0           #cmd:Lcom/miui/player/helper/AsyncMusicPlayer$Command;
    :cond_1
    monitor-exit v1

    .line 573
    return-void

    .line 572
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public updateEqualizerBands([S)V
    .locals 4
    .parameter "levels"

    .prologue
    .line 699
    const/4 v0, -0x1

    .line 700
    .local v0, sessionId:I
    iget-object v1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;

    monitor-enter v1

    .line 701
    :try_start_0
    iget-object v2, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/helper/BufferedMediaPlayer;

    invoke-virtual {v2}, Lcom/miui/player/helper/BufferedMediaPlayer;->getAudioSessionId()I

    move-result v0

    .line 702
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 703
    iget-object v1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mEqualizerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 704
    :try_start_1
    iput-object p1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mBandLevels:[S

    .line 705
    if-eqz p1, :cond_2

    .line 706
    iget-object v2, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mEqualizer:Landroid/media/audiofx/Equalizer;

    if-nez v2, :cond_0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 707
    invoke-static {v0}, Lcom/miui/player/helper/AsyncMusicPlayer;->createEqualizer(I)Landroid/media/audiofx/Equalizer;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mEqualizer:Landroid/media/audiofx/Equalizer;

    .line 708
    iget-object v2, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mEqualizer:Landroid/media/audiofx/Equalizer;

    if-eqz v2, :cond_0

    .line 709
    iget-object v2, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mEqualizer:Landroid/media/audiofx/Equalizer;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/audiofx/Equalizer;->setEnabled(Z)I

    .line 716
    :cond_0
    iget-object v2, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mEqualizer:Landroid/media/audiofx/Equalizer;

    if-eqz v2, :cond_1

    .line 717
    iget-object v2, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mEqualizer:Landroid/media/audiofx/Equalizer;

    invoke-static {v2, p1}, Lcom/miui/player/helper/AsyncMusicPlayer;->setBands(Landroid/media/audiofx/Equalizer;[S)V

    .line 727
    :cond_1
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 728
    return-void

    .line 702
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 719
    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mEqualizer:Landroid/media/audiofx/Equalizer;

    if-eqz v2, :cond_1

    .line 720
    iget-object v2, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mEqualizer:Landroid/media/audiofx/Equalizer;

    invoke-static {v2}, Lcom/miui/player/helper/AsyncMusicPlayer;->releaseEqualzier(Landroid/media/audiofx/Equalizer;)V

    .line 721
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mEqualizer:Landroid/media/audiofx/Equalizer;

    goto :goto_0

    .line 727
    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method updateEqualizerSessionId(I)V
    .locals 2
    .parameter "sessionId"

    .prologue
    .line 659
    iget-object v0, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mEqualizerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 660
    :try_start_0
    iget v1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mSessionId:I

    if-eq v1, p1, :cond_1

    .line 661
    iput p1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mSessionId:I

    .line 662
    iget-object v1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mEqualizer:Landroid/media/audiofx/Equalizer;

    if-eqz v1, :cond_0

    .line 663
    iget-object v1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mEqualizer:Landroid/media/audiofx/Equalizer;

    invoke-static {v1}, Lcom/miui/player/helper/AsyncMusicPlayer;->releaseEqualzier(Landroid/media/audiofx/Equalizer;)V

    .line 664
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mEqualizer:Landroid/media/audiofx/Equalizer;

    .line 670
    :cond_0
    iget-object v1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mBandLevels:[S

    if-eqz v1, :cond_1

    .line 671
    iget-object v1, p0, Lcom/miui/player/helper/AsyncMusicPlayer;->mBandLevels:[S

    invoke-virtual {p0, v1}, Lcom/miui/player/helper/AsyncMusicPlayer;->updateEqualizerBands([S)V

    .line 675
    :cond_1
    monitor-exit v0

    .line 676
    return-void

    .line 675
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
