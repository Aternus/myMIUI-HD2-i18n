.class Lcom/android/voicedialer/BluetoothVoiceDialerActivity$1;
.super Ljava/lang/Object;
.source "BluetoothVoiceDialerActivity.java"

# interfaces
.implements Landroid/bluetooth/BluetoothHeadset$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/voicedialer/BluetoothVoiceDialerActivity;
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
    .line 373
    iput-object p1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$1;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected()V
    .locals 3

    .prologue
    .line 375
    iget-object v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$1;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1600(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$1;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1600(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 377
    .local v0, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$1;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1600(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothHeadset;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 378
    iget-object v1, p0, Lcom/android/voicedialer/BluetoothVoiceDialerActivity$1;->this$0:Lcom/android/voicedialer/BluetoothVoiceDialerActivity;

    #getter for: Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v1}, Lcom/android/voicedialer/BluetoothVoiceDialerActivity;->access$1600(Lcom/android/voicedialer/BluetoothVoiceDialerActivity;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->startVoiceRecognition()Z

    .line 382
    .end local v0           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    const-string v1, "VoiceDialerActivity"

    const-string v2, "onServiceConnected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    return-void
.end method

.method public onServiceDisconnected()V
    .locals 0

    .prologue
    .line 384
    return-void
.end method
