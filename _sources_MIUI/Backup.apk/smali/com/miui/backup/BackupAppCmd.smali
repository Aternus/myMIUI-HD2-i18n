.class Lcom/miui/backup/BackupAppCmd;
.super Lcom/miui/backup/BackupCmd;
.source "BackupCmd.java"


# instance fields
.field private mPM:Landroid/content/pm/PackageManager;

.field private mPackageDisabled:Z

.field protected mPkgInfo:Landroid/content/pm/PackageInfo;


# direct methods
.method protected constructor <init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/pm/PackageInfo;Landroid/content/Context;)V
    .locals 1
    .parameter "info"
    .parameter "baseDir"
    .parameter "pkgInfo"
    .parameter "context"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p4}, Lcom/miui/backup/BackupCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/backup/BackupAppCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    .line 58
    iput-object p3, p0, Lcom/miui/backup/BackupAppCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    .line 59
    invoke-virtual {p4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/backup/BackupAppCmd;->mPM:Landroid/content/pm/PackageManager;

    .line 60
    return-void
.end method

.method public static createCmd(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)Lcom/miui/backup/BackupAppCmd;
    .locals 3
    .parameter "info"
    .parameter "baseDir"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 42
    iget-object v1, p0, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {p2, v1}, Lcom/miui/backup/BackupUtils;->getPkgInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 43
    .local v0, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    .line 44
    iget v1, p0, Lcom/miui/milk/common/AppInfo;->type:I

    packed-switch v1, :pswitch_data_0

    move-object v1, v2

    .line 53
    :goto_0
    return-object v1

    .line 46
    :pswitch_0
    new-instance v1, Lcom/miui/backup/BackupAppCmd;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/miui/backup/BackupAppCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/pm/PackageInfo;Landroid/content/Context;)V

    goto :goto_0

    .line 48
    :pswitch_1
    new-instance v1, Lcom/miui/backup/BackupUserAppCmd;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/miui/backup/BackupUserAppCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/pm/PackageInfo;Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 53
    goto :goto_0

    .line 44
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public cancel(Z)V
    .locals 4
    .parameter "isFailed"

    .prologue
    const/4 v3, 0x0

    .line 100
    iget-boolean v0, p0, Lcom/miui/backup/BackupAppCmd;->mPackageDisabled:Z

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/miui/backup/BackupAppCmd;->mPM:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v1, v1, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 102
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v1, v1, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/miui/backup/SysUtils;->showBubble(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 103
    iput-boolean v3, p0, Lcom/miui/backup/BackupAppCmd;->mPackageDisabled:Z

    .line 105
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/backup/BackupCmd;->cancel(Z)V

    .line 106
    return-void
.end method

.method protected genStrategy()V
    .locals 5

    .prologue
    .line 74
    new-instance v2, Lcom/miui/backup/ScriptStrategy;

    invoke-direct {v2}, Lcom/miui/backup/ScriptStrategy;-><init>()V

    iput-object v2, p0, Lcom/miui/backup/BackupRestoreCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    .line 75
    instance-of v2, p0, Lcom/miui/backup/BackupUserAppCmd;

    if-nez v2, :cond_0

    .line 77
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/miui/backup/BackupAppCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/miui/backup/BackupAppCmd;->addItemToScript(ILjava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_0
    iget-object v2, p0, Lcom/miui/backup/BackupAppCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/backup/BackupUtils;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, dstName:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/miui/backup/BackupRestoreCmd;->mBaseDir:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 81
    .local v0, dstFile:Ljava/io/File;
    const/16 v2, 0xd

    iget-object v3, p0, Lcom/miui/backup/BackupAppCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/miui/backup/BackupAppCmd;->addItemToScript(ILjava/lang/String;Ljava/lang/String;)V

    .line 82
    return-void
.end method

.method protected getApkCopyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method protected postAction()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 90
    iget-object v0, p0, Lcom/miui/backup/BackupAppCmd;->mPM:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v1, v1, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 91
    iput-boolean v3, p0, Lcom/miui/backup/BackupAppCmd;->mPackageDisabled:Z

    .line 92
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v1, v1, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v3}, Lcom/miui/backup/SysUtils;->showBubble(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 94
    sget-object v0, Lcom/miui/backup/BackupAppCmd;->mDbAdapter:Lcom/miui/backup/DbAdapter;

    invoke-virtual {p0}, Lcom/miui/backup/BackupAppCmd;->getLabel()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/backup/BackupAppCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget v3, v3, Lcom/miui/milk/common/AppInfo;->type:I

    invoke-virtual {p0}, Lcom/miui/backup/BackupAppCmd;->getApkCopyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/backup/DbAdapter;->insertApp(Ljava/lang/String;Landroid/content/pm/PackageInfo;ILjava/lang/String;)J

    .line 95
    const/4 v0, 0x1

    return v0
.end method

.method protected preAction()Z
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 64
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v1, v1, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/miui/backup/SysUtils;->showBubble(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 65
    iput-boolean v2, p0, Lcom/miui/backup/BackupAppCmd;->mPackageDisabled:Z

    .line 66
    iget-object v0, p0, Lcom/miui/backup/BackupAppCmd;->mPM:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v1, v1, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 67
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v0, v0, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/miui/backup/BackupAppCmd;->forceStop(Ljava/lang/String;)V

    .line 68
    return v2
.end method
