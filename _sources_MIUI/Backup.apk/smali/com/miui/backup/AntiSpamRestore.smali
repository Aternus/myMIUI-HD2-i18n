.class final Lcom/miui/backup/AntiSpamRestore;
.super Lcom/miui/backup/AntiSpamStrategy;
.source "BackupRestoreStrategy.java"


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter "dstBackupDir"
    .parameter "dataName"
    .parameter "context"

    .prologue
    .line 887
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/backup/AntiSpamStrategy;-><init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V

    .line 888
    return-void
.end method


# virtual methods
.method protected execute_()V
    .locals 2

    .prologue
    .line 892
    iget-object v0, p0, Lcom/miui/backup/AntiSpamStrategy;->mController:Lcom/miui/milk/control/local/AntiSpamController;

    iget-object v1, p0, Lcom/miui/backup/AntiSpamStrategy;->mDataFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/miui/milk/control/local/AntiSpamController;->importData(Ljava/io/File;)V

    .line 893
    return-void
.end method

.method protected getFinishedSize()J
    .locals 2

    .prologue
    .line 901
    iget-object v0, p0, Lcom/miui/backup/AntiSpamStrategy;->mController:Lcom/miui/milk/control/local/AntiSpamController;

    invoke-virtual {v0}, Lcom/miui/milk/control/local/AntiSpamController;->getImportedSize()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getTotalSize()J
    .locals 2

    .prologue
    .line 896
    iget-object v0, p0, Lcom/miui/backup/AntiSpamStrategy;->mController:Lcom/miui/milk/control/local/AntiSpamController;

    invoke-virtual {v0}, Lcom/miui/milk/control/local/AntiSpamController;->getTotalImportSize()J

    move-result-wide v0

    return-wide v0
.end method
