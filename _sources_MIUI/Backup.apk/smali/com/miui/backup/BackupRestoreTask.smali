.class public abstract Lcom/miui/backup/BackupRestoreTask;
.super Ljava/lang/Object;
.source "BackupRestoreTask.java"


# static fields
.field public static ALL_NOTIFY_IDS:[I


# instance fields
.field protected mBaseDir:Ljava/io/File;

.field protected mCmdFactory:Lcom/miui/backup/BackupRestoreCmdFactory;

.field private mCmdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/backup/BackupRestoreCmd;",
            ">;"
        }
    .end annotation
.end field

.field private mCmdSize:I

.field protected mContext:Landroid/content/Context;

.field private volatile mCurrAppIndex:I

.field private mFailed:Z

.field private mRunningInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/backup/CmdRunningInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/miui/backup/BackupRestoreTask;->ALL_NOTIFY_IDS:[I

    return-void

    nop

    :array_0
    .array-data 0x4
        0xct 0x0t 0x6t 0x7ft
        0xet 0x0t 0x6t 0x7ft
        0x20t 0x0t 0x6t 0x7ft
        0x1et 0x0t 0x6t 0x7ft
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/io/File;Lcom/miui/backup/BackupRestoreCmdFactory;)V
    .locals 3
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
    .local p2, appInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/backup/AppInfo;>;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object v2, p0, Lcom/miui/backup/BackupRestoreTask;->mContext:Landroid/content/Context;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/backup/BackupRestoreTask;->mCmdList:Ljava/util/List;

    .line 25
    iput v1, p0, Lcom/miui/backup/BackupRestoreTask;->mCmdSize:I

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/backup/BackupRestoreTask;->mRunningInfo:Ljava/util/List;

    .line 27
    iput-object v2, p0, Lcom/miui/backup/BackupRestoreTask;->mBaseDir:Ljava/io/File;

    .line 28
    iput v1, p0, Lcom/miui/backup/BackupRestoreTask;->mCurrAppIndex:I

    .line 29
    iput-object v2, p0, Lcom/miui/backup/BackupRestoreTask;->mCmdFactory:Lcom/miui/backup/BackupRestoreCmdFactory;

    .line 31
    iput-boolean v1, p0, Lcom/miui/backup/BackupRestoreTask;->mFailed:Z

    .line 42
    iput-object p1, p0, Lcom/miui/backup/BackupRestoreTask;->mContext:Landroid/content/Context;

    .line 43
    iput-object p3, p0, Lcom/miui/backup/BackupRestoreTask;->mBaseDir:Ljava/io/File;

    .line 44
    iput-object p4, p0, Lcom/miui/backup/BackupRestoreTask;->mCmdFactory:Lcom/miui/backup/BackupRestoreCmdFactory;

    .line 45
    invoke-virtual {p0, p2}, Lcom/miui/backup/BackupRestoreTask;->createCmdList(Ljava/util/ArrayList;)V

    .line 46
    return-void
.end method

