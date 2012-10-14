.class Lcom/android/contacts/BirthdayRemindService$RemindThread;
.super Ljava/lang/Thread;
.source "BirthdayRemindService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/BirthdayRemindService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemindThread"
.end annotation


# instance fields
.field private final mBirthdayFormat:Ljava/text/SimpleDateFormat;

.field private final mCalendar:Ljava/util/Calendar;

.field private final mContext:Landroid/content/Context;

.field private final mLunarFormat:Ljava/lang/String;

.field private final mNm:Landroid/app/NotificationManager;

.field private final mStartId:I

.field final synthetic this$0:Lcom/android/contacts/BirthdayRemindService;


# direct methods
.method public constructor <init>(Lcom/android/contacts/BirthdayRemindService;Landroid/content/Context;ILjava/util/Calendar;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "startId"
    .parameter "cal"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/contacts/BirthdayRemindService$RemindThread;->this$0:Lcom/android/contacts/BirthdayRemindService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 75
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/BirthdayRemindService$RemindThread;->mBirthdayFormat:Ljava/text/SimpleDateFormat;

    .line 76
    const-string v0, "-%02d-%02d"

    iput-object v0, p0, Lcom/android/contacts/BirthdayRemindService$RemindThread;->mLunarFormat:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lcom/android/contacts/BirthdayRemindService$RemindThread;->mContext:Landroid/content/Context;

    .line 81
    iput p3, p0, Lcom/android/contacts/BirthdayRemindService$RemindThread;->mStartId:I

    .line 82
    iput-object p4, p0, Lcom/android/contacts/BirthdayRemindService$RemindThread;->mCalendar:Ljava/util/Calendar;

    .line 83
    const-string v0, "notification"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/contacts/BirthdayRemindService$RemindThread;->mNm:Landroid/app/NotificationManager;

    .line 85
    return-void
.end method

.method private getLunarDateString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 8
    .parameter "c"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 163
    invoke-virtual {p1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/LunarDate;->calLunar(III)[J

    move-result-object v0

    .line 168
    .local v0, l:[J
    const-string v1, "-%02d-%02d"

    new-array v2, v7, [Ljava/lang/Object;

    const/4 v3, 0x0

    aget-wide v4, v0, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    aget-wide v3, v0, v7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private notifyPeopleBirthday(JLjava/lang/String;)V
    .locals 8
    .parameter "contact_id"
    .parameter "description"

    .prologue
    const v7, 0x7f0b01a4

    .line 172
    new-instance v1, Landroid/app/Notification;

    invoke-direct {v1}, Landroid/app/Notification;-><init>()V

    .line 173
    .local v1, notification:Landroid/app/Notification;
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 174
    .local v3, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v0, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 175
    .local v0, intent:Landroid/content/Intent;
    const/high16 v4, 0x1400

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 177
    iget-object v4, p0, Lcom/android/contacts/BirthdayRemindService$RemindThread;->mContext:Landroid/content/Context;

    long-to-int v5, p1

    const/high16 v6, 0x800

    invoke-static {v4, v5, v0, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 180
    .local v2, pendingIntent:Landroid/app/PendingIntent;
    iget v4, v1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v1, Landroid/app/Notification;->defaults:I

    .line 181
    const v4, 0x7f0200de

    iput v4, v1, Landroid/app/Notification;->icon:I

    .line 182
    iget v4, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v1, Landroid/app/Notification;->flags:I

    .line 183
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/contacts/BirthdayRemindService$RemindThread;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 184
    iget-object v4, p0, Lcom/android/contacts/BirthdayRemindService$RemindThread;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/contacts/BirthdayRemindService$RemindThread;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5, p3, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 186
    iget-object v4, p0, Lcom/android/contacts/BirthdayRemindService$RemindThread;->mNm:Landroid/app/NotificationManager;

    long-to-int v5, p1

    invoke-virtual {v4, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 187
    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    .prologue
    .line 91
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/BirthdayRemindService$RemindThread;->mBirthdayFormat:Ljava/text/SimpleDateFormat;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/BirthdayRemindService$RemindThread;->mCalendar:Ljava/util/Calendar;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v14

    .line 92
    .local v14, date:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/BirthdayRemindService$RemindThread;->mCalendar:Ljava/util/Calendar;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/contacts/BirthdayRemindService$RemindThread;->getLunarDateString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v18

    .line 95
    .local v18, dateLunar:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/BirthdayRemindService$RemindThread;->mCalendar:Ljava/util/Calendar;

    move-object v4, v0

    const/4 v5, 0x5

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->add(II)V

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/BirthdayRemindService$RemindThread;->mBirthdayFormat:Ljava/text/SimpleDateFormat;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/BirthdayRemindService$RemindThread;->mCalendar:Ljava/util/Calendar;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v15

    .line 97
    .local v15, date3Pre:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/BirthdayRemindService$RemindThread;->mCalendar:Ljava/util/Calendar;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/contacts/BirthdayRemindService$RemindThread;->getLunarDateString(Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v16

    .line 100
    .local v16, date3PreLunar:Ljava/lang/String;
    sget-object v4, Landroid/provider/ContactsContract$Data;->CONTENT_JOIN_CONTACT_URI:Landroid/net/Uri;

    const-string v5, "vnd.android.cursor.item/contact_event"

    const/16 v6, 0x2f

    const/16 v7, 0x5e

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 102
    .local v5, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/BirthdayRemindService$RemindThread;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {}, Lcom/android/contacts/BirthdayRemindService;->access$000()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v12

    .line 103
    .local v12, c:Landroid/database/Cursor;
    if-eqz v12, :cond_6

    .line 105
    .end local v5           #uri:Landroid/net/Uri;
    :cond_0
    :goto_0
    :try_start_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 106
    const/4 v4, 0x0

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 107
    .local v24, t:I
    const/4 v4, 0x1

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 108
    .local v10, birth:Ljava/lang/String;
    const/4 v4, 0x2

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    .line 109
    .local v20, id:J
    const/4 v4, 0x3

    invoke-interface {v12, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 111
    .local v23, name:Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 115
    const/16 v19, 0x0

    .line 117
    .local v19, description:Ljava/lang/String;
    const/4 v4, 0x3

    move/from16 v0, v24

    move v1, v4

    if-ne v0, v1, :cond_3

    .line 118
    invoke-virtual {v10, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/BirthdayRemindService$RemindThread;->mContext:Landroid/content/Context;

    move-object v4, v0

    const v5, 0x7f0b01a5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v23, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/BirthdayRemindService$RemindThread;->mContext:Landroid/content/Context;

    move-object v8, v0

    const v9, 0x1040270

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    .line 148
    :cond_1
    :goto_1
    if-eqz v19, :cond_0

    .line 149
    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/contacts/BirthdayRemindService$RemindThread;->notifyPeopleBirthday(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 153
    .end local v10           #birth:Ljava/lang/String;
    .end local v19           #description:Ljava/lang/String;
    .end local v20           #id:J
    .end local v23           #name:Ljava/lang/String;
    .end local v24           #t:I
    :catchall_0
    move-exception v4

    :try_start_2
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 158
    .end local v12           #c:Landroid/database/Cursor;
    .end local v14           #date:Ljava/lang/String;
    .end local v15           #date3Pre:Ljava/lang/String;
    .end local v16           #date3PreLunar:Ljava/lang/String;
    .end local v18           #dateLunar:Ljava/lang/String;
    :catchall_1
    move-exception v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/BirthdayRemindService$RemindThread;->this$0:Lcom/android/contacts/BirthdayRemindService;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/BirthdayRemindService$RemindThread;->mStartId:I

    move v6, v0

    invoke-virtual {v5, v6}, Lcom/android/contacts/BirthdayRemindService;->stopSelf(I)V

    throw v4

    .line 121
    .restart local v10       #birth:Ljava/lang/String;
    .restart local v12       #c:Landroid/database/Cursor;
    .restart local v14       #date:Ljava/lang/String;
    .restart local v15       #date3Pre:Ljava/lang/String;
    .restart local v16       #date3PreLunar:Ljava/lang/String;
    .restart local v18       #dateLunar:Ljava/lang/String;
    .restart local v19       #description:Ljava/lang/String;
    .restart local v20       #id:J
    .restart local v23       #name:Ljava/lang/String;
    .restart local v24       #t:I
    :cond_2
    :try_start_3
    invoke-virtual {v10, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/BirthdayRemindService$RemindThread;->mContext:Landroid/content/Context;

    move-object v4, v0

    const v5, 0x7f0b01a6

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v23, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/BirthdayRemindService$RemindThread;->mContext:Landroid/content/Context;

    move-object v8, v0

    const v9, 0x1040270

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    goto :goto_1

    .line 126
    :cond_3
    const/4 v4, 0x2

    move/from16 v0, v24

    move v1, v4

    if-ne v0, v1, :cond_1

    .line 127
    const-string v22, ""

    .line 128
    .local v22, lunarBirth:Ljava/lang/String;
    sget-object v17, Lcom/android/contacts/model/FallbackSource$EventDateInflater;->sFormat:Ljava/text/SimpleDateFormat;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    .local v17, dateFormat:Ljava/text/DateFormat;
    :try_start_4
    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v11

    .line 131
    .local v11, birthDate:Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v13

    .line 132
    .local v13, calendar:Ljava/util/Calendar;
    invoke-virtual {v13, v11}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 134
    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/android/contacts/BirthdayRemindService$RemindThread;->getLunarDateString(Ljava/util/Calendar;)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/text/ParseException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v22

    .line 139
    .end local v11           #birthDate:Ljava/util/Date;
    .end local v13           #calendar:Ljava/util/Calendar;
    :goto_2
    :try_start_5
    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 140
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/BirthdayRemindService$RemindThread;->mContext:Landroid/content/Context;

    move-object v4, v0

    const v5, 0x7f0b01a5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v23, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/BirthdayRemindService$RemindThread;->mContext:Landroid/content/Context;

    move-object v8, v0

    const v9, 0x1040271

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_1

    .line 142
    :cond_4
    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/BirthdayRemindService$RemindThread;->mContext:Landroid/content/Context;

    move-object v4, v0

    const v5, 0x7f0b01a6

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v23, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/BirthdayRemindService$RemindThread;->mContext:Landroid/content/Context;

    move-object v8, v0

    const v9, 0x1040271

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v19

    goto/16 :goto_1

    .line 153
    .end local v10           #birth:Ljava/lang/String;
    .end local v17           #dateFormat:Ljava/text/DateFormat;
    .end local v19           #description:Ljava/lang/String;
    .end local v20           #id:J
    .end local v22           #lunarBirth:Ljava/lang/String;
    .end local v23           #name:Ljava/lang/String;
    .end local v24           #t:I
    :cond_5
    :try_start_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 158
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/BirthdayRemindService$RemindThread;->this$0:Lcom/android/contacts/BirthdayRemindService;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/BirthdayRemindService$RemindThread;->mStartId:I

    move v5, v0

    invoke-virtual {v4, v5}, Lcom/android/contacts/BirthdayRemindService;->stopSelf(I)V

    .line 160
    return-void

    .line 136
    .restart local v10       #birth:Ljava/lang/String;
    .restart local v17       #dateFormat:Ljava/text/DateFormat;
    .restart local v19       #description:Ljava/lang/String;
    .restart local v20       #id:J
    .restart local v22       #lunarBirth:Ljava/lang/String;
    .restart local v23       #name:Ljava/lang/String;
    .restart local v24       #t:I
    :catch_0
    move-exception v4

    goto :goto_2

    .line 135
    :catch_1
    move-exception v4

    goto :goto_2
.end method
