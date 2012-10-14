.class public Lcom/miui/backup/RestoreTask;
.super Lcom/miui/backup/BackupRestoreTask;
.source "RestoreTask.java"


# instance fields
.field private mTemp:Ljava/io/File;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/io/File;Lcom/miui/backup/BackupRestoreCmdFactory;)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "baseDir"
    .parameter "factory"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/backup/AppInfo;",
            ">;",
            "Ljava/io/File;",
            "Lcom/miui/backup/BackupRestoreCmdFactory;",
            ")V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, appInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/backup/AppInfo;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/backup/BackupRestoreTask;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/io/File;Lcom/miui/backup/BackupRestoreCmdFactory;)V

    .line 15
    sget-object v0, Lcom/miui/backup/Customization;->APP_TEMP_DIR:Ljava/io/File;

    iput-object v0, p0, Lcom/miui/backup/RestoreTask;->mTemp:Ljava/io/File;

    .line 22
    return-void
.end method

.method private createTempDir()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/miui/backup/RestoreTask;->mTemp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/miui/backup/RestoreTask;->mTemp:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 93
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/miui/backup/RestoreTask;->mTemp:Ljava/io/File;

    invoke-static {v0}, Lcom/miui/backup/SysUtils;->deleteContents(Ljava/io/File;)V

    goto :goto_0
.end method

.method private deleteTempDir()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/miui/backup/RestoreTask;->mTemp:Ljava/io/File;

    invoke-static {v0}, Lcom/miui/backup/SysUtils;->deleteDir(Ljava/io/File;)V

    .line 97
    return-void
.end method


# virtual methods
.method public getFinishedResId()I
    .locals 1

    .prologue
    .line 36
    const v0, 0x7f06001e

    return v0
.end method

.method public getProgressHintResId()I
    .locals 1

    .prologue
    .line 46
    const v0, 0x7f060074

    return v0
.end method

.method public getProgressResId()I
    .locals 1

    .prologue
    .line 31
    const v0, 0x7f060020

    return v0
.end method

.method public getTaskCancelResId()I
    .locals 1

    .prologue
    .line 51
    const v0, 0x7f060075

    return v0
.end method

.method public getTaskType()I
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x2

    return v0
.end method

.method protected handleError()Z
    .locals 2

    .prologue
    .line 79
    const-wide/32 v0, 0x100000

    invoke-static {v0, v1}, Lcom/miui/backup/SysUtils;->enoughSpaceOnData(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreTask;->mContext:Landroid/content/Context;

    const v1, 0x7f060053

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/backup/RestoreTask;->showErrorDialog(Ljava/lang/String;)V

    .line 81
    const/4 v0, 0x0

    .line 83
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected postAction()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/miui/backup/RestoreTask;->deleteTempDir()V

    .line 75
    return-void
.end method

.method protected preAction()Z
    .locals 5

    .prologue
    const-wide/32 v3, 0x100000

    const/4 v2, 0x0

    .line 60
    invoke-static {v3, v4}, Lcom/miui/backup/SysUtils;->enoughSpaceOnSdCard(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreTask;->mContext:Landroid/content/Context;

    const v1, 0x7f060051

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/backup/RestoreTask;->showErrorDialog(Ljava/lang/String;)V

    move v0, v2

    .line 69
    :goto_0
    return v0

    .line 64
    :cond_0
    invoke-static {v3, v4}, Lcom/miui/backup/SysUtils;->enoughSpaceOnData(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreTask;->mContext:Landroid/content/Context;

    const v1, 0x7f060053

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/backup/RestoreTask;->showErrorDialog(Ljava/lang/String;)V

    move v0, v2

    .line 66
    goto :goto_0

    .line 68
    :cond_1
    invoke-direct {p0}, Lcom/miui/backup/RestoreTask;->createTempDir()V

    .line 69
    const/4 v0, 0x1

    goto :goto_0
.end method
