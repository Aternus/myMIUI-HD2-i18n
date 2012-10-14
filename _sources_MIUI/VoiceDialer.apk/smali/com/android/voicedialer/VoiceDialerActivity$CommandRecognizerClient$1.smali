.class Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$1;
.super Ljava/lang/Object;
.source "VoiceDialerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->onMicrophoneStart(Ljava/io/InputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;


# direct methods
.method constructor <init>(Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;)V
    .locals 0
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$1;->this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$1;->this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    iget-object v0, v0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const v1, 0x7f050004

    invoke-virtual {v0, v1}, Lcom/android/voicedialer/VoiceDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 371
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$1;->this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    iget-object v0, v0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Lcom/android/voicedialer/VoiceDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f040007

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 372
    iget-object v0, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$1;->this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    iget-object v0, v0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/voicedialer/VoiceDialerActivity;->access$700(Lcom/android/voicedialer/VoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient$1;->this$1:Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;

    iget-object v1, v1, Lcom/android/voicedialer/VoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/VoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/VoiceDialerActivity;->mMicFlasher:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/voicedialer/VoiceDialerActivity;->access$1200(Lcom/android/voicedialer/VoiceDialerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 373
    return-void
.end method
