.class final Lcom/miui/backup/CalllogRestore;
.super Lcom/miui/backup/CalllogStrategy;
.source "BackupRestoreStrategy.java"


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter "dstBackupDir"
    .parameter "dataName"
    .parameter "context"

    .prologue
    .line 583
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/backup/CalllogStrategy;-><init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V

    .line 584
    return-void
.end method


# virtual methods
.method protected execute_()V
    .locals 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/miui/backup/CalllogStrategy;->mCallController:Lcom/miui/milk/control/local/CalllogController;

    iget-object v1, p0, Lcom/miui/backup/CalllogStrategy;->mDataFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/miui/milk/control/local/CalllogController;->importCalllog(Ljava/io/File;)V

    .line 589
    return-void
.end method

.method protected getFinishedSize()J
    .locals 2

    .prologue
    .line 597
    iget-object v0, p0, Lcom/miui/backup/CalllogStrategy;->mCallController:Lcom/miui/milk/control/local/CalllogController;

    invoke-virtual {v0}, Lcom/miui/milk/control/local/CalllogController;->getImportedSize()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getTotalSize()J
    .locals 2

    .prologue
    .line 592
    iget-object v0, p0, Lcom/miui/backup/CalllogStrategy;->mCallController:Lcom/miui/milk/control/local/CalllogController;

    invoke-virtual {v0}, Lcom/miui/milk/control/local/CalllogController;->getTotalImportSize()J

    move-result-wide v0

    return-wide v0
.end method
