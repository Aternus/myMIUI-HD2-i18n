.class public Lcom/miui/backup/BackupTask;
.super Lcom/miui/backup/BackupRestoreTask;
.source "BackupTask.java"


# instance fields
.field private isCanceled:Z

.field private isError:Z

.field private mDbAdapter:Lcom/miui/backup/DbAdapter;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/io/File;Lcom/miui/backup/BackupRestoreCmdFactory;)V
    .locals 1
    .parameter "context"
    .parameter
    .parameter "baseDir"
    .parameter "cmdFactory"
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
    .line 20
    .local p2, appInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/backup/AppInfo;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/backup/BackupRestoreTask;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/io/File;Lcom/miui/backup/BackupRestoreCmdFactory;)V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/backup/BackupTask;->mDbAdapter:Lcom/miui/backup/DbAdapter;

    .line 21
    return-void
.end method

.method private closeDB()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/miui/backup/BackupTask;->mDbAdapter:Lcom/miui/backup/DbAdapter;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/miui/backup/BackupTask;->mDbAdapter:Lcom/miui/backup/DbAdapter;

    invoke-virtual {v0}, Lcom/miui/backup/DbAdapter;->close()V

    .line 130
    :cond_0
    return-void
.end method

.method private createSizeFile()V
    .locals 7

    .prologue
    .line 133
    iget-object v4, p0, Lcom/miui/backup/BackupRestoreTask;->mBaseDir:Ljava/io/File;

    invoke-static {v4}, Lcom/miui/backup/SysUtils;->countFileSize(Ljava/io/File;)J

    move-result-wide v0

    .line 134
    .local v0, backupSize:J
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/miui/backup/BackupRestoreTask;->mBaseDir:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".size_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 136
    .local v3, sizeFile:Ljava/io/File;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-void

    .line 137
    :catch_0
    move-exception v2

    .line 138
    .local v2, e:Ljava/io/IOException;
    const-string v4, "BackupTask"

    const-string v5, "create backup size file error "

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private diskCheck()Z
    .locals 2

    .prologue
    .line 103
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1}, Lcom/miui/backup/SysUtils;->enoughSpaceOnSdCard(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreTask;->mContext:Landroid/content/Context;

    const v1, 0x7f060051

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/backup/BackupTask;->showErrorDialog(Ljava/lang/String;)V

    .line 105
    const/4 v0, 0x0

    .line 112
    :goto_0
    return v0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreTask;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreTask;->mBaseDir:Ljava/io/File;

    invoke-static {v0}, Lcom/miui/backup/SysUtils;->deleteContents(Ljava/io/File;)V

    .line 112
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreTask;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    goto :goto_1
.end method

.method private openDB()Z
    .locals 5

    .prologue
    .line 116
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/miui/backup/BackupRestoreTask;->mBaseDir:Ljava/io/File;

    const-string v3, "backup_config.db"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 117
    .local v0, database:Ljava/io/File;
    new-instance v2, Lcom/miui/backup/DbAdapter;

    iget-object v3, p0, Lcom/miui/backup/BackupRestoreTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/miui/backup/DbAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/miui/backup/BackupTask;->mDbAdapter:Lcom/miui/backup/DbAdapter;

    .line 119
    :try_start_0
    iget-object v2, p0, Lcom/miui/backup/BackupTask;->mDbAdapter:Lcom/miui/backup/DbAdapter;

    invoke-virtual {v2}, Lcom/miui/backup/DbAdapter;->open()Lcom/miui/backup/DbAdapter;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    const/4 v2, 0x1

    :goto_0
    return v2

    .line 120
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 121
    .local v1, e:Landroid/database/SQLException;
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0}, Lcom/miui/backup/BackupRestoreTask;->cancel()V

    .line 84
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreTask;->mBaseDir:Ljava/io/File;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/miui/backup/BackupUtils;->persistProgress(Ljava/io/File;I)V

    .line 85
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/backup/BackupTask;->isCanceled:Z

    .line 86
    return-void
.end method

.method public getFinishedResId()I
    .locals 1

    .prologue
    .line 35
    const v0, 0x7f06000e

    return v0
.end method

.method public getProgressHintResId()I
    .locals 1

    .prologue
    .line 45
    const v0, 0x7f060070

    return v0
.end method

.method public getProgressResId()I
    .locals 1

    .prologue
    .line 30
    const v0, 0x7f06000c

    return v0
.end method

.method public getTaskCancelResId()I
    .locals 1

    .prologue
    .line 50
    const v0, 0x7f060071

    return v0
.end method

.method public getTaskType()I
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    return v0
.end method

.method protected handleError()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 90
    const-wide/32 v0, 0x80000

    invoke-static {v0, v1}, Lcom/miui/backup/SysUtils;->enoughSpaceOnSdCard(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreTask;->mContext:Landroid/content/Context;

    const v1, 0x7f060051

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/backup/BackupTask;->showErrorDialog(Ljava/lang/String;)V

    .line 92
    iput-boolean v2, p0, Lcom/miui/backup/BackupTask;->isError:Z

    .line 93
    const/4 v0, 0x0

    .line 95
    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method protected postAction()V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/miui/backup/BackupTask;->createSizeFile()V

    .line 75
    invoke-direct {p0}, Lcom/miui/backup/BackupTask;->closeDB()V

    .line 76
    iget-boolean v0, p0, Lcom/miui/backup/BackupTask;->isCanceled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/backup/BackupTask;->isError:Z

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreTask;->mBaseDir:Ljava/io/File;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/backup/BackupUtils;->persistProgress(Ljava/io/File;I)V

    .line 79
    :cond_0
    return-void
.end method

.method protected preAction()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 59
    iput-boolean v1, p0, Lcom/miui/backup/BackupTask;->isCanceled:Z

    .line 60
    iput-boolean v1, p0, Lcom/miui/backup/BackupTask;->isError:Z

    .line 61
    invoke-direct {p0}, Lcom/miui/backup/BackupTask;->diskCheck()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 69
    :goto_0
    return v0

    .line 64
    :cond_0
    invoke-direct {p0}, Lcom/miui/backup/BackupTask;->openDB()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 65
    goto :goto_0

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/miui/backup/BackupTask;->mDbAdapter:Lcom/miui/backup/DbAdapter;

    invoke-static {v0}, Lcom/miui/backup/BackupCmd;->setDbAdapter(Lcom/miui/backup/DbAdapter;)V

    .line 68
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreTask;->mBaseDir:Ljava/io/File;

    invoke-static {v0, v2}, Lcom/miui/backup/BackupUtils;->persistProgress(Ljava/io/File;I)V

    move v0, v2

    .line 69
    goto :goto_0
.end method
