.class Lcom/miui/backup/BackupActivity$2;
.super Ljava/lang/Object;
.source "BackupActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/backup/BackupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/backup/BackupActivity;


# direct methods
.method constructor <init>(Lcom/miui/backup/BackupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/miui/backup/BackupActivity$2;->this$0:Lcom/miui/backup/BackupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 94
    iget-object v0, p0, Lcom/miui/backup/BackupActivity$2;->this$0:Lcom/miui/backup/BackupActivity;

    check-cast p2, Lcom/miui/backup/BackupService$LocalBinder;

    invoke-virtual {p2}, Lcom/miui/backup/BackupService$LocalBinder;->getService()Lcom/miui/backup/BackupService;

    move-result-object v1

    #setter for: Lcom/miui/backup/BackupActivity;->mLocalService:Lcom/miui/backup/BackupService;
    invoke-static {v0, v1}, Lcom/miui/backup/BackupActivity;->access$002(Lcom/miui/backup/BackupActivity;Lcom/miui/backup/BackupService;)Lcom/miui/backup/BackupService;

    .line 95
    const-string v0, "BackupActivity"

    const-string v1, "local service bounded "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object v0, p0, Lcom/miui/backup/BackupActivity$2;->this$0:Lcom/miui/backup/BackupActivity;

    #getter for: Lcom/miui/backup/BackupActivity;->mLocalService:Lcom/miui/backup/BackupService;
    invoke-static {v0}, Lcom/miui/backup/BackupActivity;->access$000(Lcom/miui/backup/BackupActivity;)Lcom/miui/backup/BackupService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/backup/BackupService;->isTaskRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/backup/BackupActivity$2;->this$0:Lcom/miui/backup/BackupActivity;

    invoke-virtual {v1}, Lcom/miui/backup/BackupActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/miui/backup/ui/ProgressPageActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 98
    iget-object v1, p0, Lcom/miui/backup/BackupActivity$2;->this$0:Lcom/miui/backup/BackupActivity;

    invoke-virtual {v1, v0}, Lcom/miui/backup/BackupActivity;->startActivity(Landroid/content/Intent;)V

    .line 100
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/miui/backup/BackupActivity$2;->this$0:Lcom/miui/backup/BackupActivity;

    const/4 v1, 0x0

    #setter for: Lcom/miui/backup/BackupActivity;->mLocalService:Lcom/miui/backup/BackupService;
    invoke-static {v0, v1}, Lcom/miui/backup/BackupActivity;->access$002(Lcom/miui/backup/BackupActivity;Lcom/miui/backup/BackupService;)Lcom/miui/backup/BackupService;

    .line 104
    const-string v0, "BackupActivity"

    const-string v1, "local service unbounded "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
.end method
