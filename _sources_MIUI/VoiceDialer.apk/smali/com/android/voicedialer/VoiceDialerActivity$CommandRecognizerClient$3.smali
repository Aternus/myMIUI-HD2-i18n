.class Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$3;
.super Ljava/lang/Object;
.source "VoiceDialerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->onRecognitionError(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

.field final synthetic val$msg:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 507
    iput-object p1, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$3;->this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    iput-object p2, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$3;->val$msg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const v3, 0x7f050001

    const/4 v2, 0x0

    .line 510
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$3;->this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    iget-object v0, v0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const/16 v1, 0x1a

    #calls: Lcom/android/voicedialer/VoiceDialerActivity;->playSound(I)I
    invoke-static {v0, v1}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1000(Lcom/android/voicedialer/VoiceDialerActivity;I)I

    .line 512
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$3;->this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    iget-object v0, v0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->access$700(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$3;->this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    iget-object v1, v1, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mMicFlasher:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1200(Lcom/android/voicedialer/VoiceDialerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 513
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$3;->this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    iget-object v0, v0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    invoke-virtual {v0, v3}, Lcom/android/voicedialer/VoiceDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f040008

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 514
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$3;->this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    iget-object v0, v0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const v1, 0x7f050002

    invoke-virtual {v0, v1}, Lcom/android/voicedialer/VoiceDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f04000a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 515
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$3;->this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    iget-object v0, v0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    invoke-virtual {v0, v3}, Lcom/android/voicedialer/VoiceDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 516
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$3;->this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    iget-object v0, v0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const v1, 0x7f050003

    invoke-virtual {v0, v1}, Lcom/android/voicedialer/VoiceDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 517
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$3;->this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    iget-object v0, v0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const v1, 0x7f050005

    invoke-virtual {v0, v1}, Lcom/android/voicedialer/VoiceDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 519
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$3;->this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    iget-object v0, v0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mVoiceDialerTester:Lcom/android/voicedialer/VoiceDialerTester;
    invoke-static {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->access$500(Lcom/android/voicedialer/VoiceDialerActivity;)Lcom/android/voicedialer/VoiceDialerTester;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$3;->this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    iget-object v0, v0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mVoiceDialerTester:Lcom/android/voicedialer/VoiceDialerTester;
    invoke-static {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->access$500(Lcom/android/voicedialer/VoiceDialerActivity;)Lcom/android/voicedialer/VoiceDialerTester;

    move-result-object v0

    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$3;->val$msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/voicedialer/VoiceDialerTester;->onRecognitionError(Ljava/lang/String;)V

    .line 521
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$3;->this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    iget-object v0, v0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #calls: Lcom/android/voicedialer/VoiceDialerActivity;->startNextTest()V
    invoke-static {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1300(Lcom/android/voicedialer/VoiceDialerActivity;)V

    .line 530
    :goto_0
    return-void

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$3;->this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    iget-object v0, v0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->access$700(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$3$1;

    invoke-direct {v1, p0}, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$3$1;-><init>(Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$3;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
