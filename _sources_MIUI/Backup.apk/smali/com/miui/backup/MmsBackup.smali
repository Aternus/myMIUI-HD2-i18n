.class final Lcom/miui/backup/MmsBackup;
.super Lcom/miui/backup/MmsStrategy;
.source "BackupRestoreStrategy.java"


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter "dstBackupDir"
    .parameter "dataName"
    .parameter "context"

    .prologue
    .line 747
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/backup/MmsStrategy;-><init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V

    .line 748
    return-void
.end method


# virtual methods
.method protected execute_()V
    .locals 2

    .prologue
    .line 752
    iget-object v0, p0, Lcom/miui/backup/MmsStrategy;->mMmsController:Lcom/miui/milk/control/local/MmsController;

    iget-object v1, p0, Lcom/miui/backup/MmsStrategy;->mDataFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/miui/milk/control/local/MmsController;->exportMms(Ljava/io/File;)V

    .line 753
    return-void
.end method

.method protected getFinishedSize()J
    .locals 2

    .prologue
    .line 762
    iget-object v0, p0, Lcom/miui/backup/MmsStrategy;->mMmsController:Lcom/miui/milk/control/local/MmsController;

    invoke-virtual {v0}, Lcom/miui/milk/control/local/MmsController;->getExportedSize()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getTotalSize()J
    .locals 2

    .prologue
    .line 757
    iget-object v0, p0, Lcom/miui/backup/MmsStrategy;->mMmsController:Lcom/miui/milk/control/local/MmsController;

    invoke-virtual {v0}, Lcom/miui/milk/control/local/MmsController;->getTotalExportSize()J

    move-result-wide v0

    return-wide v0
.end method
