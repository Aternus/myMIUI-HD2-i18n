.class public Lcom/android/deskclock/AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "context"

    .prologue
    .line 155
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/app/NotificationManager;

    return-object p0
.end method

.method private updateNotification(Landroid/content/Context;Lcom/android/deskclock/Alarm;I)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 160
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmReceiver;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    .line 163
    if-nez p2, :cond_0

    .line 190
    :goto_0
    return-void

    .line 171
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/deskclock/SetAlarm;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 172
    const-string v2, "alarm_id"

    iget v3, p2, Lcom/android/deskclock/Alarm;->id:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 173
    iget v2, p2, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {p1, v2, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 178
    invoke-virtual {p2, p1}, Lcom/android/deskclock/Alarm;->getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 179
    new-instance v3, Landroid/app/Notification;

    const v4, 0x7f020031

    iget-wide v5, p2, Lcom/android/deskclock/Alarm;->time:J

    invoke-direct {v3, v4, v2, v5, v6}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 181
    const v4, 0x7f070012

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v2, v4, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 184
    iget v1, v3, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v3, Landroid/app/Notification;->flags:I

    .line 188
    iget v1, p2, Lcom/android/deskclock/Alarm;->id:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 189
    iget v1, p2, Lcom/android/deskclock/Alarm;->id:I

    invoke-virtual {v0, v1, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    const/4 v8, 0x0

    const-class v11, Lcom/android/deskclock/AlarmAlert;

    const-string v10, "com.android.deskclock.ALARM_ALERT"

    const-string v9, "intent.extra.alarm"

    .line 42
    const-string v0, "alarm_killed"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    const-string v0, "intent.extra.alarm"

    invoke-virtual {p2, v9}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/Alarm;

    const-string v1, "alarm_killed_timeout"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/deskclock/AlarmReceiver;->updateNotification(Landroid/content/Context;Lcom/android/deskclock/Alarm;I)V

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 48
    :cond_1
    const-string v0, "cancel_snooze"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 49
    const-wide/16 v0, -0x1

    invoke-static {p1, v2, v0, v1}, Lcom/android/deskclock/Alarms;->saveSnoozeAlert(Landroid/content/Context;IJ)V

    goto :goto_0

    .line 51
    :cond_2
    const-string v0, "com.android.deskclock.ALARM_ALERT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 61
    const-string v1, "intent.extra.alarm_raw"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    .line 62
    if-eqz v1, :cond_7

    .line 63
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 64
    array-length v2, v1

    invoke-virtual {v0, v1, v8, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 65
    invoke-virtual {v0, v8}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 66
    sget-object v1, Lcom/android/deskclock/Alarm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/deskclock/Alarm;

    move-object v1, v0

    .line 69
    :goto_1
    if-nez v1, :cond_3

    .line 70
    const-string v0, "Failed to parse the alarm from the intent"

    invoke-static {v0}, Lcom/android/deskclock/Log;->wtf(Ljava/lang/String;)V

    .line 72
    invoke-static {p1}, Lcom/android/deskclock/Alarms;->setNextAlert(Landroid/content/Context;)V

    goto :goto_0

    .line 77
    :cond_3
    iget v0, v1, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {p1, v0}, Lcom/android/deskclock/Alarms;->disableSnoozeAlert(Landroid/content/Context;I)V

    .line 79
    iget-object v0, v1, Lcom/android/deskclock/Alarm;->daysOfWeek:Lcom/android/deskclock/Alarm$DaysOfWeek;

    invoke-virtual {v0}, Lcom/android/deskclock/Alarm$DaysOfWeek;->isRepeatSet()Z

    move-result v0

    if-nez v0, :cond_4

    .line 80
    iget v0, v1, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {p1, v0, v8}, Lcom/android/deskclock/Alarms;->enableAlarm(Landroid/content/Context;IZ)V

    .line 89
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recevied alarm set for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v4, v1, Lcom/android/deskclock/Alarm;->time:J

    invoke-static {v4, v5}, Lcom/android/deskclock/Log;->formatTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    .line 93
    iget-wide v4, v1, Lcom/android/deskclock/Alarm;->time:J

    const-wide/32 v6, 0x1b7740

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    .line 94
    const-string v0, "Ignoring stale alarm"

    invoke-static {v0}, Lcom/android/deskclock/Log;->v(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 84
    :cond_4
    invoke-static {p1}, Lcom/android/deskclock/Alarms;->setNextAlert(Landroid/content/Context;)V

    goto :goto_2

    .line 100
    :cond_5
    invoke-static {p1}, Lcom/android/deskclock/AlarmAlertWakeLock;->acquireCpuWakeLock(Landroid/content/Context;)V

    .line 103
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 107
    const-class v0, Lcom/android/deskclock/AlarmAlert;

    .line 108
    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 110
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 112
    const-class v0, Lcom/android/deskclock/AlarmAlertFullScreen;

    .line 116
    :goto_3
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.deskclock.ALARM_ALERT"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    const-string v3, "intent.extra.alarm"

    invoke-virtual {v2, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 118
    invoke-virtual {p1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 123
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/deskclock/AlarmAlert;

    invoke-direct {v2, p1, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 124
    const-string v3, "intent.extra.alarm"

    invoke-virtual {v2, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 125
    iget v3, v1, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {p1, v3, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 130
    invoke-virtual {v1, p1}, Lcom/android/deskclock/Alarm;->getLabelOrDefault(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 131
    new-instance v4, Landroid/app/Notification;

    const v5, 0x7f020031

    iget-wide v6, v1, Lcom/android/deskclock/Alarm;->time:J

    invoke-direct {v4, v5, v3, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 133
    const v5, 0x7f070029

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, v3, v5, v2}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 136
    iget v2, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v2, v2, 0x3

    iput v2, v4, Landroid/app/Notification;->flags:I

    .line 138
    iget v2, v4, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v4, Landroid/app/Notification;->defaults:I

    .line 142
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    const-string v0, "intent.extra.alarm"

    invoke-virtual {v2, v9, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 144
    const/high16 v0, 0x1004

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 146
    iget v0, v1, Lcom/android/deskclock/Alarm;->id:I

    invoke-static {p1, v0, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v4, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    .line 150
    invoke-direct {p0, p1}, Lcom/android/deskclock/AlarmReceiver;->getNotificationManager(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    .line 151
    iget v1, v1, Lcom/android/deskclock/Alarm;->id:I

    invoke-virtual {v0, v1, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    :cond_6
    move-object v0, v11

    goto :goto_3

    :cond_7
    move-object v1, v0

    goto/16 :goto_1
.end method
