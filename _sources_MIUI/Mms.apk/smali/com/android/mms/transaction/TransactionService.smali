.class public Lcom/android/mms/transaction/TransactionService;
.super Landroid/app/Service;
.source "TransactionService.java"

# interfaces
.implements Lcom/android/mms/transaction/Observer;


# static fields
.field private static final RETRY_INTERVALS_IN_SECOND:[I


# instance fields
.field private mConnMgr:Landroid/net/ConnectivityManager;

.field private mConnectivityBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCurrentTransaction:Lcom/android/mms/transaction/Transaction;

.field private mFailureCount:I

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mKeepMmsConnectivityCallback:Ljava/lang/Runnable;

.field private mLastStartId:I

.field private mMmsConnectivityRetryCount:I

.field private mMmsConnectivityTimeoutCallback:Ljava/lang/Runnable;

.field private mRestartCurrentTransaction:Z

.field private mRetryMmsConnectivityCallback:Ljava/lang/Runnable;

.field private mSuccessCount:I

.field private mTransactionQueue:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Lcom/android/mms/transaction/Transaction;",
            ">;"
        }
    .end annotation
.end field

.field private mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

.field private mUIHandler:Landroid/os/Handler;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/mms/transaction/TransactionService;->RETRY_INTERVALS_IN_SECOND:[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x2dt 0x0t 0x0t 0x0t
        0x3ct 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0xf0t 0x0t 0x0t 0x0t
        0xe0t 0x1t 0x0t 0x0t
        0xc0t 0x3t 0x0t 0x0t
        0x80t 0x7t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 91
    iput v0, p0, Lcom/android/mms/transaction/TransactionService;->mMmsConnectivityRetryCount:I

    .line 92
    iput v0, p0, Lcom/android/mms/transaction/TransactionService;->mSuccessCount:I

    .line 93
    iput v0, p0, Lcom/android/mms/transaction/TransactionService;->mFailureCount:I

    .line 97
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mUIHandler:Landroid/os/Handler;

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/transaction/TransactionService;->mLastStartId:I

    .line 102
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mTransactionQueue:Ljava/util/LinkedHashSet;

    .line 130
    new-instance v0, Lcom/android/mms/transaction/TransactionService$1;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/TransactionService$1;-><init>(Lcom/android/mms/transaction/TransactionService;)V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnectivityBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 225
    new-instance v0, Lcom/android/mms/transaction/TransactionService$2;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/TransactionService$2;-><init>(Lcom/android/mms/transaction/TransactionService;)V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mMmsConnectivityTimeoutCallback:Ljava/lang/Runnable;

    .line 238
    new-instance v0, Lcom/android/mms/transaction/TransactionService$3;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/TransactionService$3;-><init>(Lcom/android/mms/transaction/TransactionService;)V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mRetryMmsConnectivityCallback:Ljava/lang/Runnable;

    .line 257
    new-instance v0, Lcom/android/mms/transaction/TransactionService$4;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/TransactionService$4;-><init>(Lcom/android/mms/transaction/TransactionService;)V

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mKeepMmsConnectivityCallback:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/Transaction;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mCurrentTransaction:Lcom/android/mms/transaction/Transaction;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/Transaction;)Lcom/android/mms/transaction/Transaction;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService;->mCurrentTransaction:Lcom/android/mms/transaction/Transaction;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/mms/transaction/TransactionService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService;->setRetryCount(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/transaction/TransactionService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->processNextTransaction()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/transaction/TransactionService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->checkMobileNetworkOrStop()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/mms/transaction/TransactionService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->connectAndProcessNextTransaction()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/transaction/TransactionService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->mMmsConnectivityRetryCount:I

    return v0
.end method

.method static synthetic access$1304(Lcom/android/mms/transaction/TransactionService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->mMmsConnectivityRetryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/transaction/TransactionService;->mMmsConnectivityRetryCount:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/mms/transaction/TransactionService;)Landroid/os/PowerManager$WakeLock;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/transaction/TransactionService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->scheduleNextRetry()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/mms/transaction/TransactionService;)Landroid/net/ConnectivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/mms/transaction/TransactionService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->enqueueAllMessages()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/TransactionBundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService;->enqueueSingleMessage(Lcom/android/mms/transaction/TransactionBundle;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/mms/transaction/TransactionService;)Ljava/util/LinkedHashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mTransactionQueue:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/transaction/TransactionService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/mms/transaction/TransactionService;->mRestartCurrentTransaction:Z

    return v0
.end method

