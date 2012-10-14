.class Lcom/miui/player/ui/MediaPlaybackActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1430
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$5;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    .line 1433
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity$5;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    #getter for: Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;
    invoke-static {v3}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$2100(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/IMediaPlaybackService;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1481
    :cond_0
    :goto_0
    return-void

    .line 1437
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1438
    .local v0, action:Ljava/lang/String;
    const-string v3, "com.miui.player.metachanged"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1439
    const-string v3, "other"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1440
    .local v1, extra:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1441
    .local v2, flag:I
    if-eqz v1, :cond_2

    const-string v3, "meta_changed_track"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1442
    :cond_2
    const/4 v2, 0x3

    .line 1448
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity$5;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    #getter for: Lcom/miui/player/ui/MediaPlaybackActivity;->mIsLyricProgressModify:Z
    invoke-static {v3}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$2200(Lcom/miui/player/ui/MediaPlaybackActivity;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1449
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity$5;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    const/4 v4, 0x0

    #calls: Lcom/miui/player/ui/MediaPlaybackActivity;->leaveLyricProgressModifyMode(Z)V
    invoke-static {v3, v4}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$2300(Lcom/miui/player/ui/MediaPlaybackActivity;Z)V

    .line 1451
    :cond_4
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity$5;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    #getter for: Lcom/miui/player/ui/MediaPlaybackActivity;->mStartRefresh:Z
    invoke-static {v3}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$1600(Lcom/miui/player/ui/MediaPlaybackActivity;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1452
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity$5;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    #calls: Lcom/miui/player/ui/MediaPlaybackActivity;->updateTrackInfo(I)V
    invoke-static {v3, v2}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$600(Lcom/miui/player/ui/MediaPlaybackActivity;I)V

    .line 1457
    :goto_2
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity$5;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-virtual {v3}, Lcom/miui/player/ui/MediaPlaybackActivity;->isPaused()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1458
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity$5;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    #setter for: Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackChangedWhilePaused:Z
    invoke-static {v3, v5}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$1902(Lcom/miui/player/ui/MediaPlaybackActivity;Z)Z

    .line 1476
    .end local v1           #extra:Ljava/lang/String;
    .end local v2           #flag:I
    :cond_5
    :goto_3
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity$5;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    #getter for: Lcom/miui/player/ui/MediaPlaybackActivity;->mTimeIndicatorController:Lcom/miui/player/helper/controller/TimeIndicatorController;
    invoke-static {v3}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$2700(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/helper/controller/TimeIndicatorController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/player/helper/controller/TimeIndicatorController;->refreshRepeatImage()V

    .line 1477
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity$5;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    #getter for: Lcom/miui/player/ui/MediaPlaybackActivity;->mTimeIndicatorController:Lcom/miui/player/helper/controller/TimeIndicatorController;
    invoke-static {v3}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$2700(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/helper/controller/TimeIndicatorController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/player/helper/controller/TimeIndicatorController;->refreshShuffleImage()V

    .line 1478
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity$5;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-virtual {v3}, Lcom/miui/player/ui/MediaPlaybackActivity;->hasWindowFocus()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity$5;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-virtual {v3}, Lcom/miui/player/ui/MediaPlaybackActivity;->isPaused()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1479
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity$5;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    iget-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity$5;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    #calls: Lcom/miui/player/ui/MediaPlaybackActivity;->refreshNow()J
    invoke-static {v4}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$700(Lcom/miui/player/ui/MediaPlaybackActivity;)J

    move-result-wide v4

    #calls: Lcom/miui/player/ui/MediaPlaybackActivity;->queueNextRefresh(J)V
    invoke-static {v3, v4, v5}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$800(Lcom/miui/player/ui/MediaPlaybackActivity;J)V

    goto :goto_0

    .line 1443
    .restart local v1       #extra:Ljava/lang/String;
    .restart local v2       #flag:I
    :cond_6
    const-string v3, "meta_changed_album"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1444
    const/4 v2, 0x2

    goto :goto_1

    .line 1445
    :cond_7
    const-string v3, "meta_changed_lyric"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1446
    const/4 v2, 0x1

    goto :goto_1

    .line 1454
    :cond_8
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity$5;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    #setter for: Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackChangedWhileSliding:Z
    invoke-static {v3, v5}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$1802(Lcom/miui/player/ui/MediaPlaybackActivity;Z)Z

    goto :goto_2

    .line 1460
    .end local v1           #extra:Ljava/lang/String;
    .end local v2           #flag:I
    :cond_9
    const-string v3, "com.miui.player.playbackcomplete"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1461
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity$5;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    #getter for: Lcom/miui/player/ui/MediaPlaybackActivity;->mOneShot:Z
    invoke-static {v3}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$2400(Lcom/miui/player/ui/MediaPlaybackActivity;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1462
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity$5;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v3}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->finishParent(Landroid/app/Activity;)V

    .line 1464
    :cond_a
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity$5;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    #getter for: Lcom/miui/player/ui/MediaPlaybackActivity;->mPlayerCommonController:Lcom/miui/player/helper/controller/PlayerCommonController;
    invoke-static {v3}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$2500(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/helper/controller/PlayerCommonController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/player/helper/controller/PlayerCommonController;->refresh()V

    goto :goto_3

    .line 1465
    :cond_b
    const-string v3, "com.miui.player.playstatechanged"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1466
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity$5;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    #getter for: Lcom/miui/player/ui/MediaPlaybackActivity;->mPlaylistController:Lcom/miui/player/helper/controller/PlaylistViewController;
    invoke-static {v3}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$2600(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/helper/controller/PlaylistViewController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/player/helper/controller/PlaylistViewController;->updateViews()V

    .line 1467
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity$5;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    #getter for: Lcom/miui/player/ui/MediaPlaybackActivity;->mPlayerCommonController:Lcom/miui/player/helper/controller/PlayerCommonController;
    invoke-static {v3}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$2500(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/helper/controller/PlayerCommonController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/player/helper/controller/PlayerCommonController;->refresh()V

    goto/16 :goto_3

    .line 1468
    :cond_c
    const-string v3, "com.miui.player.queuechanged"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1469
    invoke-static {}, Lcom/miui/player/MusicUtils;->isMusicLoaded()Z

    move-result v3

    if-nez v3, :cond_5

    .line 1470
    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity$5;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {v3}, Lcom/miui/player/drawerActivityGroup/DrawerActivityGroup;->destroyDrawerActivity(Landroid/app/Activity;)V

    goto/16 :goto_0
.end method
