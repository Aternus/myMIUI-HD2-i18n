.class public Lcom/android/mms/transaction/NotificationTransaction;
.super Lcom/android/mms/transaction/Transaction;
.source "NotificationTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mContentLocation:Ljava/lang/String;

.field private mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

.field private mShouldDownload:Z

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/transaction/TransactionSettings;Lcom/google/android/mms/pdu/NotificationInd;)V
    .locals 5
    .parameter "context"
    .parameter "connectionSettings"
    .parameter "ind"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;Lcom/android/mms/transaction/TransactionSettings;)V

    .line 108
    :try_start_0
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, p3, v2}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    iput-object p3, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    .line 116
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p3}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    .line 117
    return-void

    .line 110
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 111
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v1, "Failed to save NotificationInd in constructor.\nStack:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "connectionSettings"
    .parameter "uriString"

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;Lcom/android/mms/transaction/TransactionSettings;)V

    .line 83
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    .line 84
    iget-object v1, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 87
    :try_start_0
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    check-cast v1, Lcom/google/android/mms/pdu/NotificationInd;

    iput-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    .line 96
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    .line 97
    return-void

    .line 89
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 90
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v1, "Failed to load NotificationInd from: %s\nStack:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p3, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 92
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private sendNotifyRespInd(I)V
    .locals 3
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 237
    new-instance v0, Lcom/google/android/mms/pdu/NotifyRespInd;

    const/16 v1, 0x12

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(I[BI)V

    .line 243
    .local v0, notifyRespInd:Lcom/google/android/mms/pdu/NotifyRespInd;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getNotifyWapMMSC()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    new-instance v1, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/transaction/NotificationTransaction;->sendPdu([BLjava/lang/String;)[B

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_0
    new-instance v1, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v2, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v1}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/NotificationTransaction;->sendPdu([B)[B

    goto :goto_0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public onDequeue()V
    .locals 3

    .prologue
    .line 132
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v0

    .line 133
    .local v0, downloadManager:Lcom/android/mms/util/DownloadManager;
    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 134
    return-void
.end method

.method public onEnqueue()V
    .locals 3

    .prologue
    .line 121
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v0

    .line 122
    .local v0, downloadManager:Lcom/android/mms/util/DownloadManager;
    invoke-virtual {v0}, Lcom/android/mms/util/DownloadManager;->isAuto()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mShouldDownload:Z

    .line 125
    iget-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    iget-boolean v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mShouldDownload:Z

    if-eqz v2, :cond_1

    const/16 v2, 0x81

    :goto_1
    invoke-virtual {v0, v1, v2}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V

    .line 128
    return-void

    .line 122
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 125
    :cond_1
    const/16 v2, 0x80

    goto :goto_1
.end method

.method public process()V
    .locals 1

    .prologue
    .line 142
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 143
    return-void
.end method

.method public run()V
    .locals 12

    .prologue
    .line 149
    :try_start_0
    const-string v7, "Notification transaction launched: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p0, v8, v9

    invoke-static {v7, v8}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 155
    const/16 v4, 0x83

    .line 157
    .local v4, status:I
    iget-boolean v7, p0, Lcom/android/mms/transaction/NotificationTransaction;->mShouldDownload:Z

    if-nez v7, :cond_2

    .line 158
    invoke-direct {p0, v4}, Lcom/android/mms/transaction/NotificationTransaction;->sendNotifyRespInd(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 221
    iget-object v7, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v8, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 222
    iget-boolean v7, p0, Lcom/android/mms/transaction/NotificationTransaction;->mShouldDownload:Z

    if-nez v7, :cond_0

    .line 225
    iget-object v7, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 227
    :cond_0
    iget-object v7, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v7}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_1

    .line 228
    iget-object v7, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 229
    const-string v7, "Transaction failed."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/transaction/NotificationTransaction;->notifyObservers()V

    .line 233
    .end local v4           #status:I
    :goto_0
    return-void

    .line 163
    .restart local v4       #status:I
    :cond_2
    :try_start_1
    const-string v7, "Content-Location: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 166
    const/4 v3, 0x0

    .line 170
    .local v3, retrieveConfData:[B
    :try_start_2
    iget-object v7, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/mms/transaction/NotificationTransaction;->getPdu(Ljava/lang/String;)[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    .line 175
    :goto_1
    if-eqz v3, :cond_4

    .line 176
    :try_start_3
    new-instance v7, Lcom/google/android/mms/pdu/PduParser;

    invoke-direct {v7, v3}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    invoke-virtual {v7}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v2

    .line 177
    .local v2, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v7

    const/16 v8, 0x84

    if-eq v7, v8, :cond_a

    .line 178
    :cond_3
    const-string v7, "Invalid M-RETRIEVE.CONF PDU."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 179
    iget-object v7, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 180
    const/16 v4, 0x84

    .line 198
    .end local v2           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :cond_4
    :goto_2
    const-string v7, "status=%x"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 202
    packed-switch v4, :pswitch_data_0

    .line 214
    :cond_5
    :goto_3
    :pswitch_0
    invoke-direct {p0, v4}, Lcom/android/mms/transaction/NotificationTransaction;->sendNotifyRespInd(I)V

    .line 217
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v7

    iget-object v8, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v7, v8, v9}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteOldMessagesInSameThreadAsMessage(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 221
    iget-object v7, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v8, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 222
    iget-boolean v7, p0, Lcom/android/mms/transaction/NotificationTransaction;->mShouldDownload:Z

    if-nez v7, :cond_6

    .line 225
    iget-object v7, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 227
    :cond_6
    iget-object v7, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v7}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_7

    .line 228
    iget-object v7, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 229
    const-string v7, "Transaction failed."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    :cond_7
    invoke-virtual {p0}, Lcom/android/mms/transaction/NotificationTransaction;->notifyObservers()V

    goto/16 :goto_0

    .line 171
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 172
    .local v0, e:Ljava/io/IOException;
    :try_start_4
    iget-object v7, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/mms/transaction/TransactionState;->setState(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 218
    .end local v0           #e:Ljava/io/IOException;
    .end local v3           #retrieveConfData:[B
    .end local v4           #status:I
    :catch_1
    move-exception v7

    move-object v5, v7

    .line 219
    .local v5, t:Ljava/lang/Throwable;
    :try_start_5
    const-string v7, "Exception: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/android/mms/LogTag;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 221
    iget-object v7, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v8, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v7, v8}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 222
    iget-boolean v7, p0, Lcom/android/mms/transaction/NotificationTransaction;->mShouldDownload:Z

    if-nez v7, :cond_8

    .line 225
    iget-object v7, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 227
    :cond_8
    iget-object v7, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v7}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_9

    .line 228
    iget-object v7, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 229
    const-string v7, "Transaction failed."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v7, v8}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    :cond_9
    invoke-virtual {p0}, Lcom/android/mms/transaction/NotificationTransaction;->notifyObservers()V

    goto/16 :goto_0

    .line 183
    .end local v5           #t:Ljava/lang/Throwable;
    .restart local v2       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v3       #retrieveConfData:[B
    .restart local v4       #status:I
    :cond_a
    :try_start_6
    iget-object v7, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    .line 184
    .local v1, p:Lcom/google/android/mms/pdu/PduPersister;
    sget-object v7, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v7}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v6

    .line 186
    .local v6, uri:Landroid/net/Uri;
    iget-object v7, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/GenericPdu;->getDate()J

    move-result-wide v8

    invoke-static {v7, v6, v8, v9}, Lcom/android/mms/ui/MessageUtils;->updateReceivedDate(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 189
    iget-object v7, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iget-object v9, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v7, v8, v9, v10, v11}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 192
    iput-object v6, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    .line 193
    const/16 v4, 0x81

    goto/16 :goto_2

    .line 204
    .end local v1           #p:Lcom/google/android/mms/pdu/PduPersister;
    .end local v2           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .end local v6           #uri:Landroid/net/Uri;
    :pswitch_1
    iget-object v7, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/mms/transaction/TransactionState;->setState(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_3

    .line 221
    .end local v3           #retrieveConfData:[B
    .end local v4           #status:I
    :catchall_0
    move-exception v7

    iget-object v8, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v9, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 222
    iget-boolean v8, p0, Lcom/android/mms/transaction/NotificationTransaction;->mShouldDownload:Z

    if-nez v8, :cond_b

    .line 225
    iget-object v8, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 227
    :cond_b
    iget-object v8, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v8}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v8

    const/4 v9, 0x1

    if-eq v8, v9, :cond_c

    .line 228
    iget-object v8, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 229
    const-string v8, "Transaction failed."

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v8, v9}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    :cond_c
    invoke-virtual {p0}, Lcom/android/mms/transaction/NotificationTransaction;->notifyObservers()V

    throw v7

    .line 208
    .restart local v3       #retrieveConfData:[B
    .restart local v4       #status:I
    :pswitch_2
    :try_start_7
    iget-object v7, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v7}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v7

    if-nez v7, :cond_5

    .line 209
    iget-object v7, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/mms/transaction/TransactionState;->setState(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_3

    .line 202
    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
