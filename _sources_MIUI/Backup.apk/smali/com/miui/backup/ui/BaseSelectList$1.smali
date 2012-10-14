.class Lcom/miui/backup/ui/BaseSelectList$1;
.super Ljava/lang/Object;
.source "BaseSelectList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/backup/ui/BaseSelectList;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/backup/ui/BaseSelectList;


# direct methods
.method constructor <init>(Lcom/miui/backup/ui/BaseSelectList;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/miui/backup/ui/BaseSelectList$1;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$1;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v0, v0, Lcom/miui/backup/ui/BaseSelectList;->mService:Lcom/miui/backup/BackupService;

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$1;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    invoke-virtual {v0}, Lcom/miui/backup/ui/BaseSelectList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060057

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 116
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$1;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    iget-object v0, v0, Lcom/miui/backup/ui/BaseSelectList;->mService:Lcom/miui/backup/BackupService;

    invoke-virtual {v0}, Lcom/miui/backup/BackupService;->isTaskRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$1;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/backup/ui/BaseSelectList;->showDialog(I)V

    goto :goto_0

    .line 112
    :cond_1
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$1;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    #calls: Lcom/miui/backup/ui/BaseSelectList;->checkFolder()V
    invoke-static {v0}, Lcom/miui/backup/ui/BaseSelectList;->access$000(Lcom/miui/backup/ui/BaseSelectList;)V

    .line 113
    iget-object v0, p0, Lcom/miui/backup/ui/BaseSelectList$1;->this$0:Lcom/miui/backup/ui/BaseSelectList;

    invoke-virtual {v0}, Lcom/miui/backup/ui/BaseSelectList;->startExecution()V

    goto :goto_0
.end method
