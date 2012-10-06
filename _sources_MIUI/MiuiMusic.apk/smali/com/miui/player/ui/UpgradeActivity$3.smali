.class Lcom/miui/player/ui/UpgradeActivity$3;
.super Ljava/lang/Object;
.source "UpgradeActivity.java"

# interfaces
.implements Lcom/xiaomi/common/Network$PostDownloadHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/UpgradeActivity;->startDownload(Landroid/app/Activity;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/UpgradeActivity;

.field final synthetic val$context:Landroid/app/Activity;

.field final synthetic val$localFileName:Ljava/lang/String;

.field final synthetic val$progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/UpgradeActivity;Landroid/app/Activity;Landroid/app/ProgressDialog;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/miui/player/ui/UpgradeActivity$3;->this$0:Lcom/miui/player/ui/UpgradeActivity;

    iput-object p2, p0, Lcom/miui/player/ui/UpgradeActivity$3;->val$context:Landroid/app/Activity;

    iput-object p3, p0, Lcom/miui/player/ui/UpgradeActivity$3;->val$progressDialog:Landroid/app/ProgressDialog;

    iput-object p4, p0, Lcom/miui/player/ui/UpgradeActivity$3;->val$localFileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnPostDownload(Z)V
    .locals 4
    .parameter "sucess"

    .prologue
    .line 84
    iget-object v1, p0, Lcom/miui/player/ui/UpgradeActivity$3;->val$context:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ui/UpgradeActivity$3;->val$progressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 88
    if-eqz p1, :cond_1

    .line 89
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/miui/player/ui/UpgradeActivity$3;->val$context:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miui/player/ui/UpgradeActivity$3;->val$localFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "application/vnd.android.package-archive"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 93
    iget-object v1, p0, Lcom/miui/player/ui/UpgradeActivity$3;->val$context:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 97
    .end local v0           #intent:Landroid/content/Intent;
    :goto_1
    iget-object v1, p0, Lcom/miui/player/ui/UpgradeActivity$3;->this$0:Lcom/miui/player/ui/UpgradeActivity;

    invoke-virtual {v1}, Lcom/miui/player/ui/UpgradeActivity;->finish()V

    goto :goto_0

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/miui/player/ui/UpgradeActivity$3;->val$context:Landroid/app/Activity;

    const v2, 0x7f080084

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_1
.end method
