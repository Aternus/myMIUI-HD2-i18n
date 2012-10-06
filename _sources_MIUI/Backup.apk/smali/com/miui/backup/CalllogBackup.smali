.class final Lcom/miui/backup/CalllogBackup;
.super Lcom/miui/backup/CalllogStrategy;
.source "BackupRestoreStrategy.java"


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter "dstBackupDir"
    .parameter "dataName"
    .parameter "context"

    .prologue
    .line 562
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/backup/CalllogStrategy;-><init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V

    .line 563
    return-void
.end method


# virtual methods
.method protected execute_()V
    .locals 2

    .prologue
    .line 567
    iget-object v0, p0, Lcom/miui/backup/CalllogStrategy;->mCallController:Lcom/miui/milk/control/local/CalllogController;

    iget-object v1, p0, Lcom/miui/backup/CalllogStrategy;->mDataFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/miui/milk/control/local/CalllogController;->exportCalllog(Ljava/io/File;)V

    .line 568
    return-void
.end method

.method protected getFinishedSize()J
    .locals 2

    .prologue
    .line 577
    iget-object v0, p0, Lcom/miui/backup/CalllogStrategy;->mCallController:Lcom/miui/milk/control/local/CalllogController;

    invoke-virtual {v0}, Lcom/miui/milk/control/local/CalllogController;->getExportedSize()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getTotalSize()J
    .locals 2

    .prologue
    .line 572
    iget-object v0, p0, Lcom/miui/backup/CalllogStrategy;->mCallController:Lcom/miui/milk/control/local/CalllogController;

    invoke-virtual {v0}, Lcom/miui/milk/control/local/CalllogController;->getTotalExportSize()J

    move-result-wide v0

    return-wide v0
.end method
