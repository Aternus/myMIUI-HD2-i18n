.class Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3$1;
.super Ljava/lang/Object;
.source "BluetoothVoiceDialerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;


# direct methods
.method constructor <init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;)V
    .locals 0
    .parameter

    .prologue
    .line 576
    iput-object p1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3$1;->this$2:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 580
    const-string v0, "VoiceDialerActivity"

    const-string v1, "cancelListener.onCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 583
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3$1;->this$2:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;

    iget-object v0, v0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    iget-object v0, v0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    invoke-virtual {v0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->finish()V

    .line 584
    return-void
.end method
