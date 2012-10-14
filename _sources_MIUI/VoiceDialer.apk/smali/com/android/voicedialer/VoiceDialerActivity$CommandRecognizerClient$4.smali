.class Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$4;
.super Ljava/lang/Object;
.source "VoiceDialerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->onRecognitionSuccess([Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

.field final synthetic val$args:Landroid/os/Bundle;

.field final synthetic val$intents:[Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;Landroid/os/Bundle;[Landroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 577
    iput-object p1, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$4;->this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    iput-object p2, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$4;->val$args:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$4;->val$intents:[Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$4;->this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    iget-object v0, v0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const/16 v1, 0x19

    #calls: Lcom/android/voicedialer/VoiceDialerActivity;->playSound(I)I
    invoke-static {v0, v1}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1000(Lcom/android/voicedialer/VoiceDialerActivity;I)I

    .line 583
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$4;->this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    iget-object v0, v0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->access$700(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$4;->this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    iget-object v1, v1, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mMicFlasher:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1200(Lcom/android/voicedialer/VoiceDialerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 585
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$4;->this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    iget-object v0, v0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$4;->val$args:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lcom/android/voicedialer/VoiceDialerActivity;->showDialog(ILandroid/os/Bundle;)Z

    .line 588
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$4;->this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    iget-object v0, v0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mVoiceDialerTester:Lcom/android/voicedialer/VoiceDialerTester;
    invoke-static {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->access$500(Lcom/android/voicedialer/VoiceDialerActivity;)Lcom/android/voicedialer/VoiceDialerTester;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$4;->this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    iget-object v0, v0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mVoiceDialerTester:Lcom/android/voicedialer/VoiceDialerTester;
    invoke-static {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->access$500(Lcom/android/voicedialer/VoiceDialerActivity;)Lcom/android/voicedialer/VoiceDialerTester;

    move-result-object v0

    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$4;->val$intents:[Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/android/voicedialer/VoiceDialerTester;->onRecognitionSuccess([Landroid/content/Intent;)V

    .line 590
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$4;->this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    iget-object v0, v0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #calls: Lcom/android/voicedialer/VoiceDialerActivity;->startNextTest()V
    invoke-static {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1300(Lcom/android/voicedialer/VoiceDialerActivity;)V

    .line 591
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$4;->this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    iget-object v0, v0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->access$700(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$4$1;

    invoke-direct {v1, p0}, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$4$1;-><init>(Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$4;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 598
    :cond_0
    return-void
.end method
