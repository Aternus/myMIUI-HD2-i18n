.class Lcom/miui/backup/RestoreSettingCmd;
.super Lcom/miui/backup/RestoreCmd;
.source "RestoreCmd.java"


# direct methods
.method public constructor <init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V
    .locals 0
    .parameter "info"
    .parameter "baseDir"
    .parameter "context"

    .prologue
    .line 751
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/backup/RestoreCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    .line 752
    return-void
.end method


# virtual methods
.method protected formatFinishedSize(J)Ljava/lang/String;
    .locals 1
    .parameter "finishedSize"

    .prologue
    .line 761
    invoke-static {p1, p2}, Lcom/miui/backup/BackupUtils;->getCommaFormat(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected genStrategy()V
    .locals 4

    .prologue
    .line 756
    new-instance v0, Lcom/miui/backup/SettingRestore;

    iget-object v1, p0, Lcom/miui/backup/BackupRestoreCmd;->mBaseDir:Ljava/io/File;

    iget-object v2, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v2, v2, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/backup/BackupRestoreCmd;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, v3}, Lcom/miui/backup/SettingRestore;-><init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    .line 757
    return-void
.end method

.method protected getUnit()Ljava/lang/String;
    .locals 2

    .prologue
    .line 766
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f06001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected postAction()Z
    .locals 5

    .prologue
    .line 771
    new-instance v1, Lcom/miui/backup/ScriptStrategy;

    invoke-direct {v1}, Lcom/miui/backup/ScriptStrategy;-><init>()V

    .line 774
    .local v1, strategy:Lcom/miui/backup/ScriptStrategy;
    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone_preferences.xml"

    const-string v4, "/data/data/com.android.phone/shared_prefs/com.android.phone_preferences.xml"

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/miui/backup/RestoreSettingCmd;->prepareRestorePreferences(Lcom/miui/backup/ScriptStrategy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const-string v2, "com.android.mms"

    const-string v3, "com.android.mms_preferences.xml"

    const-string v4, "/data/data/com.android.mms/shared_prefs/com.android.mms_preferences.xml"

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/miui/backup/RestoreSettingCmd;->prepareRestorePreferences(Lcom/miui/backup/ScriptStrategy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    invoke-virtual {v1}, Lcom/miui/backup/ScriptStrategy;->execute()Z

    .line 781
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 782
    .local v0, curConfig:Landroid/content/res/Configuration;
    const-wide/16 v2, 0x2000

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Configuration;->updateTheme(J)V

    .line 783
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 786
    .end local v0           #curConfig:Landroid/content/res/Configuration;
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 784
    :catch_0
    move-exception v2

    goto :goto_0
.end method
