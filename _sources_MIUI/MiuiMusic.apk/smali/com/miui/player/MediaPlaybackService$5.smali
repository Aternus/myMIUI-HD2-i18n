.class Lcom/miui/player/MediaPlaybackService$5;
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
    .line 569
    iput-object p1, p0, Lcom/miui/player/MediaPlaybackService$5;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 572
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 574
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/miui/player/helper/SleepModeManager;->isSleepModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com.miui.music.quit"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 575
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService$5;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    #setter for: Lcom/miui/player/MediaPlaybackService;->mSleepTriggerTime:J
    invoke-static {v2, v3, v4}, Lcom/miui/player/MediaPlaybackService;->access$1602(Lcom/miui/player/MediaPlaybackService;J)J

    .line 576
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/miui/player/helper/BufferedMediaPlayer;->toggleFadeOutMode(I)V

    .line 577
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.miui.player.musicservicecommand.pause"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 578
    .local v1, quitIntent:Landroid/content/Intent;
    const-string v2, "command"

    const-string v3, "pause"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 579
    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 581
    .end local v1           #quitIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method
