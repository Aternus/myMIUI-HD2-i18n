.class public Lcom/android/bluetooth/pbap/BluetoothPbapService;
.super Landroid/app/Service;
.source "BluetoothPbapService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;
    }
.end annotation


# static fields
.field private static sLocalPhoneName:Ljava/lang/String;

.field private static sLocalPhoneNum:Ljava/lang/String;

.field private static sRemoteDeviceName:Ljava/lang/String;


# instance fields
.field private mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

.field private final mBinder:Landroid/bluetooth/IBluetoothPbap$Stub;

.field private mConnSocket:Landroid/bluetooth/BluetoothSocket;

.field private mHasStarted:Z

.field private volatile mInterrupted:Z

.field private mPbapServer:Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;

.field private mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

.field private mServerSession:Ljavax/obex/ServerSession;

.field private mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

.field private final mSessionStatusHandler:Landroid/os/Handler;

.field private mStartId:I

.field private mState:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 183
    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneNum:Ljava/lang/String;

    .line 185
    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneName:Ljava/lang/String;

    .line 187
    sput-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sRemoteDeviceName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 197
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 165
    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 169
    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    .line 171
    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    .line 175
    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    .line 177
    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 179
    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    .line 181
    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 189
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mHasStarted:Z

    .line 195
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mStartId:I

    .line 563
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService$1;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    .line 694
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;

    invoke-direct {v0, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService$2;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mBinder:Landroid/bluetooth/IBluetoothPbap$Stub;

    .line 198
    iput v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I

    .line 199
    return-void
.end method

.method static synthetic access$100(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothSocket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeService()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/bluetooth/pbap/BluetoothPbapService;Landroid/bluetooth/BluetoothSocket;)Landroid/bluetooth/BluetoothSocket;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/bluetooth/pbap/BluetoothPbapService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->removePbapNotification(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->stopObexServerSession()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->notifyAuthCancelled()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/bluetooth/pbap/BluetoothPbapService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Ljavax/obex/ServerSession;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/bluetooth/pbap/BluetoothPbapService;Ljavax/obex/ServerSession;)Ljavax/obex/ServerSession;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/bluetooth/pbap/BluetoothPbapService;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeSocket(ZZ)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/bluetooth/pbap/BluetoothPbapService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->setState(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/bluetooth/pbap/BluetoothPbapService;Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothDevice;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p1
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sRemoteDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    sput-object p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sRemoteDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->startObexServerSession()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/bluetooth/pbap/BluetoothPbapService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->createPbapNotification(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/bluetooth/pbap/BluetoothPbapService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/bluetooth/pbap/BluetoothPbapService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->startRfcommSocketListener()V

    return-void
.end method

.method private final closeService()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, "BluetoothPbapService"

    .line 388
    const/4 v1, 0x1

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeSocket(ZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    if-eqz v1, :cond_0

    .line 395
    :try_start_1
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->shutdown()V

    .line 396
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    invoke-virtual {v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->join()V

    .line 397
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 402
    :cond_0
    :goto_1
    iput-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    .line 403
    iput-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    .line 405
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    if-eqz v1, :cond_1

    .line 406
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    invoke-virtual {v1}, Ljavax/obex/ServerSession;->close()V

    .line 407
    iput-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    .line 410
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mHasStarted:Z

    .line 411
    iget v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mStartId:I

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->stopSelfResult(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 414
    :cond_2
    return-void

    .line 389
    :catch_0
    move-exception v0

    .line 390
    .local v0, ex:Ljava/io/IOException;
    const-string v1, "BluetoothPbapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CloseSocket error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 398
    .end local v0           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 399
    .local v0, ex:Ljava/lang/InterruptedException;
    const-string v1, "BluetoothPbapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAcceptThread close error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private final closeSocket(ZZ)V
    .locals 2
    .parameter "server"
    .parameter "accept"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 368
    if-ne p1, v1, :cond_0

    .line 370
    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mInterrupted:Z

    .line 372
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothServerSocket;->close()V

    .line 377
    :cond_0
    if-ne p2, v1, :cond_1

    .line 378
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_1

    .line 379
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V

    .line 382
    :cond_1
    return-void
.end method

.method private createPbapNotification(Ljava/lang/String;)V
    .locals 11
    .parameter

    .prologue
    const v10, 0x1080080

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 627
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 631
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 632
    const-class v2, Lcom/android/bluetooth/pbap/BluetoothPbapActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 633
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 634
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 638
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 639
    const-class v3, Lcom/android/bluetooth/pbap/BluetoothPbapReceiver;

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 642
    invoke-static {}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getRemoteDeviceName()Ljava/lang/String;

    move-result-object v3

    .line 644
    const-string v4, "com.android.bluetooth.pbap.accessrequest"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 645
    const-string v4, "com.android.bluetooth.pbap.accessdisallowed"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 646
    new-instance v4, Landroid/app/Notification;

    const v5, 0x7f040065

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v10, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 648
    const v5, 0x7f040066

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f040067

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v3, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v8, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v4, p0, v5, v3, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 652
    iget v1, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v4, Landroid/app/Notification;->flags:I

    .line 653
    iget v1, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v4, Landroid/app/Notification;->flags:I

    .line 654
    iput v9, v4, Landroid/app/Notification;->defaults:I

    .line 655
    invoke-static {p0, v8, v2, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 656
    const v1, -0xf4241

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 671
    :cond_0
    :goto_0
    return-void

    .line 657
    :cond_1
    const-string v4, "com.android.bluetooth.pbap.authchall"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 658
    const-string v4, "com.android.bluetooth.pbap.authcancelled"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 659
    new-instance v4, Landroid/app/Notification;

    const v5, 0x7f040068

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v4, v10, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 661
    const v5, 0x7f040069

    invoke-virtual {p0, v5}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getString(I)Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f04006a

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v3, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v8, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v4, p0, v5, v3, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 665
    iget v1, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v4, Landroid/app/Notification;->flags:I

    .line 666
    iget v1, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v4, Landroid/app/Notification;->flags:I

    .line 667
    iput v9, v4, Landroid/app/Notification;->defaults:I

    .line 668
    invoke-static {p0, v8, v2, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v4, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 669
    const v1, -0xf4242

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method public static getLocalPhoneName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 684
    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneName:Ljava/lang/String;

    return-object v0
.end method

.method public static getLocalPhoneNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 680
    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneNum:Ljava/lang/String;

    return-object v0
.end method

.method public static getRemoteDeviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 688
    sget-object v0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sRemoteDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method private final initSocket()Z
    .locals 7

    .prologue
    const-string v6, "BluetoothPbapService"

    .line 324
    const/4 v3, 0x1

    .line 325
    .local v3, initSocketOK:Z
    const/16 v0, 0xa

    .line 328
    .local v0, CREATE_RETRY_TIME:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v4, 0xa

    if-ge v2, v4, :cond_0

    iget-boolean v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mInterrupted:Z

    if-nez v4, :cond_0

    .line 338
    :try_start_0
    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/16 v5, 0x13

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothAdapter;->listenUsingInsecureRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v4

    iput-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :goto_1
    if-nez v3, :cond_0

    .line 344
    monitor-enter p0

    .line 347
    const-wide/16 v4, 0xbb8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 352
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 328
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 339
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 340
    .local v1, e:Ljava/io/IOException;
    const-string v4, "BluetoothPbapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error create RfcommServerSocket "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    const/4 v3, 0x0

    goto :goto_1

    .line 348
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 349
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v4, "BluetoothPbapService"

    const-string v5, "socketAcceptThread thread was interrupted (3)"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mInterrupted:Z

    goto :goto_2

    .line 352
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 358
    :cond_0
    if-eqz v3, :cond_1

    .line 364
    :goto_3
    return v3

    .line 362
    :cond_1
    const-string v4, "BluetoothPbapService"

    const-string v4, "Error to create listening socket after 10 try"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private notifyAuthCancelled()V
    .locals 3

    .prologue
    .line 491
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    monitor-enter v0

    .line 492
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->setCancelled(Z)V

    .line 493
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 494
    monitor-exit v0

    .line 495
    return-void

    .line 494
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private notifyAuthKeyInput(Ljava/lang/String;)V
    .locals 3
    .parameter "key"

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    monitor-enter v0

    .line 482
    if-eqz p1, :cond_0

    .line 483
    :try_start_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    invoke-virtual {v1, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->setSessionKey(Ljava/lang/String;)V

    .line 485
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->setChallenged(Z)V

    .line 486
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 487
    monitor-exit v0

    .line 488
    return-void

    .line 487
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private parseIntent(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    .line 245
    const-string v5, "action"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 248
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.bluetooth.adapter.extra.STATE"

    const/high16 v6, -0x8000

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 249
    .local v4, state:I
    const/4 v2, 0x1

    .line 250
    .local v2, removeTimeoutMsg:Z
    const-string v5, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 251
    const/4 v2, 0x0

    .line 252
    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    .line 254
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeService()V

    .line 281
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 282
    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 284
    :cond_1
    return-void

    .line 256
    :cond_2
    const-string v5, "com.android.bluetooth.pbap.accessallowed"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 257
    const-string v5, "com.android.bluetooth.pbap.alwaysallowed"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 258
    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/bluetooth/BluetoothDevice;->setTrust(Z)Z

    .line 262
    :cond_3
    :try_start_0
    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v5, :cond_4

    .line 263
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->startObexServerSession()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 267
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 268
    .local v1, ex:Ljava/io/IOException;
    const-string v5, "BluetoothPbapService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Caught the error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 265
    .end local v1           #ex:Ljava/io/IOException;
    :cond_4
    :try_start_1
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->stopObexServerSession()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 270
    :cond_5
    const-string v5, "com.android.bluetooth.pbap.accessdisallowed"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 271
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->stopObexServerSession()V

    goto :goto_0

    .line 272
    :cond_6
    const-string v5, "com.android.bluetooth.pbap.authresponse"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 273
    const-string v5, "com.android.bluetooth.pbap.sessionkey"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 274
    .local v3, sessionkey:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->notifyAuthKeyInput(Ljava/lang/String;)V

    goto :goto_0

    .line 275
    .end local v3           #sessionkey:Ljava/lang/String;
    :cond_7
    const-string v5, "com.android.bluetooth.pbap.authcancelled"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 276
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->notifyAuthCancelled()V

    goto :goto_0

    .line 278
    :cond_8
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private removePbapNotification(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 674
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 676
    .local v0, nm:Landroid/app/NotificationManager;
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 677
    return-void
.end method

.method private setState(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 609
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->setState(II)V

    .line 610
    return-void
.end method

.method private declared-synchronized setState(II)V
    .locals 3
    .parameter "state"
    .parameter "result"

    .prologue
    .line 613
    monitor-enter p0

    :try_start_0
    iget v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I

    if-eq p1, v1, :cond_0

    .line 616
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.pbap.intent.action.PBAP_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 617
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.bluetooth.pbap.intent.PBAP_PREVIOUS_STATE"

    iget v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 618
    iput p1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I

    .line 619
    const-string v1, "android.bluetooth.pbap.intent.PBAP_STATE"

    iget v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mState:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 620
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mRemoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 621
    const-string v1, "android.permission.BLUETOOTH"

    invoke-virtual {p0, v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    monitor-exit p0

    return-void

    .line 613
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private final startObexServerSession()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 420
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v3, :cond_0

    .line 421
    const-string v3, "power"

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 422
    .local v0, pm:Landroid/os/PowerManager;
    const/4 v3, 0x1

    const-string v4, "StartingObexPbapTransaction"

    invoke-virtual {v0, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 424
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 425
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 427
    .end local v0           #pm:Landroid/os/PowerManager;
    :cond_0
    const-string v3, "phone"

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 428
    .local v1, tm:Landroid/telephony/TelephonyManager;
    if-eqz v1, :cond_1

    .line 429
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneNum:Ljava/lang/String;

    .line 430
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getLine1AlphaTag()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneName:Ljava/lang/String;

    .line 431
    sget-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 432
    const v3, 0x7f04006e

    invoke-virtual {p0, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/bluetooth/pbap/BluetoothPbapService;->sLocalPhoneName:Ljava/lang/String;

    .line 436
    :cond_1
    new-instance v3, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;

    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-direct {v3, v4, p0}, Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mPbapServer:Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;

    .line 437
    monitor-enter p0

    .line 438
    :try_start_0
    new-instance v3, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-direct {v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;-><init>(Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    .line 439
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->setChallenged(Z)V

    .line 440
    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;->setCancelled(Z)V

    .line 441
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 442
    new-instance v2, Lcom/android/bluetooth/pbap/BluetoothPbapRfcommTransport;

    iget-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-direct {v2, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapRfcommTransport;-><init>(Landroid/bluetooth/BluetoothSocket;)V

    .line 443
    .local v2, transport:Lcom/android/bluetooth/pbap/BluetoothPbapRfcommTransport;
    new-instance v3, Ljavax/obex/ServerSession;

    iget-object v4, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mPbapServer:Lcom/android/bluetooth/pbap/BluetoothPbapObexServer;

    iget-object v5, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAuth:Lcom/android/bluetooth/pbap/BluetoothPbapAuthenticator;

    invoke-direct {v3, v2, v4, v5}, Ljavax/obex/ServerSession;-><init>(Ljavax/obex/ObexTransport;Ljavax/obex/ServerRequestHandler;Ljavax/obex/Authenticator;)V

    iput-object v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    .line 444
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->setState(I)V

    .line 448
    return-void

    .line 441
    .end local v2           #transport:Lcom/android/bluetooth/pbap/BluetoothPbapRfcommTransport;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private startRfcommSocketListener()V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSocket:Landroid/bluetooth/BluetoothServerSocket;

    if-nez v0, :cond_1

    .line 309
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->initSocket()Z

    move-result v0

    if-nez v0, :cond_1

    .line 310
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeService()V

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 314
    :cond_1
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;-><init>(Lcom/android/bluetooth/pbap/BluetoothPbapService;Lcom/android/bluetooth/pbap/BluetoothPbapService$1;)V

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    .line 316
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    const-string v1, "BluetoothPbapAcceptThread"

    invoke-virtual {v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->setName(Ljava/lang/String;)V

    .line 317
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    invoke-virtual {v0}, Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;->start()V

    goto :goto_0
.end method

.method private stopObexServerSession()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 454
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 455
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 456
    iput-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 459
    :cond_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    if-eqz v1, :cond_1

    .line 460
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    invoke-virtual {v1}, Ljavax/obex/ServerSession;->close()V

    .line 461
    iput-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mServerSession:Ljavax/obex/ServerSession;

    .line 464
    :cond_1
    iput-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAcceptThread:Lcom/android/bluetooth/pbap/BluetoothPbapService$SocketAcceptThread;

    .line 467
    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeSocket(ZZ)V

    .line 468
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mConnSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :goto_0
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 475
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->startRfcommSocketListener()V

    .line 477
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->setState(I)V

    .line 478
    return-void

    .line 469
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 470
    .local v0, e:Ljava/io/IOException;
    const-string v1, "BluetoothPbapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "closeSocket error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mBinder:Landroid/bluetooth/IBluetoothPbap$Stub;

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 203
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 206
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mInterrupted:Z

    .line 207
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 209
    iget-boolean v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mHasStarted:Z

    if-nez v1, :cond_0

    .line 210
    iput-boolean v3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mHasStarted:Z

    .line 213
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 214
    .local v0, state:I
    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 215
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mSessionStatusHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1770

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 219
    .end local v0           #state:I
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 290
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 291
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->setState(II)V

    .line 292
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 296
    :cond_0
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeService()V

    .line 297
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 224
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 225
    .local v0, retCode:I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 226
    iput p3, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mStartId:I

    .line 227
    iget-object v1, p0, Lcom/android/bluetooth/pbap/BluetoothPbapService;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_1

    .line 228
    const-string v1, "BluetoothPbapService"

    const-string v2, "Stopping BluetoothPbapService: device does not have BT or device is not ready"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    invoke-direct {p0}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->closeService()V

    .line 240
    :cond_0
    :goto_0
    return v0

    .line 235
    :cond_1
    if-eqz p1, :cond_0

    .line 236
    invoke-direct {p0, p1}, Lcom/android/bluetooth/pbap/BluetoothPbapService;->parseIntent(Landroid/content/Intent;)V

    goto :goto_0
.end method
