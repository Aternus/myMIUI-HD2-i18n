.class public abstract Lcom/miui/backup/BackupRestoreStrategy;
.super Ljava/lang/Object;
.source "BackupRestoreStrategy.java"


# instance fields
.field public mCanceled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/backup/BackupRestoreStrategy;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/backup/BackupRestoreStrategy;->mCanceled:Z

    .line 50
    return-void
.end method

.method public execute()Z
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/miui/backup/BackupRestoreStrategy;->execute_()V

    .line 31
    invoke-virtual {p0}, Lcom/miui/backup/BackupRestoreStrategy;->isSucceeded()Z

    move-result v0

    return v0
.end method

.method protected abstract execute_()V
.end method

.method protected abstract getFinishedSize()J
.end method

.method public getProgress()I
    .locals 8

    .prologue
    const/16 v7, 0x64

    .line 35
    invoke-virtual {p0}, Lcom/miui/backup/BackupRestoreStrategy;->getTotalSize()J

    move-result-wide v1

    .line 36
    .local v1, totalSize:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    .line 37
    const/4 v3, 0x0

    .line 40
    :goto_0
    return v3

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/miui/backup/BackupRestoreStrategy;->getFinishedSize()J

    move-result-wide v3

    const-wide/16 v5, 0x64

    mul-long/2addr v3, v5

    div-long/2addr v3, v1

    long-to-int v0, v3

    .line 40
    .local v0, progress:I
    if-gt v0, v7, :cond_1

    move v3, v0

    goto :goto_0

    :cond_1
    move v3, v7

    goto :goto_0
.end method

.method protected abstract getTotalSize()J
.end method

.method public isSucceeded()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/miui/backup/BackupRestoreStrategy;->mCanceled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
