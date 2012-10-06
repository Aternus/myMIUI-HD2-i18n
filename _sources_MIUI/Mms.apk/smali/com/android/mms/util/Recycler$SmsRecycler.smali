.class public Lcom/android/mms/util/Recycler$SmsRecycler;
.super Lcom/android/mms/util/Recycler;
.source "Recycler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/mms/util/Recycler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmsRecycler"
.end annotation


# static fields
.field private static final ALL_SMS_THREADS_PROJECTION:[Ljava/lang/String;

.field private static final SMS_MESSAGE_PROJECTION:[Ljava/lang/String;


# instance fields
.field private final MAX_SMS_MESSAGES_PER_THREAD:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v5, "thread_id"

    .line 132
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v5, v0, v2

    const-string v1, "msg_count"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/util/Recycler$SmsRecycler;->ALL_SMS_THREADS_PROJECTION:[Ljava/lang/String;

    .line 140
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "thread_id"

    aput-object v5, v0, v3

    const-string v1, "address"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "status"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/util/Recycler$SmsRecycler;->SMS_MESSAGE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Lcom/android/mms/util/Recycler;-><init>()V

    .line 162
    const-string v0, "MaxSmsMessagesPerThread"

    iput-object v0, p0, Lcom/android/mms/util/Recycler$SmsRecycler;->MAX_SMS_MESSAGES_PER_THREAD:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected anyThreadOverLimit(Landroid/content/Context;)Z
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x0

    .line 249
    invoke-virtual {p0, p1}, Lcom/android/mms/util/Recycler$SmsRecycler;->getAllThreads(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object v7

    .line 250
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    move v0, v12

    .line 277
    :goto_0
    return v0

    .line 253
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/mms/util/Recycler$SmsRecycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v8

    .line 255
    .local v8, limit:I
    :goto_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 256
    invoke-virtual {p0, v7}, Lcom/android/mms/util/Recycler$SmsRecycler;->getThreadId(Landroid/database/Cursor;)J

    move-result-wide v10

    .line 257
    .local v10, threadId:J
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 258
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v0, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Lcom/android/mms/util/Recycler$SmsRecycler;->SMS_MESSAGE_PROJECTION:[Ljava/lang/String;

    const-string v4, "locked=0"

    const/4 v5, 0x0

    const-string v6, "date DESC"

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 263
    .local v9, msgs:Landroid/database/Cursor;
    if-nez v9, :cond_1

    .line 275
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v12

    goto :goto_0

    .line 267
    :cond_1
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-lt v0, v8, :cond_2

    .line 268
    const/4 v0, 0x1

    .line 271
    :try_start_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 275
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 271
    :cond_2
    :try_start_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 275
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v9           #msgs:Landroid/database/Cursor;
    .end local v10           #threadId:J
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 271
    .restart local v1       #resolver:Landroid/content/ContentResolver;
    .restart local v9       #msgs:Landroid/database/Cursor;
    .restart local v10       #threadId:J
    :catchall_1
    move-exception v0

    :try_start_4
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 275
    .end local v1           #resolver:Landroid/content/ContentResolver;
    .end local v9           #msgs:Landroid/database/Cursor;
    .end local v10           #threadId:J
    :cond_3
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move v0, v12

    .line 277
    goto :goto_0
.end method

.method protected deleteMessagesForThread(Landroid/content/Context;JI)V
    .locals 17
    .parameter "context"
    .parameter "threadId"
    .parameter "keep"

    .prologue
    .line 194
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .line 195
    .local v6, resolver:Landroid/content/ContentResolver;
    const/4 v13, 0x0

    .line 197
    .local v13, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v5, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    sget-object v8, Lcom/android/mms/util/Recycler$SmsRecycler;->SMS_MESSAGE_PROJECTION:[Ljava/lang/String;

    const-string v9, "locked=0"

    const/4 v10, 0x0

    const-string v11, "date DESC"

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v11}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 202
    if-nez v13, :cond_1

    .line 203
    const-string v5, "Recycler"

    const-string v6, "SMS: deleteMessagesForThread got back null cursor"

    .end local v6           #resolver:Landroid/content/ContentResolver;
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    if-eqz v13, :cond_0

    .line 229
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 206
    .restart local v6       #resolver:Landroid/content/ContentResolver;
    :cond_1
    :try_start_1
    invoke-interface {v13}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v12

    .line 207
    .local v12, count:I
    sub-int v16, v12, p4

    .line 213
    .local v16, numberToDelete:I
    if-gtz v16, :cond_2

    .line 228
    if-eqz v13, :cond_0

    .line 229
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 217
    :cond_2
    :try_start_2
    move-object v0, v13

    move/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->move(I)Z

    .line 218
    const/4 v5, 0x4

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 220
    .local v14, latestDate:J
    sget-object v5, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-wide/from16 v1, p2

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "locked=0 AND date<"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v5

    move-object v3, v7

    move-object v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    int-to-long v7, v5

    .line 228
    if-eqz v13, :cond_0

    .line 229
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 228
    .end local v6           #resolver:Landroid/content/ContentResolver;
    .end local v12           #count:I
    .end local v14           #latestDate:J
    .end local v16           #numberToDelete:I
    :catchall_0
    move-exception v5

    if-eqz v13, :cond_3

    .line 229
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v5
.end method

.method protected getAllThreads(Landroid/content/Context;)Landroid/database/Cursor;
    .locals 8
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 183
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/util/Recycler$SmsRecycler;->ALL_SMS_THREADS_PROJECTION:[Ljava/lang/String;

    const-string v6, "server_date DESC"

    move-object v0, p1

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 187
    .local v7, cursor:Landroid/database/Cursor;
    return-object v7
.end method

.method public getMessageLimit(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 165
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 166
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v1, "MaxSmsMessagesPerThread"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getDefaultSMSMessagesPerThread()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method protected getThreadId(Landroid/database/Cursor;)J
    .locals 2
    .parameter "cursor"

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public setMessageLimit(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "limit"

    .prologue
    .line 171
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 173
    .local v0, editPrefs:Landroid/content/SharedPreferences$Editor;
    const-string v1, "MaxSmsMessagesPerThread"

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 174
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 175
    return-void
.end method
