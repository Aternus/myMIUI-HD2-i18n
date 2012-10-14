.class public Lcom/android/mms/transaction/SendTransaction;
.super Lcom/android/mms/transaction/Transaction;
.source "SendTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mSendReqURI:Landroid/net/Uri;

.field private mThread:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "connectionSettings"
    .parameter "uri"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;Lcom/android/mms/transaction/TransactionSettings;)V

    .line 69
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    .line 70
    iget-object v0, p0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    iget-object v1, p0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 71
    iput-object p3, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    .line 72
    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    .prologue
    .line 169
    const/4 v0, 0x2

    return v0
.end method

.method public process()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/mms/transaction/SendTransaction;->mThread:Ljava/lang/Thread;

    .line 81
    iget-object v0, p0, Lcom/android/mms/transaction/SendTransaction;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 82
    return-void
.end method

.method public run()V
    .locals 23

    .prologue
    .line 86
    :try_start_0
    invoke-static {}, Lcom/android/mms/util/RateController;->getInstance()Lcom/android/mms/util/RateController;

    move-result-object v16

    .line 87
    .local v16, rateCtlr:Lcom/android/mms/util/RateController;
    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/util/RateController;->isLimitSurpassed()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual/range {v16 .. v16}, Lcom/android/mms/util/RateController;->isAllowedByUser()Z

    move-result v3

    if-nez v3, :cond_1

    .line 88
    const-string v3, "Sending rate limit surpassed."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v3, v0

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 161
    const-string v3, "Delivery failed."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    .line 165
    .end local v16           #rateCtlr:Lcom/android/mms/util/RateController;
    :goto_0
    return-void

    .line 93
    .restart local v16       #rateCtlr:Lcom/android/mms/util/RateController;
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v15

    .line 94
    .local v15, persister:Lcom/google/android/mms/pdu/PduPersister;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v3, v0

    invoke-virtual {v15, v3}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v20

    check-cast v20, Lcom/google/android/mms/pdu/SendReq;

    .line 97
    .local v20, sendReq:Lcom/google/android/mms/pdu/SendReq;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long v11, v3, v5

    .line 98
    .local v11, date:J
    move-object/from16 v0, v20

    move-wide v1, v11

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/SendReq;->setDate(J)V

    .line 101
    new-instance v6, Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-direct {v6, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 102
    .local v6, values:Landroid/content/ContentValues;
    const-string v3, "date"

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v5, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 107
    invoke-static {}, Lcom/android/mms/ui/MessageUtils;->getLocalNumber()Ljava/lang/String;

    move-result-object v13

    .line 108
    .local v13, lineNumber:Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 109
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v3, v13}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/SendReq;->setFrom(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 113
    :cond_2
    new-instance v3, Lcom/google/android/mms/pdu/PduComposer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/SendTransaction;->sendPdu([B)[B

    move-result-object v19

    .line 115
    .local v19, response:[B
    new-instance v3, Lcom/google/android/mms/pdu/PduParser;

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v9

    check-cast v9, Lcom/google/android/mms/pdu/SendConf;

    .line 116
    .local v9, conf:Lcom/google/android/mms/pdu/SendConf;
    if-nez v9, :cond_3

    .line 117
    const-string v3, "No M-Send.conf received."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    :cond_3
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/mms/pdu/SendReq;->getTransactionId()[B

    move-result-object v17

    .line 123
    .local v17, reqId:[B
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/SendConf;->getTransactionId()[B

    move-result-object v10

    .line 124
    .local v10, confId:[B
    move-object/from16 v0, v17

    move-object v1, v10

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-nez v3, :cond_5

    .line 125
    const-string v3, "Inconsistent Transaction-ID: req=%d, conf=%d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v17, v4, v5

    const/4 v5, 0x1

    aput-object v10, v4, v5

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v3, v0

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 161
    const-string v3, "Delivery failed."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    goto/16 :goto_0

    .line 132
    :cond_5
    :try_start_2
    new-instance v6, Landroid/content/ContentValues;

    .end local v6           #values:Landroid/content/ContentValues;
    const/4 v3, 0x2

    invoke-direct {v6, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 133
    .restart local v6       #values:Landroid/content/ContentValues;
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/SendConf;->getResponseStatus()I

    move-result v18

    .line 134
    .local v18, respStatus:I
    const-string v3, "resp_st"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 136
    const/16 v3, 0x80

    move/from16 v0, v18

    move v1, v3

    if-eq v0, v1, :cond_7

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v5, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 139
    const-string v3, "Server returned an error code: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .end local v6           #values:Landroid/content/ContentValues;
    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_6

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v3, v0

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 161
    const-string v3, "Delivery failed."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    goto/16 :goto_0

    .line 143
    .restart local v6       #values:Landroid/content/ContentValues;
    :cond_7
    :try_start_3
    invoke-virtual {v9}, Lcom/google/android/mms/pdu/SendConf;->getMessageId()[B

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/mms/pdu/PduPersister;->toIsoString([B)Ljava/lang/String;

    move-result-object v14

    .line 144
    .local v14, messageId:Ljava/lang/String;
    const-string v3, "m_id"

    invoke-virtual {v6, v3, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v5, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 148
    const-string v3, "Moved to sent box: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v6, v0

    .end local v6           #values:Landroid/content/ContentValues;
    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v3, v0

    sget-object v4, Landroid/provider/Telephony$Mms$Sent;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v15, v3, v4}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v22

    .line 153
    .local v22, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_8

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v3, v0

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 161
    const-string v3, "Delivery failed."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    goto/16 :goto_0

    .line 155
    .end local v9           #conf:Lcom/google/android/mms/pdu/SendConf;
    .end local v10           #confId:[B
    .end local v11           #date:J
    .end local v13           #lineNumber:Ljava/lang/String;
    .end local v14           #messageId:Ljava/lang/String;
    .end local v15           #persister:Lcom/google/android/mms/pdu/PduPersister;
    .end local v16           #rateCtlr:Lcom/android/mms/util/RateController;
    .end local v17           #reqId:[B
    .end local v18           #respStatus:I
    .end local v19           #response:[B
    .end local v20           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    .end local v22           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v3

    move-object/from16 v21, v3

    .line 156
    .local v21, t:Ljava/lang/Throwable;
    :try_start_4
    const-string v3, "Exception: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v21 .. v21}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_9

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v3, v0

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 161
    const-string v3, "Delivery failed."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    goto/16 :goto_0

    .line 158
    .end local v21           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_a

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SendTransaction;->mSendReqURI:Landroid/net/Uri;

    move-object v5, v0

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 161
    const-string v4, "Delivery failed."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4, v5}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 163
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/SendTransaction;->notifyObservers()V

    throw v3
.end method
