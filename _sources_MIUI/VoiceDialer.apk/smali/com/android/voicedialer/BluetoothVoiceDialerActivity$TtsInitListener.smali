.class Lcom/android/voicedialer/BluetoothVoiceDialerActivity$TtsInitListener;
.super Ljava/lang/Object;
.source "BluetoothVoiceDialerActivity.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicedialer/BluetoothVoiceDialerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TtsInitListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;


# direct methods
.method constructor <init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 296
    iput-object p1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$TtsInitListener;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit(I)V
    .locals 8
    .parameter "status"

    .prologue
    const v7, 0x7f04000a

    const/4 v6, 0x0

    const/4 v5, 0x6

    const-string v3, "VoiceDialerActivity"

    .line 299
    const-string v2, "VoiceDialerActivity"

    const-string v2, "onInit for tts"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    if-eqz p1, :cond_1

    .line 302
    const-string v2, "VoiceDialerActivity"

    const-string v2, "Could not initialize TextToSpeech."

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$TtsInitListener;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$400(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ErrorRunnable;

    iget-object v4, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$TtsInitListener;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    invoke-direct {v3, v4, v7}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ErrorRunnable;-><init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 304
    iget-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$TtsInitListener;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #calls: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->exitActivity()V
    invoke-static {v2}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1100(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)V

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    iget-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$TtsInitListener;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v2}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$900(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    if-nez v2, :cond_2

    .line 309
    const-string v2, "VoiceDialerActivity"

    const-string v2, "null tts"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$TtsInitListener;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$400(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ErrorRunnable;

    iget-object v4, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$TtsInitListener;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    invoke-direct {v3, v4, v7}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ErrorRunnable;-><init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 311
    iget-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$TtsInitListener;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #calls: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->exitActivity()V
    invoke-static {v2}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1100(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)V

    goto :goto_0

    .line 316
    :cond_2
    iget-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$TtsInitListener;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #setter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mWaitingForTts:Z
    invoke-static {v2, v6}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1202(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;Z)Z

    .line 318
    iget-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$TtsInitListener;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v2}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$900(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/speech/tts/TextToSpeech;

    move-result-object v2

    new-instance v3, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$OnUtteranceCompletedListener;

    iget-object v4, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$TtsInitListener;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    invoke-direct {v3, v4}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$OnUtteranceCompletedListener;-><init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)V

    invoke-virtual {v2, v3}, Landroid/speech/tts/TextToSpeech;->setOnUtteranceCompletedListener(Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;)I

    .line 325
    iget-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$TtsInitListener;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    iget-object v3, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$TtsInitListener;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v3}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1400(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/media/AudioManager;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    #setter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mBluetoothVoiceVolume:I
    invoke-static {v2, v3}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1302(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;I)I

    .line 327
    iget-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$TtsInitListener;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1400(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    .line 328
    .local v0, maxVolume:I
    const/16 v2, 0x12

    const/16 v3, 0x32

    div-int/2addr v3, v0

    div-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    sub-int v1, v0, v2

    .line 329
    .local v1, volume:I
    iget-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$TtsInitListener;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mBluetoothVoiceVolume:I
    invoke-static {v2}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1300(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)I

    move-result v2

    if-le v2, v1, :cond_3

    .line 330
    iget-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$TtsInitListener;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v2}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1400(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/media/AudioManager;

    move-result-object v2

    invoke-virtual {v2, v5, v1, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 333
    :cond_3
    iget-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$TtsInitListener;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mWaitingForScoConnection:Z
    invoke-static {v2}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1500(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 337
    iget-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$TtsInitListener;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$400(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$GreetingRunnable;

    iget-object v4, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$TtsInitListener;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    invoke-direct {v3, v4}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$GreetingRunnable;-><init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method
