.class public Lcom/android/calendar/AlertService;
.super Landroid/app/Service;
.source "AlertService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/AlertService$ServiceHandler;
    }
.end annotation


# static fields
.field private static final ACTIVE_ALERTS_SELECTION:Ljava/lang/String; = "(state=? OR state=?) AND alarmTime<="

.field private static final ACTIVE_ALERTS_SELECTION_ARGS:[Ljava/lang/String; = null

.field private static final ACTIVE_ALERTS_SORT:Ljava/lang/String; = "begin DESC, end DESC"

.field private static final ALERT_INDEX_ALARM_TIME:I = 0x7

.field private static final ALERT_INDEX_ALL_DAY:I = 0x6

.field private static final ALERT_INDEX_BEGIN:I = 0x9

.field private static final ALERT_INDEX_END:I = 0xa

.field private static final ALERT_INDEX_EVENT_ID:I = 0x1

.field private static final ALERT_INDEX_EVENT_LOCATION:I = 0x4

.field private static final ALERT_INDEX_ID:I = 0x0

.field private static final ALERT_INDEX_MINUTES:I = 0x8

.field private static final ALERT_INDEX_SELF_ATTENDEE_STATUS:I = 0x5

.field private static final ALERT_INDEX_STATE:I = 0x2

.field private static final ALERT_INDEX_TITLE:I = 0x3

.field private static final ALERT_PROJECTION:[Ljava/lang/String; = null

.field static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "AlertService"


# instance fields
.field private volatile mServiceHandler:Lcom/android/calendar/AlertService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "event_id"

    aput-object v1, v0, v4

    const-string v1, "state"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "eventLocation"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "selfAttendeeStatus"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "allDay"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "alarmTime"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "minutes"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "begin"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "end"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/calendar/AlertService;->ALERT_PROJECTION:[Ljava/lang/String;

    .line 86
    new-array v0, v5, [Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/calendar/AlertService;->ACTIVE_ALERTS_SELECTION_ARGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 358
    return-void
.end method

.method private doTimeChanged()V
    .locals 5

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/android/calendar/AlertService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 352
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v4, "alarm"

    invoke-virtual {p0, v4}, Lcom/android/calendar/AlertService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 353
    .local v3, service:Ljava/lang/Object;
    move-object v0, v3

    check-cast v0, Landroid/app/AlarmManager;

    move-object v2, v0

    .line 354
    .local v2, manager:Landroid/app/AlarmManager;
    invoke-static {v1, p0, v2}, Landroid/provider/Calendar$CalendarAlerts;->rescheduleMissedAlarms(Landroid/content/ContentResolver;Landroid/content/Context;Landroid/app/AlarmManager;)V

    .line 355
    invoke-static {p0}, Lcom/android/calendar/AlertService;->updateAlertNotification(Landroid/content/Context;)Z

    .line 356
    return-void
.end method

.method private static postNotification(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 3
    .parameter "context"
    .parameter "prefs"
    .parameter "eventName"
    .parameter "location"
    .parameter "numReminders"
    .parameter "quietUpdate"
    .parameter "highPriority"

    .prologue
    .line 278
    const-string v0, "AlertService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "###### creating new alarm notification, numReminders: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p5, :cond_0

    const-string v2, " QUIET"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p6, :cond_1

    const-string v2, " high-priority"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 286
    .local v0, nm:Landroid/app/NotificationManager;
    if-nez p4, :cond_2

    .line 287
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 348
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    .end local p4
    .end local p5
    .end local p6
    :goto_2
    return-void

    .line 278
    .end local v0           #nm:Landroid/app/NotificationManager;
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p4
    .restart local p5
    .restart local p6
    :cond_0
    const-string v2, " loud"

    goto :goto_0

    :cond_1
    const-string v2, ""

    goto :goto_1

    .line 291
    .restart local v0       #nm:Landroid/app/NotificationManager;
    :cond_2
    invoke-static {p0, p2, p3, p4, p6}, Lcom/android/calendar/AlertReceiver;->makeNewAlertNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/app/Notification;

    move-result-object p4

    .line 293
    .local p4, notification:Landroid/app/Notification;
    iget p6, p4, Landroid/app/Notification;->defaults:I

    .end local p6
    or-int/lit8 p6, p6, 0x4

    iput p6, p4, Landroid/app/Notification;->defaults:I

    .line 296
    if-nez p5, :cond_6

    .line 298
    iput-object p2, p4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 299
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p5

    .end local p5
    if-nez p5, :cond_3

    .line 300
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .end local p2
    const-string p5, " - "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 311
    :cond_3
    const-string p2, "preferences_alerts_vibrateWhen"

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 314
    const-string p2, "preferences_alerts_vibrateWhen"

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .end local p3
    move-result-object p2

    .local p2, vibrateWhen:Ljava/lang/String;
    move-object p3, p2

    .line 327
    .end local p2           #vibrateWhen:Ljava/lang/String;
    .local p3, vibrateWhen:Ljava/lang/String;
    :goto_3
    const-string p2, "always"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    .line 328
    .local p2, vibrateAlways:Z
    const-string p5, "silent"

    invoke-virtual {p3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    .line 329
    .local p3, vibrateSilent:Z
    const-string p5, "audio"

    invoke-virtual {p0, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/media/AudioManager;

    .line 331
    .local p0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p0

    .end local p0           #audioManager:Landroid/media/AudioManager;
    const/4 p5, 0x1

    if-ne p0, p5, :cond_a

    const/4 p0, 0x1

    .line 335
    .local p0, nowSilent:Z
    :goto_4
    if-nez p2, :cond_4

    if-eqz p3, :cond_5

    if-eqz p0, :cond_5

    .line 336
    :cond_4
    iget p0, p4, Landroid/app/Notification;->defaults:I

    .end local p0           #nowSilent:Z
    or-int/lit8 p0, p0, 0x2

    iput p0, p4, Landroid/app/Notification;->defaults:I

    .line 341
    :cond_5
    const-string p0, "preferences_alerts_ringtone"

    const/4 p2, 0x0

    invoke-interface {p1, p0, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .end local p2           #vibrateAlways:Z
    move-result-object p0

    .line 343
    .local p0, reminderRingtone:Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    .end local p1
    if-eqz p1, :cond_b

    const/4 p0, 0x0

    .end local p0           #reminderRingtone:Ljava/lang/String;
    :goto_5
    iput-object p0, p4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 347
    .end local p3           #vibrateSilent:Z
    :cond_6
    const/4 p0, 0x0

    invoke-virtual {v0, p0, p4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_2

    .line 316
    .local p0, context:Landroid/content/Context;
    .restart local p1
    .local p3, location:Ljava/lang/String;
    :cond_7
    const-string p2, "preferences_alerts_vibrate"

    invoke-interface {p1, p2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 318
    const-string p2, "preferences_alerts_vibrate"

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .end local p3           #location:Ljava/lang/String;
    move-result p2

    .line 320
    .local p2, vibrate:Z
    if-eqz p2, :cond_8

    const p2, 0x7f080075

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local p2           #vibrate:Z
    move-result-object p2

    .local p2, vibrateWhen:Ljava/lang/String;
    :goto_6
    move-object p3, p2

    .line 323
    .end local p2           #vibrateWhen:Ljava/lang/String;
    .local p3, vibrateWhen:Ljava/lang/String;
    goto :goto_3

    .line 320
    .end local p3           #vibrateWhen:Ljava/lang/String;
    .local p2, vibrate:Z
    :cond_8
    const p2, 0x7f080076

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .end local p2           #vibrate:Z
    move-result-object p2

    goto :goto_6

    .line 325
    .local p3, location:Ljava/lang/String;
    :cond_9
    const p2, 0x7f080074

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .local p2, vibrateWhen:Ljava/lang/String;
    move-object p3, p2

    .end local p2           #vibrateWhen:Ljava/lang/String;
    .local p3, vibrateWhen:Ljava/lang/String;
    goto :goto_3

    .line 331
    .end local p0           #context:Landroid/content/Context;
    .local p2, vibrateAlways:Z
    .local p3, vibrateSilent:Z
    :cond_a
    const/4 p0, 0x0

    goto :goto_4

    .line 343
    .end local p1
    .end local p2           #vibrateAlways:Z
    .local p0, reminderRingtone:Ljava/lang/String;
    :cond_b
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_5
.end method

.method static updateAlertNotification(Landroid/content/Context;)Z
    .locals 42
    .parameter "context"

    .prologue
    .line 120
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    .line 121
    .local v18, cr:Landroid/content/ContentResolver;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v19

    .line 123
    .local v19, currentTime:J
    sget-object v7, Lcom/android/calendar/AlertService;->ALERT_PROJECTION:[Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(state=? OR state=?) AND alarmTime<="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object v0, v8

    move-wide/from16 v1, v19

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lcom/android/calendar/AlertService;->ACTIVE_ALERTS_SELECTION_ARGS:[Ljava/lang/String;

    const-string v10, "begin DESC, end DESC"

    move-object/from16 v0, v18

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move-object v4, v10

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/Calendar$CalendarAlerts;->query(Landroid/content/ContentResolver;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 126
    .local v7, alertCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-nez v8, :cond_2

    .line 127
    :cond_0
    if-eqz v7, :cond_1

    .line 128
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 131
    :cond_1
    const-string v7, "AlertService"

    .end local v7           #alertCursor:Landroid/database/Cursor;
    const-string v8, "No fired or scheduled alerts"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    const-string v7, "notification"

    move-object/from16 v0, p0

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/NotificationManager;

    .line 134
    .local p0, nm:Landroid/app/NotificationManager;
    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 135
    const/16 p0, 0x0

    .line 271
    .end local p0           #nm:Landroid/app/NotificationManager;
    :goto_0
    return p0

    .line 139
    .restart local v7       #alertCursor:Landroid/database/Cursor;
    .local p0, context:Landroid/content/Context;
    :cond_2
    const-string v8, "AlertService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "alert count:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/4 v8, 0x0

    .line 143
    .local v8, notificationEventName:Ljava/lang/String;
    const/4 v9, 0x0

    .line 144
    .local v9, notificationEventLocation:Ljava/lang/String;
    const-wide/16 v11, 0x0

    .line 145
    .local v11, notificationEventBegin:J
    const/4 v13, 0x0

    .line 146
    .local v13, notificationEventStatus:I
    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 147
    .local v26, eventIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Ljava/lang/Long;>;"
    const/4 v10, 0x0

    .line 148
    .local v10, numReminders:I
    const/4 v14, 0x0

    .local v14, numFired:I
    move/from16 v33, v14

    .end local v14           #numFired:I
    .local v33, numFired:I
    move/from16 v32, v13

    .end local v13           #notificationEventStatus:I
    .local v32, notificationEventStatus:I
    move-wide/from16 v30, v11

    .line 150
    .end local v11           #notificationEventBegin:J
    .local v30, notificationEventBegin:J
    :goto_1
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_b

    .line 151
    const/4 v11, 0x0

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    .line 152
    .local v13, alertId:J
    const/4 v11, 0x1

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 153
    .local v24, eventId:J
    const/16 v11, 0x8

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v29

    .line 154
    .local v29, minutes:I
    const/4 v11, 0x3

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    .line 155
    .local v27, eventName:Ljava/lang/String;
    const/4 v11, 0x4

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v28

    .line 156
    .local v28, location:Ljava/lang/String;
    const/4 v11, 0x6

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    if-eqz v11, :cond_6

    const/4 v11, 0x1

    .line 157
    .local v11, allDay:Z
    :goto_2
    const/4 v11, 0x5

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    .end local v11           #allDay:Z
    move-result v35

    .line 158
    .local v35, status:I
    const/4 v11, 0x2

    move/from16 v0, v35

    move v1, v11

    if-ne v0, v1, :cond_7

    const/4 v11, 0x1

    move/from16 v21, v11

    .line 159
    .local v21, declined:Z
    :goto_3
    const/16 v11, 0x9

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 160
    .local v16, beginTime:J
    const/16 v11, 0xa

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 161
    .local v22, endTime:J
    sget-object v11, Landroid/provider/Calendar$CalendarAlerts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v11, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    .line 163
    .local v15, alertUri:Landroid/net/Uri;
    const/4 v11, 0x7

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 164
    .local v11, alarmTime:J
    const/16 v34, 0x2

    move-object v0, v7

    move/from16 v1, v34

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    .line 167
    .local v34, state:I
    const-string v36, "AlertService"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "alarmTime:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v37

    move-wide v1, v11

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    .end local v11           #alarmTime:J
    const-string v12, " alertId:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " eventId:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " state: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " minutes:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " declined:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " beginTime:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " endTime:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object v0, v11

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, v36

    move-object v1, v11

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v13, Landroid/content/ContentValues;

    .end local v13           #alertId:J
    invoke-direct {v13}, Landroid/content/ContentValues;-><init>()V

    .line 174
    .local v13, values:Landroid/content/ContentValues;
    const/4 v11, -0x1

    .line 184
    .local v11, newState:I
    if-nez v21, :cond_8

    .line 186
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    move-object/from16 v0, v26

    move-object v1, v12

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v12

    if-nez v12, :cond_3

    .line 187
    add-int/lit8 v10, v10, 0x1

    .line 190
    :cond_3
    if-nez v34, :cond_13

    .line 191
    const/4 v11, 0x1

    .line 192
    add-int/lit8 v12, v33, 0x1

    .line 197
    .end local v33           #numFired:I
    .local v12, numFired:I
    :try_start_1
    const-string v14, "receivedTime"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    .end local v21           #declined:Z
    move-object v0, v13

    move-object v1, v14

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v14, v12

    .line 204
    .end local v12           #numFired:I
    .restart local v14       #numFired:I
    :goto_4
    const/4 v12, -0x1

    if-eq v11, v12, :cond_12

    .line 205
    :try_start_2
    const-string v12, "state"

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object v0, v13

    move-object v1, v12

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 206
    move v11, v11

    .line 209
    .end local v34           #state:I
    .local v11, state:I
    :goto_5
    const/4 v12, 0x1

    if-ne v11, v12, :cond_4

    .line 212
    const-string v12, "notifyTime"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v21

    move-object v0, v13

    move-object v1, v12

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 216
    :cond_4
    invoke-virtual {v13}, Landroid/content/ContentValues;->size()I

    move-result v12

    if-lez v12, :cond_5

    const/4 v12, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move-object v1, v15

    move-object v2, v13

    move-object v3, v12

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 218
    :cond_5
    const/4 v12, 0x1

    if-eq v11, v12, :cond_9

    move/from16 v33, v14

    .line 219
    .end local v14           #numFired:I
    .restart local v33       #numFired:I
    goto/16 :goto_1

    .line 156
    .end local v11           #state:I
    .end local v15           #alertUri:Landroid/net/Uri;
    .end local v16           #beginTime:J
    .end local v22           #endTime:J
    .end local v35           #status:I
    .local v13, alertId:J
    :cond_6
    const/4 v11, 0x0

    goto/16 :goto_2

    .line 158
    .restart local v35       #status:I
    :cond_7
    const/4 v11, 0x0

    move/from16 v21, v11

    goto/16 :goto_3

    .line 200
    .local v11, newState:I
    .local v13, values:Landroid/content/ContentValues;
    .restart local v15       #alertUri:Landroid/net/Uri;
    .restart local v16       #beginTime:J
    .restart local v21       #declined:Z
    .restart local v22       #endTime:J
    .restart local v34       #state:I
    :cond_8
    const/4 v11, 0x2

    move/from16 v14, v33

    .end local v33           #numFired:I
    .restart local v14       #numFired:I
    goto :goto_4

    .line 225
    .end local v21           #declined:Z
    .end local v34           #state:I
    .local v11, state:I
    :cond_9
    packed-switch v35, :pswitch_data_0

    .line 233
    :pswitch_0
    const/4 v11, 0x0

    .line 238
    .local v11, newStatus:I
    :goto_6
    if-eqz v8, :cond_a

    cmp-long v12, v30, v16

    if-gtz v12, :cond_11

    move/from16 v0, v32

    move v1, v11

    if-ge v0, v1, :cond_11

    .line 241
    :cond_a
    move-object/from16 v8, v27

    .line 242
    move-object/from16 v9, v28

    .line 243
    move-wide/from16 v12, v16

    .line 244
    .end local v13           #values:Landroid/content/ContentValues;
    .end local v30           #notificationEventBegin:J
    .local v12, notificationEventBegin:J
    move v11, v11

    .end local v32           #notificationEventStatus:I
    .local v11, notificationEventStatus:I
    move/from16 v39, v11

    .end local v11           #notificationEventStatus:I
    .local v39, notificationEventStatus:I
    move-wide/from16 v40, v12

    .end local v12           #notificationEventBegin:J
    .local v40, notificationEventBegin:J
    move-wide/from16 v11, v40

    .end local v40           #notificationEventBegin:J
    .local v11, notificationEventBegin:J
    move/from16 v13, v39

    .end local v39           #notificationEventStatus:I
    .local v13, notificationEventStatus:I
    :goto_7
    move/from16 v33, v14

    .end local v14           #numFired:I
    .restart local v33       #numFired:I
    move/from16 v32, v13

    .end local v13           #notificationEventStatus:I
    .restart local v32       #notificationEventStatus:I
    move-wide/from16 v30, v11

    .line 246
    .end local v11           #notificationEventBegin:J
    .restart local v30       #notificationEventBegin:J
    goto/16 :goto_1

    .line 227
    .end local v33           #numFired:I
    .local v11, state:I
    .local v13, values:Landroid/content/ContentValues;
    .restart local v14       #numFired:I
    :pswitch_1
    const/4 v11, 0x2

    .line 228
    .local v11, newStatus:I
    goto :goto_6

    .line 230
    .local v11, state:I
    :pswitch_2
    const/4 v11, 0x1

    .line 231
    .local v11, newStatus:I
    goto :goto_6

    .line 248
    .end local v11           #newStatus:I
    .end local v13           #values:Landroid/content/ContentValues;
    .end local v14           #numFired:I
    .end local v15           #alertUri:Landroid/net/Uri;
    .end local v16           #beginTime:J
    .end local v22           #endTime:J
    .end local v24           #eventId:J
    .end local v27           #eventName:Ljava/lang/String;
    .end local v28           #location:Ljava/lang/String;
    .end local v29           #minutes:I
    .end local v35           #status:I
    .restart local v33       #numFired:I
    :cond_b
    if-eqz v7, :cond_c

    .line 249
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 253
    :cond_c
    invoke-static/range {p0 .. p0}, Lcom/android/calendar/CalendarPreferenceActivity;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 254
    .local v7, prefs:Landroid/content/SharedPreferences;
    const-string v11, "preferences_alerts_type"

    const-string v12, "1"

    invoke-interface {v7, v11, v12}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 258
    .local v12, reminderType:Ljava/lang/String;
    const-string v11, "2"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 260
    const-string p0, "AlertService"

    .end local p0           #context:Landroid/content/Context;
    const-string v7, "alert preference is OFF"

    .end local v7           #prefs:Landroid/content/SharedPreferences;
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    const/16 p0, 0x1

    goto/16 :goto_0

    .line 248
    .end local v12           #reminderType:Ljava/lang/String;
    .local v7, alertCursor:Landroid/database/Cursor;
    .restart local p0       #context:Landroid/content/Context;
    :catchall_0
    move-exception p0

    move-object/from16 v8, p0

    move/from16 p0, v33

    .end local v8           #notificationEventName:Ljava/lang/String;
    .end local v33           #numFired:I
    .local p0, numFired:I
    :goto_8
    if-eqz v7, :cond_d

    .line 249
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_d
    throw v8

    .line 265
    .local v7, prefs:Landroid/content/SharedPreferences;
    .restart local v8       #notificationEventName:Ljava/lang/String;
    .restart local v12       #reminderType:Ljava/lang/String;
    .restart local v33       #numFired:I
    .local p0, context:Landroid/content/Context;
    :cond_e
    if-nez v33, :cond_f

    const/4 v11, 0x1

    .line 266
    .local v11, quietUpdate:Z
    :goto_9
    if-lez v33, :cond_10

    const-string v13, "0"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    .end local v12           #reminderType:Ljava/lang/String;
    if-eqz v12, :cond_10

    const/4 v12, 0x1

    .line 268
    .local v12, highPriority:Z
    :goto_a
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move v4, v10

    move v5, v11

    move v6, v12

    invoke-static/range {v0 .. v6}, Lcom/android/calendar/AlertService;->postNotification(Landroid/content/Context;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;IZZ)V

    .line 271
    const/16 p0, 0x1

    goto/16 :goto_0

    .line 265
    .end local v11           #quietUpdate:Z
    .local v12, reminderType:Ljava/lang/String;
    :cond_f
    const/4 v11, 0x0

    goto :goto_9

    .line 266
    .end local v12           #reminderType:Ljava/lang/String;
    .restart local v11       #quietUpdate:Z
    :cond_10
    const/4 v12, 0x0

    goto :goto_a

    .line 248
    .end local v33           #numFired:I
    .local v7, alertCursor:Landroid/database/Cursor;
    .local v11, newState:I
    .local v12, numFired:I
    .restart local v13       #values:Landroid/content/ContentValues;
    .restart local v15       #alertUri:Landroid/net/Uri;
    .restart local v16       #beginTime:J
    .restart local v22       #endTime:J
    .restart local v24       #eventId:J
    .restart local v27       #eventName:Ljava/lang/String;
    .restart local v28       #location:Ljava/lang/String;
    .restart local v29       #minutes:I
    .restart local v34       #state:I
    .restart local v35       #status:I
    :catchall_1
    move-exception p0

    move-object/from16 v8, p0

    move/from16 p0, v12

    .end local v12           #numFired:I
    .local p0, numFired:I
    goto :goto_8

    .end local v11           #newState:I
    .end local v34           #state:I
    .restart local v14       #numFired:I
    .local p0, context:Landroid/content/Context;
    :catchall_2
    move-exception p0

    move-object/from16 v8, p0

    move/from16 p0, v14

    .end local v14           #numFired:I
    .local p0, numFired:I
    goto :goto_8

    .local v11, newStatus:I
    .restart local v14       #numFired:I
    .local p0, context:Landroid/content/Context;
    :cond_11
    move/from16 v13, v32

    .end local v32           #notificationEventStatus:I
    .local v13, notificationEventStatus:I
    move-wide/from16 v11, v30

    .end local v30           #notificationEventBegin:J
    .local v11, notificationEventBegin:J
    goto :goto_7

    .local v11, newState:I
    .local v13, values:Landroid/content/ContentValues;
    .restart local v30       #notificationEventBegin:J
    .restart local v32       #notificationEventStatus:I
    .restart local v34       #state:I
    :cond_12
    move/from16 v11, v34

    .end local v34           #state:I
    .local v11, state:I
    goto/16 :goto_5

    .end local v14           #numFired:I
    .local v11, newState:I
    .restart local v21       #declined:Z
    .restart local v33       #numFired:I
    .restart local v34       #state:I
    :cond_13
    move/from16 v14, v33

    .end local v33           #numFired:I
    .restart local v14       #numFired:I
    goto/16 :goto_4

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 400
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 374
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "AlertService"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 376
    .local v0, thread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 378
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/calendar/AlertService;->mServiceLooper:Landroid/os/Looper;

    .line 379
    new-instance v1, Lcom/android/calendar/AlertService$ServiceHandler;

    iget-object v2, p0, Lcom/android/calendar/AlertService;->mServiceLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/android/calendar/AlertService$ServiceHandler;-><init>(Lcom/android/calendar/AlertService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/calendar/AlertService;->mServiceHandler:Lcom/android/calendar/AlertService$ServiceHandler;

    .line 380
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/calendar/AlertService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 396
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 384
    if-eqz p1, :cond_0

    .line 385
    iget-object v1, p0, Lcom/android/calendar/AlertService;->mServiceHandler:Lcom/android/calendar/AlertService$ServiceHandler;

    invoke-virtual {v1}, Lcom/android/calendar/AlertService$ServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 386
    .local v0, msg:Landroid/os/Message;
    iput p3, v0, Landroid/os/Message;->arg1:I

    .line 387
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 388
    iget-object v1, p0, Lcom/android/calendar/AlertService;->mServiceHandler:Lcom/android/calendar/AlertService$ServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/calendar/AlertService$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 390
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    const/4 v1, 0x3

    return v1
.end method

.method processMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const-string v5, "AlertService"

    .line 94
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    .line 98
    .local v1, bundle:Landroid/os/Bundle;
    const-string v2, "action"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, action:Ljava/lang/String;
    const-string v2, "AlertService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "alarmTime"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 106
    :cond_0
    invoke-direct {p0}, Lcom/android/calendar/AlertService;->doTimeChanged()V

    .line 117
    :goto_0
    return-void

    .line 110
    :cond_1
    const-string v2, "android.intent.action.EVENT_REMINDER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 112
    const-string v2, "AlertService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 116
    :cond_2
    invoke-static {p0}, Lcom/android/calendar/AlertService;->updateAlertNotification(Landroid/content/Context;)Z

    goto :goto_0
.end method
