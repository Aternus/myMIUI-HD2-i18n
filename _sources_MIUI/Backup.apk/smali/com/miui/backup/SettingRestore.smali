.class final Lcom/miui/backup/SettingRestore;
.super Lcom/miui/backup/SettingStrategy;
.source "BackupRestoreStrategy.java"


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .parameter "dstBackupDir"
    .parameter "dataName"
    .parameter "context"

    .prologue
    .line 946
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/backup/SettingStrategy;-><init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V

    .line 947
    return-void
.end method


# virtual methods
.method protected execute_()V
    .locals 2

    .prologue
    .line 951
    iget-object v0, p0, Lcom/miui/backup/SettingStrategy;->mSettingController:Lcom/miui/milk/control/local/SettingController;

    iget-object v1, p0, Lcom/miui/backup/SettingStrategy;->mDataFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/miui/milk/control/local/SettingController;->importSettings(Ljava/io/File;)V

    .line 952
    return-void
.end method

.method protected getFinishedSize()J
    .locals 2

    .prologue
    .line 960
    iget-object v0, p0, Lcom/miui/backup/SettingStrategy;->mSettingController:Lcom/miui/milk/control/local/SettingController;

    invoke-virtual {v0}, Lcom/miui/milk/control/local/SettingController;->getImportedSize()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getTotalSize()J
    .locals 2

    .prologue
    .line 955
    iget-object v0, p0, Lcom/miui/backup/SettingStrategy;->mSettingController:Lcom/miui/milk/control/local/SettingController;

    invoke-virtual {v0}, Lcom/miui/milk/control/local/SettingController;->getTotalImportSize()J

    move-result-wide v0

    return-wide v0
.end method
