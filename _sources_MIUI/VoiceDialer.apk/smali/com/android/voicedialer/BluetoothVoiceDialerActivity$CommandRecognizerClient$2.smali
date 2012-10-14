.class Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$2;
.super Ljava/lang/Object;
.source "BluetoothVoiceDialerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->askToTryAgain()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;


# direct methods
.method constructor <init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;)V
    .locals 0
    .parameter

    .prologue
    .line 462
    iput-object p1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$2;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const v4, 0x7f050001

    const/4 v3, 0x0

    .line 464
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$2;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    iget-object v0, v0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1800(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 465
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$2;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    iget-object v0, v0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1800(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$2;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    iget-object v0, v0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    const/4 v1, 0x3

    #setter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mState:I
    invoke-static {v0, v1}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$702(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;I)I

    .line 469
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$2;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    iget-object v0, v0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mTtsParams:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$800(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "utteranceId"

    const-string v2, "try_again"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$2;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    iget-object v0, v0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mTts:Landroid/speech/tts/TextToSpeech;
    invoke-static {v0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$900(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/speech/tts/TextToSpeech;

    move-result-object v0

    iget-object v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$2;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    iget-object v1, v1, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    const v2, 0x7f040013

    invoke-virtual {v1, v2}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$2;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    iget-object v2, v2, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mTtsParams:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$800(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Landroid/speech/tts/TextToSpeech;->speak(Ljava/lang/String;ILjava/util/HashMap;)I

    .line 475
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$2;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    iget-object v0, v0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$400(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$2;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    iget-object v1, v1, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mMicFlasher:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$300(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 476
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$2;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    iget-object v0, v0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    invoke-virtual {v0, v4}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f040008

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 477
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$2;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    iget-object v0, v0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    invoke-virtual {v0, v4}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 478
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$2;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    iget-object v0, v0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    const v1, 0x7f050003

    invoke-virtual {v0, v1}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 479
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$2;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    iget-object v0, v0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    const v1, 0x7f050005

    invoke-virtual {v0, v1}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 482
    return-void
.end method
