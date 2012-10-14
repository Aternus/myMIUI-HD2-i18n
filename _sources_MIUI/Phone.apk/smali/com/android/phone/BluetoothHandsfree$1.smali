.class Lcom/android/phone/BluetoothHandsfree$1;
.super Landroid/os/Handler;
.source "BluetoothHandsfree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothHandsfree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothHandsfree;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothHandsfree;)V
    .locals 0
    .parameter

    .prologue
    .line 896
    iput-object p1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v2, 0x4

    const-string v0, "BT HS/HF"

    .line 899
    iget-object v1, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    monitor-enter v1

    .line 900
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 976
    :cond_0
    :goto_0
    monitor-exit v1

    .line 977
    return-void

    .line 902
    :pswitch_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_2

    .line 903
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioPossible:Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2700(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->allowAudioAnytime()Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$3100(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$3200(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;

    move-result-object v0

    if-nez v0, :cond_3

    .line 905
    const-string v0, "BT HS/HF"

    const-string v2, "Routing audio for incoming SCO connection"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/ScoSocket;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v2, v0}, Lcom/android/phone/BluetoothHandsfree;->access$3202(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/ScoSocket;)Landroid/bluetooth/ScoSocket;

    .line 907
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$3300(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 908
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$2300(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/HeadsetBase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    #calls: Lcom/android/phone/BluetoothHandsfree;->broadcastAudioStateIntent(ILandroid/bluetooth/BluetoothDevice;)V
    invoke-static {v0, v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$3400(Lcom/android/phone/BluetoothHandsfree;ILandroid/bluetooth/BluetoothDevice;)V

    .line 915
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->createScoSocket()Landroid/bluetooth/ScoSocket;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;

    move-result-object v2

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mIncomingSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v0, v2}, Lcom/android/phone/BluetoothHandsfree;->access$3502(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/ScoSocket;)Landroid/bluetooth/ScoSocket;

    .line 916
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mIncomingSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$3500(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/ScoSocket;->accept()Z

    goto :goto_0

    .line 976
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 911
    :cond_3
    :try_start_1
    const-string v0, "BT HS/HF"

    const-string v2, "Rejecting incoming SCO connection"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/ScoSocket;

    invoke-virtual {v0}, Landroid/bluetooth/ScoSocket;->close()V

    goto :goto_1

    .line 919
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$3200(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;

    move-result-object v0

    if-nez v0, :cond_5

    .line 922
    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/ScoSocket;

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v2, v0}, Lcom/android/phone/BluetoothHandsfree;->access$3202(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/ScoSocket;)Landroid/bluetooth/ScoSocket;

    .line 923
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$3300(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 924
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$2300(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/HeadsetBase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    #calls: Lcom/android/phone/BluetoothHandsfree;->broadcastAudioStateIntent(ILandroid/bluetooth/BluetoothDevice;)V
    invoke-static {v0, v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$3400(Lcom/android/phone/BluetoothHandsfree;ILandroid/bluetooth/BluetoothDevice;)V

    .line 931
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v0, v2}, Lcom/android/phone/BluetoothHandsfree;->access$2102(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/ScoSocket;)Landroid/bluetooth/ScoSocket;

    goto/16 :goto_0

    .line 926
    :cond_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_4

    .line 928
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/ScoSocket;

    invoke-virtual {v0}, Landroid/bluetooth/ScoSocket;->close()V

    .line 929
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2100(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/ScoSocket;->close()V

    goto :goto_2

    .line 934
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$3200(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/ScoSocket;

    if-ne v2, v0, :cond_6

    .line 935
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$3200(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/ScoSocket;->close()V

    .line 936
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mConnectedSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v0, v2}, Lcom/android/phone/BluetoothHandsfree;->access$3202(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/ScoSocket;)Landroid/bluetooth/ScoSocket;

    .line 937
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$3300(Lcom/android/phone/BluetoothHandsfree;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setBluetoothScoOn(Z)V

    .line 938
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$2300(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/HeadsetBase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    #calls: Lcom/android/phone/BluetoothHandsfree;->broadcastAudioStateIntent(ILandroid/bluetooth/BluetoothDevice;)V
    invoke-static {v0, v2, v3}, Lcom/android/phone/BluetoothHandsfree;->access$3400(Lcom/android/phone/BluetoothHandsfree;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_0

    .line 940
    :cond_6
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2100(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;

    move-result-object v2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/bluetooth/ScoSocket;

    if-ne v2, v0, :cond_0

    .line 941
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2100(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/ScoSocket;->close()V

    .line 942
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v0, v2}, Lcom/android/phone/BluetoothHandsfree;->access$2102(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/ScoSocket;)Landroid/bluetooth/ScoSocket;

    goto/16 :goto_0

    .line 946
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$3600(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 947
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mWaitingForCallStart:Z
    invoke-static {v0, v2}, Lcom/android/phone/BluetoothHandsfree;->access$3602(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 948
    const-string v0, "BT HS/HF"

    const-string v2, "Timeout waiting for call to start"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v2, "ERROR"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/phone/BluetoothHandsfree;->access$200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    .line 950
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$3700(Lcom/android/phone/BluetoothHandsfree;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 951
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mStartCallWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$3700(Lcom/android/phone/BluetoothHandsfree;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_0

    .line 956
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$3800(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mWaitingForVoiceRecognition:Z
    invoke-static {v0, v2}, Lcom/android/phone/BluetoothHandsfree;->access$3802(Lcom/android/phone/BluetoothHandsfree;Z)Z

    .line 958
    const-string v0, "BT HS/HF"

    const-string v2, "Timeout waiting for voice recognition to start"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const-string v2, "ERROR"

    #calls: Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V
    invoke-static {v0, v2}, Lcom/android/phone/BluetoothHandsfree;->access$200(Lcom/android/phone/BluetoothHandsfree;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 963
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$1700(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->isA2dpMultiProfile()Z
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$3900(Lcom/android/phone/BluetoothHandsfree;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 964
    const-string v0, "BT HS/HF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Timeout suspending A2DP for SCO (mA2dpState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mA2dpState:I
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$1500(Lcom/android/phone/BluetoothHandsfree;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "). Starting SCO anyway"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 966
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #calls: Lcom/android/phone/BluetoothHandsfree;->createScoSocket()Landroid/bluetooth/ScoSocket;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$2200(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;

    move-result-object v2

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v0, v2}, Lcom/android/phone/BluetoothHandsfree;->access$2102(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/ScoSocket;)Landroid/bluetooth/ScoSocket;

    .line 967
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->isHeadsetConnected()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v0}, Lcom/android/phone/BluetoothHandsfree;->access$2100(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/ScoSocket;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;
    invoke-static {v2}, Lcom/android/phone/BluetoothHandsfree;->access$2300(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/HeadsetBase;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    #getter for: Lcom/android/phone/BluetoothHandsfree;->mHeadset:Landroid/bluetooth/HeadsetBase;
    invoke-static {v3}, Lcom/android/phone/BluetoothHandsfree;->access$2300(Lcom/android/phone/BluetoothHandsfree;)Landroid/bluetooth/HeadsetBase;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/HeadsetBase;->getRemoteDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/bluetooth/ScoSocket;->connect(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 970
    :cond_7
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mOutgoingSco:Landroid/bluetooth/ScoSocket;
    invoke-static {v0, v2}, Lcom/android/phone/BluetoothHandsfree;->access$2102(Lcom/android/phone/BluetoothHandsfree;Landroid/bluetooth/ScoSocket;)Landroid/bluetooth/ScoSocket;

    .line 972
    :cond_8
    iget-object v0, p0, Lcom/android/phone/BluetoothHandsfree$1;->this$0:Lcom/android/phone/BluetoothHandsfree;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/BluetoothHandsfree;->mPendingSco:Z
    invoke-static {v0, v2}, Lcom/android/phone/BluetoothHandsfree;->access$1702(Lcom/android/phone/BluetoothHandsfree;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 900
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
