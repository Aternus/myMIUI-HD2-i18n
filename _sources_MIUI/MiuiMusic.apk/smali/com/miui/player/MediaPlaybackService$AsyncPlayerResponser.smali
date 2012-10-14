.class Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Lcom/miui/player/helper/AsyncMusicPlayer$AsyncPrepareResponser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncPlayerResponser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser$BufferedPosChangedNotifierForWidget;,
        Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser$BlockChangedNotifierForWidget;
    }
.end annotation


# instance fields
.field private final mBlockChangedNotifier:Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser$BlockChangedNotifierForWidget;

.field private final mBufferedChangedNotifier:Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser$BufferedPosChangedNotifierForWidget;

.field private final mCorrectId3AfterPlay:Lcom/miui/player/helper/OnlinePlayHelper$CorrectId3AfterPlay;

.field mCurrentBufferingPath:Ljava/lang/String;

.field mIsBuffering:Z

.field mPlayAfterBuffer:Z

.field final synthetic this$0:Lcom/miui/player/MediaPlaybackService;


# direct methods
.method private constructor <init>(Lcom/miui/player/MediaPlaybackService;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 2337
    iput-object p1, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2339
    iput-boolean v0, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->mIsBuffering:Z

    .line 2340
    iput-boolean v0, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->mPlayAfterBuffer:Z

    .line 2495
    new-instance v0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser$BufferedPosChangedNotifierForWidget;

    invoke-direct {v0, p0, v1}, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser$BufferedPosChangedNotifierForWidget;-><init>(Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;Lcom/miui/player/MediaPlaybackService$1;)V

    iput-object v0, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->mBufferedChangedNotifier:Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser$BufferedPosChangedNotifierForWidget;

    .line 2497
    new-instance v0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser$BlockChangedNotifierForWidget;

    invoke-direct {v0, p0, v1}, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser$BlockChangedNotifierForWidget;-><init>(Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;Lcom/miui/player/MediaPlaybackService$1;)V

    iput-object v0, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->mBlockChangedNotifier:Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser$BlockChangedNotifierForWidget;

    .line 2499
    new-instance v0, Lcom/miui/player/helper/OnlinePlayHelper$CorrectId3AfterPlay;

    invoke-direct {v0}, Lcom/miui/player/helper/OnlinePlayHelper$CorrectId3AfterPlay;-><init>()V

    iput-object v0, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->mCorrectId3AfterPlay:Lcom/miui/player/helper/OnlinePlayHelper$CorrectId3AfterPlay;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/MediaPlaybackService;Lcom/miui/player/MediaPlaybackService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2337
    invoke-direct {p0, p1}, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;-><init>(Lcom/miui/player/MediaPlaybackService;)V

    return-void
.end method

.method private getFailedMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "path"
    .parameter "trackName"
    .parameter "exp"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2357
    const/4 v1, 0x0

    .line 2358
    .local v1, ret:Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v5

    .line 2359
    .local v0, hasName:Z
    :goto_0
    instance-of v2, p3, Lcom/miui/player/helper/OnlinePlayHelper$OnlinePlayDeniedException;

    if-eqz v2, :cond_2

    .line 2360
    if-eqz v0, :cond_1

    .line 2361
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/MediaPlaybackService;

    const v3, 0x7f08004a

    invoke-virtual {v2, v3}, Lcom/miui/player/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2373
    :goto_1
    return-object v1

    .end local v0           #hasName:Z
    :cond_0
    move v0, v4

    .line 2358
    goto :goto_0

    .line 2363
    .restart local v0       #hasName:Z
    :cond_1
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/MediaPlaybackService;

    const v3, 0x7f08004b

    invoke-virtual {v2, v3}, Lcom/miui/player/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2366
    :cond_2
    if-eqz v0, :cond_3

    .line 2367
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/MediaPlaybackService;

    const v3, 0x7f080048

    invoke-virtual {v2, v3}, Lcom/miui/player/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 2369
    :cond_3
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/MediaPlaybackService;

    const v3, 0x7f080049

    invoke-virtual {v2, v3}, Lcom/miui/player/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method


# virtual methods
.method public onPrepareFailed(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 9
    .parameter "path"
    .parameter "extra"
    .parameter "exception"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2378
    iget-object v5, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v5, v7, v7}, Lcom/miui/player/MediaPlaybackService;->onPlayStateChanged(ZZ)V

    .line 2379
    instance-of v5, p3, Ljava/lang/InterruptedException;

    if-eqz v5, :cond_0

    .line 2420
    .end local p2
    :goto_0
    return-void

    .line 2383
    .restart local p2
    :cond_0
    const/4 v4, 0x0

    .line 2384
    .local v4, trackName:Ljava/lang/String;
    move-object v0, p2

    check-cast v0, Lcom/miui/player/MediaPlaybackService$PrepareInfo;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/miui/player/MediaPlaybackService$PrepareInfo;->isFirst:Z

    if-nez v5, :cond_1

    .line 2385
    check-cast p2, Lcom/miui/player/MediaPlaybackService$PrepareInfo;

    .end local p2
    iget-object v4, p2, Lcom/miui/player/MediaPlaybackService$PrepareInfo;->trackName:Ljava/lang/String;

    .line 2386
    invoke-direct {p0, p1, v4, p3}, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->getFailedMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2387
    .local v3, playbackFailed:Ljava/lang/CharSequence;
    iget-object v5, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/MediaPlaybackService;

    #getter for: Lcom/miui/player/MediaPlaybackService;->mToast:Landroid/widget/Toast;
    invoke-static {v5}, Lcom/miui/player/MediaPlaybackService;->access$3100(Lcom/miui/player/MediaPlaybackService;)Landroid/widget/Toast;

    move-result-object v5

    if-nez v5, :cond_6

    .line 2388
    iget-object v5, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/MediaPlaybackService;

    iget-object v6, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-static {v6, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    #setter for: Lcom/miui/player/MediaPlaybackService;->mToast:Landroid/widget/Toast;
    invoke-static {v5, v6}, Lcom/miui/player/MediaPlaybackService;->access$3102(Lcom/miui/player/MediaPlaybackService;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 2392
    :goto_1
    iget-object v5, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/MediaPlaybackService;

    #getter for: Lcom/miui/player/MediaPlaybackService;->mToast:Landroid/widget/Toast;
    invoke-static {v5}, Lcom/miui/player/MediaPlaybackService;->access$3100(Lcom/miui/player/MediaPlaybackService;)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 2395
    .end local v3           #playbackFailed:Ljava/lang/CharSequence;
    :cond_1
    iget-boolean v1, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->mIsBuffering:Z

    .line 2396
    .local v1, isBuffering:Z
    iget-boolean v2, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->mPlayAfterBuffer:Z

    .line 2397
    .local v2, playAfterBuffer:Z
    iget-object v5, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->mCurrentBufferingPath:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 2398
    iput-boolean v7, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->mIsBuffering:Z

    .line 2401
    :cond_2
    instance-of v5, p3, Lcom/miui/player/helper/OnlinePlayHelper$OnlinePlayDeniedException;

    if-nez v5, :cond_3

    .line 2402
    iget-object v5, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-static {v5}, Lcom/miui/player/MediaPlaybackService;->access$3208(Lcom/miui/player/MediaPlaybackService;)I

    .line 2404
    :cond_3
    iget-object v5, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/MediaPlaybackService;

    #calls: Lcom/miui/player/MediaPlaybackService;->stop(ZZ)V
    invoke-static {v5, v8, v8}, Lcom/miui/player/MediaPlaybackService;->access$200(Lcom/miui/player/MediaPlaybackService;ZZ)V

    .line 2405
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    iget-object v5, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/MediaPlaybackService;

    #getter for: Lcom/miui/player/MediaPlaybackService;->mOpenFailedCounter:I
    invoke-static {v5}, Lcom/miui/player/MediaPlaybackService;->access$3200(Lcom/miui/player/MediaPlaybackService;)I

    move-result v5

    const/16 v6, 0xa

    if-ge v5, v6, :cond_4

    iget-object v5, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/MediaPlaybackService;

    #getter for: Lcom/miui/player/MediaPlaybackService;->mOpenFailedCounter:I
    invoke-static {v5}, Lcom/miui/player/MediaPlaybackService;->access$3200(Lcom/miui/player/MediaPlaybackService;)I

    move-result v5

    iget-object v6, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/MediaPlaybackService;

    #getter for: Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v6}, Lcom/miui/player/MediaPlaybackService;->access$3300(Lcom/miui/player/MediaPlaybackService;)I

    move-result v6

    if-ge v5, v6, :cond_4

    iget-object v5, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/MediaPlaybackService;

    #getter for: Lcom/miui/player/MediaPlaybackService;->mPlayListLen:I
    invoke-static {v5}, Lcom/miui/player/MediaPlaybackService;->access$3300(Lcom/miui/player/MediaPlaybackService;)I

    move-result v5

    if-le v5, v8, :cond_4

    .line 2409
    iget-object v5, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v5, v7}, Lcom/miui/player/MediaPlaybackService;->next(Z)V

    .line 2410
    iget-object v5, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v5}, Lcom/miui/player/MediaPlaybackService;->play()V

    .line 2413
    :cond_4
    iget-object v5, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/MediaPlaybackService;

    #getter for: Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/helper/AsyncMusicPlayer;
    invoke-static {v5}, Lcom/miui/player/MediaPlaybackService;->access$3000(Lcom/miui/player/MediaPlaybackService;)Lcom/miui/player/helper/AsyncMusicPlayer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/player/helper/AsyncMusicPlayer;->isInitialized()Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/MediaPlaybackService;

    #getter for: Lcom/miui/player/MediaPlaybackService;->mOpenFailedCounter:I
    invoke-static {v5}, Lcom/miui/player/MediaPlaybackService;->access$3200(Lcom/miui/player/MediaPlaybackService;)I

    move-result v5

    if-eqz v5, :cond_5

    .line 2415
    iget-object v5, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/MediaPlaybackService;

    #setter for: Lcom/miui/player/MediaPlaybackService;->mOpenFailedCounter:I
    invoke-static {v5, v7}, Lcom/miui/player/MediaPlaybackService;->access$3202(Lcom/miui/player/MediaPlaybackService;I)I

    .line 2416
    const-string v5, "MediaPlaybackService"

    const-string v6, "Failed to open file for playback"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2419
    :cond_5
    iget-object v5, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/MediaPlaybackService;

    const-string v6, "meta_changed_buffer"

    #calls: Lcom/miui/player/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/miui/player/MediaPlaybackService;->access$1400(Lcom/miui/player/MediaPlaybackService;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2390
    .end local v1           #isBuffering:Z
    .end local v2           #playAfterBuffer:Z
    .restart local v3       #playbackFailed:Ljava/lang/CharSequence;
    :cond_6
    iget-object v5, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/MediaPlaybackService;

    #getter for: Lcom/miui/player/MediaPlaybackService;->mToast:Landroid/widget/Toast;
    invoke-static {v5}, Lcom/miui/player/MediaPlaybackService;->access$3100(Lcom/miui/player/MediaPlaybackService;)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method public onPrepareSuccess(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 13
    .parameter "path"
    .parameter "extra"

    .prologue
    const-wide/16 v11, 0x0

    const/4 v10, 0x0

    .line 2424
    iget-boolean v4, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->mIsBuffering:Z

    .line 2426
    .local v4, oldBufferState:Z
    iget-object v7, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->mCurrentBufferingPath:Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2427
    iput-boolean v10, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->mIsBuffering:Z

    .line 2429
    :cond_0
    iget-object v7, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/MediaPlaybackService;

    #setter for: Lcom/miui/player/MediaPlaybackService;->mOpenFailedCounter:I
    invoke-static {v7, v10}, Lcom/miui/player/MediaPlaybackService;->access$3202(Lcom/miui/player/MediaPlaybackService;I)I

    .line 2431
    move-object v0, p2

    check-cast v0, Lcom/miui/player/MediaPlaybackService$PrepareInfo;

    move-object v3, v0

    .line 2432
    .local v3, info:Lcom/miui/player/MediaPlaybackService$PrepareInfo;
    iget-object v7, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v7}, Lcom/miui/player/MediaPlaybackService;->getAudioId()J

    move-result-wide v1

    .line 2433
    .local v1, audioId:J
    iget-boolean v7, v3, Lcom/miui/player/MediaPlaybackService$PrepareInfo;->isFirst:Z

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/MediaPlaybackService;

    #getter for: Lcom/miui/player/MediaPlaybackService;->mOneShot:Z
    invoke-static {v7}, Lcom/miui/player/MediaPlaybackService;->access$500(Lcom/miui/player/MediaPlaybackService;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v7}, Lcom/miui/player/MediaPlaybackService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    const-string v8, "keep_quit_location"

    invoke-static {v7, v8}, Lcom/miui/player/ui/PreferencesActivity;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-static {v1, v2}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2437
    iget-object v7, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/MediaPlaybackService;

    #getter for: Lcom/miui/player/MediaPlaybackService;->mPreferences:Landroid/content/SharedPreferences;
    invoke-static {v7}, Lcom/miui/player/MediaPlaybackService;->access$3400(Lcom/miui/player/MediaPlaybackService;)Landroid/content/SharedPreferences;

    move-result-object v7

    const-string v8, "seekpos"

    invoke-interface {v7, v8, v11, v12}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    .line 2438
    .local v5, seekpos:J
    iget-object v7, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/MediaPlaybackService;

    cmp-long v8, v5, v11

    if-ltz v8, :cond_2

    iget-object v8, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v8}, Lcom/miui/player/MediaPlaybackService;->duration()J

    move-result-wide v8

    cmp-long v8, v5, v8

    if-gez v8, :cond_2

    move-wide v8, v5

    :goto_0
    invoke-virtual {v7, v8, v9}, Lcom/miui/player/MediaPlaybackService;->seek(J)J

    .line 2444
    .end local v5           #seekpos:J
    :cond_1
    if-eqz v4, :cond_3

    iget-boolean v7, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->mPlayAfterBuffer:Z

    if-eqz v7, :cond_3

    .line 2445
    iget-object v7, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v7}, Lcom/miui/player/MediaPlaybackService;->play()V

    .line 2449
    :goto_1
    iget-object v7, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/MediaPlaybackService;

    const-string v8, "meta_changed_buffer"

    #calls: Lcom/miui/player/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/miui/player/MediaPlaybackService;->access$1400(Lcom/miui/player/MediaPlaybackService;Ljava/lang/String;)V

    .line 2450
    return-void

    .restart local v5       #seekpos:J
    :cond_2
    move-wide v8, v11

    .line 2438
    goto :goto_0

    .line 2447
    .end local v5           #seekpos:J
    :cond_3
    iget-object v7, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v7, v10, v10}, Lcom/miui/player/MediaPlaybackService;->onPlayStateChanged(ZZ)V

    goto :goto_1
