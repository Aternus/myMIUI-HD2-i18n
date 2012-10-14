.class Lcom/miui/backup/ui/ProgressPageActivity$2;
.super Ljava/lang/Object;
.source "ProgressPageActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/backup/ui/ProgressPageActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 92
    iput-object p1, p0, Lcom/miui/backup/ui/ProgressPageActivity$2;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 95
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity$2;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    #getter for: Lcom/miui/backup/ui/ProgressPageActivity;->mService:Lcom/miui/backup/BackupService;
    invoke-static {v0}, Lcom/miui/backup/ui/ProgressPageActivity;->access$000(Lcom/miui/backup/ui/ProgressPageActivity;)Lcom/miui/backup/BackupService;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity$2;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    #getter for: Lcom/miui/backup/ui/ProgressPageActivity;->mService:Lcom/miui/backup/BackupService;
    invoke-static {v0}, Lcom/miui/backup/ui/ProgressPageActivity;->access$000(Lcom/miui/backup/ui/ProgressPageActivity;)Lcom/miui/backup/BackupService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/backup/BackupService;->clearAllNotifications()V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/miui/backup/ui/ProgressPageActivity$2;->this$0:Lcom/miui/backup/ui/ProgressPageActivity;

    invoke-virtual {v0}, Lcom/miui/backup/ui/ProgressPageActivity;->finish()V

    .line 99
    return-void
.end method
