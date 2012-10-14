.class Lcom/miui/player/MediaPlaybackService$LockScreenListener;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LockScreenListener"
.end annotation


# instance fields
.field private mForceCopyAlbum:Z

.field private mLockScreenArtistName:Ljava/lang/String;

.field private mLockScrenAlbumName:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/player/MediaPlaybackService;


# direct methods
.method private constructor <init>(Lcom/miui/player/MediaPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 2578
    iput-object p1, p0, Lcom/miui/player/MediaPlaybackService$LockScreenListener;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/MediaPlaybackService;Lcom/miui/player/MediaPlaybackService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2578
    invoke-direct {p0, p1}, Lcom/miui/player/MediaPlaybackService$LockScreenListener;-><init>(Lcom/miui/player/MediaPlaybackService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const-string v9, "track"

    .line 2584
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2585
    .local v0, action:Ljava/lang/String;
    const-string v8, "lockscreen.action.SONG_METADATA_REQUEST"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2586
    iget-object v8, p0, Lcom/miui/player/MediaPlaybackService$LockScreenListener;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v8}, Lcom/miui/player/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    .line 2587
    .local v1, albumName:Ljava/lang/String;
    iget-object v8, p0, Lcom/miui/player/MediaPlaybackService$LockScreenListener;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v8}, Lcom/miui/player/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    .line 2588
    .local v2, artistName:Ljava/lang/String;
    iget-object v8, p0, Lcom/miui/player/MediaPlaybackService$LockScreenListener;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v8}, Lcom/miui/player/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v7

    .line 2589
    .local v7, trackName:Ljava/lang/String;
    if-nez v7, :cond_1

    .line 2618
    .end local v1           #albumName:Ljava/lang/String;
    .end local v2           #artistName:Ljava/lang/String;
    .end local v7           #trackName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2592
    .restart local v1       #albumName:Ljava/lang/String;
    .restart local v2       #artistName:Ljava/lang/String;
    .restart local v7       #trackName:Ljava/lang/String;
    :cond_1
    const-string v8, "track"

    invoke-virtual {p2, v9, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 2593
    .local v4, isRequestTrack:Z
    if-eqz v4, :cond_2

    .line 2594
    iget-object v8, p0, Lcom/miui/player/MediaPlaybackService$LockScreenListener;->this$0:Lcom/miui/player/MediaPlaybackService;

    const/4 v9, 0x0

    #calls: Lcom/miui/player/MediaPlaybackService;->notifyScreenManager(Ljava/lang/String;Z)V
    invoke-static {v8, v9, v10}, Lcom/miui/player/MediaPlaybackService;->access$3800(Lcom/miui/player/MediaPlaybackService;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2598
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/miui/player/MediaPlaybackService$LockScreenListener;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v9}, Lcom/miui/player/MediaPlaybackService;->getFilesDir()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "ablum.jpg"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2599
    .local v6, tempAlbumPath:Ljava/lang/String;
    iget-boolean v8, p0, Lcom/miui/player/MediaPlaybackService$LockScreenListener;->mForceCopyAlbum:Z

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/miui/player/MediaPlaybackService$LockScreenListener;->mLockScrenAlbumName:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/miui/player/MediaPlaybackService$LockScreenListener;->mLockScreenArtistName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2600
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2601
    .local v5, tempAlbumFile:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 2602
    iget-object v8, p0, Lcom/miui/player/MediaPlaybackService$LockScreenListener;->this$0:Lcom/miui/player/MediaPlaybackService;

    #calls: Lcom/miui/player/MediaPlaybackService;->notifyScreenManager(Ljava/lang/String;Z)V
    invoke-static {v8, v6, v10}, Lcom/miui/player/MediaPlaybackService;->access$3800(Lcom/miui/player/MediaPlaybackService;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2606
    .end local v5           #tempAlbumFile:Ljava/io/File;
    :cond_3
    iput-object v1, p0, Lcom/miui/player/MediaPlaybackService$LockScreenListener;->mLockScrenAlbumName:Ljava/lang/String;

    .line 2607
    iput-object v2, p0, Lcom/miui/player/MediaPlaybackService$LockScreenListener;->mLockScreenArtistName:Ljava/lang/String;

    .line 2608
    iget-object v8, p0, Lcom/miui/player/MediaPlaybackService$LockScreenListener;->this$0:Lcom/miui/player/MediaPlaybackService;

    #calls: Lcom/miui/player/MediaPlaybackService;->copyAlbum(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v8, v6}, Lcom/miui/player/MediaPlaybackService;->access$3900(Lcom/miui/player/MediaPlaybackService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2609
    iget-object v8, p0, Lcom/miui/player/MediaPlaybackService$LockScreenListener;->this$0:Lcom/miui/player/MediaPlaybackService;

    #calls: Lcom/miui/player/MediaPlaybackService;->notifyScreenManager(Ljava/lang/String;Z)V
    invoke-static {v8, v6, v10}, Lcom/miui/player/MediaPlaybackService;->access$3800(Lcom/miui/player/MediaPlaybackService;Ljava/lang/String;Z)V

    .line 2610
    iput-boolean v11, p0, Lcom/miui/player/MediaPlaybackService$LockScreenListener;->mForceCopyAlbum:Z

    goto :goto_0

    .line 2612
    .end local v1           #albumName:Ljava/lang/String;
    .end local v2           #artistName:Ljava/lang/String;
    .end local v4           #isRequestTrack:Z
    .end local v6           #tempAlbumPath:Ljava/lang/String;
    .end local v7           #trackName:Ljava/lang/String;
    :cond_4
    const-string v8, "com.miui.player.musicservicecommand.update_meta"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2613
    const-string v8, "command"

    invoke-virtual {p2, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2614
    .local v3, cmd:Ljava/lang/String;
    const-string v8, "album"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v8, "track"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2615
    :cond_5
    iput-boolean v10, p0, Lcom/miui/player/MediaPlaybackService$LockScreenListener;->mForceCopyAlbum:Z

    goto/16 :goto_0
.end method
