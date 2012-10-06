.class Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$1;
.super Ljava/lang/Object;
.source "BluetoothVoiceDialerActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->onMicrophoneStart(Ljava/io/InputStream;)V
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
    .line 431
    iput-object p1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$1;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    .line 433
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$1;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    iget-object v0, v0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    const v1, 0x7f050005

    invoke-virtual {v0, v1}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 434
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$1;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    iget-object v0, v0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    const v1, 0x7f050004

    invoke-virtual {v0, v1}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 436
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$1;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    iget-object v0, v0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f040007

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 437
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$1;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    iget-object v0, v0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$400(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$1;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    iget-object v1, v1, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mMicFlasher:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$300(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 438
    return-void
.end method