.method private nextCmd()Lcom/miui/backup/BackupRestoreCmd;
    .locals 4

    .prologue
    .line 124
    monitor-enter p0

    .line 125
    const/4 v1, 0x0

    .line 126
    .local v1, cmd:Lcom/miui/backup/BackupRestoreCmd;
    :try_start_0
    iget v2, p0, Lcom/miui/backup/BackupRestoreTask;->mCurrAppIndex:I

    iget v3, p0, Lcom/miui/backup/BackupRestoreTask;->mCmdSize:I

    if-ge v2, v3, :cond_0

    .line 127
    iget-object v2, p0, Lcom/miui/backup/BackupRestoreTask;->mCmdList:Ljava/util/List;

    iget v3, p0, Lcom/miui/backup/BackupRestoreTask;->mCurrAppIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/miui/backup/BackupRestoreCmd;

    move-object v1, v0

    .line 129
    :cond_0
    monitor-exit p0

    return-object v1

    .line 130
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method protected action()V
    .locals 4

    .prologue
    .line 137
    :goto_0
    invoke-direct {p0}, Lcom/miui/backup/BackupRestoreTask;->nextCmd()Lcom/miui/backup/BackupRestoreCmd;

    move-result-object v0

    .local v0, cmd:Lcom/miui/backup/BackupRestoreCmd;
    if-eqz v0, :cond_2

    .line 138
    invoke-virtual {v0}, Lcom/miui/backup/BackupRestoreCmd;->execute()Z

    move-result v2

    if-nez v2, :cond_1

    .line 139
    invoke-virtual {p0}, Lcom/miui/backup/BackupRestoreTask;->handleError()Z

    move-result v2

    if-nez v2, :cond_1

    .line 140
    monitor-enter p0

    .line 141
    :try_start_0
    iget v1, p0, Lcom/miui/backup/BackupRestoreTask;->mCurrAppIndex:I

    .local v1, i:I
    :goto_1
    iget v2, p0, Lcom/miui/backup/BackupRestoreTask;->mCmdSize:I

    if-ge v1, v2, :cond_0

    .line 142
    iget-object v2, p0, Lcom/miui/backup/BackupRestoreTask;->mCmdList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/backup/BackupRestoreCmd;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/miui/backup/BackupRestoreCmd;->cancel(Z)V

    .line 141
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 144
    :cond_0
    iget v2, p0, Lcom/miui/backup/BackupRestoreTask;->mCmdSize:I

    iput v2, p0, Lcom/miui/backup/BackupRestoreTask;->mCurrAppIndex:I

    .line 145
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/backup/BackupRestoreTask;->mFailed:Z

    .line 146
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 149
    .end local v1           #i:I
    :cond_1
    monitor-enter p0

    .line 150
    :try_start_1
    iget v2, p0, Lcom/miui/backup/BackupRestoreTask;->mCurrAppIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/miui/backup/BackupRestoreTask;->mCurrAppIndex:I

    .line 151
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 146
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 153
    :cond_2
    return-void
.end method

.method public cancel()V
    .locals 3

    .prologue
    .line 59
    monitor-enter p0

    .line 60
    :try_start_0
    iget v0, p0, Lcom/miui/backup/BackupRestoreTask;->mCurrAppIndex:I

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/miui/backup/BackupRestoreTask;->mCmdSize:I

    if-ge v0, v1, :cond_0

    .line 61
    iget-object v1, p0, Lcom/miui/backup/BackupRestoreTask;->mCmdList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/backup/BackupRestoreCmd;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/miui/backup/BackupRestoreCmd;->cancel(Z)V

    .line 60
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 63
    :cond_0
    monitor-exit p0

    .line 64
    return-void

    .line 63
    .end local v0           #i:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected createCmdList(Ljava/util/ArrayList;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/backup/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p1, appInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/backup/AppInfo;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 176
    .local v0, appSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 177
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/backup/AppInfo;

    iget-boolean v3, v3, Lcom/miui/milk/common/AppInfo;->checked:Z

    if-eqz v3, :cond_0

    .line 178
    iget-object v4, p0, Lcom/miui/backup/BackupRestoreTask;->mCmdFactory:Lcom/miui/backup/BackupRestoreCmdFactory;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/backup/AppInfo;

    iget-object v5, p0, Lcom/miui/backup/BackupRestoreTask;->mBaseDir:Ljava/io/File;

    iget-object v6, p0, Lcom/miui/backup/BackupRestoreTask;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3, v5, v6}, Lcom/miui/backup/BackupRestoreCmdFactory;->createCmd(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)Lcom/miui/backup/BackupRestoreCmd;

    move-result-object v1

    .line 179
    .local v1, cmd:Lcom/miui/backup/BackupRestoreCmd;
    if-eqz v1, :cond_0

    .line 180
    iget-object v3, p0, Lcom/miui/backup/BackupRestoreTask;->mCmdList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    .end local v1           #cmd:Lcom/miui/backup/BackupRestoreCmd;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    :cond_1
    iget-object v3, p0, Lcom/miui/backup/BackupRestoreTask;->mCmdList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lcom/miui/backup/BackupRestoreTask;->mCmdSize:I

    .line 186
    return-void
.end method

