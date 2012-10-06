.class final Lcom/miui/backup/DeskClockRestore;
.super Lcom/miui/backup/DeskClockStrategy;
.source "BackupRestoreStrategy.java"


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter "dstBackupDir"
    .parameter "dataName"
    .parameter "context"

    .prologue
    .line 1004
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/backup/DeskClockStrategy;-><init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V

    .line 1005
    return-void
.end method


# virtual methods
.method protected execute_()V
    .locals 2

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/miui/backup/DeskClockStrategy;->mAlarmController:Lcom/miui/milk/control/local/AlarmController;

    iget-object v1, p0, Lcom/miui/backup/DeskClockStrategy;->mDataFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/miui/milk/control/local/AlarmController;->importAlarms(Ljava/io/File;)V

    .line 1010
    return-void
.end method

.method protected getFinishedSize()J
    .locals 2

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/miui/backup/DeskClockStrategy;->mAlarmController:Lcom/miui/milk/control/local/AlarmController;

    invoke-virtual {v0}, Lcom/miui/milk/control/local/AlarmController;->getImportedSize()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getTotalSize()J
    .locals 2

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/miui/backup/DeskClockStrategy;->mAlarmController:Lcom/miui/milk/control/local/AlarmController;

    invoke-virtual {v0}, Lcom/miui/milk/control/local/AlarmController;->getTotalImportSize()J

    move-result-wide v0

    return-wide v0
.end method
