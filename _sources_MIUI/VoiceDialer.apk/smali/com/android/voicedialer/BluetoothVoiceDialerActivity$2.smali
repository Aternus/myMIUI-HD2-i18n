.class Lcom/android/voicedialer/BluetoothVoiceDialerActivity$2;
.super Ljava/lang/Thread;
.source "BluetoothVoiceDialerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->listenForCommand()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;


# direct methods
.method constructor <init>(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 792
    iput-object p1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$2;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 794
    invoke-static {}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$2700()Lcom/android/voicedialer/CommandRecognizerEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$2;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mCommandClient:Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;
    invoke-static {v1}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$2400(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Lcom/android/voicedialer/BluetoothVoiceDialerActivity$CommandRecognizerClient;

    move-result-object v1

    iget-object v2, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$2;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    iget-object v3, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$2;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    const-string v4, "microphone"

    #calls: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->getArg(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$2500(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    #calls: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->newFile(Ljava/lang/String;)Ljava/io/File;
    invoke-static {v3}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$2600(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    const/16 v4, 0x1f40

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/voicedialer/CommandRecognizerEngine;->recognize(Lcom/android/voicedialer/RecognizerClient;Landroid/app/Activity;Ljava/io/File;I)V

    .line 798
    return-void
.end method
