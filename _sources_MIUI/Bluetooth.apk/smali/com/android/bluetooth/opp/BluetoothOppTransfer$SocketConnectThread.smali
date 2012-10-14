.class Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;
.super Ljava/lang/Thread;
.source "BluetoothOppTransfer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/bluetooth/opp/BluetoothOppTransfer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SocketConnectThread"
.end annotation


# instance fields
.field private btSocket:Landroid/bluetooth/BluetoothSocket;

.field private final channel:I

.field private final device:Landroid/bluetooth/BluetoothDevice;

.field private final host:Ljava/lang/String;

.field private isConnected:Z

.field final synthetic this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

.field private timestamp:J


# direct methods
.method public constructor <init>(Lcom/android/bluetooth/opp/BluetoothOppTransfer;Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2
    .parameter
    .parameter "device"
    .parameter "channel"

    .prologue
    const/4 v1, 0x0

    .line 605
    iput-object p1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    .line 606
    const-string v0, "Socket Connect Thread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 593
    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    .line 607
    iput-object p2, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    .line 608
    iput-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->host:Ljava/lang/String;

    .line 609
    iput p3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->channel:I

    .line 610
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->isConnected:Z

    .line 611
    return-void
.end method

.method private markConnectionFailed(Landroid/bluetooth/BluetoothSocket;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 729
    :try_start_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    :goto_0
    iget-object v0, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSessionHandler:Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;
    invoke-static {v0}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1300(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 734
    return-void

    .line 730
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public interrupt()V
    .locals 3

    .prologue
    .line 615
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v1, :cond_0

    .line 617
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    :cond_0
    :goto_0
    return-void

    .line 618
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 619
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BtOppTransfer"

    const-string v2, "Error when close socket"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public run()V
    .locals 9

    .prologue
    const/16 v7, 0x1105

    const-string v8, "BtOppTransfer"

    .line 628
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->timestamp:J

    .line 687
    :try_start_0
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    iget v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->channel:I

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothDevice;->createInsecureRfcommSocket(I)Landroid/bluetooth/BluetoothSocket;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 694
    :try_start_1
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 699
    new-instance v2, Lcom/android/bluetooth/opp/BluetoothOppRfcommTransport;

    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {v2, v3}, Lcom/android/bluetooth/opp/BluetoothOppRfcommTransport;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    .line 701
    .local v2, transport:Lcom/android/bluetooth/opp/BluetoothOppRfcommTransport;
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    const/16 v5, 0x1105

    iget v6, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->channel:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->setChannel(Landroid/bluetooth/BluetoothDevice;II)V

    .line 703
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    iget-object v5, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->setName(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    .line 707
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mSessionHandler:Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$1300(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;

    move-result-object v3

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v2}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$EventHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 716
    .end local v2           #transport:Lcom/android/bluetooth/opp/BluetoothOppRfcommTransport;
    :goto_0
    return-void

    .line 688
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 689
    .local v1, e1:Ljava/io/IOException;
    const-string v3, "BtOppTransfer"

    const-string v3, "Rfcomm socket create error"

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {p0, v3}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->markConnectionFailed(Landroid/bluetooth/BluetoothSocket;)V

    goto :goto_0

    .line 708
    .end local v1           #e1:Ljava/io/IOException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 709
    .local v0, e:Ljava/io/IOException;
    const-string v3, "BtOppTransfer"

    const-string v3, "Rfcomm socket connect exception "

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->this$0:Lcom/android/bluetooth/opp/BluetoothOppTransfer;

    #getter for: Lcom/android/bluetooth/opp/BluetoothOppTransfer;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppTransfer;->access$200(Lcom/android/bluetooth/opp/BluetoothOppTransfer;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->getInstance(Landroid/content/Context;)Lcom/android/bluetooth/opp/BluetoothOppPreference;

    move-result-object v3

    iget-object v4, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->device:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4, v7}, Lcom/android/bluetooth/opp/BluetoothOppPreference;->removeChannel(Landroid/bluetooth/BluetoothDevice;I)V

    .line 712
    iget-object v3, p0, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->btSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {p0, v3}, Lcom/android/bluetooth/opp/BluetoothOppTransfer$SocketConnectThread;->markConnectionFailed(Landroid/bluetooth/BluetoothSocket;)V

    goto :goto_0
.end method