.method static synthetic access$2004(Lcom/android/mms/transaction/TransactionService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->mSuccessCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/transaction/TransactionService;->mSuccessCount:I

    return v0
.end method

.method static synthetic access$202(Lcom/android/mms/transaction/TransactionService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/android/mms/transaction/TransactionService;->mRestartCurrentTransaction:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/mms/transaction/TransactionService;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService;->onTransactionFailure(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$2204(Lcom/android/mms/transaction/TransactionService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->mFailureCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/transaction/TransactionService;->mFailureCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/mms/transaction/TransactionService;Ljava/lang/Runnable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService;->runInWorkerThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/transaction/TransactionService;)Lcom/android/mms/transaction/TransactionSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/TransactionSettings;)Lcom/android/mms/transaction/TransactionSettings;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/mms/transaction/TransactionService;->mTransactionSettings:Lcom/android/mms/transaction/TransactionSettings;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/mms/transaction/TransactionService;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/transaction/TransactionService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mMmsConnectivityTimeoutCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/transaction/TransactionService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mRetryMmsConnectivityCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/transaction/TransactionService;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mKeepMmsConnectivityCallback:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/transaction/TransactionService;Ljava/lang/Runnable;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/TransactionService;->runInWorkerThread(Ljava/lang/Runnable;I)V

    return-void
.end method

.method private checkMobileNetworkOrStop()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 364
    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->getInstance()Lcom/android/mms/transaction/MmsSystemEventReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->isMmsAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->getInstance()Lcom/android/mms/transaction/MmsSystemEventReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->isMmsAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    const/4 v0, 0x1

    .line 392
    :goto_0
    return v0

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 372
    const-string v0, "No mobile network right now, wait for network availability."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 375
    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->getInstance()Lcom/android/mms/transaction/MmsSystemEventReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->listenForMmsAvailability()V

    .line 376
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->dequeueAllTransactions()V

    .line 377
    invoke-direct {p0, v2}, Lcom/android/mms/transaction/TransactionService;->setRetryCount(I)V

    .line 386
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mCurrentTransaction:Lcom/android/mms/transaction/Transaction;

    if-nez v0, :cond_1

    .line 387
    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->mLastStartId:I

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    .line 389
    const-string v0, "TransactionService stopped."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move v0, v2

    .line 392
    goto :goto_0
.end method

.method private connectAndProcessNextTransaction()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 396
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mCurrentTransaction:Lcom/android/mms/transaction/Transaction;

    if-eqz v1, :cond_0

    .line 398
    const-string v1, "connectAndProcessNextTransaction while there is already one processing, transaction=%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mCurrentTransaction:Lcom/android/mms/transaction/Transaction;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 428
    :goto_0
    return-void

    .line 400
    :cond_0
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mTransactionQueue:Ljava/util/LinkedHashSet;

    invoke-virtual {v1}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 401
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->onFinish()V

    goto :goto_0

    .line 403
    :cond_1
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v2, "enableMMS"

    invoke-virtual {v1, v4, v2}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v0

    .line 406
    .local v0, result:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connectAndProcessNextTransaction: result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 408
    packed-switch v0, :pswitch_data_0

    .line 424
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mRetryMmsConnectivityCallback:Ljava/lang/Runnable;

    const/16 v2, 0x1388

    invoke-direct {p0, v1, v2}, Lcom/android/mms/transaction/TransactionService;->runInWorkerThread(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 411
    :pswitch_0
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->processNextTransaction()V

    goto :goto_0

    .line 419
    :pswitch_1
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 420
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mMmsConnectivityTimeoutCallback:Ljava/lang/Runnable;

    const/16 v2, 0x2710

    invoke-direct {p0, v1, v2}, Lcom/android/mms/transaction/TransactionService;->runInWorkerThread(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 408
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private dequeueAllTransactions()V
    .locals 3

    .prologue
    .line 645
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mTransactionQueue:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 646
    .local v0, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/mms/transaction/Transaction;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 647
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/transaction/Transaction;

    .line 648
    .local v1, transaction:Lcom/android/mms/transaction/Transaction;
    invoke-virtual {v1}, Lcom/android/mms/transaction/Transaction;->onDequeue()V

    goto :goto_0

    .line 650
    .end local v1           #transaction:Lcom/android/mms/transaction/Transaction;
    :cond_0
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mTransactionQueue:Ljava/util/LinkedHashSet;

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->clear()V

    .line 651
    return-void
.end method

.method private endMmsConnectivity()V
    .locals 3

    .prologue
    .line 433
    :try_start_0
    const-string v0, "endMmsConnectivity"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 435
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 436
    :try_start_1
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mKeepMmsConnectivityCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 438
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mRetryMmsConnectivityCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 440
    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 441
    :try_start_2
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    const-string v2, "enableMMS"

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 449
    return-void

    .line 440
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 447
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v0
.end method

.method private enqueueAllMessages()V
    .locals 15

    .prologue
    .line 553
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v11

    const-wide/32 v12, 0x7fffffff

    invoke-virtual {v11, v12, v13}, Lcom/google/android/mms/pdu/PduPersister;->getPendingMessages(J)Landroid/database/Cursor;

    move-result-object v4

    .line 555
    .local v4, cursor:Landroid/database/Cursor;
    if-eqz v4, :cond_7

    .line 557
    :try_start_0
    invoke-interface {v4}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 560
    .local v3, count:I
    const-string v11, "enqueueAllMessages: Pending transaction count=%d"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 563
    if-nez v3, :cond_1

    .line 565
    const-string v11, "enqueueAllMessages: No pending transaction. Stopping service."

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 567
    iget-object v11, p0, Lcom/android/mms/transaction/TransactionService;->mCurrentTransaction:Lcom/android/mms/transaction/Transaction;

    if-nez v11, :cond_0

    iget-object v11, p0, Lcom/android/mms/transaction/TransactionService;->mTransactionQueue:Ljava/util/LinkedHashSet;

    invoke-virtual {v11}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 568
    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->getInstance()Lcom/android/mms/transaction/MmsSystemEventReceiver;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unlistenForMmsAvailability()V

    .line 569
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 570
    iget v11, p0, Lcom/android/mms/transaction/TransactionService;->mLastStartId:I

    invoke-virtual {p0, v11}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    .line 572
    const-string v11, "TrasctionService stopped."

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 623
    :goto_0
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 638
    .end local v3           #count:I
    :goto_1
    return-void

    .line 575
    .restart local v3       #count:I
    :cond_0
    :try_start_1
    const-string v11, "no pending messages in database but in memory"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 623
    .end local v3           #count:I
    :catchall_0
    move-exception v11

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    throw v11

    .line 580
    .restart local v3       #count:I
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->checkMobileNetworkOrStop()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v11

    if-nez v11, :cond_2

    .line 623
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 584
    :cond_2
    :try_start_3
    const-string v11, "msg_id"

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 585
    .local v1, columnIndexOfMsgId:I
    const-string v11, "msg_type"

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 588
    .local v2, columnIndexOfMsgType:I
    :cond_3
    :goto_2
    :pswitch_0
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 589
    invoke-interface {v4, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 590
    .local v8, msgType:I
    invoke-direct {p0, v8}, Lcom/android/mms/transaction/TransactionService;->getTransactionType(I)I

    move-result v9

    .line 591
    .local v9, transactionType:I
    packed-switch v9, :pswitch_data_0

    .line 607
    :cond_4
    :pswitch_1
    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 608
    .local v6, id:J
    sget-object v11, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v4, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-static {v11, v12, v13}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 611
    .local v10, uri:Landroid/net/Uri;
    new-instance v0, Lcom/android/mms/transaction/TransactionBundle;

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v9, v11}, Lcom/android/mms/transaction/TransactionBundle;-><init>(ILjava/lang/String;)V

    .line 613
    .local v0, args:Lcom/android/mms/transaction/TransactionBundle;
    invoke-direct {p0, v0}, Lcom/android/mms/transaction/TransactionService;->enqueueMessage(Lcom/android/mms/transaction/TransactionBundle;)V

    goto :goto_2

    .line 598
    .end local v0           #args:Lcom/android/mms/transaction/TransactionBundle;
    .end local v6           #id:J
    .end local v10           #uri:Landroid/net/Uri;
    :pswitch_2
    const-string v11, "err_type"

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v4, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 601
    .local v5, failureType:I
    const/16 v11, 0xa

    if-ge v5, v11, :cond_3

    if-gtz v5, :cond_4

    goto :goto_2

    .line 618
    .end local v5           #failureType:I
    .end local v8           #msgType:I
    .end local v9           #transactionType:I
    :cond_5
    const/4 v11, 0x0

    iput v11, p0, Lcom/android/mms/transaction/TransactionService;->mMmsConnectivityRetryCount:I

    .line 619
    iget-object v11, p0, Lcom/android/mms/transaction/TransactionService;->mCurrentTransaction:Lcom/android/mms/transaction/Transaction;

    if-nez v11, :cond_6

    .line 620
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->connectAndProcessNextTransaction()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 623
    :cond_6
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 626
    .end local v1           #columnIndexOfMsgId:I
    .end local v2           #columnIndexOfMsgType:I
    .end local v3           #count:I
    :cond_7
    const-string v11, "enqueueAllMessages: pending messages = null. Stopping service."

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lcom/android/mms/LogTag;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 627
    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->getInstance()Lcom/android/mms/transaction/MmsSystemEventReceiver;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unlistenForMmsAvailability()V

    .line 628
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 629
    iget-object v11, p0, Lcom/android/mms/transaction/TransactionService;->mCurrentTransaction:Lcom/android/mms/transaction/Transaction;

    if-nez v11, :cond_8

    iget-object v11, p0, Lcom/android/mms/transaction/TransactionService;->mTransactionQueue:Ljava/util/LinkedHashSet;

    invoke-virtual {v11}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_8

    .line 630
    iget v11, p0, Lcom/android/mms/transaction/TransactionService;->mLastStartId:I

    invoke-virtual {p0, v11}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    .line 632
    const-string v11, "TrasctionService stopped."

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 635
    :cond_8
    const-string v11, "no pending messages in database but in memory"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v11, v12}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 591
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private enqueueMessage(Lcom/android/mms/transaction/TransactionBundle;)V
    .locals 14
    .parameter "args"

    .prologue
    .line 456
    invoke-virtual {p1}, Lcom/android/mms/transaction/TransactionBundle;->getMmscUrl()Ljava/lang/String;

    move-result-object v1

    .line 457
    .local v1, mmsc:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 458
    new-instance v6, Lcom/android/mms/transaction/TransactionSettings;

    invoke-virtual {p1}, Lcom/android/mms/transaction/TransactionBundle;->getProxyAddress()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Lcom/android/mms/transaction/TransactionBundle;->getProxyPort()I

    move-result v11

    invoke-direct {v6, v1, v10, v11}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 464
    .local v6, transactionSettings:Lcom/android/mms/transaction/TransactionSettings;
    :goto_0
    invoke-virtual {p1}, Lcom/android/mms/transaction/TransactionBundle;->getTransactionType()I

    move-result v7

    .line 465
    .local v7, transactionType:I
    const/4 v4, 0x0

    .line 469
    .local v4, transaction:Lcom/android/mms/transaction/Transaction;
    packed-switch v7, :pswitch_data_0

    .line 505
    :try_start_0
    const-string v10, "Invalid transaction type: %d"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Lcom/android/mms/LogTag;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 506
    const/4 v4, 0x0

    .line 523
    :cond_0
    :goto_1
    return-void

    .line 461
    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .end local v6           #transactionSettings:Lcom/android/mms/transaction/TransactionSettings;
    .end local v7           #transactionType:I
    :cond_1
    new-instance v6, Lcom/android/mms/transaction/TransactionSettings;

    const/4 v10, 0x0

    invoke-direct {v6, p0, v10}, Lcom/android/mms/transaction/TransactionSettings;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .restart local v6       #transactionSettings:Lcom/android/mms/transaction/TransactionSettings;
    goto :goto_0

    .line 471
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v7       #transactionType:I
    :pswitch_0
    :try_start_1
    invoke-virtual {p1}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v9

    .line 472
    .local v9, uri:Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 473
    new-instance v5, Lcom/android/mms/transaction/NotificationTransaction;

    invoke-direct {v5, p0, v6, v9}, Lcom/android/mms/transaction/NotificationTransaction;-><init>(Landroid/content/Context;Lcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .local v5, transaction:Lcom/android/mms/transaction/Transaction;
    move-object v4, v5

    .line 512
    .end local v5           #transaction:Lcom/android/mms/transaction/Transaction;
    .end local v9           #uri:Ljava/lang/String;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    :goto_2
    if-eqz v4, :cond_0

    .line 516
    iget-object v10, p0, Lcom/android/mms/transaction/TransactionService;->mTransactionQueue:Ljava/util/LinkedHashSet;

    invoke-virtual {v10, v4}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 517
    iget-object v10, p0, Lcom/android/mms/transaction/TransactionService;->mTransactionQueue:Ljava/util/LinkedHashSet;

    invoke-virtual {v10, v4}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 519
    const-string v10, "Enqueued transaction: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v4, v11, v12

    invoke-static {v10, v11}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 522
    :cond_2
    invoke-virtual {v4}, Lcom/android/mms/transaction/Transaction;->onEnqueue()V

    goto :goto_1

    .line 477
    .restart local v9       #uri:Ljava/lang/String;
    :cond_3
    :try_start_2
    invoke-virtual {p1}, Lcom/android/mms/transaction/TransactionBundle;->getPushData()[B

    move-result-object v3

    .line 478
    .local v3, pushData:[B
    new-instance v2, Lcom/google/android/mms/pdu/PduParser;

    invoke-direct {v2, v3}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    .line 479
    .local v2, parser:Lcom/google/android/mms/pdu/PduParser;
    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v0

    .line 481
    .local v0, ind:Lcom/google/android/mms/pdu/GenericPdu;
    const/16 v8, 0x82

    .line 482
    .local v8, type:I
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v10

    if-ne v10, v8, :cond_4

    .line 483
    new-instance v5, Lcom/android/mms/transaction/NotificationTransaction;

    check-cast v0, Lcom/google/android/mms/pdu/NotificationInd;

    .end local v0           #ind:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-direct {v5, p0, v6, v0}, Lcom/android/mms/transaction/NotificationTransaction;-><init>(Landroid/content/Context;Lcom/android/mms/transaction/TransactionSettings;Lcom/google/android/mms/pdu/NotificationInd;)V

    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v5       #transaction:Lcom/android/mms/transaction/Transaction;
    move-object v4, v5

    .line 491
    .end local v5           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    goto :goto_2

    .line 486
    .restart local v0       #ind:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_4
    const-string v10, "Invalid PUSH data."

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 487
    const/4 v4, 0x0

    goto :goto_1

    .line 493
    .end local v0           #ind:Lcom/google/android/mms/pdu/GenericPdu;
    .end local v2           #parser:Lcom/google/android/mms/pdu/PduParser;
    .end local v3           #pushData:[B
    .end local v8           #type:I
    .end local v9           #uri:Ljava/lang/String;
    :pswitch_1
    new-instance v5, Lcom/android/mms/transaction/RetrieveTransaction;

    invoke-virtual {p1}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, p0, v6, v10}, Lcom/android/mms/transaction/RetrieveTransaction;-><init>(Landroid/content/Context;Lcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V

    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v5       #transaction:Lcom/android/mms/transaction/Transaction;
    move-object v4, v5

    .line 495
    .end local v5           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    goto :goto_2

    .line 497
    :pswitch_2
    new-instance v5, Lcom/android/mms/transaction/SendTransaction;

    invoke-virtual {p1}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, p0, v6, v10}, Lcom/android/mms/transaction/SendTransaction;-><init>(Landroid/content/Context;Lcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V

    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v5       #transaction:Lcom/android/mms/transaction/Transaction;
    move-object v4, v5

    .line 499
    .end local v5           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    goto :goto_2

    .line 501
    :pswitch_3
    new-instance v5, Lcom/android/mms/transaction/ReadRecTransaction;

    invoke-virtual {p1}, Lcom/android/mms/transaction/TransactionBundle;->getUri()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, p0, v6, v10}, Lcom/android/mms/transaction/ReadRecTransaction;-><init>(Landroid/content/Context;Lcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0

    .end local v4           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v5       #transaction:Lcom/android/mms/transaction/Transaction;
    move-object v4, v5

    .line 503
    .end local v5           #transaction:Lcom/android/mms/transaction/Transaction;
    .restart local v4       #transaction:Lcom/android/mms/transaction/Transaction;
    goto :goto_2

    .line 509
    :catch_0
    move-exception v10

    goto :goto_2

    .line 469
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private enqueueSingleMessage(Lcom/android/mms/transaction/TransactionBundle;)V
    .locals 3
    .parameter "args"

    .prologue
    .line 526
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->checkMobileNetworkOrStop()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 527
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/TransactionService;->enqueueMessage(Lcom/android/mms/transaction/TransactionBundle;)V

    .line 528
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/mms/transaction/TransactionService;->mMmsConnectivityRetryCount:I

    .line 529
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mCurrentTransaction:Lcom/android/mms/transaction/Transaction;

    if-nez v1, :cond_0

    .line 530
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->connectAndProcessNextTransaction()V

    .line 550
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    invoke-virtual {p1}, Lcom/android/mms/transaction/TransactionBundle;->getTransactionType()I

    move-result v0

    .line 534
    .local v0, transactionType:I
    iget-object v1, p0, Lcom/android/mms/transaction/TransactionService;->mUIHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/mms/transaction/TransactionService$7;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/transaction/TransactionService$7;-><init>(Lcom/android/mms/transaction/TransactionService;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private getResponseStatus(J)I
    .locals 9
    .parameter "msgID"

    .prologue
    const/4 v3, 0x0

    .line 912
    const/4 v8, 0x0

    .line 913
    .local v8, respStatus:I
    invoke-virtual {p0}, Lcom/android/mms/transaction/TransactionService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 916
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 917
    const-string v0, "resp_st"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 920
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 922
    if-eqz v8, :cond_1

    .line 923
    const-string v0, "Response status is: %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 925
    :cond_1
    return v8

    .line 920
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getRetryCount()I
    .locals 3

    .prologue
    .line 654
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 655
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "transactionRetryCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private getTransactionType(I)I
    .locals 4
    .parameter "msgType"

    .prologue
    const/4 v1, 0x1

    .line 929
    sparse-switch p1, :sswitch_data_0

    .line 937
    const-string v0, "Unrecognized MESSAGE_TYPE: %d"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 938
    const/4 v0, -0x1

    :goto_0
    return v0

    :sswitch_0
    move v0, v1

    .line 931
    goto :goto_0

    .line 933
    :sswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 935
    :sswitch_2
    const/4 v0, 0x2

    goto :goto_0

    .line 929
    :sswitch_data_0
    .sparse-switch
        0x80 -> :sswitch_2
        0x82 -> :sswitch_0
        0x87 -> :sswitch_1
    .end sparse-switch
.end method

.method private onFinish()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 667
    const-string v0, "Finished all transactions in queue. %d success, %d failure."

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/mms/transaction/TransactionService;->mSuccessCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/mms/transaction/TransactionService;->mFailureCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 671
    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->mFailureCount:I

    if-lez v0, :cond_1

    .line 672
    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->mSuccessCount:I

    if-lez v0, :cond_0

    .line 673
    invoke-direct {p0, v4}, Lcom/android/mms/transaction/TransactionService;->setRetryCount(I)V

    .line 675
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->scheduleNextRetry()V

    .line 677
    :cond_1
    invoke-static {}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->getInstance()Lcom/android/mms/transaction/MmsSystemEventReceiver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/transaction/MmsSystemEventReceiver;->unlistenForMmsAvailability()V

    .line 678
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->endMmsConnectivity()V

    .line 679
    iget v0, p0, Lcom/android/mms/transaction/TransactionService;->mLastStartId:I

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/TransactionService;->stopSelf(I)V

    .line 681
    const-string v0, "TrasctionService stopped."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 683
    return-void
.end method

.method private onTransactionFailure(Landroid/net/Uri;)V
    .locals 31
    .parameter "uri"

    .prologue
    .line 816
    invoke-static/range {p1 .. p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v22

    .line 818
    .local v22, msgId:J
    sget-object v3, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v30

    .line 819
    .local v30, uriBuilder:Landroid/net/Uri$Builder;
    const-string v3, "protocol"

    const-string v4, "mms"

    move-object/from16 v0, v30

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 820
    const-string v3, "message"

    invoke-static/range {v22 .. v23}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 822
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual/range {v30 .. v30}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 825
    .local v17, cursor:Landroid/database/Cursor;
    if-eqz v17, :cond_2

    .line 827
    :try_start_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 828
    const-string v3, "msg_type"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 831
    .local v24, msgType:I
    const-string v3, "retry_index"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, v17

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    add-int/lit8 v27, v3, 0x1

    .line 835
    .local v27, retryIndex:I
    const/16 v18, 0x1

    .line 837
    .local v18, errorType:I
    new-instance v10, Landroid/content/ContentValues;

    const/4 v3, 0x4

    invoke-direct {v10, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 838
    .local v10, values:Landroid/content/ContentValues;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 839
    .local v15, current:J
    const/16 v3, 0x82

    move/from16 v0, v24

    move v1, v3

    if-ne v0, v1, :cond_3

    const/4 v3, 0x1

    move/from16 v21, v3

    .line 841
    .local v21, isRetryDownloading:Z
    :goto_0
    const/16 v26, 0x1

    .line 842
    .local v26, retry:Z
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/android/mms/transaction/TransactionService;->getResponseStatus(J)I

    move-result v25

    .line 843
    .local v25, respStatus:I
    const/16 v3, 0x84

    move/from16 v0, v25

    move v1, v3

    if-ne v0, v1, :cond_0

    .line 844
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    const v4, 0x7f090049

    invoke-virtual {v3, v4}, Lcom/android/mms/util/DownloadManager;->showErrorCodeToast(I)V

    .line 845
    const/16 v26, 0x0

    .line 848
    :cond_0
    const/4 v3, 0x5

    move/from16 v0, v27

    move v1, v3

    if-ge v0, v1, :cond_4

    if-eqz v26, :cond_4

    .line 849
    if-eqz v21, :cond_1

    .line 851
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    const/16 v4, 0x82

    move-object v0, v3

    move-object/from16 v1, p1

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 892
    :cond_1
    :goto_1
    const-string v3, "err_type"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 893
    const-string v3, "retry_index"

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 894
    const-string v3, "last_try"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v10, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 896
    const-string v3, "_id"

    move-object/from16 v0, v17

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 898
    .local v14, columnIndex:I
    move-object/from16 v0, v17

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v19

    .line 899
    .local v19, id:J
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v9, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    move-object/from16 v7, p0

    invoke-static/range {v7 .. v12}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 906
    .end local v10           #values:Landroid/content/ContentValues;
    .end local v14           #columnIndex:I
    .end local v15           #current:J
    .end local v18           #errorType:I
    .end local v19           #id:J
    .end local v21           #isRetryDownloading:Z
    .end local v24           #msgType:I
    .end local v25           #respStatus:I
    .end local v26           #retry:Z
    .end local v27           #retryIndex:I
    :goto_2
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    .line 909
    :cond_2
    return-void

    .line 839
    .restart local v10       #values:Landroid/content/ContentValues;
    .restart local v15       #current:J
    .restart local v18       #errorType:I
    .restart local v24       #msgType:I
    .restart local v27       #retryIndex:I
    :cond_3
    const/4 v3, 0x0

    move/from16 v21, v3

    goto/16 :goto_0

    .line 856
    .restart local v21       #isRetryDownloading:Z
    .restart local v25       #respStatus:I
    .restart local v26       #retry:Z
    :cond_4
    :try_start_1
    const-string v3, "onTransactionFailure: retry for %s is reached limit. Abort."

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 859
    const/16 v18, 0xa

    .line 860
    if-eqz v21, :cond_8

    .line 861
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v3, 0x1

    new-array v6, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "thread_id"

    aput-object v5, v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    .line 864
    .local v13, c:Landroid/database/Cursor;
    const-wide/16 v28, -0x1

    .line 865
    .local v28, threadId:J
    if-eqz v13, :cond_6

    .line 867
    :try_start_2
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 868
    const/4 v3, 0x0

    invoke-interface {v13, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v28

    .line 871
    :cond_5
    :try_start_3
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 875
    :cond_6
    const-wide/16 v3, -0x1

    cmp-long v3, v28, v3

    if-eqz v3, :cond_7

    .line 877
    move-object/from16 v0, p0

    move-wide/from16 v1, v28

    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->notifyDownloadFailed(Landroid/content/Context;J)V

    .line 880
    :cond_7
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    const/16 v4, 0x87

    move-object v0, v3

    move-object/from16 v1, p1

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 906
    .end local v10           #values:Landroid/content/ContentValues;
    .end local v13           #c:Landroid/database/Cursor;
    .end local v15           #current:J
    .end local v18           #errorType:I
    .end local v21           #isRetryDownloading:Z
    .end local v24           #msgType:I
    .end local v25           #respStatus:I
    .end local v26           #retry:Z
    .end local v27           #retryIndex:I
    .end local v28           #threadId:J
    :catchall_0
    move-exception v3

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    throw v3

    .line 871
    .restart local v10       #values:Landroid/content/ContentValues;
    .restart local v13       #c:Landroid/database/Cursor;
    .restart local v15       #current:J
    .restart local v18       #errorType:I
    .restart local v21       #isRetryDownloading:Z
    .restart local v24       #msgType:I
    .restart local v25       #respStatus:I
    .restart local v26       #retry:Z
    .restart local v27       #retryIndex:I
    .restart local v28       #threadId:J
    :catchall_1
    move-exception v3

    :try_start_4
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v3

    .line 884
    .end local v13           #c:Landroid/database/Cursor;
    .end local v28           #threadId:J
    :cond_8
    new-instance v6, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v6, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 885
    .local v6, readValues:Landroid/content/ContentValues;
    const-string v3, "read"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 886
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/TransactionService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-static/range {v3 .. v8}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 888
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->notifySendFailed(Landroid/content/Context;Z)V

    goto/16 :goto_1

    .line 903
    .end local v6           #readValues:Landroid/content/ContentValues;
    .end local v10           #values:Landroid/content/ContentValues;
    .end local v15           #current:J
    .end local v18           #errorType:I
    .end local v21           #isRetryDownloading:Z
    .end local v24           #msgType:I
    .end local v25           #respStatus:I
    .end local v26           #retry:Z
    .end local v27           #retryIndex:I
    :cond_9
    const-string v3, "Cannot found correct pending status for: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2
.end method

.method private processNextTransaction()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 686
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mCurrentTransaction:Lcom/android/mms/transaction/Transaction;

    if-eqz v0, :cond_0

    .line 688
    const-string v0, "processNextPendingTransaction while there is already one processing"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 701
    :goto_0
    return-void

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mTransactionQueue:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 691
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->onFinish()V

    goto :goto_0

    .line 693
    :cond_1
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mTransactionQueue:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/transaction/Transaction;

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mCurrentTransaction:Lcom/android/mms/transaction/Transaction;

    .line 694
    iput-boolean v3, p0, Lcom/android/mms/transaction/TransactionService;->mRestartCurrentTransaction:Z

    .line 696
    const-string v0, "Processing next transaction: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mCurrentTransaction:Lcom/android/mms/transaction/Transaction;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 698
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mCurrentTransaction:Lcom/android/mms/transaction/Transaction;

    invoke-virtual {v0, p0}, Lcom/android/mms/transaction/Transaction;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 699
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mCurrentTransaction:Lcom/android/mms/transaction/Transaction;

    invoke-virtual {v0}, Lcom/android/mms/transaction/Transaction;->process()V

    goto :goto_0
.end method

.method private declared-synchronized runInWorkerThread(Ljava/lang/Runnable;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 115
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :goto_0
    monitor-exit p0

    return-void

    .line 118
    :cond_0
    :try_start_1
    const-string v0, "Attempt to post runnable while handler thread is dead."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 115
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized runInWorkerThread(Ljava/lang/Runnable;I)V
    .locals 3
    .parameter "r"
    .parameter "delay"

    .prologue
    .line 123
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mHandler:Landroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    :goto_0
    monitor-exit p0

    return-void

    .line 126
    :cond_0
    :try_start_1
    const-string v0, "Attempt to post delayed runnable while handler thread is dead."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 123
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private scheduleNextRetry()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 709
    invoke-direct {p0}, Lcom/android/mms/transaction/TransactionService;->getRetryCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 710
    invoke-direct {p0, v0}, Lcom/android/mms/transaction/TransactionService;->setRetryCount(I)V

    .line 711
    sget-object v1, Lcom/android/mms/transaction/TransactionService;->RETRY_INTERVALS_IN_SECOND:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 712
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 713
    sget-object v3, Lcom/android/mms/transaction/TransactionService;->RETRY_INTERVALS_IN_SECOND:[I

    aget v3, v3, v0

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    add-long/2addr v3, v1

    .line 715
    const-string v5, "Scheduled #%d retry at %d ms from now"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    sub-long v0, v3, v1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v8

    invoke-static {v5, v6}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 718
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_ONALARM"

    const/4 v2, 0x0

    const-class v5, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, v1, v2, p0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 720
    const/high16 v1, 0x4000

    invoke-static {p0, v7, v0, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 722
    const-string v1, "alarm"

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/TransactionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 723
    invoke-virtual {p0, v8, v3, v4, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 729
    :goto_0
    return-void

    .line 726
    :cond_0
    const-string v1, "#%d retry exceeds limit. Stop."

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private setRetryCount(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 659
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 660
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 661
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "transactionRetryCount"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 662
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 663
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 944
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 270
    const-string v2, "Creating TransactionService..."

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/mms/transaction/TransactionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 275
    .local v1, pm:Landroid/os/PowerManager;
    const/4 v2, 0x1

    const-string v3, "MMS Connectivity"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 276
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 278
    const-string v2, "connectivity"

    invoke-virtual {p0, v2}, Lcom/android/mms/transaction/TransactionService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    iput-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 280
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "TransactionService"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 281
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 282
    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/mms/transaction/TransactionService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mHandler:Landroid/os/Handler;

    .line 284
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 285
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/mms/transaction/TransactionService;->mConnectivityBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/mms/transaction/TransactionService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 287
    iput v4, p0, Lcom/android/mms/transaction/TransactionService;->mSuccessCount:I

    .line 288
    iput v4, p0, Lcom/android/mms/transaction/TransactionService;->mFailureCount:I

    .line 289
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 294
    const-string v0, "Destroying TransactionService"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mConnectivityBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/mms/transaction/TransactionService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 299
    monitor-enter p0

    .line 300
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 301
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mHandler:Landroid/os/Handler;

    .line 303
    const-string v0, "Requested killing handler thread."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mCurrentTransaction:Lcom/android/mms/transaction/Transaction;

    if-eqz v0, :cond_0

    .line 308
    const-string v0, "TransactionService exiting with transaction still processing"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/android/mms/transaction/TransactionService;->mTransactionQueue:Ljava/util/LinkedHashSet;

    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 311
    const-string v0, "TransactionService exiting with transaction in queue"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 313
    :cond_1
    return-void

    .line 305
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 6
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    const/4 v4, 0x0

    const-string v5, "android.intent.action.ACTION_ONALARM"

    .line 318
    const-string v1, "onStartService: startId=%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    iput p3, p0, Lcom/android/mms/transaction/TransactionService;->mLastStartId:I

    .line 335
    const-string v1, "android.intent.action.ACTION_ONALARM"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-nez v1, :cond_2

    .line 336
    :cond_0
    const-string v1, "android.intent.action.ACTION_ONALARM"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 337
    invoke-direct {p0, v4}, Lcom/android/mms/transaction/TransactionService;->setRetryCount(I)V

    .line 340
    :cond_1
    const-string v1, "Posting enqueueAllMessages"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    new-instance v1, Lcom/android/mms/transaction/TransactionService$5;

    invoke-direct {v1, p0}, Lcom/android/mms/transaction/TransactionService$5;-><init>(Lcom/android/mms/transaction/TransactionService;)V

    invoke-direct {p0, v1}, Lcom/android/mms/transaction/TransactionService;->runInWorkerThread(Ljava/lang/Runnable;)V

    .line 360
    :goto_0
    const/4 v1, 0x2

    return v1

    .line 349
    :cond_2
    new-instance v0, Lcom/android/mms/transaction/TransactionBundle;

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/TransactionBundle;-><init>(Landroid/os/Bundle;)V

    .line 351
    .local v0, args:Lcom/android/mms/transaction/TransactionBundle;
    const-string v1, "Posting enqueueSingleMessage"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 353
    new-instance v1, Lcom/android/mms/transaction/TransactionService$6;

    invoke-direct {v1, p0, v0}, Lcom/android/mms/transaction/TransactionService$6;-><init>(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/TransactionBundle;)V

    invoke-direct {p0, v1}, Lcom/android/mms/transaction/TransactionService;->runInWorkerThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public update(Lcom/android/mms/transaction/Observable;)V
    .locals 4
    .parameter "observable"

    .prologue
    .line 733
    move-object v0, p1

    check-cast v0, Lcom/android/mms/transaction/Transaction;

    move-object v1, v0

    .line 735
    .local v1, transaction:Lcom/android/mms/transaction/Transaction;
    const-string v2, "Posting transaction update"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 737
    new-instance v2, Lcom/android/mms/transaction/TransactionService$8;

    invoke-direct {v2, p0, v1}, Lcom/android/mms/transaction/TransactionService$8;-><init>(Lcom/android/mms/transaction/TransactionService;Lcom/android/mms/transaction/Transaction;)V

    invoke-direct {p0, v2}, Lcom/android/mms/transaction/TransactionService;->runInWorkerThread(Ljava/lang/Runnable;)V

    .line 813
    return-void
.end method
