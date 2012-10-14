.class Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;
.super Ljava/lang/Thread;
.source "CalendarProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/CalendarProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmScheduler"
.end annotation


# instance fields
.field mRemoveAlarms:Z

.field final synthetic this$0:Lcom/android/providers/calendar/CalendarProvider2;


# direct methods
.method public constructor <init>(Lcom/android/providers/calendar/CalendarProvider2;Z)V
    .locals 0
    .parameter
    .parameter "removeAlarms"

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 219
    iput-boolean p2, p0, Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;->mRemoveAlarms:Z

    .line 220
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const-class v3, Lcom/android/providers/calendar/EmptyService;

    const-string v5, "CalendarProvider2"

    .line 224
    iget-object v0, p0, Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    invoke-virtual {v0}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 230
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/providers/calendar/EmptyService;

    invoke-direct {v1, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 235
    :goto_0
    const-wide/16 v1, 0x1388

    :try_start_0
    invoke-static {v1, v2}, Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    :cond_0
    :goto_1
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    #getter for: Lcom/android/providers/calendar/CalendarProvider2;->mAlarmLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/providers/calendar/CalendarProvider2;->access$000(Lcom/android/providers/calendar/CalendarProvider2;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 244
    :try_start_1
    iget-boolean v2, p0, Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;->mRemoveAlarms:Z

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/providers/calendar/CalendarProvider2;->access$100()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    const/4 v2, 0x1

    :goto_2
    iput-boolean v2, p0, Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;->mRemoveAlarms:Z

    .line 245
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/providers/calendar/CalendarProvider2;->access$202(Z)Z

    .line 246
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/providers/calendar/CalendarProvider2;->access$102(Z)Z

    .line 247
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 250
    const/16 v1, 0xa

    :try_start_2
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 251
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    iget-boolean v2, p0, Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;->mRemoveAlarms:Z

    #calls: Lcom/android/providers/calendar/CalendarProvider2;->runScheduleNextAlarm(Z)V
    invoke-static {v1, v2}, Lcom/android/providers/calendar/CalendarProvider2;->access$300(Lcom/android/providers/calendar/CalendarProvider2;Z)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 259
    :cond_2
    :goto_3
    iget-object v1, p0, Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    #getter for: Lcom/android/providers/calendar/CalendarProvider2;->mAlarmLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/providers/calendar/CalendarProvider2;->access$000(Lcom/android/providers/calendar/CalendarProvider2;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 260
    :try_start_3
    invoke-static {}, Lcom/android/providers/calendar/CalendarProvider2;->access$200()Z

    move-result v2

    if-nez v2, :cond_4

    .line 261
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/providers/calendar/CalendarProvider2;->access$402(Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;)Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;

    .line 262
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/providers/calendar/CalendarProvider2;->access$202(Z)Z

    .line 263
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/providers/calendar/CalendarProvider2;->access$102(Z)Z

    .line 264
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/providers/calendar/EmptyService;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 265
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    .line 236
    :catch_0
    move-exception v1

    .line 237
    const-string v2, "CalendarProvider2"

    const/4 v2, 0x3

    invoke-static {v5, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 238
    const-string v2, "CalendarProvider2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AlarmScheduler woke up early: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move v2, v4

    .line 244
    goto :goto_2

    .line 247
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 252
    :catch_1
    move-exception v1

    .line 253
    const-string v2, "CalendarProvider2"

    const/4 v2, 0x6

    invoke-static {v5, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 254
    const-string v2, "CalendarProvider2"

    const-string v2, "runScheduleNextAlarm() failed"

    invoke-static {v5, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 267
    :cond_4
    :try_start_5
    monitor-exit v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method
