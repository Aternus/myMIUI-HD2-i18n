.class public Lcom/android/deskclock/AlarmInitReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlarmInitReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 36
    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    invoke-static {p1, v1, v2, v3}, Lcom/android/deskclock/Alarms;->saveSnoozeAlert(Landroid/content/Context;IJ)V

    .line 39
    :cond_0
    invoke-static {p1}, Lcom/android/deskclock/Alarms;->disableExpiredAlarms(Landroid/content/Context;)V

    .line 40
    invoke-static {p1}, Lcom/android/deskclock/Alarms;->setNextAlert(Landroid/content/Context;)V

    .line 41
    return-void
.end method
