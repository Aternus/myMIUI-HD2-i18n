.class Lcom/miui/backup/ui/BaseSelectList$4;
.super Ljava/lang/Object;
.source "BaseSelectList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/backup/ui/BaseSelectList;->startExecution()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/backup/ui/BaseSelectList;

.field final synthetic val$appInfos:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/miui/backup/ui/BaseSelectList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/miui/backup/ui/BaseSelectList$4;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iput-object p2, p0, Lcom/miui/backup/ui/BaseSelectList$4;->val$appInfos:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 260
    iget-object v1, p0, Lcom/miui/backup/ui/BaseSelectList$4;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v2, p0, Lcom/miui/backup/ui/BaseSelectList$4;->val$appInfos:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/miui/backup/ui/BaseSelectList$4;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v3, v3, Lcom/miui/backup/ui/BaseSelectList;->mBackupRestoreDir:Ljava/io/File;

    iget-object v4, p0, Lcom/miui/backup/ui/BaseSelectList$4;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    invoke-virtual {v4}, Lcom/miui/backup/ui/BaseSelectList;->getTaskType()I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Lcom/miui/backup/BackupRestoreTaskFactory;->createTask(Landroid/content/Context;Ljava/util/ArrayList;Ljava/io/File;I)Lcom/miui/backup/BackupRestoreTask;

    move-result-object v0

    .line 262
    .local v0, task:Lcom/miui/backup/BackupRestoreTask;
    iget-object v1, p0, Lcom/miui/backup/ui/BaseSelectList$4;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v1, v1, Lcom/miui/backup/ui/BaseSelectList;->mService:Lcom/miui/backup/BackupService;

    invoke-virtual {v1, v0}, Lcom/miui/backup/BackupService;->executeTask(Lcom/miui/backup/BackupRestoreTask;)V

    .line 263
    iget-object v1, p0, Lcom/miui/backup/ui/BaseSelectList$4;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    invoke-virtual {v1}, Lcom/miui/backup/ui/BaseSelectList;->switchToProgressPage()V

    .line 264
    return-void
.end method
