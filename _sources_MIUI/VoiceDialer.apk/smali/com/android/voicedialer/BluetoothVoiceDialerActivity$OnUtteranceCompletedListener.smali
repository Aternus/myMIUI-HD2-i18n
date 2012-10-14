.class Lcom/android/voicedialer/BluetoothVoiceDialerActivity$OnUtteranceCompletedListener;
.super Ljava/lang/Object;
.source "BluetoothVoiceDialerActivity.java"

# interfaces
.implements Landroid/speech/tts/TextToSpeech$OnUtteranceCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicedialer/BluetoothVoiceDialerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnUtteranceCompletedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;


# direct methods
.method constructor <init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$OnUtteranceCompletedListener;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUtteranceCompleted(Ljava/lang/String;)V
    .locals 3
    .parameter "utteranceId"

    .prologue
    .line 345
    const-string v0, "VoiceDialerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUtteranceCompleted "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$OnUtteranceCompletedListener;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$400(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$OnUtteranceCompletedListener;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mFallbackRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1000(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 348
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$OnUtteranceCompletedListener;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    const/4 v1, 0x0

    #setter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mFallbackRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1002(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 349
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$OnUtteranceCompletedListener;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$400(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$OnUtteranceCompletedListener$1;

    invoke-direct {v1, p0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$OnUtteranceCompletedListener$1;-><init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity$OnUtteranceCompletedListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 354
    return-void
.end method
