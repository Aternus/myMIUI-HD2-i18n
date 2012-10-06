.class public Lcom/miui/backup/ui/LocalBackupMain$BatchDeleteBackupTask;
.super Landroid/os/AsyncTask;
.source "LocalBackupMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/backup/ui/LocalBackupMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "BatchDeleteBackupTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/backup/ui/LocalBackupMain;


# direct methods
.method protected constructor <init>(Lcom/miui/backup/ui/LocalBackupMain;)V
    .locals 0
    .parameter

    .prologue
    .line 647
    iput-object p1, p0, Lcom/miui/backup/ui/LocalBackupMain$BatchDeleteBackupTask;->this$0:Lcom/miui/backup/ui/LocalBackupMain;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 647
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/backup/ui/LocalBackupMain$BatchDeleteBackupTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .parameter "params"

    .prologue
    .line 657
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v4, p0, Lcom/miui/backup/ui/LocalBackupMain$BatchDeleteBackupTask;->this$0:Lcom/miui/backup/ui/LocalBackupMain;

    iget-object v4, v4, Lcom/miui/backup/ui/LocalBackupMain;->mBackupList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 658
    iget-object v4, p0, Lcom/miui/backup/ui/LocalBackupMain$BatchDeleteBackupTask;->this$0:Lcom/miui/backup/ui/LocalBackupMain;

    iget-object v4, v4, Lcom/miui/backup/ui/LocalBackupMain;->mBackupList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Hashtable;

    const-string v5, "fileName"

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 659
    .local v1, backupName:Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/backup/ui/LocalBackupMain$BatchDeleteBackupTask;->this$0:Lcom/miui/backup/ui/LocalBackupMain;

    iget-object v4, v4, Lcom/miui/backup/ui/LocalBackupMain;->mBackupList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Hashtable;

    const-string v5, "checked"

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 660
    .local v2, checked:Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 661
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/miui/backup/ui/LocalBackupMain$BatchDeleteBackupTask;->this$0:Lcom/miui/backup/ui/LocalBackupMain;

    iget-object v4, v4, Lcom/miui/backup/ui/LocalBackupMain;->CONTENT_BASE_DIR:Ljava/io/File;

    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 662
    .local v0, backupDir:Ljava/io/File;
    invoke-static {v0}, Lcom/miui/backup/SysUtils;->deleteDir(Ljava/io/File;)V

    .line 657
    .end local v0           #backupDir:Ljava/io/File;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 665
    .end local v1           #backupName:Ljava/lang/String;
    .end local v2           #checked:Ljava/lang/Boolean;
    :cond_1
    const/4 v4, 0x0

    return-object v4
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 647
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/backup/ui/LocalBackupMain$BatchDeleteBackupTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 670
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain$BatchDeleteBackupTask;->this$0:Lcom/miui/backup/ui/LocalBackupMain;

    iget-object v0, v0, Lcom/miui/backup/ui/LocalBackupMain;->deleteProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain$BatchDeleteBackupTask;->this$0:Lcom/miui/backup/ui/LocalBackupMain;

    iget-object v0, v0, Lcom/miui/backup/ui/LocalBackupMain;->deleteProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain$BatchDeleteBackupTask;->this$0:Lcom/miui/backup/ui/LocalBackupMain;

    #calls: Lcom/miui/backup/ui/LocalBackupMain;->refreshBackupList()V
    invoke-static {v0}, Lcom/miui/backup/ui/LocalBackupMain;->access$100(Lcom/miui/backup/ui/LocalBackupMain;)V

    .line 674
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain$BatchDeleteBackupTask;->this$0:Lcom/miui/backup/ui/LocalBackupMain;

    #getter for: Lcom/miui/backup/ui/LocalBackupMain;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/miui/backup/ui/LocalBackupMain;->access$000(Lcom/miui/backup/ui/LocalBackupMain;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 675
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain$BatchDeleteBackupTask;->this$0:Lcom/miui/backup/ui/LocalBackupMain;

    #getter for: Lcom/miui/backup/ui/LocalBackupMain;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/miui/backup/ui/LocalBackupMain;->access$000(Lcom/miui/backup/ui/LocalBackupMain;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 677
    :cond_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 651
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain$BatchDeleteBackupTask;->this$0:Lcom/miui/backup/ui/LocalBackupMain;

    #getter for: Lcom/miui/backup/ui/LocalBackupMain;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/miui/backup/ui/LocalBackupMain;->access$000(Lcom/miui/backup/ui/LocalBackupMain;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 652
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain$BatchDeleteBackupTask;->this$0:Lcom/miui/backup/ui/LocalBackupMain;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/backup/ui/LocalBackupMain;->showDialog(I)V

    .line 653
    return-void
.end method
