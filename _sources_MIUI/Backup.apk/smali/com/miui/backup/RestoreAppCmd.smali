.class Lcom/miui/backup/RestoreAppCmd;
.super Lcom/miui/backup/RestoreCmd;
.source "RestoreCmd.java"


# instance fields
.field private mPkgInfo:Landroid/content/pm/PackageInfo;


# direct methods
.method public constructor <init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V
    .locals 1
    .parameter "info"
    .parameter "baseDir"
    .parameter "context"

    .prologue
    .line 143
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/backup/RestoreCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/backup/RestoreAppCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    .line 144
    return-void
.end method


# virtual methods
.method protected action()Z
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Lcom/miui/backup/RestoreCmd;->action()Z

    .line 151
    const/4 v0, 0x1

    return v0
.end method

.method protected genStrategy()V
    .locals 4

    .prologue
    .line 171
    new-instance v1, Lcom/miui/backup/ScriptStrategy;

    invoke-direct {v1}, Lcom/miui/backup/ScriptStrategy;-><init>()V

    iput-object v1, p0, Lcom/miui/backup/BackupRestoreCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    .line 174
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/miui/backup/BackupRestoreCmd;->mBaseDir:Ljava/io/File;

    iget-object v2, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v2, v2, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 175
    .local v0, restoreDataDir:Ljava/io/File;
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/backup/RestoreAppCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v3}, Lcom/miui/backup/RestoreAppCmd;->addItemToScript(ILjava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method protected postAction()Z
    .locals 11

    .prologue
    .line 180
    new-instance v1, Lcom/miui/backup/ScriptStrategy;

    invoke-direct {v1}, Lcom/miui/backup/ScriptStrategy;-><init>()V

    .line 183
    .local v1, strategy:Lcom/miui/backup/ScriptStrategy;
    iget-object v0, p0, Lcom/miui/backup/RestoreAppCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 184
    .local v2, dataDir:Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/backup/RestoreAppCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 185
    .local v4, uid:I
    const/16 v3, 0x2ef

    move-object v0, p0

    move v5, v4

    invoke-virtual/range {v0 .. v5}, Lcom/miui/backup/RestoreAppCmd;->changePermission(Lcom/miui/backup/ScriptStrategy;Ljava/lang/String;III)V

    .line 189
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/miui/backup/RestoreAppCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 190
    .local v10, targetDirPrefix:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mBaseDir:Ljava/io/File;

    iget-object v3, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v3, v3, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-direct {v7, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 191
    .local v7, restoreDataDir:Ljava/io/File;
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v9, v0, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    move-object v5, p0

    move-object v6, v1

    move v8, v4

    invoke-virtual/range {v5 .. v10}, Lcom/miui/backup/RestoreAppCmd;->changePermissionRecursively(Lcom/miui/backup/ScriptStrategy;Ljava/io/File;ILjava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {v1}, Lcom/miui/backup/ScriptStrategy;->execute()Z

    move-result v0

    return v0
.end method

.method protected preAction()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 156
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v1, v1, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/backup/BackupUtils;->getPkgInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/backup/RestoreAppCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    .line 157
    iget-object v0, p0, Lcom/miui/backup/RestoreAppCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    move v0, v2

    .line 166
    :goto_0
    return v0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/miui/backup/RestoreAppCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/miui/backup/RestoreAppCmd;->forceStop(Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/miui/backup/RestoreAppCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/miui/backup/RestoreAppCmd;->rmData(Ljava/lang/String;Z)Z

    .line 166
    const/4 v0, 0x1

    goto :goto_0
.end method
