.class Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;
.super Landroid/os/Handler;
.source "BluetoothOppTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "looper"

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 136
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 137
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    const/16 v11, 0x1f1

    const/4 v10, 0x3

    const-string v12, "failed to close mTransport"

    const-string v9, "BtOppTransfer"

    .line 141
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 294
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 145
    :pswitch_1
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v8

    iget-object v8, v8, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v7, v8}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 149
    :try_start_0
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$100(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/content/BroadcastReceiver;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 153
    :goto_1
    iget v7, p1, Landroid/os/Message;->arg1:I

    if-lez v7, :cond_1

    .line 154
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    new-instance v8, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    iget-object v9, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    iget-object v10, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    invoke-static {v10}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v10

    iget-object v10, v10, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDestination:Landroid/bluetooth/BluetoothDevice;

    iget v11, p1, Landroid/os/Message;->arg1:I

    invoke-direct {v8, v9, v10, v11}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;-><init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Landroid/bluetooth/BluetoothDevice;I)V

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;
    invoke-static {v7, v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$302(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    .line 155
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;
    invoke-static {v7}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$300(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->start()V

    goto :goto_0

    .line 158
    :cond_1
    const-string v7, "BtOppTransfer"

    const-string v7, "SDP query failed!"

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->markBatchFailed(I)V
    invoke-static {v7, v11}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$400(Lcom/android/bluetooth/opp/BluetoothOppTransfer;I)V

    .line 160
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    invoke-static {v7}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v7

    iput v10, v7, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    goto :goto_0

    .line 171
    :pswitch_2
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;
    invoke-static {v7, v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$302(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    .line 172
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->markBatchFailed(I)V
    invoke-static {v7, v11}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$400(Lcom/android/bluetooth/opp/BluetoothOppTransfer;I)V

    .line 173
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    invoke-static {v7}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v7

    iput v10, v7, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    goto :goto_0

    .line 182
    :pswitch_3
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mConnectThread:Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;
    invoke-static {v7, v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$302(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;

    .line 183
    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljavax/obex/ObexTransport;

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mTransport:Ljavax/obex/ObexTransport;
    invoke-static {v8, v7}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$502(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Ljavax/obex/ObexTransport;)Ljavax/obex/ObexTransport;

    .line 184
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->startObexSession()V
    invoke-static {v7}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$600(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)V

    goto/16 :goto_0

    .line 195
    :pswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 197
    .local v2, info:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    invoke-static {v7}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v7

    iget v7, v7, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-nez v7, :cond_0

    .line 198
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/bluetooth/opp/BluetoothOppBatch;->getPendingShare()Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v8

    #setter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    invoke-static {v7, v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$702(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 200
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    invoke-static {v7}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$700(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 204
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->processCurrentShare()V
    invoke-static {v7}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$800(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)V

    goto/16 :goto_0

    .line 208
    :cond_2
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;
    invoke-static {v7}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$900(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/bluetooth/opp/BluetoothOppObexSession;->stop()V

    goto/16 :goto_0

    .line 217
    .end local v2           #info:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    :pswitch_5
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 219
    .local v3, info1:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    invoke-static {v7}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v7

    const/4 v8, 0x2

    iput v8, v7, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    .line 223
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->tickShareStatus(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    invoke-static {v7, v3}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    goto/16 :goto_0

    .line 229
    .end local v3           #info1:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    :pswitch_6
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 230
    .local v4, info2:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSession:Lcom/android/bluetooth/opp/BluetoothOppObexSession;
    invoke-static {v7}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$900(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppObexSession;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/bluetooth/opp/BluetoothOppObexSession;->stop()V

    .line 231
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    invoke-static {v7}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v7

    iput v10, v7, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    .line 232
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    iget v8, v4, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    #calls: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->markBatchFailed(I)V
    invoke-static {v7, v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$400(Lcom/android/bluetooth/opp/BluetoothOppTransfer;I)V

    .line 233
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$700(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v8

    #calls: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->tickShareStatus(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    invoke-static {v7, v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    goto/16 :goto_0

    .line 238
    .end local v4           #info2:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    :pswitch_7
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    .line 239
    .local v5, info3:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    invoke-static {v7}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v7

    iget v7, v7, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-nez v7, :cond_0

    .line 241
    :try_start_1
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mTransport:Ljavax/obex/ObexTransport;
    invoke-static {v7}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$500(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Ljavax/obex/ObexTransport;

    move-result-object v7

    if-nez v7, :cond_3

    .line 242
    const-string v7, "BtOppTransfer"

    const-string v8, "receive MSG_SHARE_INTERRUPTED but mTransport = null"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 250
    :goto_2
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    invoke-static {v7}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v7

    iput v10, v7, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mStatus:I

    .line 251
    if-eqz v5, :cond_4

    .line 252
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    iget v8, v5, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mStatus:I

    #calls: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->markBatchFailed(I)V
    invoke-static {v7, v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$400(Lcom/android/bluetooth/opp/BluetoothOppTransfer;I)V

    .line 256
    :goto_3
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$700(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v8

    #calls: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->tickShareStatus(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    invoke-static {v7, v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    goto/16 :goto_0

    .line 244
    :cond_3
    :try_start_2
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mTransport:Ljavax/obex/ObexTransport;
    invoke-static {v7}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$500(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Ljavax/obex/ObexTransport;

    move-result-object v7

    invoke-interface {v7}, Ljavax/obex/ObexTransport;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 246
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 247
    .local v0, e:Ljava/io/IOException;
    const-string v7, "BtOppTransfer"

    const-string v7, "failed to close mTransport"

    invoke-static {v9, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 254
    .end local v0           #e:Ljava/io/IOException;
    :cond_4
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #calls: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->markBatchFailed()V
    invoke-static {v7}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1100(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)V

    goto :goto_3

    .line 265
    .end local v5           #info3:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    :pswitch_8
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mBatch:Lcom/android/bluetooth/opp/BluetoothOppBatch;
    invoke-static {v7}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$000(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppBatch;

    move-result-object v7

    iget v7, v7, Lcom/android/bluetooth/opp/BluetoothOppBatch;->mDirection:I

    if-nez v7, :cond_6

    .line 267
    :try_start_3
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mTransport:Ljavax/obex/ObexTransport;
    invoke-static {v7}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$500(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Ljavax/obex/ObexTransport;

    move-result-object v7

    if-nez v7, :cond_5

    .line 268
    const-string v7, "BtOppTransfer"

    const-string v8, "receive MSG_SHARE_INTERRUPTED but mTransport = null"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 272
    :catch_1
    move-exception v7

    move-object v0, v7

    .line 273
    .restart local v0       #e:Ljava/io/IOException;
    const-string v7, "BtOppTransfer"

    const-string v7, "failed to close mTransport"

    invoke-static {v9, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 270
    .end local v0           #e:Ljava/io/IOException;
    :cond_5
    :try_start_4
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mTransport:Ljavax/obex/ObexTransport;
    invoke-static {v7}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$500(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Ljavax/obex/ObexTransport;

    move-result-object v7

    invoke-interface {v7}, Ljavax/obex/ObexTransport;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 283
    :cond_6
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/content/Context;

    move-result-object v7

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    .line 285
    .local v6, nm:Landroid/app/NotificationManager;
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    invoke-static {v7}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$700(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v7

    iget v7, v7, Lcom/android/bluetooth/opp/BluetoothOppShareInfo;->mId:I

    invoke-virtual {v6, v7}, Landroid/app/NotificationManager;->cancel(I)V

    .line 287
    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.btopp.intent.action.USER_CONFIRMATION_TIMEOUT"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 288
    .local v1, in:Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 290
    iget-object v7, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    iget-object v8, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mCurrentShare:Lcom/android/bluetooth/opp/BluetoothOppShareInfo;
    invoke-static {v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$700(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppShareInfo;

    move-result-object v8

    #calls: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->markShareTimeout(Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V
    invoke-static {v7, v8}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1200(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Lcom/android/bluetooth/opp/BluetoothOppShareInfo;)V

    goto/16 :goto_0

    .line 150
    .end local v1           #in:Landroid/content/Intent;
    .end local v6           #nm:Landroid/app/NotificationManager;
    :catch_2
    move-exception v7

    goto/16 :goto_1

    .line 141
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
