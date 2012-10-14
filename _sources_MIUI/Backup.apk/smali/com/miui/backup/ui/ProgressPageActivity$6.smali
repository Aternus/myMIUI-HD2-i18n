.class Lcom/miui/backup/ui/ProgressPageActivity$6;
.super Ljava/lang/Object;
.source "ProgressPageActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/backup/ui/ProgressPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/backup/ui/ProgressPageActivity;


# direct methods
.method constructor <init>(Lcom/miui/backup/ui/ProgressPageActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 390
    iput-object p1, p0, Lcom/miui/backup/ui/ProgressPageActivity$6;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "className"
    .parameter "service"

    .prologue
    .line 397
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity$6;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    check-cast p2, Lcom/miui/backup/BackupService$LocalBinder;

    .end local p2
    invoke-virtual {p2}, Lcom/miui/backup/BackupService$LocalBinder;->getService()Lcom/miui/backup/BackupService;

    move-result-object v1

    #setter for: Lcom/miui/backup/ui/ProgressPageActivity;->mService:Lcom/miui/backup/BackupService;
    invoke-static {v0, v1}, Lcom/miui/backup/ui/ProgressPageActivity;->access$002(Lcom/miui/backup/ui/ProgressPageActivity;Lcom/miui/backup/BackupService;)Lcom/miui/backup/BackupService;

    .line 398
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity$6;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    #getter for: Lcom/miui/backup/ui/ProgressPageActivity;->mService:Lcom/miui/backup/BackupService;
    invoke-static {v0}, Lcom/miui/backup/ui/ProgressPageActivity;->access$000(Lcom/miui/backup/ui/ProgressPageActivity;)Lcom/miui/backup/BackupService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/backup/BackupService;->hasTask()Z

    move-result v0

    if-nez v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity$6;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    new-instance v1, Lcom/miui/backup/ui/ProgressPageActivity$6$1;

    invoke-direct {v1, p0}, Lcom/miui/backup/ui/ProgressPageActivity$6$1;-><init>(Lcom/miui/backup/ui/ProgressPageActivity$6;)V

    invoke-virtual {v0, v1}, Lcom/miui/backup/ui/ProgressPageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 425
    :goto_0
    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity$6;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    #getter for: Lcom/miui/backup/ui/ProgressPageActivity;->isBackground:Z
    invoke-static {v0}, Lcom/miui/backup/ui/ProgressPageActivity;->access$400(Lcom/miui/backup/ui/ProgressPageActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity$6;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    #getter for: Lcom/miui/backup/ui/ProgressPageActivity;->mService:Lcom/miui/backup/BackupService;
    invoke-static {v0}, Lcom/miui/backup/ui/ProgressPageActivity;->access$000(Lcom/miui/backup/ui/ProgressPageActivity;)Lcom/miui/backup/BackupService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/backup/BackupService;->switchToBackground()V

    .line 423
    :goto_1
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity$6;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    iget-object v1, p0, Lcom/miui/backup/ui/ProgressPageActivity$6;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    #getter for: Lcom/miui/backup/ui/ProgressPageActivity;->mService:Lcom/miui/backup/BackupService;
    invoke-static {v1}, Lcom/miui/backup/ui/ProgressPageActivity;->access$000(Lcom/miui/backup/ui/ProgressPageActivity;)Lcom/miui/backup/BackupService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/backup/BackupService;->getTaskCmdIndex()I

    move-result v1

    #setter for: Lcom/miui/backup/ui/ProgressPageActivity;->mCurrCmdIndex:I
    invoke-static {v0, v1}, Lcom/miui/backup/ui/ProgressPageActivity;->access$502(Lcom/miui/backup/ui/ProgressPageActivity;I)I

    .line 424
    const-string v0, "ProgressPageActivity"

    const-string v1, "service bounded "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity$6;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    #getter for: Lcom/miui/backup/ui/ProgressPageActivity;->mService:Lcom/miui/backup/BackupService;
    invoke-static {v0}, Lcom/miui/backup/ui/ProgressPageActivity;->access$000(Lcom/miui/backup/ui/ProgressPageActivity;)Lcom/miui/backup/BackupService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/backup/BackupService;->switchToForeground()V

    goto :goto_1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "className"

    .prologue
    .line 432
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity$6;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    const/4 v1, 0x0

    #setter for: Lcom/miui/backup/ui/ProgressPageActivity;->mService:Lcom/miui/backup/BackupService;
    invoke-static {v0, v1}, Lcom/miui/backup/ui/ProgressPageActivity;->access$002(Lcom/miui/backup/ui/ProgressPageActivity;Lcom/miui/backup/BackupService;)Lcom/miui/backup/BackupService;

    .line 433
    const-string v0, "ProgressPageActivity"

    const-string v1, "service unbounded "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    return-void
.end method
