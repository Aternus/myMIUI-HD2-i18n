.class public Lcom/miui/milk/ui/AutoBackupInitReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AutoBackupInitReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 14
    invoke-static {p1, v2}, Lcom/miui/milk/common/AutoBackup;->setNextBackup(Landroid/content/Context;Z)V

    .line 15
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 16
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 18
    invoke-static {p1, v2}, Lcom/miui/milk/common/AutoBackup;->setAutoBackupBreak(Landroid/content/Context;Z)V

    .line 21
    :cond_0
    return-void
.end method
