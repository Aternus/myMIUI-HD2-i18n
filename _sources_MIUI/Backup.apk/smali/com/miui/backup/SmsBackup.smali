.class final Lcom/miui/backup/SmsBackup;
.super Lcom/miui/backup/SmsStrategy;
.source "BackupRestoreStrategy.java"


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter "dstBackupDir"
    .parameter "dataName"
    .parameter "context"

    .prologue
    .line 688
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/backup/SmsStrategy;-><init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V

    .line 689
    return-void
.end method


# virtual methods
.method protected execute_()V
    .locals 2

    .prologue
    .line 693
    iget-object v0, p0, Lcom/miui/backup/SmsStrategy;->mSmsController:Lcom/miui/milk/control/local/SmsController;

    iget-object v1, p0, Lcom/miui/backup/SmsStrategy;->mDataFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/miui/milk/control/local/SmsController;->exportSms(Ljava/io/File;)V

    .line 694
    return-void
.end method

.method protected getFinishedSize()J
    .locals 2

    .prologue
    .line 703
    iget-object v0, p0, Lcom/miui/backup/SmsStrategy;->mSmsController:Lcom/miui/milk/control/local/SmsController;

    invoke-virtual {v0}, Lcom/miui/milk/control/local/SmsController;->getExportedSize()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getTotalSize()J
    .locals 2

    .prologue
    .line 698
    iget-object v0, p0, Lcom/miui/backup/SmsStrategy;->mSmsController:Lcom/miui/milk/control/local/SmsController;

    invoke-virtual {v0}, Lcom/miui/milk/control/local/SmsController;->getTotalExportSize()J

    move-result-wide v0

    return-wide v0
.end method
