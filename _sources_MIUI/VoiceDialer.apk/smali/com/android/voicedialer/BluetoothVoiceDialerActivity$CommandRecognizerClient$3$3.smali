.class Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3$3;
.super Ljava/lang/Object;
.source "BluetoothVoiceDialerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 601
    iput-object p1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3$3;->this$2:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 605
    const-string v0, "VoiceDialerActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "negativeListener.onClick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 609
    iget-object v0, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3$3;->this$2:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;

    iget-object v0, v0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient$3;->this$1:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    iget-object v0, v0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    invoke-virtual {v0}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->finish()V

    .line 610
    return-void
.end method
