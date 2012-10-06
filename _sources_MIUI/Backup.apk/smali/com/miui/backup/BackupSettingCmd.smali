.class Lcom/miui/backup/BackupSettingCmd;
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
    .line 375
    invoke-direct/range {p0 .. p5}, Lcom/miui/backup/BackupAppDataCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    return-void
.end method


# virtual methods
.method protected formatFinishedSize(J)Ljava/lang/String;
    .locals 1
    .parameter "finishedSize"

    .prologue
    .line 385
    invoke-static {p1, p2}, Lcom/miui/backup/BackupUtils;->getCommaFormat(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected genStrategy()V
    .locals 4

    .prologue
    .line 380
    new-instance v0, Lcom/miui/backup/SettingBackup;

    iget-object v1, p0, Lcom/miui/backup/BackupRestoreCmd;->mBaseDir:Ljava/io/File;

    iget-object v2, p0, Lcom/miui/backup/BackupAppDataCmd;->mDataName:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/backup/BackupRestoreCmd;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/backup/SettingBackup;-><init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    .line 381
    return-void
.end method

.method protected getUnit()Ljava/lang/String;
    .locals 2

    .prologue
    .line 390
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected postAction()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 395
    new-instance v2, Lcom/miui/backup/ScriptStrategy;

    invoke-direct {v2}, Lcom/miui/backup/ScriptStrategy;-><init>()V

    .line 398
    .local v2, strategy:Lcom/miui/backup/ScriptStrategy;
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/miui/backup/BackupRestoreCmd;->mBaseDir:Ljava/io/File;

    const-string v4, "com.android.phone_preferences.xml"

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 399
    .local v1, phonePrefFile:Ljava/io/File;
    const-string v3, "/data/data/com.android.phone/shared_prefs/com.android.phone_preferences.xml"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v5, v3, v4}, Lcom/miui/backup/BackupSettingCmd;->addItemToScript(Lcom/miui/backup/BackupRestoreStrategy;ILjava/lang/String;Ljava/lang/String;)V

    .line 401
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/miui/backup/BackupRestoreCmd;->mBaseDir:Ljava/io/File;

    const-string v4, "com.android.mms_preferences.xml"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 402
    .local v0, mmsPrefFile:Ljava/io/File;
    const-string v3, "/data/data/com.android.mms/shared_prefs/com.android.mms_preferences.xml"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v5, v3, v4}, Lcom/miui/backup/BackupSettingCmd;->addItemToScript(Lcom/miui/backup/BackupRestoreStrategy;ILjava/lang/String;Ljava/lang/String;)V

    .line 404
    invoke-virtual {v2}, Lcom/miui/backup/ScriptStrategy;->execute()Z

    .line 406
    sget-object v3, Lcom/miui/backup/BackupSettingCmd;->mDbAdapter:Lcom/miui/backup/DbAdapter;

    invoke-virtual {p0}, Lcom/miui/backup/BackupSettingCmd;->getLabel()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/backup/BackupAppDataCmd;->mDataName:Ljava/lang/String;

    iget-object v6, p0, Lcom/miui/backup/BackupAppDataCmd;->mDataPath:Ljava/lang/String;

    iget-object v7, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget v7, v7, Lcom/miui/milk/common/AppInfo;->type:I

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/miui/backup/DbAdapter;->insertData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J

    .line 407
    const/4 v3, 0x1

    return v3
.end method
