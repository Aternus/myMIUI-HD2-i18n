.class Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;
.super Ljava/lang/Object;
.source "VoiceDialerActivity.java"

# interfaces
.implements Lcom/android/voicedialer/RecognizerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicedialer/VoiceDialerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommandRecognizerClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/voicedialer/VoiceDialerActivity;


# direct methods
.method private constructor <init>(Lcom/android/voicedialer/VoiceDialerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 340
    iput-object p1, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/voicedialer/VoiceDialerActivity;Lcom/android/voicedialer/VoiceDialerActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;-><init>(Lcom/android/voicedialer/VoiceDialerActivity;)V

    return-void
.end method


# virtual methods
.method public onMicrophoneStart(Ljava/io/InputStream;)V
    .locals 6
    .parameter "mic"

    .prologue
    const/4 v5, 0x2

    const-string v4, "VoiceDialerActivity"

    .line 346
    const-string v2, "VoiceDialerActivity"

    const-string v2, "onMicrophoneStart"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const/16 v3, 0x18

    #calls: Lcom/android/voicedialer/VoiceDialerActivity;->playSound(I)I
    invoke-static {v2, v3}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1000(Lcom/android/voicedialer/VoiceDialerActivity;I)I

    .line 349
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1100(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    .line 351
    .local v1, ringVolume:I
    const-string v2, "VoiceDialerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ringVolume "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    if-lt v1, v5, :cond_0

    .line 358
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->skipBeep(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :goto_0
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mVoiceDialerTester:Lcom/android/voicedialer/VoiceDialerTester;
    invoke-static {v2}, Lcom/android/voicedialer/VoiceDialerActivity;->access$500(Lcom/android/voicedialer/VoiceDialerActivity;)Lcom/android/voicedialer/VoiceDialerTester;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 375
    :goto_1
    return-void

    .line 359
    :catch_0
    move-exception v0

    .line 360
    .local v0, e:Ljava/io/IOException;
    const-string v2, "VoiceDialerActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IOException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 363
    .end local v0           #e:Ljava/io/IOException;
    :cond_0
    const-string v2, "VoiceDialerActivity"

    const-string v2, "no tone"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 368
    :cond_1
    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/voicedialer/VoiceDialerActivity;->access$700(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$1;

    invoke-direct {v3, p0}, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$1;-><init>(Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method public onRecognitionError(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 504
    const-string v0, "VoiceDialerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecognitionError "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->access$700(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$3;

    invoke-direct {v1, p0, p1}, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$3;-><init>(Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 532
    return-void
.end method

.method public onRecognitionFailure(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 471
    const-string v0, "VoiceDialerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecognitionFailure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->access$700(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;

    invoke-direct {v1, p0, p1}, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$2;-><init>(Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 498
    return-void
.end method

.method public onRecognitionSuccess([Landroid/content/Intent;)V
    .locals 9
    .parameter "intents"

    .prologue
    const-string v8, "com.android.voicedialer.ACTION_RECOGNIZER_RESULT"

    .line 542
    const-string v5, "VoiceDialerActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onRecognitionSuccess "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const/4 v3, 0x0

    .line 550
    .local v3, runnableCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_1

    .line 551
    const-string v5, "com.android.voicedialer.ACTION_RECOGNIZER_RESULT"

    aget-object v5, p1, v1

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 553
    add-int/lit8 v3, v3, 0x1

    .line 550
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 556
    :cond_1
    new-array v4, v3, [Landroid/content/Intent;

    .line 557
    .local v4, runnableIntents:[Landroid/content/Intent;
    const/4 v2, 0x0

    .line 558
    .local v2, j:I
    const/4 v1, 0x0

    :goto_1
    array-length v5, p1

    if-ge v1, v5, :cond_3

    .line 559
    const-string v5, "com.android.voicedialer.ACTION_RECOGNIZER_RESULT"

    aget-object v5, p1, v1

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 561
    aget-object v5, p1, v1

    aput-object v5, v4, v2

    .line 562
    add-int/lit8 v2, v2, 0x1

    .line 558
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 566
    :cond_3
    array-length v5, v4

    if-nez v5, :cond_4

    .line 568
    const-string v5, "No displayable intents"

    invoke-virtual {p0, v5}, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->onRecognitionFailure(Ljava/lang/String;)V

    .line 600
    :goto_2
    return-void

    .line 574
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 575
    .local v0, args:Landroid/os/Bundle;
    const-string v5, "intents"

    invoke-virtual {v0, v5, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 577
    iget-object v5, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/voicedialer/VoiceDialerActivity;->access$700(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$4;

    invoke-direct {v6, p0, v0, p1}, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$4;-><init>(Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;Landroid/os/Bundle;[Landroid/content/Intent;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_2
.end method

.method skipBeep(Ljava/io/InputStream;)V
    .locals 28
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 389
    const/16 v16, 0x10e

    .line 390
    .local v16, sampleCount:I
    mul-int/lit8 v4, v16, 0x2

    .line 392
    .local v4, blockSize:I
    if-eqz p1, :cond_0

    if-nez v4, :cond_1

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 396
    :cond_1
    new-array v5, v4, [B

    .line 397
    .local v5, buf:[B
    const/16 v10, 0x2b10

    .line 398
    .local v10, maxBytes:I
    const/16 v24, 0x1

    sub-int v24, v10, v24

    div-int v24, v24, v4

    add-int/lit8 v24, v24, 0x1

    move/from16 v0, v24

    mul-int/lit16 v0, v0, 0x21c

    move v10, v0

    .line 400
    const/4 v7, 0x0

    .line 401
    .local v7, count:I
    const/16 v18, 0x0

    .line 402
    .local v18, state:I
    const-wide/16 v14, 0x0

    .line 403
    .local v14, prevE:J
    const-wide/16 v12, 0x0

    .line 404
    .local v12, peak:J
    mul-int/lit8 v23, v16, 0x8

    .line 405
    .local v23, threshold:I
    const-string v24, "VoiceDialerActivity"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "blockSize "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    :goto_1
    if-ge v7, v10, :cond_a

    .line 408
    const/4 v6, 0x0

    .line 409
    .local v6, cnt:I
    :goto_2
    if-ge v6, v4, :cond_3

    .line 410
    sub-int v24, v4, v6

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    .line 411
    .local v11, n:I
    if-gez v11, :cond_2

    .line 412
    new-instance v24, Ljava/io/IOException;

    invoke-direct/range {v24 .. v24}, Ljava/io/IOException;-><init>()V

    throw v24

    .line 414
    :cond_2
    add-int/2addr v6, v11

    .line 415
    goto :goto_2

    .line 418
    .end local v11           #n:I
    :cond_3
    move v6, v4

    .line 419
    const-wide/16 v19, 0x0

    .line 420
    .local v19, sumx:J
    const-wide/16 v21, 0x0

    .line 421
    .local v21, sumxx:J
    :goto_3
    const/16 v24, 0x2

    move v0, v6

    move/from16 v1, v24

    if-lt v0, v1, :cond_4

    .line 422
    const/16 v24, 0x1

    sub-int v24, v6, v24

    aget-byte v24, v5, v24

    shl-int/lit8 v24, v24, 0x8

    const/16 v25, 0x2

    sub-int v25, v6, v25

    aget-byte v25, v5, v25

    move/from16 v0, v25

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    add-int v24, v24, v25

    move/from16 v0, v24

    int-to-short v0, v0

    move/from16 v17, v0

    .line 423
    .local v17, smp:S
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v19, v19, v24

    .line 424
    mul-int v24, v17, v17

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v21, v21, v24

    .line 425
    add-int/lit8 v6, v6, -0x2

    .line 426
    goto :goto_3

    .line 427
    .end local v17           #smp:S
    :cond_4
    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v24, v0

    mul-long v24, v24, v21

    mul-long v26, v19, v19

    sub-long v24, v24, v26

    mul-int v26, v16, v16

    move/from16 v0, v26

    int-to-long v0, v0

    move-wide/from16 v26, v0

    div-long v8, v24, v26

    .line 428
    .local v8, energy:J
    const-string v24, "VoiceDialerActivity"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "sumx "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " sumxx "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide/from16 v1, v21

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " ee "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-wide v1, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    packed-switch v18, :pswitch_data_0

    .line 461
    :cond_5
    :goto_4
    move-wide v14, v8

    .line 462
    add-int/lit16 v7, v7, 0x21c

    .line 463
    goto/16 :goto_1

    .line 432
    :pswitch_0
    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    cmp-long v24, v8, v24

    if-lez v24, :cond_5

    const-wide/16 v24, 0x2

    mul-long v24, v24, v14

    cmp-long v24, v8, v24

    if-lez v24, :cond_5

    const-wide/16 v24, 0x0

    cmp-long v24, v14, v24

    if-eqz v24, :cond_5

    .line 434
    const/16 v18, 0x1

    .line 435
    const-string v24, "VoiceDialerActivity"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "start RISING: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " time: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move v0, v7

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v26, v0

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    div-int/lit16 v0, v0, 0x2b11

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 439
    :pswitch_1
    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    cmp-long v24, v8, v24

    if-ltz v24, :cond_6

    const-wide/16 v24, 0x2

    div-long v24, v14, v24

    cmp-long v24, v8, v24

    if-gez v24, :cond_7

    .line 441
    :cond_6
    const-string v24, "VoiceDialerActivity"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "back to START: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " time: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move v0, v7

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v26, v0

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    div-int/lit16 v0, v0, 0x2b11

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const-wide/16 v12, 0x0

    .line 443
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 444
    :cond_7
    const-wide/16 v24, 0x2

    div-long v24, v14, v24

    cmp-long v24, v8, v24

    if-lez v24, :cond_5

    const-wide/16 v24, 0x2

    mul-long v24, v24, v14

    cmp-long v24, v8, v24

    if-gez v24, :cond_5

    .line 446
    const-string v24, "VoiceDialerActivity"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "start TOP: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " time: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move v0, v7

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v26, v0

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    div-int/lit16 v0, v0, 0x2b11

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    cmp-long v24, v12, v8

    if-gez v24, :cond_8

    .line 448
    move-wide v12, v8

    .line 450
    :cond_8
    const/16 v18, 0x2

    goto/16 :goto_4

    .line 454
    :pswitch_2
    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    cmp-long v24, v8, v24

    if-ltz v24, :cond_9

    const-wide/16 v24, 0x2

    div-long v24, v12, v24

    cmp-long v24, v8, v24

    if-gez v24, :cond_5

    .line 456
    :cond_9
    const-string v24, "VoiceDialerActivity"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "end TOP: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, " time: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move v0, v7

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v26, v0

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    div-int/lit16 v0, v0, 0x2b11

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 464
    .end local v6           #cnt:I
    .end local v8           #energy:J
    .end local v19           #sumx:J
    .end local v21           #sumxx:J
    :cond_a
    const-string v24, "VoiceDialerActivity"

    const-string v25, "no beep detected, timed out"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 430
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
