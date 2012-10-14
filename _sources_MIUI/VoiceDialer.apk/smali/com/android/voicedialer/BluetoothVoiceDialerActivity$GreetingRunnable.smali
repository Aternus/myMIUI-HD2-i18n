.class Lcom/android/voicedialer/BluetoothVoiceDialerActivity$GreetingRunnable;
.super Ljava/lang/Object;
.source "BluetoothVoiceDialerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicedialer/BluetoothVoiceDialerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GreetingRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;


# direct methods
.method constructor <init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$GreetingRunnable;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$GreetingRunnable;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    const/4 v1, 0x1

    #setter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mState:I
    invoke-static {v0, v1}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$702(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;I)I

    .line 282
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$GreetingRunnable;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mTtsParams:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$800(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "utteranceId"

    const-string v2, "speak_now"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$GreetingRunnable;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$900(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$GreetingRunnable;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    const v2, 0x7f040012

    invoke-virtual {v1, v2}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$GreetingRunnable;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mTtsParams:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$800(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 291
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$GreetingRunnable;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    new-instance v1, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$FallbackRunnable;

    iget-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$GreetingRunnable;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    invoke-direct {v1, v2}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$FallbackRunnable;-><init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)V

    #setter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mFallbackRunnable:Ljava/lang/Runnable;
    invoke-static {v0, v1}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1002(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 292
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$GreetingRunnable;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$400(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$GreetingRunnable;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mFallbackRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1000(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1770

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 293
    return-void
.end method
