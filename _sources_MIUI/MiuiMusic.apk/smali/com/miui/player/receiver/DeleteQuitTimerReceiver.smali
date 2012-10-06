.class public Lcom/miui/player/receiver/DeleteQuitTimerReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DeleteQuitTimerReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 14
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 15
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.miui.music.quit"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16
    invoke-static {p1}, Lcom/miui/player/helper/SleepModeManager;->deleteTimer(Landroid/content/Context;)V

    .line 18
    :cond_0
    return-void
.end method
