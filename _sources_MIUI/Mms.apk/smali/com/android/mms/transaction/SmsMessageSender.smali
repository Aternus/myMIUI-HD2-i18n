.class public Lcom/android/mms/transaction/SmsMessageSender;
.super Ljava/lang/Object;
.source "SmsMessageSender.java"

# interfaces
.implements Lcom/android/mms/transaction/MessageSender;


# static fields
.field private static final SERVICE_CENTER_PROJECTION:[Ljava/lang/String;


# instance fields
.field protected final mContext:Landroid/content/Context;

.field private final mDests:[Ljava/lang/String;

.field protected final mMessageText:Ljava/lang/String;

.field protected final mNumberOfDests:I

.field protected final mServiceCenter:Ljava/lang/String;

.field protected final mThreadId:J

.field private final mTimeToSend:J

.field protected mTimestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 50
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "reply_path_present"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "service_center"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/SmsMessageSender;->SERVICE_CENTER_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 3
    .parameter "context"
    .parameter "dests"
    .parameter "msgText"
    .parameter "threadId"
    .parameter "timeToSend"

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    .line 60
    iput-object p3, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    .line 61
    if-eqz p2, :cond_0

    .line 62
    array-length v0, p2

    iput v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    .line 63
    iget v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    iget v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 69
    :goto_0
    iput-wide p6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mTimeToSend:J

    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mTimestamp:J

    .line 71
    iput-wide p4, p0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    .line 72
    iget-wide v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    invoke-direct {p0, v0, v1}, Lcom/android/mms/transaction/SmsMessageSender;->getOutgoingServiceCenter(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mServiceCenter:Ljava/lang/String;

    .line 73
    return-void

    .line 66
    :cond_0
    iput v2, p0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    goto :goto_0
.end method

.method private getOutgoingServiceCenter(J)Ljava/lang/String;
    .locals 12
    .parameter "threadId"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 182
    const/4 v7, 0x0

    .line 185
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/SmsMessageSender;->SERVICE_CENTER_PROJECTION:[Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "thread_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "date DESC"

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 189
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_3

    .line 196
    :cond_0
    if-eqz v7, :cond_1

    .line 197
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v10

    :cond_2
    :goto_0
    return-object v0

    .line 193
    :cond_3
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v9, v0, :cond_4

    move v8, v9

    .line 194
    .local v8, replyPathPresent:Z
    :goto_1
    if-eqz v8, :cond_5

    const/4 v0, 0x1

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 196
    :goto_2
    if-eqz v7, :cond_2

    .line 197
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v8           #replyPathPresent:Z
    :cond_4
    move v8, v11

    .line 193
    goto :goto_1

    .restart local v8       #replyPathPresent:Z
    :cond_5
    move-object v0, v10

    .line 194
    goto :goto_2

    .line 196
    .end local v8           #replyPathPresent:Z
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_6

    .line 197
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0
.end method

.method private queueMessage()Z
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    move-object v2, v0

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    move v2, v0

    if-nez v2, :cond_1

    .line 109
    :cond_0
    new-instance v2, Lcom/google/android/mms/MmsException;

    const-string v3, "Null message body or dest."

    invoke-direct {v2, v3}, Lcom/google/android/mms/MmsException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 112
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    move-object v2, v0

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/mms/ui/MessageUtils;->getPrefNotificationEnabled(Landroid/content/Context;)Z

    move-result v12

    .line 115
    const-string v3, "pref_key_delivery_reports"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    .line 118
    const-string v2, "\u662f\u5426\u83b7\u53d6\u53d1\u9001\u62a5\u544a:%b"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 122
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mTimeToSend:J

    move-wide v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 123
    sget-object v2, Landroid/provider/Telephony$Sms$Sent;->CONTENT_URI:Landroid/net/Uri;

    .line 124
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mTimeToSend:J

    move-wide v3, v0

    move-wide v14, v3

    move-object v3, v2

    .line 130
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 131
    const/4 v2, 0x0

    move/from16 v18, v2

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mNumberOfDests:I

    move v2, v0

    move/from16 v0, v18

    move v1, v2

    if-ge v0, v1, :cond_5

    .line 133
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    move-object v4, v0

    aget-object v4, v4, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    move-object v5, v0

    aget-object v5, v5, v18

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/SmsMessageSender;->translateWithNickname(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x1

    if-eqz v12, :cond_3

    if-eqz v13, :cond_3

    const/4 v9, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mThreadId:J

    move-wide v10, v0

    invoke-static/range {v2 .. v11}, Landroid/provider/Telephony$Sms;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;

    move-result-object v5

    .line 139
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mTimeToSend:J

    move-wide v6, v0

    const-wide/16 v8, 0x0

    cmp-long v2, v6, v8

    if-lez v2, :cond_4

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mTimeToSend:J

    move-wide v6, v0

    move-wide/from16 v8, v16

    invoke-static/range {v4 .. v9}, Lcom/android/mms/ui/MessageUtils;->setSmsSendTime(Landroid/content/Context;Landroid/net/Uri;JJ)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_3
    add-int/lit8 v2, v18, 0x1

    move/from16 v18, v2

    goto :goto_1

    .line 126
    :cond_2
    const-string v2, "content://sms/queued"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 127
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mTimestamp:J

    move-wide v3, v0

    move-wide v14, v3

    move-object v3, v2

    goto :goto_0

    .line 133
    :cond_3
    const/4 v9, 0x0

    goto :goto_2

    .line 142
    :cond_4
    :try_start_1
    const-string v2, "\u53d1\u7ed9%s\u7684\u77ed\u4fe1\u5df2\u653e\u5165\u53d1\u9001\u961f\u5217"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mDests:[Ljava/lang/String;

    move-object v6, v0

    aget-object v6, v6, v18

    invoke-static {v6}, Lcom/android/mms/util/AddressUtils;->cutPhoneNumberTail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v4}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 144
    :catch_0
    move-exception v2

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-static {v4, v2}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_3

    .line 149
    :cond_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mTimeToSend:J

    move-wide v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_6

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    move-object v2, v0

    invoke-static {v2}, Lcom/android/mms/transaction/TimedMessageReceiver;->scheduleNextTimedMsg(Landroid/content/Context;)V

    .line 159
    :goto_4
    const/4 v2, 0x0

    return v2

    .line 153
    :cond_6
    const-string v2, "\u5e7f\u64adSmsReceiverService.ACTION_SEND_MESSAGE"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    move-object v2, v0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.android.mms.transaction.SEND_MESSAGE"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/transaction/SmsMessageSender;->mContext:Landroid/content/Context;

    move-object v6, v0

    const-class v7, Lcom/android/mms/transaction/SmsReceiver;

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v2, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_4
.end method

.method public static resendMessage(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 163
    const-string v0, "\u91cd\u53d1SmsReceiverService.ACTION_SEND_MESSAGE"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.transaction.SEND_MESSAGE"

    const/4 v2, 0x0

    const-class v3, Lcom/android/mms/transaction/SmsReceiver;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 166
    return-void
.end method

.method private translateWithNickname(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "number"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 83
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .local v5, sb:Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 85
    iget-object v6, p0, Lcom/android/mms/transaction/SmsMessageSender;->mMessageText:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 86
    .local v0, c:C
    const v6, 0xffff

    if-ne v0, v6, :cond_2

    .line 88
    invoke-static {p1, v9}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 89
    .local v1, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getNickname()Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, nickname:Ljava/lang/String;
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getRealName()Ljava/lang/String;

    move-result-object v4

    .line 91
    .local v4, realname:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 92
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string v6, "\u53f7\u7801%s\u4f7f\u7528\u6635\u79f0%s"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/mms/util/AddressUtils;->cutPhoneNumberTail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    aput-object v3, v7, v9

    invoke-static {v6, v7}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 84
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    .end local v3           #nickname:Ljava/lang/String;
    .end local v4           #realname:Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    .restart local v1       #contact:Lcom/android/mms/data/Contact;
    .restart local v3       #nickname:Ljava/lang/String;
    .restart local v4       #realname:Ljava/lang/String;
    :cond_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 95
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    const-string v6, "\u53f7\u7801%s\u4f7f\u7528\u540d\u5b57%s"

    new-array v7, v11, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/android/mms/util/AddressUtils;->cutPhoneNumberTail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v10

    aput-object v4, v7, v9

    invoke-static {v6, v7}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 99
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    .end local v3           #nickname:Ljava/lang/String;
    .end local v4           #realname:Ljava/lang/String;
    :cond_2
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 103
    .end local v0           #c:C
    :cond_3
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method public sendMessage()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/mms/transaction/SmsMessageSender;->queueMessage()Z

    move-result v0

    return v0
.end method
