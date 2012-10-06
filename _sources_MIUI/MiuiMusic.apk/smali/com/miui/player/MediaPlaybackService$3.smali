.class Lcom/miui/player/MediaPlaybackService$3;
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
.field final synthetic this$0:Lcom/miui/player/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/miui/player/MediaPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 486
    iput-object p1, p0, Lcom/miui/player/MediaPlaybackService$3;->this$0:Lcom/miui/player/MediaPlaybackService;

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

    .line 489
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 490
    .local v0, action:Ljava/lang/String;
    const-string v3, "command"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 491
    .local v1, cmd:Ljava/lang/String;
    const-string v3, "next"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.miui.player.musicservicecommand.next"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 492
    :cond_0
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService$3;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v3, v5}, Lcom/miui/player/MediaPlaybackService;->next(Z)V

    .line 528
    :cond_1
    :goto_0
    return-void

    .line 493
    :cond_2
    const-string v3, "previous"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.miui.player.musicservicecommand.previous"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 494
    :cond_3
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService$3;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/miui/player/MediaPlaybackService;->prev()V

    goto :goto_0

    .line 495
    :cond_4
    const-string v3, "togglepause"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "com.miui.player.musicservicecommand.togglepause"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 496
    :cond_5
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService$3;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/miui/player/MediaPlaybackService;->isPlaying()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 497
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService$3;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/miui/player/MediaPlaybackService;->pause()V

    goto :goto_0

    .line 499
    :cond_6
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService$3;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/miui/player/MediaPlaybackService;->play()V

    goto :goto_0

    .line 501
    :cond_7
    const-string v3, "unpause"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 502
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService$3;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/miui/player/MediaPlaybackService;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_1

    .line 503
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService$3;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/miui/player/MediaPlaybackService;->play()V

    goto :goto_0

    .line 505
    :cond_8
    const-string v3, "pause"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "com.miui.player.musicservicecommand.pause"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 506
    :cond_9
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService$3;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/miui/player/MediaPlaybackService;->pause()V

    goto :goto_0

    .line 507
    :cond_a
    const-string v3, "stop"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 508
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService$3;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/miui/player/MediaPlaybackService;->pause()V

    .line 509
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService$3;->this$0:Lcom/miui/player/MediaPlaybackService;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/miui/player/MediaPlaybackService;->seek(J)J

    goto :goto_0

    .line 510
    :cond_b
    const-string v3, "remove"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 511
    const-string v3, "id"

    const/4 v4, 0x0

    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 512
    .local v2, id:I
    if-eqz v2, :cond_1

    .line 513
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService$3;->this$0:Lcom/miui/player/MediaPlaybackService;

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Lcom/miui/player/MediaPlaybackService;->removeTrack(J)I

    goto/16 :goto_0

    .line 515
    .end local v2           #id:I
    :cond_c
    const-string v3, "com.miui.player.musicservicecommand.update_meta"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 516
    const-string v3, "lyric"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 517
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService$3;->this$0:Lcom/miui/player/MediaPlaybackService;

    const-string v4, "meta_changed_lyric"

    #calls: Lcom/miui/player/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;Z)V
    invoke-static {v3, v4, v5}, Lcom/miui/player/MediaPlaybackService;->access$1000(Lcom/miui/player/MediaPlaybackService;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 518
    :cond_d
    const-string v3, "album"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 519
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService$3;->this$0:Lcom/miui/player/MediaPlaybackService;

    const-string v4, "meta_changed_album"

    #calls: Lcom/miui/player/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;Z)V
    invoke-static {v3, v4, v5}, Lcom/miui/player/MediaPlaybackService;->access$1000(Lcom/miui/player/MediaPlaybackService;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 520
    :cond_e
    const-string v3, "track"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 521
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService$3;->this$0:Lcom/miui/player/MediaPlaybackService;

    const-string v4, "meta_changed_track"

    #calls: Lcom/miui/player/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;Z)V
    invoke-static {v3, v4, v5}, Lcom/miui/player/MediaPlaybackService;->access$1000(Lcom/miui/player/MediaPlaybackService;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 523
    :cond_f
    const-string v3, "com.miui.player.musicservicecommand.shake_pref"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 524
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService$3;->this$0:Lcom/miui/player/MediaPlaybackService;

    #getter for: Lcom/miui/player/MediaPlaybackService;->mShakeListener:Lcom/miui/player/helper/ShakeListener;
    invoke-static {v3}, Lcom/miui/player/MediaPlaybackService;->access$1100(Lcom/miui/player/MediaPlaybackService;)Lcom/miui/player/helper/ShakeListener;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/player/helper/ShakeListener;->onUpdatePref()V

    goto/16 :goto_0

    .line 525
    :cond_10
    const-string v3, "com.miui.player.musicservicecommand.quit"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 526
    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService$3;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v3}, Lcom/miui/player/MediaPlaybackService;->quit()V

    goto/16 :goto_0
.end method