.end method

.method public prepareAsync(Lcom/miui/player/helper/BufferedMediaPlayer;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 13
    .parameter "mp"
    .parameter "path"
    .parameter "extra"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;,
            Lcom/miui/player/helper/OnlinePlayHelper$OnlinePlayDeniedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 2456
    move-object/from16 v0, p3

    check-cast v0, Lcom/miui/player/MediaPlaybackService$PrepareInfo;

    move-object v12, v0

    .line 2457
    .local v12, prepareInfo:Lcom/miui/player/MediaPlaybackService$PrepareInfo;
    new-instance v3, Lcom/miui/player/helper/BufferedMediaPlayer$RemoteControlInfo;

    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/MediaPlaybackService;

    #getter for: Lcom/miui/player/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/player/MediaPlaybackService;->access$1900(Lcom/miui/player/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->mCorrectId3AfterPlay:Lcom/miui/player/helper/OnlinePlayHelper$CorrectId3AfterPlay;

    iget-object v5, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->mBlockChangedNotifier:Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser$BlockChangedNotifierForWidget;

    iget-object v6, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->mBufferedChangedNotifier:Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser$BufferedPosChangedNotifierForWidget;

    invoke-direct {v3, v1, v2, v5, v6}, Lcom/miui/player/helper/BufferedMediaPlayer$RemoteControlInfo;-><init>(Landroid/os/Handler;Lcom/miui/player/helper/BufferedMediaPlayer$OnDownloadCompletedListener;Lcom/miui/player/helper/BufferedMediaPlayer$OnBlockingChangedListener;Lcom/miui/player/helper/BufferedMediaPlayer$OnBufferedPositionChangedListener;)V

    .line 2459
    .local v3, info:Lcom/miui/player/helper/BufferedMediaPlayer$RemoteControlInfo;
    const-string v1, "content://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2460
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 2461
    .local v4, uri:Landroid/net/Uri;
    const-wide/16 v8, 0x0

    .line 2463
    .local v8, audioId:J
    :try_start_0
    invoke-static {v4}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    .line 2466
    :goto_0
    invoke-static {v8, v9}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2467
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/MediaPlaybackService;

    iget-wide v5, v12, Lcom/miui/player/MediaPlaybackService$PrepareInfo;->nextAudioId:J

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/miui/player/helper/BufferedMediaPlayer;->prepareDirectly(Landroid/content/Context;Lcom/miui/player/helper/BufferedMediaPlayer$RemoteControlInfo;Landroid/net/Uri;J)V

    .line 2475
    .end local v8           #audioId:J
    :cond_0
    :goto_1
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Lcom/miui/player/helper/BufferedMediaPlayer;->setAudioStreamType(I)V

    .line 2476
    return-void

    .line 2468
    .restart local v8       #audioId:J
    :cond_1
    const-wide/16 v1, 0x0

    cmp-long v1, v8, v1

    if-ltz v1, :cond_0

    .line 2469
    iget-object v5, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/MediaPlaybackService;

    iget-wide v10, v12, Lcom/miui/player/MediaPlaybackService$PrepareInfo;->nextAudioId:J

    move-object v6, p1

    move-object v7, v3

    invoke-static/range {v5 .. v11}, Lcom/miui/player/helper/OnlinePlayHelper;->play(Landroid/content/Context;Lcom/miui/player/helper/BufferedMediaPlayer;Lcom/miui/player/helper/BufferedMediaPlayer$RemoteControlInfo;JJ)V

    goto :goto_1

    .line 2472
    .end local v4           #uri:Landroid/net/Uri;
    .end local v8           #audioId:J
    :cond_2
    const-string v1, "http://"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v1

    .line 2473
    .restart local v4       #uri:Landroid/net/Uri;
    :goto_2
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/MediaPlaybackService;

    iget-wide v5, v12, Lcom/miui/player/MediaPlaybackService$PrepareInfo;->nextAudioId:J

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/miui/player/helper/BufferedMediaPlayer;->prepareDirectly(Landroid/content/Context;Lcom/miui/player/helper/BufferedMediaPlayer$RemoteControlInfo;Landroid/net/Uri;J)V

    goto :goto_1

    .line 2472
    .end local v4           #uri:Landroid/net/Uri;
    :cond_3
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    move-object v4, v1

    goto :goto_2

    .line 2464
    .restart local v4       #uri:Landroid/net/Uri;
    .restart local v8       #audioId:J
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public resetBufferingPath(Ljava/lang/String;Z)V
    .locals 1
    .parameter "path"
    .parameter "toPlay"

    .prologue
    .line 2343
    iput-object p1, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->mCurrentBufferingPath:Ljava/lang/String;

    .line 2344
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->mIsBuffering:Z

    .line 2345
    iput-boolean p2, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->mPlayAfterBuffer:Z

    .line 2346
    return-void
.end method

.method public stopBuffering()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2352
    iput-boolean v0, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->mIsBuffering:Z

    .line 2353
    iput-boolean v0, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->mPlayAfterBuffer:Z

    .line 2354
    return-void
.end method
