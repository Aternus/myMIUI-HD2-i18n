.class final Lcom/miui/backup/AntiSpamBackup;
.super Lcom/miui/backup/AntiSpamStrategy;
.source "BackupRestoreStrategy.java"


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter "dstBackupDir"
    .parameter "dataName"
    .parameter "context"

    .prologue
    .line 866
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/backup/AntiSpamStrategy;-><init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V

    .line 867
    return-void
.end method


# virtual methods
.method protected execute_()V
    .locals 2

    .prologue
    .line 871
    iget-object v0, p0, Lcom/miui/backup/AntiSpamStrategy;->mController:Lcom/miui/milk/control/local/AntiSpamController;

    iget-object v1, p0, Lcom/miui/backup/AntiSpamStrategy;->mDataFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/miui/milk/control/local/AntiSpamController;->exportData(Ljava/io/File;)V

    .line 872
    return-void
.end method

.method protected getFinishedSize()J
    .locals 2

    .prologue
    .line 881
    iget-object v0, p0, Lcom/miui/backup/AntiSpamStrategy;->mController:Lcom/miui/milk/control/local/AntiSpamController;

    invoke-virtual {v0}, Lcom/miui/milk/control/local/AntiSpamController;->getExportedSize()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getTotalSize()J
    .locals 2

    .prologue
    .line 876
    iget-object v0, p0, Lcom/miui/backup/AntiSpamStrategy;->mController:Lcom/miui/milk/control/local/AntiSpamController;

    invoke-virtual {v0}, Lcom/miui/milk/control/local/AntiSpamController;->getTotalExportSize()J

    move-result-wide v0

    return-wide v0
.end method
