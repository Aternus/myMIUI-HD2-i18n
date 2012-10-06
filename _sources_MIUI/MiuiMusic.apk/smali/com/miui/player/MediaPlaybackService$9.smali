.class Lcom/miui/player/MediaPlaybackService$9;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mConnectivityInit:Z

.field final synthetic this$0:Lcom/miui/player/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/miui/player/MediaPlaybackService;)V
    .locals 1
    .parameter

    .prologue
    .line 2621
    iput-object p1, p0, Lcom/miui/player/MediaPlaybackService$9;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2624
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/MediaPlaybackService$9;->mConnectivityInit:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 2628
    iget-boolean v6, p0, Lcom/miui/player/MediaPlaybackService$9;->mConnectivityInit:Z

    .line 2629
    .local v6, connectivityInit:Z
    iput-boolean v9, p0, Lcom/miui/player/MediaPlaybackService$9;->mConnectivityInit:Z

    .line 2630
    if-eqz v6, :cond_1

    .line 2632
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$9;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "flow_save_hint"

    invoke-static {v0, v5}, Lcom/miui/player/ui/PreferencesActivity;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    .line 2634
    .local v7, hint:Z
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$9;->this$0:Lcom/miui/player/MediaPlaybackService;

    #calls: Lcom/miui/player/MediaPlaybackService;->saveFlowHint(Z)V
    invoke-static {v0, v7}, Lcom/miui/player/MediaPlaybackService;->access$4000(Lcom/miui/player/MediaPlaybackService;Z)V

    .line 2638
    const-string v0, "noConnectivity"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    .line 2639
    .local v8, noConnectivity:Z
    if-nez v8, :cond_1

    .line 2640
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$9;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v4

    .line 2641
    .local v4, artistName:Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$9;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v3

    .line 2642
    .local v3, albumName:Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$9;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v2

    .line 2643
    .local v2, trackName:Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$9;->this$0:Lcom/miui/player/MediaPlaybackService;

    #getter for: Lcom/miui/player/MediaPlaybackService;->mLyricStatus:I
    invoke-static {v0}, Lcom/miui/player/MediaPlaybackService;->access$1300(Lcom/miui/player/MediaPlaybackService;)I

    move-result v0

    if-eq v0, v9, :cond_0

    .line 2644
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$9;->this$0:Lcom/miui/player/MediaPlaybackService;

    const/4 v5, -0x1

    #setter for: Lcom/miui/player/MediaPlaybackService;->mLyricStatus:I
    invoke-static {v0, v5}, Lcom/miui/player/MediaPlaybackService;->access$1302(Lcom/miui/player/MediaPlaybackService;I)I

    .line 2645
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$9;->this$0:Lcom/miui/player/MediaPlaybackService;

    move v5, v1

    #calls: Lcom/miui/player/MediaPlaybackService;->updateLyricStatus(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    invoke-static/range {v0 .. v5}, Lcom/miui/player/MediaPlaybackService;->access$4100(Lcom/miui/player/MediaPlaybackService;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 2647
    :cond_0
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$9;->this$0:Lcom/miui/player/MediaPlaybackService;

    #calls: Lcom/miui/player/MediaPlaybackService;->updateAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/player/MediaPlaybackService$AlbumInfo;
    invoke-static {v0, v2, v3, v4}, Lcom/miui/player/MediaPlaybackService;->access$4200(Lcom/miui/player/MediaPlaybackService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/player/MediaPlaybackService$AlbumInfo;

    .line 2650
    .end local v2           #trackName:Ljava/lang/String;
    .end local v3           #albumName:Ljava/lang/String;
    .end local v4           #artistName:Ljava/lang/String;
    .end local v7           #hint:Z
    .end local v8           #noConnectivity:Z
    :cond_1
    return-void
.end method
