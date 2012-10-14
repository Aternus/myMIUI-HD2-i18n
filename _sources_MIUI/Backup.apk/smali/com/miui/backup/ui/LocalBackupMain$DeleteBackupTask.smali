.class public Lcom/miui/backup/ui/LocalBackupMain$DeleteBackupTask;
.super Landroid/os/AsyncTask;
.source "LocalBackupMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/backup/ui/LocalBackupMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "DeleteBackupTask"
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
    .line 620
    iput-object p1, p0, Lcom/miui/backup/ui/LocalBackupMain$DeleteBackupTask;->this$0:Lcom/miui/backup/ui/LocalBackupMain;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 620
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/backup/ui/LocalBackupMain$DeleteBackupTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .parameter "params"

    .prologue
    .line 630
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/backup/ui/LocalBackupMain$DeleteBackupTask;->this$0:Lcom/miui/backup/ui/LocalBackupMain;

    iget-object v1, v1, Lcom/miui/backup/ui/LocalBackupMain;->CONTENT_BASE_DIR:Ljava/io/File;

    iget-object v2, p0, Lcom/miui/backup/ui/LocalBackupMain$DeleteBackupTask;->this$0:Lcom/miui/backup/ui/LocalBackupMain;

    iget-object v2, v2, Lcom/miui/backup/ui/LocalBackupMain;->mDeleteBackupName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 631
    .local v0, backupDir:Ljava/io/File;
    invoke-static {v0}, Lcom/miui/backup/SysUtils;->deleteDir(Ljava/io/File;)V

    .line 632
    const/4 v1, 0x0

    return-object v1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 620
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/backup/ui/LocalBackupMain$DeleteBackupTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 637
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain$DeleteBackupTask;->this$0:Lcom/miui/backup/ui/LocalBackupMain;

    iget-object v0, v0, Lcom/miui/backup/ui/LocalBackupMain;->deleteProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain$DeleteBackupTask;->this$0:Lcom/miui/backup/ui/LocalBackupMain;

    iget-object v0, v0, Lcom/miui/backup/ui/LocalBackupMain;->deleteProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain$DeleteBackupTask;->this$0:Lcom/miui/backup/ui/LocalBackupMain;

    #calls: Lcom/miui/backup/ui/LocalBackupMain;->refreshBackupList()V
    invoke-static {v0}, Lcom/miui/backup/ui/LocalBackupMain;->access$100(Lcom/miui/backup/ui/LocalBackupMain;)V

    .line 641
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain$DeleteBackupTask;->this$0:Lcom/miui/backup/ui/LocalBackupMain;

    #getter for: Lcom/miui/backup/ui/LocalBackupMain;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/miui/backup/ui/LocalBackupMain;->access$000(Lcom/miui/backup/ui/LocalBackupMain;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 642
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain$DeleteBackupTask;->this$0:Lcom/miui/backup/ui/LocalBackupMain;

    #getter for: Lcom/miui/backup/ui/LocalBackupMain;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/miui/backup/ui/LocalBackupMain;->access$000(Lcom/miui/backup/ui/LocalBackupMain;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 644
    :cond_1
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 624
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain$DeleteBackupTask;->this$0:Lcom/miui/backup/ui/LocalBackupMain;

    #getter for: Lcom/miui/backup/ui/LocalBackupMain;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v0}, Lcom/miui/backup/ui/LocalBackupMain;->access$000(Lcom/miui/backup/ui/LocalBackupMain;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 625
    iget-object v0, p0, Lcom/miui/backup/ui/LocalBackupMain$DeleteBackupTask;->this$0:Lcom/miui/backup/ui/LocalBackupMain;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/miui/backup/ui/LocalBackupMain;->showDialog(I)V

    .line 626
    return-void
.end method
