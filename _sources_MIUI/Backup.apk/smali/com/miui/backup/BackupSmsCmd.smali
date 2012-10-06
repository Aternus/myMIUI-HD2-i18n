.class Lcom/miui/backup/BackupSmsCmd;
.super Lcom/miui/backup/BackupAppDataCmd;
.source "BackupCmd.java"


# direct methods
.method constructor <init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "info"
    .parameter "baseDir"
    .parameter "context"
    .parameter "dataName"
    .parameter "dataPath"

    .prologue
    .line 287
    invoke-direct/range {p0 .. p5}, Lcom/miui/backup/BackupAppDataCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    return-void
.end method


# virtual methods
.method protected formatFinishedSize(J)Ljava/lang/String;
    .locals 1
    .parameter "finishedSize"

    .prologue
    .line 297
    invoke-static {p1, p2}, Lcom/miui/backup/BackupUtils;->getCommaFormat(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected genStrategy()V
    .locals 4

    .prologue
    .line 292
    new-instance v0, Lcom/miui/backup/SmsBackup;

    iget-object v1, p0, Lcom/miui/backup/BackupRestoreCmd;->mBaseDir:Ljava/io/File;

    iget-object v2, p0, Lcom/miui/backup/BackupAppDataCmd;->mDataName:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/backup/BackupRestoreCmd;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/backup/SmsBackup;-><init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    .line 293
    return-void
.end method

.method protected getUnit()Ljava/lang/String;
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