.method public execute()V
    .locals 1

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/miui/backup/BackupRestoreTask;->preAction()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/miui/backup/BackupRestoreTask;->action()V

    .line 52
    invoke-virtual {p0}, Lcom/miui/backup/BackupRestoreTask;->postAction()V

    .line 56
    :goto_0
    return-void

    .line 54
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/backup/BackupRestoreTask;->mFailed:Z

    goto :goto_0
.end method

.method public getBaseDir()Ljava/io/File;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreTask;->mBaseDir:Ljava/io/File;

    return-object v0
.end method

.method public getCmdIndex()I
    .locals 1

    .prologue
    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    iget v0, p0, Lcom/miui/backup/BackupRestoreTask;->mCurrAppIndex:I

    monitor-exit p0

    return v0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract getFinishedResId()I
.end method

.method public getProgress()I
    .locals 3

    .prologue
    .line 87
    monitor-enter p0

    .line 88
    :try_start_0
    iget v1, p0, Lcom/miui/backup/BackupRestoreTask;->mCurrAppIndex:I

    mul-int/lit8 v0, v1, 0x64

    .line 89
    .local v0, totalProgress:I
    iget v1, p0, Lcom/miui/backup/BackupRestoreTask;->mCurrAppIndex:I

    iget v2, p0, Lcom/miui/backup/BackupRestoreTask;->mCmdSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v1, v2, :cond_0

    .line 92
    :try_start_1
    iget-object v1, p0, Lcom/miui/backup/BackupRestoreTask;->mCmdList:Ljava/util/List;

    iget v2, p0, Lcom/miui/backup/BackupRestoreTask;->mCurrAppIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/backup/BackupRestoreCmd;

    invoke-virtual {v1}, Lcom/miui/backup/BackupRestoreCmd;->getRunningInfo()Lcom/miui/backup/CmdRunningInfo;

    move-result-object v1

    iget v1, v1, Lcom/miui/backup/CmdRunningInfo;->progress:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/2addr v0, v1

    .line 96
    :cond_0
    :goto_0
    :try_start_2
    iget v1, p0, Lcom/miui/backup/BackupRestoreTask;->mCmdSize:I

    div-int v1, v0, v1

    monitor-exit p0

    return v1

    .line 97
    .end local v0           #totalProgress:I
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 93
    .restart local v0       #totalProgress:I
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public abstract getProgressHintResId()I
.end method

.method public abstract getProgressResId()I
.end method

.method public getRunningInfo()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/miui/backup/CmdRunningInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v1, p0, Lcom/miui/backup/BackupRestoreTask;->mRunningInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 79
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/miui/backup/BackupRestoreTask;->mCmdSize:I

    if-ge v0, v1, :cond_0

    .line 80
    iget-object v2, p0, Lcom/miui/backup/BackupRestoreTask;->mRunningInfo:Ljava/util/List;

    iget-object v1, p0, Lcom/miui/backup/BackupRestoreTask;->mCmdList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/backup/BackupRestoreCmd;

    invoke-virtual {v1}, Lcom/miui/backup/BackupRestoreCmd;->getRunningInfo()Lcom/miui/backup/CmdRunningInfo;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 82
    :cond_0
    iget-object v1, p0, Lcom/miui/backup/BackupRestoreTask;->mRunningInfo:Ljava/util/List;

    return-object v1
.end method

.method public abstract getTaskCancelResId()I
.end method

.method public abstract getTaskType()I
.end method

.method protected handleError()Z
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x1

    return v0
.end method

.method public isFinished()Z
    .locals 2

    .prologue
    .line 67
    iget v0, p0, Lcom/miui/backup/BackupRestoreTask;->mCurrAppIndex:I

    iget v1, p0, Lcom/miui/backup/BackupRestoreTask;->mCmdSize:I

    if-ge v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/miui/backup/BackupRestoreTask;->mFailed:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected postAction()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method protected preAction()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x1

    return v0
.end method

.method protected showErrorDialog(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 168
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/backup/BackupRestoreTask;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/backup/ui/ExceptionAlertActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 169
    const-string v1, "exception_message"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    iget-object v1, p0, Lcom/miui/backup/BackupRestoreTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 171
    return-void
.end method
