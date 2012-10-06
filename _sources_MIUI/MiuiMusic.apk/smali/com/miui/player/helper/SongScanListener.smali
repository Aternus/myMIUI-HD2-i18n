.class public Lcom/miui/player/helper/SongScanListener;
.super Ljava/lang/Object;
.source "SongScanListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/helper/SongScanListener$SongScanner;
    }
.end annotation


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mOnDialogCallback:Lcom/miui/player/MusicUtils$OnDialogCallback;

.field private mPlaylistRecovery:Lcom/miui/player/helper/PlaylistRecovery;

.field private final mRecoveryCompleteReceiver:Landroid/content/BroadcastReceiver;

.field private mRecoveryCompleteUpdate:Z

.field private mScanListener:Landroid/content/BroadcastReceiver;

.field private mScanner:Lcom/miui/player/helper/SongScanListener$SongScanner;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/miui/player/helper/SongScanListener$SongScanner;Lcom/miui/player/MusicUtils$OnDialogCallback;)V
    .locals 1
    .parameter "activity"
    .parameter "scanner"
    .parameter "onDialogCallback"

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/helper/SongScanListener;->mRecoveryCompleteUpdate:Z

    .line 75
    new-instance v0, Lcom/miui/player/helper/SongScanListener$1;

    invoke-direct {v0, p0}, Lcom/miui/player/helper/SongScanListener$1;-><init>(Lcom/miui/player/helper/SongScanListener;)V

    iput-object v0, p0, Lcom/miui/player/helper/SongScanListener;->mScanListener:Landroid/content/BroadcastReceiver;

    .line 87
    new-instance v0, Lcom/miui/player/helper/SongScanListener$2;

    invoke-direct {v0, p0}, Lcom/miui/player/helper/SongScanListener$2;-><init>(Lcom/miui/player/helper/SongScanListener;)V

    iput-object v0, p0, Lcom/miui/player/helper/SongScanListener;->mRecoveryCompleteReceiver:Landroid/content/BroadcastReceiver;

    .line 21
    iput-object p1, p0, Lcom/miui/player/helper/SongScanListener;->mActivity:Landroid/app/Activity;

    .line 23
    iput-object p3, p0, Lcom/miui/player/helper/SongScanListener;->mOnDialogCallback:Lcom/miui/player/MusicUtils$OnDialogCallback;

    .line 24
    iput-object p2, p0, Lcom/miui/player/helper/SongScanListener;->mScanner:Lcom/miui/player/helper/SongScanListener$SongScanner;

    .line 25
    new-instance v0, Lcom/miui/player/helper/PlaylistRecovery;

    invoke-direct {v0, p1}, Lcom/miui/player/helper/PlaylistRecovery;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/miui/player/helper/SongScanListener;->mPlaylistRecovery:Lcom/miui/player/helper/PlaylistRecovery;

    .line 26
    return-void
.end method

.method static synthetic access$000(Lcom/miui/player/helper/SongScanListener;)Lcom/miui/player/helper/SongScanListener$SongScanner;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    iget-object v0, p0, Lcom/miui/player/helper/SongScanListener;->mScanner:Lcom/miui/player/helper/SongScanListener$SongScanner;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/player/helper/SongScanListener;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 13
    iput-boolean p1, p0, Lcom/miui/player/helper/SongScanListener;->mRecoveryCompleteUpdate:Z

    return p1
.end method


