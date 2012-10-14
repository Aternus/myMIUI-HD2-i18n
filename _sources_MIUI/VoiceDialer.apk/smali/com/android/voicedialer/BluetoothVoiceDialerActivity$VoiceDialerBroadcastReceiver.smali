.class Lcom/android/voicedialer/BluetoothVoiceDialerActivity$VoiceDialerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothVoiceDialerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicedialer/BluetoothVoiceDialerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceDialerBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;


# direct methods
.method private constructor <init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 387
    iput-object p1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$VoiceDialerBroadcastReceiver;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;Lcom/android/voicedialer/BluetoothVoiceDialerActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 387
    invoke-direct {p0, p1}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$VoiceDialerBroadcastReceiver;-><init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v4, "VoiceDialerActivity"

    .line 390
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.bluetooth.headset.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 392
    iget-object v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$VoiceDialerBroadcastReceiver;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    const-string v2, "android.bluetooth.headset.extra.AUDIO_STATE"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    #setter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mBluetoothAudioState:I
    invoke-static {v1, v2}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1702(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;I)I

    .line 395
    const-string v1, "VoiceDialerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HEADSET AUDIO_STATE_CHANGED -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$VoiceDialerBroadcastReceiver;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mBluetoothAudioState:I
    invoke-static {v2}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1700(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$VoiceDialerBroadcastReceiver;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mBluetoothAudioState:I
    invoke-static {v1}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1700(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$VoiceDialerBroadcastReceiver;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mWaitingForScoConnection:Z
    invoke-static {v1}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1500(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 401
    iget-object v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$VoiceDialerBroadcastReceiver;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    const/4 v2, 0x0

    #setter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mWaitingForScoConnection:Z
    invoke-static {v1, v2}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1502(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;Z)Z

    .line 402
    iget-object v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$VoiceDialerBroadcastReceiver;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mWaitingForTts:Z
    invoke-static {v1}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1200(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    iget-object v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$VoiceDialerBroadcastReceiver;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$400(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$GreetingRunnable;

    iget-object v3, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$VoiceDialerBroadcastReceiver;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    invoke-direct {v2, v3}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$GreetingRunnable;-><init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 409
    :cond_2
    iget-object v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$VoiceDialerBroadcastReceiver;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mWaitingForScoConnection:Z
    invoke-static {v1}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1500(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 412
    const-string v1, "VoiceDialerActivity"

    const-string v1, "lost sco connection"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$VoiceDialerBroadcastReceiver;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$400(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ErrorRunnable;

    iget-object v3, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$VoiceDialerBroadcastReceiver;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    const v4, 0x7f04000b

    invoke-direct {v2, v3, v4}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ErrorRunnable;-><init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 417
    iget-object v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$VoiceDialerBroadcastReceiver;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #calls: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->exitActivity()V
    invoke-static {v1}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1100(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)V

    goto :goto_0
.end method
