.class public Lcom/android/mms/ui/ClassZeroActivity;
.super Landroid/app/Activity;
.source "ClassZeroActivity.java"


# static fields
.field private static final BUFFER_OFFSET:I

.field private static final REPLACE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final mCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mMessage:Landroid/telephony/SmsMessage;

.field private mRead:Z

.field private final mSaveListener:Landroid/content/DialogInterface$OnClickListener;

.field private mTimerSet:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 53
    const-string v0, "         "

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/mms/ui/ClassZeroActivity;->BUFFER_OFFSET:I

    .line 56
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "address"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "protocol"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/ClassZeroActivity;->REPLACE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 66
    iput-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessage:Landroid/telephony/SmsMessage;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mRead:Z

    .line 72
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mTimerSet:J

    .line 73
    iput-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mDialog:Landroid/app/AlertDialog;

    .line 75
    new-instance v0, Lcom/android/mms/ui/ClassZeroActivity$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ClassZeroActivity$1;-><init>(Lcom/android/mms/ui/ClassZeroActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    .line 167
    new-instance v0, Lcom/android/mms/ui/ClassZeroActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ClassZeroActivity$2;-><init>(Lcom/android/mms/ui/ClassZeroActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 174
    new-instance v0, Lcom/android/mms/ui/ClassZeroActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ClassZeroActivity$3;-><init>(Lcom/android/mms/ui/ClassZeroActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mSaveListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/ui/ClassZeroActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mRead:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ClassZeroActivity;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ClassZeroActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/android/mms/ui/ClassZeroActivity;->saveMessage()V

    return-void
.end method

.method private extractContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;
    .locals 7
    .parameter "sms"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 185
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 187
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "address"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    const-string v1, "date"

    new-instance v2, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 192
    const-string v1, "server_date"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 193
    const-string v1, "protocol"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 194
    const-string v1, "read"

    iget-boolean v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mRead:Z

    if-eqz v2, :cond_1

    move v2, v6

    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 195
    const-string v1, "seen"

    iget-boolean v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mRead:Z

    if-eqz v2, :cond_2

    move v2, v6

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 197
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 198
    const-string v1, "subject"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    :cond_0
    const-string v1, "reply_path_present"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->isReplyPathPresent()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v6

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 201
    const-string v1, "service_center"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    return-object v0

    :cond_1
    move v2, v5

    .line 194
    goto :goto_0

    :cond_2
    move v2, v5

    .line 195
    goto :goto_1

    :cond_3
    move v2, v5

    .line 200
    goto :goto_2
.end method

.method private replaceMessage(Landroid/telephony/SmsMessage;)Landroid/net/Uri;
    .locals 17
    .parameter "sms"

    .prologue
    .line 206
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/ClassZeroActivity;->extractContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v9

    .line 208
    .local v9, values:Landroid/content/ContentValues;
    const-string v0, "body"

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/ClassZeroActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 211
    .local v1, resolver:Landroid/content/ContentResolver;
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v15

    .line 212
    .local v15, originatingAddress:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    move-result v16

    .line 213
    .local v16, protocolIdentifier:I
    const-string v4, "address = ? AND protocol = ?"

    .line 214
    .local v4, selection:Ljava/lang/String;
    const/4 v0, 0x2

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v15, v5, v0

    const/4 v0, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v0

    .line 217
    .local v5, selectionArgs:[Ljava/lang/String;
    sget-object v2, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/ui/ClassZeroActivity;->REPLACE_PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 221
    .local v12, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    const/4 v0, 0x0

    invoke-interface {v12, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 223
    .local v13, messageId:J
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 226
    .local v8, messageUri:Landroid/net/Uri;
    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object v7, v1

    invoke-static/range {v6 .. v11}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    move-object v0, v8

    .line 233
    .end local v8           #messageUri:Landroid/net/Uri;
    .end local v13           #messageId:J
    :goto_0
    return-object v0

    .line 231
    :cond_0
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 233
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/ClassZeroActivity;->storeMessage(Landroid/telephony/SmsMessage;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 231
    :catchall_0
    move-exception v0

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private saveMessage()V
    .locals 3

    .prologue
    .line 89
    const/4 v0, 0x0

    .line 90
    .local v0, messageUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessage:Landroid/telephony/SmsMessage;

    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->isReplace()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessage:Landroid/telephony/SmsMessage;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ClassZeroActivity;->replaceMessage(Landroid/telephony/SmsMessage;)Landroid/net/Uri;

    move-result-object v0

    .line 95
    :goto_0
    iget-boolean v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mRead:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 96
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;ZZ)V

    .line 98
    :cond_0
    return-void

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessage:Landroid/telephony/SmsMessage;

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ClassZeroActivity;->storeMessage(Landroid/telephony/SmsMessage;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private storeMessage(Landroid/telephony/SmsMessage;)Landroid/net/Uri;
    .locals 4
    .parameter "sms"

    .prologue
    .line 238
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ClassZeroActivity;->extractContentValues(Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    move-result-object v1

    .line 239
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "body"

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lcom/android/mms/ui/ClassZeroActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 244
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {p0, v0, v2, v1}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const-string v7, "         "

    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/ClassZeroActivity;->requestWindowFeature(I)Z

    .line 104
    invoke-virtual {p0}, Lcom/android/mms/ui/ClassZeroActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const v6, 0x7f020115

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 107
    invoke-virtual {p0}, Lcom/android/mms/ui/ClassZeroActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "pdu"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    .line 108
    .local v4, pdu:[B
    invoke-static {v4}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessage:Landroid/telephony/SmsMessage;

    .line 109
    iget-object v5, p0, Lcom/android/mms/ui/ClassZeroActivity;->mMessage:Landroid/telephony/SmsMessage;

    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, messageChars:Ljava/lang/CharSequence;
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, message:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/android/mms/ui/ClassZeroActivity;->finish()V

    .line 129
    :cond_0
    :goto_0
    return-void

    .line 119
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    sget v6, Lcom/android/mms/ui/ClassZeroActivity;->BUFFER_OFFSET:I

    if-ge v5, v6, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "         "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "         "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 121
    .local v2, now:J
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0900fc

    iget-object v7, p0, Lcom/android/mms/ui/ClassZeroActivity;->mSaveListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x104

    iget-object v7, p0, Lcom/android/mms/ui/ClassZeroActivity;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/ClassZeroActivity;->mDialog:Landroid/app/AlertDialog;

    .line 125
    const-wide/32 v5, 0x493e0

    add-long/2addr v5, v2

    iput-wide v5, p0, Lcom/android/mms/ui/ClassZeroActivity;->mTimerSet:J

    .line 126
    if-eqz p1, :cond_0

    .line 127
    const-string v5, "timer_fire"

    iget-wide v6, p0, Lcom/android/mms/ui/ClassZeroActivity;->mTimerSet:J

    invoke-virtual {p1, v5, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/mms/ui/ClassZeroActivity;->mTimerSet:J

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 150
    const-string v0, "timer_fire"

    iget-wide v1, p0, Lcom/android/mms/ui/ClassZeroActivity;->mTimerSet:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 155
    return-void
.end method

.method protected onStart()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 133
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 134
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 135
    .local v0, now:J
    iget-wide v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mTimerSet:J

    cmp-long v2, v2, v0

    if-gtz v2, :cond_0

    .line 137
    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 145
    :goto_0
    return-void

    .line 139
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    iget-wide v3, p0, Lcom/android/mms/ui/ClassZeroActivity;->mTimerSet:J

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 159
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 160
    iget-object v0, p0, Lcom/android/mms/ui/ClassZeroActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 165
    return-void
.end method
