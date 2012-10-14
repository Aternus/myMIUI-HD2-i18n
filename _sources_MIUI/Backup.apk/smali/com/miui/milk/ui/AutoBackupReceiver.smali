.class public Lcom/miui/milk/ui/AutoBackupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AutoBackupReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 21
    const-string v1, "com.miui.backup.AUTO_BACKUP"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 22
    invoke-static {p1, v3}, Lcom/miui/milk/common/AutoBackup;->setNextBackup(Landroid/content/Context;Z)V

    .line 24
    invoke-static {p1}, Lcom/miui/milk/util/SysHelpers;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 26
    invoke-static {p1, v4}, Lcom/miui/milk/common/AutoBackup;->setAutoBackupBreak(Landroid/content/Context;Z)V

    :cond_0
    move v1, v4

    .line 30
    :goto_0
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/miui/milk/common/AutoBackup;->getAutoBackupBreak(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    .line 34
    :goto_1
    invoke-static {p1}, Lcom/miui/milk/util/AccountUtil;->getAccountInfo(Landroid/content/Context;)Lcom/miui/milk/util/AccountUtil$AccountInfo;

    move-result-object v1

    .line 35
    iget-object v1, v1, Lcom/miui/milk/util/AccountUtil$AccountInfo;->token:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-static {p1}, Lcom/miui/milk/util/SysHelpers;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 36
    invoke-static {p1, v3}, Lcom/miui/milk/common/AutoBackup;->setAutoBackupBreak(Landroid/content/Context;Z)V

    .line 37
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/milk/service/AutoBackupService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 39
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_0
.end method