# virtual methods
.method public enableDatabaseError(ZZ)Z
    .locals 2
    .parameter "enable"
    .parameter "alphabetScroller"

    .prologue
    .line 103
    if-eqz p1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/miui/player/helper/SongScanListener;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/player/helper/SongScanListener;->mOnDialogCallback:Lcom/miui/player/MusicUtils$OnDialogCallback;

    invoke-static {v0, v1}, Lcom/miui/player/MusicUtils;->displayDatabaseError(Landroid/app/Activity;Lcom/miui/player/MusicUtils$OnDialogCallback;)V

    .line 105
    iget-object v0, p0, Lcom/miui/player/helper/SongScanListener;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->closeContextMenu()V

    .line 109
    :goto_0
    return p1

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/miui/player/helper/SongScanListener;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/miui/player/MusicUtils;->hideDatabaseError(Landroid/app/Activity;Z)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 29
    iget-object v2, p0, Lcom/miui/player/helper/SongScanListener;->mScanner:Lcom/miui/player/helper/SongScanListener$SongScanner;

    invoke-interface {v2}, Lcom/miui/player/helper/SongScanListener$SongScanner;->isRecoveryCompleteReceiver()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 31
    .local v1, recoveryCompleteFilter:Landroid/content/IntentFilter;
    const-string v2, "com.miui.music.RECOVERY_COMPLETE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    iget-object v2, p0, Lcom/miui/player/helper/SongScanListener;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/miui/player/helper/SongScanListener;->mRecoveryCompleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 35
    .end local v1           #recoveryCompleteFilter:Landroid/content/IntentFilter;
    :cond_0
    iget-object v2, p0, Lcom/miui/player/helper/SongScanListener;->mScanner:Lcom/miui/player/helper/SongScanListener$SongScanner;

    invoke-interface {v2}, Lcom/miui/player/helper/SongScanListener$SongScanner;->isEnableScanReceiver()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 36
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 37
    .local v0, f:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.MEDIA_SCANNER_STARTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    const-string v2, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 39
    const-string v2, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 40
    const-string v2, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 41
    const-string v2, "file"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 42
    iget-object v2, p0, Lcom/miui/player/helper/SongScanListener;->mActivity:Landroid/app/Activity;

    iget-object v3, p0, Lcom/miui/player/helper/SongScanListener;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 44
    .end local v0           #f:Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/player/helper/SongScanListener;->mScanner:Lcom/miui/player/helper/SongScanListener$SongScanner;

    invoke-interface {v0}, Lcom/miui/player/helper/SongScanListener$SongScanner;->isRecoveryCompleteReceiver()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/miui/player/helper/SongScanListener;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/player/helper/SongScanListener;->mRecoveryCompleteReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/miui/player/helper/SongScanListener;->mScanner:Lcom/miui/player/helper/SongScanListener$SongScanner;

    invoke-interface {v0}, Lcom/miui/player/helper/SongScanListener$SongScanner;->isEnableScanReceiver()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/miui/player/helper/SongScanListener;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/miui/player/helper/SongScanListener;->mScanListener:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/miui/player/MusicUtils;->unregisterReceiverSafe(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    .line 69
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miui/player/helper/SongScanListener;->mPlaylistRecovery:Lcom/miui/player/helper/PlaylistRecovery;

    invoke-virtual {v0}, Lcom/miui/player/helper/PlaylistRecovery;->needRecovery()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/miui/player/helper/SongScanListener;->mPlaylistRecovery:Lcom/miui/player/helper/PlaylistRecovery;

    invoke-virtual {v0}, Lcom/miui/player/helper/PlaylistRecovery;->doRecovery()V

    .line 57
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-boolean v0, p0, Lcom/miui/player/helper/SongScanListener;->mRecoveryCompleteUpdate:Z

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/miui/player/helper/SongScanListener;->mScanner:Lcom/miui/player/helper/SongScanListener$SongScanner;

    invoke-interface {v0}, Lcom/miui/player/helper/SongScanListener$SongScanner;->refreshAfterRecovery()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/helper/SongScanListener;->mRecoveryCompleteUpdate:Z

    goto :goto_0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/miui/player/helper/SongScanListener;->mScanner:Lcom/miui/player/helper/SongScanListener$SongScanner;

    invoke-interface {v0}, Lcom/miui/player/helper/SongScanListener$SongScanner;->refreshBeforeRecovery()V

    goto :goto_0
.end method
