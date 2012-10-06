.class public Lcom/android/mms/transaction/TimedMessageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TimedMessageReceiver.java"


# static fields
.field private static TIMED_MMS_URI:Landroid/net/Uri;

.field private static TIMED_SMS_URI:Landroid/net/Uri;

.field static mAlarmManager:Landroid/app/AlarmManager;

.field static mOpertion:Landroid/app/PendingIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/transaction/TimedMessageReceiver;->mAlarmManager:Landroid/app/AlarmManager;

    .line 24
    const-string v0, "content://sms/sent"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/TimedMessageReceiver;->TIMED_SMS_URI:Landroid/net/Uri;

    .line 25
    const-string v0, "content://mms/sent"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/TimedMessageReceiver;->TIMED_MMS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static getFirstTimedMsgTime(Landroid/content/Context;)J
    .locals 13
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v6, "date ASC"

    const-string v12, "date"

    .line 64
    const-wide v8, 0x7fffffffffffffffL

    .line 66
    .local v8, minTime:J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/transaction/TimedMessageReceiver;->TIMED_SMS_URI:Landroid/net/Uri;

    new-array v3, v11, [Ljava/lang/String;

    const-string v0, "date"

    aput-object v12, v3, v10

    const-string v4, "timed > 0"

    const-string v0, "date ASC"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 70
    .local v7, c:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 73
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/transaction/TimedMessageReceiver;->TIMED_MMS_URI:Landroid/net/Uri;

    new-array v3, v11, [Ljava/lang/String;

    const-string v0, "date"

    aput-object v12, v3, v10

    const-string v4, "timed > 0"

    const-string v0, "date ASC"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 78
    if-eqz v7, :cond_1

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 81
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 82
    return-wide v8
.end method

.method public static scheduleNextTimedMsg(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 86
    sget-object v0, Lcom/android/mms/transaction/TimedMessageReceiver;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Lcom/android/mms/transaction/TimedMessageReceiver;->mAlarmManager:Landroid/app/AlarmManager;

    sget-object v1, Lcom/android/mms/transaction/TimedMessageReceiver;->mOpertion:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 88
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/transaction/TimedMessageReceiver;->mAlarmManager:Landroid/app/AlarmManager;

    .line 90
    :cond_0
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sput-object v0, Lcom/android/mms/transaction/TimedMessageReceiver;->mAlarmManager:Landroid/app/AlarmManager;

    .line 92
    invoke-static {p0}, Lcom/android/mms/transaction/TimedMessageReceiver;->getFirstTimedMsgTime(Landroid/content/Context;)J

    move-result-wide v0

    .line 93
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/transaction/TimedMessageReceiver;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    const-string v3, "com.android.mms.transaction.TIMED_MESSAGE"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const/high16 v3, 0x1000

    invoke-static {p0, v4, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    sput-object v2, Lcom/android/mms/transaction/TimedMessageReceiver;->mOpertion:Landroid/app/PendingIntent;

    .line 96
    sget-object v2, Lcom/android/mms/transaction/TimedMessageReceiver;->mAlarmManager:Landroid/app/AlarmManager;

    sget-object v3, Lcom/android/mms/transaction/TimedMessageReceiver;->mOpertion:Landroid/app/PendingIntent;

    invoke-virtual {v2, v4, v0, v1, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 97
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 30
    const-string v1, "com.android.mms.transaction.TIMED_MESSAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 31
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 33
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 34
    const-string v0, "date"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 35
    const-string v0, "timed"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 36
    const-string v0, "type"

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/transaction/TimedMessageReceiver;->TIMED_SMS_URI:Landroid/net/Uri;

    const-string v4, "timed > 0 AND date <= ?"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 41
    if-lez v0, :cond_0

    .line 42
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.transaction.SEND_MESSAGE"

    const/4 v2, 0x0

    const-class v4, Lcom/android/mms/transaction/SmsReceiver;

    invoke-direct {v0, v1, v2, p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 44
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 47
    :cond_0
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 48
    const-string v0, "date"

    const-wide/16 v1, 0x3e8

    div-long v1, v6, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 49
    const-string v0, "timed"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 50
    const-string v0, "msg_box"

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/mms/transaction/TimedMessageReceiver;->TIMED_MMS_URI:Landroid/net/Uri;

    const-string v4, "timed > 0 AND date <= ?"

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 55
    if-lez v0, :cond_1

    .line 56
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/transaction/TransactionService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 60
    :cond_1
    invoke-static {p1}, Lcom/android/mms/transaction/TimedMessageReceiver;->scheduleNextTimedMsg(Landroid/content/Context;)V

    .line 61
    return-void
.end method
