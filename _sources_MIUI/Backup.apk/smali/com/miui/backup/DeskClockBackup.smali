.class final Lcom/miui/backup/DeskClockBackup;
.super Lcom/miui/backup/DeskClockStrategy;
.source "BackupRestoreStrategy.java"


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter "dstBackupDir"
    .parameter "dataName"
    .parameter "context"

    .prologue
    .line 983
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/backup/DeskClockStrategy;-><init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V

    .line 984
    return-void
.end method


# virtual methods
.method protected execute_()V
    .locals 2

    .prologue
    .line 988
    iget-object v0, p0, Lcom/miui/backup/DeskClockStrategy;->mAlarmController:Lcom/miui/milk/control/local/AlarmController;

    iget-object v1, p0, Lcom/miui/backup/DeskClockStrategy;->mDataFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/miui/milk/control/local/AlarmController;->exportAlarms(Ljava/io/File;)V

    .line 989
    return-void
.end method

.method protected getFinishedSize()J
    .locals 2

    .prologue
    .line 998
    iget-object v0, p0, Lcom/miui/backup/DeskClockStrategy;->mAlarmController:Lcom/miui/milk/control/local/AlarmController;

    invoke-virtual {v0}, Lcom/miui/milk/control/local/AlarmController;->getExportedSize()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getTotalSize()J
    .locals 2

    .prologue
    .line 993
    iget-object v0, p0, Lcom/miui/backup/DeskClockStrategy;->mAlarmController:Lcom/miui/milk/control/local/AlarmController;

    invoke-virtual {v0}, Lcom/miui/milk/control/local/AlarmController;->getTotalExportSize()J

    move-result-wide v0

    return-wide v0
.end method
