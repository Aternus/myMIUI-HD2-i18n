.class final Lcom/miui/player/helper/AsyncMusicPlayer$Thread;
.super Ljava/lang/Thread;
.source "AsyncMusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/AsyncMusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Thread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/helper/AsyncMusicPlayer;


# direct methods
.method constructor <init>(Lcom/miui/player/helper/AsyncMusicPlayer;)V
    .locals 2
    .parameter

    .prologue
    .line 251
    iput-object p1, p0, Lcom/miui/player/helper/AsyncMusicPlayer$Thread;->this$0:Lcom/miui/player/helper/AsyncMusicPlayer;

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AsyncPlayer-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    #getter for: Lcom/miui/player/helper/AsyncMusicPlayer;->mTag:Ljava/lang/String;
    invoke-static {p1}, Lcom/miui/player/helper/AsyncMusicPlayer;->access$100(Lcom/miui/player/helper/AsyncMusicPlayer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 253
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 259
    :goto_0
    const/4 v1, 0x0

    .line 260
    .local v1, cmd:Lcom/miui/player/helper/AsyncMusicPlayer$Command;
    iget-object v7, p0, Lcom/miui/player/helper/AsyncMusicPlayer$Thread;->this$0:Lcom/miui/player/helper/AsyncMusicPlayer;

    #getter for: Lcom/miui/player/helper/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;
    invoke-static {v7}, Lcom/miui/player/helper/AsyncMusicPlayer;->access$200(Lcom/miui/player/helper/AsyncMusicPlayer;)Ljava/util/LinkedList;

    move-result-object v7

    monitor-enter v7

    .line 261
    :try_start_0
    iget-object v8, p0, Lcom/miui/player/helper/AsyncMusicPlayer$Thread;->this$0:Lcom/miui/player/helper/AsyncMusicPlayer;

    #calls: Lcom/miui/player/helper/AsyncMusicPlayer;->popNextUsableCommand()Lcom/miui/player/helper/AsyncMusicPlayer$Command;
    invoke-static {v8}, Lcom/miui/player/helper/AsyncMusicPlayer;->access$300(Lcom/miui/player/helper/AsyncMusicPlayer;)Lcom/miui/player/helper/AsyncMusicPlayer$Command;

    move-result-object v1

    .line 262
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    iget v7, v1, Lcom/miui/player/helper/AsyncMusicPlayer$Command;->code:I

    packed-switch v7, :pswitch_data_0

    .line 342
    :cond_0
    :goto_1
    iget-object v7, p0, Lcom/miui/player/helper/AsyncMusicPlayer$Thread;->this$0:Lcom/miui/player/helper/AsyncMusicPlayer;

    #getter for: Lcom/miui/player/helper/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;
    invoke-static {v7}, Lcom/miui/player/helper/AsyncMusicPlayer;->access$200(Lcom/miui/player/helper/AsyncMusicPlayer;)Ljava/util/LinkedList;

    move-result-object v7

    monitor-enter v7

    .line 343
    :try_start_1
    iget-object v8, p0, Lcom/miui/player/helper/AsyncMusicPlayer$Thread;->this$0:Lcom/miui/player/helper/AsyncMusicPlayer;

    #getter for: Lcom/miui/player/helper/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;
    invoke-static {v8}, Lcom/miui/player/helper/AsyncMusicPlayer;->access$200(Lcom/miui/player/helper/AsyncMusicPlayer;)Ljava/util/LinkedList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/LinkedList;->size()I

    move-result v8

    if-nez v8, :cond_4

    .line 350
    iget-object v8, p0, Lcom/miui/player/helper/AsyncMusicPlayer$Thread;->this$0:Lcom/miui/player/helper/AsyncMusicPlayer;

    const/4 v9, 0x0

    #setter for: Lcom/miui/player/helper/AsyncMusicPlayer;->mThread:Lcom/miui/player/helper/AsyncMusicPlayer$Thread;
    invoke-static {v8, v9}, Lcom/miui/player/helper/AsyncMusicPlayer;->access$802(Lcom/miui/player/helper/AsyncMusicPlayer;Lcom/miui/player/helper/AsyncMusicPlayer$Thread;)Lcom/miui/player/helper/AsyncMusicPlayer$Thread;

    .line 351
    iget-object v8, p0, Lcom/miui/player/helper/AsyncMusicPlayer$Thread;->this$0:Lcom/miui/player/helper/AsyncMusicPlayer;

    #calls: Lcom/miui/player/helper/AsyncMusicPlayer;->releaseWakeLock()V
    invoke-static {v8}, Lcom/miui/player/helper/AsyncMusicPlayer;->access$900(Lcom/miui/player/helper/AsyncMusicPlayer;)V

    .line 352
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    return-void

    .line 262
    :catchall_0
    move-exception v8

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .line 269
    :pswitch_0
    iget-object v7, p0, Lcom/miui/player/helper/AsyncMusicPlayer$Thread;->this$0:Lcom/miui/player/helper/AsyncMusicPlayer;

    #calls: Lcom/miui/player/helper/AsyncMusicPlayer;->startSound(Lcom/miui/player/helper/AsyncMusicPlayer$Command;)V
    invoke-static {v7, v1}, Lcom/miui/player/helper/AsyncMusicPlayer;->access$400(Lcom/miui/player/helper/AsyncMusicPlayer;Lcom/miui/player/helper/AsyncMusicPlayer$Command;)V

    goto :goto_1

    .line 272
    :pswitch_1
    iget-object v7, p0, Lcom/miui/player/helper/AsyncMusicPlayer$Thread;->this$0:Lcom/miui/player/helper/AsyncMusicPlayer;

    #getter for: Lcom/miui/player/helper/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/helper/BufferedMediaPlayer;
    invoke-static {v7}, Lcom/miui/player/helper/AsyncMusicPlayer;->access$500(Lcom/miui/player/helper/AsyncMusicPlayer;)Lcom/miui/player/helper/BufferedMediaPlayer;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/miui/player/helper/AsyncMusicPlayer$Thread;->this$0:Lcom/miui/player/helper/AsyncMusicPlayer;

    #getter for: Lcom/miui/player/helper/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/helper/BufferedMediaPlayer;
    invoke-static {v7}, Lcom/miui/player/helper/AsyncMusicPlayer;->access$500(Lcom/miui/player/helper/AsyncMusicPlayer;)Lcom/miui/player/helper/BufferedMediaPlayer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/player/helper/BufferedMediaPlayer;->isPlaying()Z

    move-result v7

    if-nez v7, :cond_0

    .line 273
    iget-object v7, p0, Lcom/miui/player/helper/AsyncMusicPlayer$Thread;->this$0:Lcom/miui/player/helper/AsyncMusicPlayer;

    #getter for: Lcom/miui/player/helper/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/helper/BufferedMediaPlayer;
    invoke-static {v7}, Lcom/miui/player/helper/AsyncMusicPlayer;->access$500(Lcom/miui/player/helper/AsyncMusicPlayer;)Lcom/miui/player/helper/BufferedMediaPlayer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/player/helper/BufferedMediaPlayer;->start()V

    goto :goto_1

    .line 277
    :pswitch_2
    iget-object v7, p0, Lcom/miui/player/helper/AsyncMusicPlayer$Thread;->this$0:Lcom/miui/player/helper/AsyncMusicPlayer;

    #getter for: Lcom/miui/player/helper/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/helper/BufferedMediaPlayer;
    invoke-static {v7}, Lcom/miui/player/helper/AsyncMusicPlayer;->access$500(Lcom/miui/player/helper/AsyncMusicPlayer;)Lcom/miui/player/helper/BufferedMediaPlayer;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 278
    iget-object v7, v1, Lcom/miui/player/helper/AsyncMusicPlayer$Command;->extra:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    .line 279
    .local v6, stopNextDownload:Z
    iget-object v7, p0, Lcom/miui/player/helper/AsyncMusicPlayer$Thread;->this$0:Lcom/miui/player/helper/AsyncMusicPlayer;

    #getter for: Lcom/miui/player/helper/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/helper/BufferedMediaPlayer;
    invoke-static {v7}, Lcom/miui/player/helper/AsyncMusicPlayer;->access$500(Lcom/miui/player/helper/AsyncMusicPlayer;)Lcom/miui/player/helper/BufferedMediaPlayer;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/miui/player/helper/BufferedMediaPlayer;->reset(Z)V

    .line 280
    if-eqz v6, :cond_0

    .line 281
    iget-object v7, p0, Lcom/miui/player/helper/AsyncMusicPlayer$Thread;->this$0:Lcom/miui/player/helper/AsyncMusicPlayer;

    #setter for: Lcom/miui/player/helper/AsyncMusicPlayer;->mNextId:I
    invoke-static {v7, v11}, Lcom/miui/player/helper/AsyncMusicPlayer;->access$602(Lcom/miui/player/helper/AsyncMusicPlayer;I)I

    goto :goto_1

    .line 287
    .end local v6           #stopNextDownload:Z
    :pswitch_3
    iget-object v7, p0, Lcom/miui/player/helper/AsyncMusicPlayer$Thread;->this$0:Lcom/miui/player/helper/AsyncMusicPlayer;

    #getter for: Lcom/miui/player/helper/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/helper/BufferedMediaPlayer;
    invoke-static {v7}, Lcom/miui/player/helper/AsyncMusicPlayer;->access$500(Lcom/miui/player/helper/AsyncMusicPlayer;)Lcom/miui/player/helper/BufferedMediaPlayer;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 288
    iget-object v4, v1, Lcom/miui/player/helper/AsyncMusicPlayer$Command;->extra:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 289
    .local v4, pos:Ljava/lang/Integer;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-gez v7, :cond_2

    .line 290
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 295
    :cond_1
    :goto_2
    iget-object v7, p0, Lcom/miui/player/helper/AsyncMusicPlayer$Thread;->this$0:Lcom/miui/player/helper/AsyncMusicPlayer;

    #getter for: Lcom/miui/player/helper/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/helper/BufferedMediaPlayer;
    invoke-static {v7}, Lcom/miui/player/helper/AsyncMusicPlayer;->access$500(Lcom/miui/player/helper/AsyncMusicPlayer;)Lcom/miui/player/helper/BufferedMediaPlayer;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/miui/player/helper/BufferedMediaPlayer;->seekTo(I)V

    goto/16 :goto_1

    .line 291
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, p0, Lcom/miui/player/helper/AsyncMusicPlayer$Thread;->this$0:Lcom/miui/player/helper/AsyncMusicPlayer;

    #getter for: Lcom/miui/player/helper/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/helper/BufferedMediaPlayer;
    invoke-static {v8}, Lcom/miui/player/helper/AsyncMusicPlayer;->access$500(Lcom/miui/player/helper/AsyncMusicPlayer;)Lcom/miui/player/helper/BufferedMediaPlayer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/miui/player/helper/BufferedMediaPlayer;->getDuration()I

    move-result v8

    if-le v7, v8, :cond_1

    .line 292
    iget-object v7, p0, Lcom/miui/player/helper/AsyncMusicPlayer$Thread;->this$0:Lcom/miui/player/helper/AsyncMusicPlayer;

    #getter for: Lcom/miui/player/helper/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/helper/BufferedMediaPlayer;
    invoke-static {v7}, Lcom/miui/player/helper/AsyncMusicPlayer;->access$500(Lcom/miui/player/helper/AsyncMusicPlayer;)Lcom/miui/player/helper/BufferedMediaPlayer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/player/helper/BufferedMediaPlayer;->getDuration()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_2

    .line 300
    .end local v4           #pos:Ljava/lang/Integer;
    :pswitch_4
    iget-object v7, p0, Lcom/miui/player/helper/AsyncMusicPlayer$Thread;->this$0:Lcom/miui/player/helper/AsyncMusicPlayer;

    #getter for: Lcom/miui/player/helper/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/helper/BufferedMediaPlayer;
    invoke-static {v7}, Lcom/miui/player/helper/AsyncMusicPlayer;->access$500(Lcom/miui/player/helper/AsyncMusicPlayer;)Lcom/miui/player/helper/BufferedMediaPlayer;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/miui/player/helper/AsyncMusicPlayer$Thread;->this$0:Lcom/miui/player/helper/AsyncMusicPlayer;

    #getter for: Lcom/miui/player/helper/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/helper/BufferedMediaPlayer;
    invoke-static {v7}, Lcom/miui/player/helper/AsyncMusicPlayer;->access$500(Lcom/miui/player/helper/AsyncMusicPlayer;)Lcom/miui/player/helper/BufferedMediaPlayer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/player/helper/BufferedMediaPlayer;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 301
    iget-object v7, p0, Lcom/miui/player/helper/AsyncMusicPlayer$Thread;->this$0:Lcom/miui/player/helper/AsyncMusicPlayer;

    #getter for: Lcom/miui/player/helper/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/helper/BufferedMediaPlayer;
    invoke-static {v7}, Lcom/miui/player/helper/AsyncMusicPlayer;->access$500(Lcom/miui/player/helper/AsyncMusicPlayer;)Lcom/miui/player/helper/BufferedMediaPlayer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/miui/player/helper/BufferedMediaPlayer;->pause()V

    goto/16 :goto_1

    .line 306
    :pswitch_5
    iget-object v7, p0, Lcom/miui/player/helper/AsyncMusicPlayer$Thread;->this$0:Lcom/miui/player/helper/AsyncMusicPlayer;

    #getter for: Lcom/miui/player/helper/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/helper/BufferedMediaPlayer;
    invoke-static {v7}, Lcom/miui/player/helper/AsyncMusicPlayer;->access$500(Lcom/miui/player/helper/AsyncMusicPlayer;)Lcom/miui/player/helper/BufferedMediaPlayer;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 307
    iget-object v7, p0, Lcom/miui/player/helper/AsyncMusicPlayer$Thread;->this$0:Lcom/miui/player/helper/AsyncMusicPlayer;

    #getter for: Lcom/miui/player/helper/AsyncMusicPlayer;->mPlayer:Lcom/miui/player/helper/BufferedMediaPlayer;
    invoke-static {v7}, Lcom/miui/player/helper/AsyncMusicPlayer;->access$500(Lcom/miui/player/helper/AsyncMusicPlayer;)Lcom/miui/player/helper/BufferedMediaPlayer;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/miui/player/helper/BufferedMediaPlayer;->cancelPrepare(Z)V

    .line 308
    iget-object v7, p0, Lcom/miui/player/helper/AsyncMusicPlayer$Thread;->this$0:Lcom/miui/player/helper/AsyncMusicPlayer;

    #setter for: Lcom/miui/player/helper/AsyncMusicPlayer;->mNextId:I
    invoke-static {v7, v11}, Lcom/miui/player/helper/AsyncMusicPlayer;->access$602(Lcom/miui/player/helper/AsyncMusicPlayer;I)I

    goto/16 :goto_1

    .line 313
    :pswitch_6
    iget-object v2, v1, Lcom/miui/player/helper/AsyncMusicPlayer$Command;->extra:Ljava/lang/Object;

    check-cast v2, Lcom/miui/player/helper/AsyncMusicPlayer$RunnableInfo;

    .line 314
    .local v2, info:Lcom/miui/player/helper/AsyncMusicPlayer$RunnableInfo;
    iget-object v5, v2, Lcom/miui/player/helper/AsyncMusicPlayer$RunnableInfo;->runnable:Lcom/miui/player/helper/BufferedMediaPlayer$RemovableRunnable;

    .line 315
    .local v5, rr:Lcom/miui/player/helper/BufferedMediaPlayer$RemovableRunnable;
    invoke-interface {v5}, Lcom/miui/player/helper/BufferedMediaPlayer$RemovableRunnable;->isRemovable()Z

    move-result v7

    if-nez v7, :cond_0

    .line 316
    iget-wide v7, v2, Lcom/miui/player/helper/AsyncMusicPlayer$RunnableInfo;->time:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_3

    .line 317
    invoke-interface {v5}, Lcom/miui/player/helper/BufferedMediaPlayer$RemovableRunnable;->run()V

    goto/16 :goto_1

    .line 320
    :cond_3
    const-wide/16 v7, 0xc8

    :try_start_3
    invoke-static {v7, v8}, Lcom/miui/player/helper/AsyncMusicPlayer$Thread;->sleep(J)V

    .line 321
    iget-object v7, p0, Lcom/miui/player/helper/AsyncMusicPlayer$Thread;->this$0:Lcom/miui/player/helper/AsyncMusicPlayer;

    #getter for: Lcom/miui/player/helper/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;
    invoke-static {v7}, Lcom/miui/player/helper/AsyncMusicPlayer;->access$200(Lcom/miui/player/helper/AsyncMusicPlayer;)Ljava/util/LinkedList;

    move-result-object v7

    monitor-enter v7
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 322
    :try_start_4
    iget-object v8, p0, Lcom/miui/player/helper/AsyncMusicPlayer$Thread;->this$0:Lcom/miui/player/helper/AsyncMusicPlayer;

    iget-object v9, v1, Lcom/miui/player/helper/AsyncMusicPlayer$Command;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/miui/player/helper/AsyncMusicPlayer;->doRemoveRunnable(Ljava/lang/String;)V

    .line 323
    iget-object v8, p0, Lcom/miui/player/helper/AsyncMusicPlayer$Thread;->this$0:Lcom/miui/player/helper/AsyncMusicPlayer;

    #calls: Lcom/miui/player/helper/AsyncMusicPlayer;->enqueueLocked(Lcom/miui/player/helper/AsyncMusicPlayer$Command;)V
    invoke-static {v8, v1}, Lcom/miui/player/helper/AsyncMusicPlayer;->access$700(Lcom/miui/player/helper/AsyncMusicPlayer;Lcom/miui/player/helper/AsyncMusicPlayer$Command;)V

    .line 324
    monitor-exit v7

    goto/16 :goto_1

    :catchall_1
    move-exception v8

    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v8
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    .line 325
    :catch_0
    move-exception v7

    goto/16 :goto_1

    .line 331
    .end local v2           #info:Lcom/miui/player/helper/AsyncMusicPlayer$RunnableInfo;
    .end local v5           #rr:Lcom/miui/player/helper/BufferedMediaPlayer$RemovableRunnable;
    :pswitch_7
    iget-object v3, v1, Lcom/miui/player/helper/AsyncMusicPlayer$Command;->path:Ljava/lang/String;

    .line 332
    .local v3, name:Ljava/lang/String;
    iget-object v7, p0, Lcom/miui/player/helper/AsyncMusicPlayer$Thread;->this$0:Lcom/miui/player/helper/AsyncMusicPlayer;

    #getter for: Lcom/miui/player/helper/AsyncMusicPlayer;->mCmdQueue:Ljava/util/LinkedList;
    invoke-static {v7}, Lcom/miui/player/helper/AsyncMusicPlayer;->access$200(Lcom/miui/player/helper/AsyncMusicPlayer;)Ljava/util/LinkedList;

    move-result-object v7

    monitor-enter v7

    .line 333
    :try_start_6
    iget-object v8, p0, Lcom/miui/player/helper/AsyncMusicPlayer$Thread;->this$0:Lcom/miui/player/helper/AsyncMusicPlayer;

    invoke-virtual {v8, v3}, Lcom/miui/player/helper/AsyncMusicPlayer;->doRemoveRunnable(Ljava/lang/String;)V

    .line 334
    monitor-exit v7

    goto/16 :goto_1

    :catchall_2
    move-exception v8

    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v8

    .line 337
    .end local v3           #name:Ljava/lang/String;
    :pswitch_8
    iget-object v0, v1, Lcom/miui/player/helper/AsyncMusicPlayer$Command;->extra:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    .line 338
    .local v0, c:Landroid/content/Context;
    iget-object v7, p0, Lcom/miui/player/helper/AsyncMusicPlayer$Thread;->this$0:Lcom/miui/player/helper/AsyncMusicPlayer;

    invoke-virtual {v7, v0}, Lcom/miui/player/helper/AsyncMusicPlayer;->releaseAll(Landroid/content/Context;)V

    goto/16 :goto_1

    .line 354
    .end local v0           #c:Landroid/content/Context;
    :cond_4
    :try_start_7
    monitor-exit v7

    goto/16 :goto_0

    :catchall_3
    move-exception v8

    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v8

    .line 267
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
