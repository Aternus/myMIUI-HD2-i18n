.class public Lcom/android/providers/calendar/CalendarAppWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "CalendarAppWidgetProvider.java"


# static fields
.field private static sInstance:Lcom/android/providers/calendar/CalendarAppWidgetProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    return-void
.end method

.method static getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 3
    .parameter "context"

    .prologue
    .line 137
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.providers.calendar"

    const-string v2, "com.android.providers.calendar.CalendarAppWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static declared-synchronized getInstance()Lcom/android/providers/calendar/CalendarAppWidgetProvider;
    .locals 2

    .prologue
    .line 61
    const-class v0, Lcom/android/providers/calendar/CalendarAppWidgetProvider;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/providers/calendar/CalendarAppWidgetProvider;->sInstance:Lcom/android/providers/calendar/CalendarAppWidgetProvider;

    if-nez v1, :cond_0

    .line 62
    new-instance v1, Lcom/android/providers/calendar/CalendarAppWidgetProvider;

    invoke-direct {v1}, Lcom/android/providers/calendar/CalendarAppWidgetProvider;-><init>()V

    sput-object v1, Lcom/android/providers/calendar/CalendarAppWidgetProvider;->sInstance:Lcom/android/providers/calendar/CalendarAppWidgetProvider;

    .line 64
    :cond_0
    sget-object v1, Lcom/android/providers/calendar/CalendarAppWidgetProvider;->sInstance:Lcom/android/providers/calendar/CalendarAppWidgetProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 61
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static getUpdateIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 244
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.providers.calendar.APPWIDGET_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 245
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/providers/calendar/CalendarAppWidgetProvider;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 246
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private hasInstances(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    .line 126
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v1

    .line 127
    .local v1, appWidgetManager:Landroid/appwidget/AppWidgetManager;
    invoke-static {p1}, Lcom/android/providers/calendar/CalendarAppWidgetProvider;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    .line 128
    .local v2, thisAppWidget:Landroid/content/ComponentName;
    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v0

    .line 129
    .local v0, appWidgetIds:[I
    array-length v3, v0

    if-lez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private performUpdate(Landroid/content/Context;[I[JZ)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/32 v7, 0xea60

    .line 197
    sget-object v0, Lcom/android/providers/calendar/AppWidgetShared;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 201
    if-eqz p4, :cond_0

    sget-wide v3, Lcom/android/providers/calendar/AppWidgetShared;->sLastRequest:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 202
    sget-wide v3, Lcom/android/providers/calendar/AppWidgetShared;->sLastRequest:J

    sub-long v3, v1, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    .line 203
    cmp-long v3, v3, v7

    if-gez v3, :cond_0

    .line 205
    monitor-exit v0

    .line 234
    :goto_0
    return-void

    .line 210
    :cond_0
    sget-object v3, Lcom/android/providers/calendar/AppWidgetShared;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/providers/calendar/AppWidgetShared;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_2

    .line 213
    :cond_1
    const-string v3, "power"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 215
    const/4 v3, 0x1

    const-string v4, "CalendarAppWidgetProvider"

    invoke-virtual {p0, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    sput-object v3, Lcom/android/providers/calendar/AppWidgetShared;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 217
    sget-object v3, Lcom/android/providers/calendar/AppWidgetShared;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 218
    sget-object v3, Lcom/android/providers/calendar/AppWidgetShared;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/32 v4, 0xea60

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 222
    :cond_2
    sput-wide v1, Lcom/android/providers/calendar/AppWidgetShared;->sLastRequest:J

    .line 223
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/providers/calendar/AppWidgetShared;->sUpdateRequested:Z

    .line 227
    invoke-static {p2}, Lcom/android/providers/calendar/AppWidgetShared;->mergeAppWidgetIdsLocked([I)V

    .line 228
    invoke-static {p3}, Lcom/android/providers/calendar/AppWidgetShared;->mergeChangedEventIdsLocked([J)V

    .line 231
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/providers/calendar/CalendarAppWidgetService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    invoke-virtual {p1, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 233
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    .line 102
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 103
    invoke-static {p1}, Lcom/android/providers/calendar/CalendarAppWidgetProvider;->getUpdateIntent(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 104
    invoke-virtual {p0, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 108
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/providers/calendar/TimeChangeReceiver;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 112
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 90
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/providers/calendar/TimeChangeReceiver;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 94
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 74
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.android.providers.calendar.APPWIDGET_UPDATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    const/4 v1, 0x0

    invoke-direct {p0, p1, v2, v2, v1}, Lcom/android/providers/calendar/CalendarAppWidgetProvider;->performUpdate(Landroid/content/Context;[I[JZ)V

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 2
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 119
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p3, v0, v1}, Lcom/android/providers/calendar/CalendarAppWidgetProvider;->performUpdate(Landroid/content/Context;[I[JZ)V

    .line 120
    return-void
.end method

.method providerUpdated(Landroid/content/Context;J)V
    .locals 4
    .parameter "context"
    .parameter "changedEventId"

    .prologue
    const/4 v3, 0x0

    .line 149
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarAppWidgetProvider;->hasInstances(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 151
    const/4 v0, 0x0

    .line 152
    .local v0, changedEventIds:[J
    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    if-eqz v1, :cond_0

    .line 153
    const/4 v1, 0x1

    new-array v0, v1, [J

    .end local v0           #changedEventIds:[J
    aput-wide p2, v0, v3

    .line 156
    .restart local v0       #changedEventIds:[J
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/android/providers/calendar/CalendarAppWidgetProvider;->performUpdate(Landroid/content/Context;[I[JZ)V

    .line 158
    .end local v0           #changedEventIds:[J
    :cond_1
    return-void
.end method

.method timeUpdated(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "considerIgnore"

    .prologue
    const/4 v1, 0x0

    .line 170
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarAppWidgetProvider;->hasInstances(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-direct {p0, p1, v1, v1, p2}, Lcom/android/providers/calendar/CalendarAppWidgetProvider;->performUpdate(Landroid/content/Context;[I[JZ)V

    .line 173
    :cond_0
    return-void
.end method
