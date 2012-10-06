.class Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;
.super Ljava/lang/Object;
.source "BluetoothVoiceDialerActivity.java"

# interfaces
.implements Lcom/android/voicedialer/RecognizerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicedialer/BluetoothVoiceDialerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CommandRecognizerClient"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;


# direct methods
.method private constructor <init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 424
    iput-object p1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;Lcom/android/voicedialer/BluetoothVoiceDialerActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 424
    invoke-direct {p0, p1}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;-><init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)V

    return-void
.end method

.method private askToTryAgain()V
    .locals 2

    .prologue
    .line 462
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$400(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$2;

    invoke-direct {v1, p0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$2;-><init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 484
    return-void
.end method


# virtual methods
.method public onMicrophoneStart(Ljava/io/InputStream;)V
    .locals 2
    .parameter "mic"

    .prologue
    .line 429
    const-string v0, "VoiceDialerActivity"

    const-string v1, "onMicrophoneStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$400(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$1;

    invoke-direct {v1, p0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$1;-><init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 440
    return-void
.end method

.method public onRecognitionError(Ljava/lang/String;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 455
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

    .line 456
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$400(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ErrorRunnable;

    iget-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    const v3, 0x7f04000a

    invoke-direct {v1, v2, v3}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$ErrorRunnable;-><init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 457
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #calls: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->exitActivity()V
    invoke-static {v0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1100(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)V

    .line 458
    return-void
.end method

.method public onRecognitionFailure(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 446
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

    .line 448
    invoke-direct {p0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->askToTryAgain()V

    .line 449
    return-void
.end method

.method public onRecognitionSuccess([Landroid/content/Intent;)V
    .locals 3
    .parameter "intents"

    .prologue
    .line 494
    const-string v0, "VoiceDialerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRecognitionSuccess "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #setter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mAvailableChoices:[Landroid/content/Intent;
    invoke-static {v0, p1}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1902(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;[Landroid/content/Intent;)[Landroid/content/Intent;

    .line 500
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$400(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;

    invoke-direct {v1, p0, p1}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;-><init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;[Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 626
    return-void
.end method
