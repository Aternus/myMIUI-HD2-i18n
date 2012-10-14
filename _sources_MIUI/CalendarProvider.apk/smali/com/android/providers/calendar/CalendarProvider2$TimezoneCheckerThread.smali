.class Lcom/android/providers/calendar/CalendarProvider2$TimezoneCheckerThread;
.super Ljava/lang/Thread;
.source "CalendarProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/CalendarProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimezoneCheckerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/calendar/CalendarProvider2;


# direct methods
.method private constructor <init>(Lcom/android/providers/calendar/CalendarProvider2;)V
    .locals 0
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarProvider2$TimezoneCheckerThread;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/providers/calendar/CalendarProvider2;Lcom/android/providers/calendar/CalendarProvider2$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 441
    invoke-direct {p0, p1}, Lcom/android/providers/calendar/CalendarProvider2$TimezoneCheckerThread;-><init>(Lcom/android/providers/calendar/CalendarProvider2;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x6

    const-string v5, "CalendarProvider2"

    .line 444
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 446
    :try_start_0
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2$TimezoneCheckerThread;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    invoke-virtual {v2}, Lcom/android/providers/calendar/CalendarProvider2;->doUpdateTimezoneDependentFields()V

    .line 447
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2$TimezoneCheckerThread;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    const-wide/16 v3, -0x1

    #calls: Lcom/android/providers/calendar/CalendarProvider2;->triggerAppWidgetUpdate(J)V
    invoke-static {v2, v3, v4}, Lcom/android/providers/calendar/CalendarProvider2;->access$600(Lcom/android/providers/calendar/CalendarProvider2;J)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 448
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 449
    .local v0, e:Landroid/database/SQLException;
    const-string v2, "CalendarProvider2"

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 450
    const-string v2, "CalendarProvider2"

    const-string v2, "doUpdateTimezoneDependentFields() failed"

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 455
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/providers/calendar/CalendarProvider2$TimezoneCheckerThread;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    iget-object v2, v2, Lcom/android/providers/calendar/CalendarProvider2;->mMetaData:Lcom/android/providers/calendar/MetaData;

    invoke-virtual {v2}, Lcom/android/providers/calendar/MetaData;->clearInstanceRange()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 456
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 457
    .local v1, e2:Landroid/database/SQLException;
    const-string v2, "CalendarProvider2"

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 458
    const-string v2, "CalendarProvider2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "clearInstanceRange() also failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
