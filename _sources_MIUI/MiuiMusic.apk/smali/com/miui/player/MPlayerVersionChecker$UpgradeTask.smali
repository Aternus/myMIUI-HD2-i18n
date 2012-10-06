.class Lcom/miui/player/MPlayerVersionChecker$UpgradeTask;
.super Landroid/os/AsyncTask;
.source "MPlayerVersionChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/MPlayerVersionChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpgradeTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/MPlayerVersionChecker;


# direct methods
.method public constructor <init>(Lcom/miui/player/MPlayerVersionChecker;)V
    .locals 0
    .parameter

    .prologue
    .line 92
    iput-object p1, p0, Lcom/miui/player/MPlayerVersionChecker$UpgradeTask;->this$0:Lcom/miui/player/MPlayerVersionChecker;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 94
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/MPlayerVersionChecker$UpgradeTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 3
    .parameter "params"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/miui/player/MPlayerVersionChecker$UpgradeTask;->this$0:Lcom/miui/player/MPlayerVersionChecker;

    iget-object v1, p0, Lcom/miui/player/MPlayerVersionChecker$UpgradeTask;->this$0:Lcom/miui/player/MPlayerVersionChecker;

    #getter for: Lcom/miui/player/MPlayerVersionChecker;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/miui/player/MPlayerVersionChecker;->access$000(Lcom/miui/player/MPlayerVersionChecker;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/player/MPlayerVersionChecker$UpgradeTask;->this$0:Lcom/miui/player/MPlayerVersionChecker;

    #getter for: Lcom/xiaomi/common/BasicVersionChecker;->mRemoteAppVersion:I
    invoke-static {v2}, Lcom/miui/player/MPlayerVersionChecker;->access$100(Lcom/miui/player/MPlayerVersionChecker;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/player/MPlayerVersionChecker;->getUpgradeMessage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/MPlayerVersionChecker$UpgradeTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 103
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/player/MPlayerVersionChecker$UpgradeTask;->this$0:Lcom/miui/player/MPlayerVersionChecker;

    #getter for: Lcom/miui/player/MPlayerVersionChecker;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/miui/player/MPlayerVersionChecker;->access$000(Lcom/miui/player/MPlayerVersionChecker;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/miui/player/ui/UpgradeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "remote_server_url"

    iget-object v2, p0, Lcom/miui/player/MPlayerVersionChecker$UpgradeTask;->this$0:Lcom/miui/player/MPlayerVersionChecker;

    #getter for: Lcom/miui/player/MPlayerVersionChecker;->mServerUrl:Ljava/lang/String;
    invoke-static {v2}, Lcom/miui/player/MPlayerVersionChecker;->access$200(Lcom/miui/player/MPlayerVersionChecker;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string v1, "remote_version"

    iget-object v2, p0, Lcom/miui/player/MPlayerVersionChecker$UpgradeTask;->this$0:Lcom/miui/player/MPlayerVersionChecker;

    #getter for: Lcom/xiaomi/common/BasicVersionChecker;->mRemoteAppVersion:I
    invoke-static {v2}, Lcom/miui/player/MPlayerVersionChecker;->access$300(Lcom/miui/player/MPlayerVersionChecker;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    const-string v1, "upgrade_msg"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    iget-object v1, p0, Lcom/miui/player/MPlayerVersionChecker$UpgradeTask;->this$0:Lcom/miui/player/MPlayerVersionChecker;

    #getter for: Lcom/miui/player/MPlayerVersionChecker;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/miui/player/MPlayerVersionChecker;->access$000(Lcom/miui/player/MPlayerVersionChecker;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 108
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 109
    return-void
.end method
