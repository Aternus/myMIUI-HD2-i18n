.class Lcom/miui/player/MediaPlaybackService$1;
.super Landroid/os/Handler;
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
    .line 324
    iput-object p1, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "MediaPlaybackService"

    .line 328
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 330
    :pswitch_0
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    #getter for: Lcom/miui/player/MediaPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v1}, Lcom/miui/player/MediaPlaybackService;->access$100(Lcom/miui/player/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 331
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v1, v2}, Lcom/miui/player/MediaPlaybackService;->next(Z)V

    goto :goto_0

    .line 337
    :cond_1
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    #calls: Lcom/miui/player/MediaPlaybackService;->stop(ZZ)V
    invoke-static {v1, v3, v2}, Lcom/miui/player/MediaPlaybackService;->access$200(Lcom/miui/player/MediaPlaybackService;ZZ)V

    .line 338
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    #calls: Lcom/miui/player/MediaPlaybackService;->openCurrent(Z)V
    invoke-static {v1, v3}, Lcom/miui/player/MediaPlaybackService;->access$300(Lcom/miui/player/MediaPlaybackService;Z)V

    goto :goto_0

    .line 342
    :pswitch_1
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    #getter for: Lcom/miui/player/MediaPlaybackService;->mRepeatMode:I
    invoke-static {v1}, Lcom/miui/player/MediaPlaybackService;->access$400(Lcom/miui/player/MediaPlaybackService;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 343
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/miui/player/MediaPlaybackService;->seek(J)J

    .line 344
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v1}, Lcom/miui/player/MediaPlaybackService;->play()V

    goto :goto_0

    .line 345
    :cond_2
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    #getter for: Lcom/miui/player/MediaPlaybackService;->mOneShot:Z
    invoke-static {v1}, Lcom/miui/player/MediaPlaybackService;->access$500(Lcom/miui/player/MediaPlaybackService;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 346
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v1, v3}, Lcom/miui/player/MediaPlaybackService;->next(Z)V

    goto :goto_0

    .line 348
    :cond_3
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    #setter for: Lcom/miui/player/MediaPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v1, v3}, Lcom/miui/player/MediaPlaybackService;->access$102(Lcom/miui/player/MediaPlaybackService;Z)Z

    .line 349
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    const-string v2, "com.miui.player.playbackcomplete"

    #calls: Lcom/miui/player/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/miui/player/MediaPlaybackService;->access$600(Lcom/miui/player/MediaPlaybackService;Ljava/lang/String;)V

    .line 350
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v1, v3, v3}, Lcom/miui/player/MediaPlaybackService;->onPlayStateChanged(ZZ)V

    goto :goto_0

    .line 354
    :pswitch_2
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    #getter for: Lcom/miui/player/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/miui/player/MediaPlaybackService;->access$700(Lcom/miui/player/MediaPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    #getter for: Lcom/miui/player/MediaPlaybackService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v1}, Lcom/miui/player/MediaPlaybackService;->access$700(Lcom/miui/player/MediaPlaybackService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 356
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

    goto/16 :goto_0

    .line 360
    :pswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    packed-switch v1, :pswitch_data_1

    .line 385
    :pswitch_4
    const-string v1, "MediaPlaybackService"

    const-string v1, "Unknown audio focus change code"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 362
    :pswitch_5
    const-string v1, "MediaPlaybackService"

    const-string v1, "AudioFocus: received AUDIOFOCUS_LOSS"

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v1}, Lcom/miui/player/MediaPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v1}, Lcom/miui/player/MediaPlaybackService;->pause()V

    .line 365
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    #setter for: Lcom/miui/player/MediaPlaybackService;->mResumeAfterAudioFocusGain:Z
    invoke-static {v1, v3}, Lcom/miui/player/MediaPlaybackService;->access$802(Lcom/miui/player/MediaPlaybackService;Z)Z

    goto/16 :goto_0

    .line 370
    :pswitch_6
    const-string v1, "MediaPlaybackService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioFocus: received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v1}, Lcom/miui/player/MediaPlaybackService;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 372
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    #getter for: Lcom/miui/player/MediaPlaybackService;->mIsSupposedToBePlaying:Z
    invoke-static {v1}, Lcom/miui/player/MediaPlaybackService;->access$100(Lcom/miui/player/MediaPlaybackService;)Z

    move-result v0

    .line 373
    .local v0, isSupposedToBePlaying:Z
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v1}, Lcom/miui/player/MediaPlaybackService;->pause()V

    .line 374
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    #setter for: Lcom/miui/player/MediaPlaybackService;->mResumeAfterAudioFocusGain:Z
    invoke-static {v1, v0}, Lcom/miui/player/MediaPlaybackService;->access$802(Lcom/miui/player/MediaPlaybackService;Z)Z

    goto/16 :goto_0

    .line 378
    .end local v0           #isSupposedToBePlaying:Z
    :pswitch_7
    const-string v1, "MediaPlaybackService"

    const-string v1, "AudioFocus: received AUDIOFOCUS_GAIN"

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    #getter for: Lcom/miui/player/MediaPlaybackService;->mResumeAfterAudioFocusGain:Z
    invoke-static {v1}, Lcom/miui/player/MediaPlaybackService;->access$800(Lcom/miui/player/MediaPlaybackService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    #setter for: Lcom/miui/player/MediaPlaybackService;->mResumeAfterAudioFocusGain:Z
    invoke-static {v1, v3}, Lcom/miui/player/MediaPlaybackService;->access$802(Lcom/miui/player/MediaPlaybackService;Z)Z

    .line 381
    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$1;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v1}, Lcom/miui/player/MediaPlaybackService;->play()V

    goto/16 :goto_0

    .line 328
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 360
    :pswitch_data_1
    .packed-switch -0x3
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_7
    .end packed-switch
.end method
