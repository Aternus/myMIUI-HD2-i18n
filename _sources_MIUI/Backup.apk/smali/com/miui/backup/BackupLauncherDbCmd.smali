.class Lcom/miui/backup/BackupLauncherDbCmd;
.super Lcom/miui/backup/BackupCmd;
.source "BackupCmd.java"


# instance fields
.field private mDataName:Ljava/lang/String;

.field private mDataPath:Ljava/lang/String;

.field private mPkgInfo:Landroid/content/pm/PackageInfo;


# direct methods
.method public constructor <init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "info"
    .parameter "baseDir"
    .parameter "context"
    .parameter "dataName"
    .parameter "dataPath"

    .prologue
    .line 206
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/backup/BackupCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    .line 202
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/backup/BackupLauncherDbCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    .line 207
    iget-object v0, p1, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-static {p3, v0}, Lcom/miui/backup/BackupUtils;->getPkgInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/backup/BackupLauncherDbCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    .line 208
    iput-object p4, p0, Lcom/miui/backup/BackupLauncherDbCmd;->mDataName:Ljava/lang/String;

    .line 209
    iput-object p5, p0, Lcom/miui/backup/BackupLauncherDbCmd;->mDataPath:Ljava/lang/String;

    .line 210
    return-void
.end method


# virtual methods
.method protected genStrategy()V
    .locals 5

    .prologue
    .line 214
    iget-object v2, p0, Lcom/miui/backup/BackupLauncherDbCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-nez v2, :cond_0

    .line 230
    :goto_0
    return-void

    .line 217
    :cond_0
    new-instance v2, Lcom/miui/backup/ScriptStrategy;

    invoke-direct {v2}, Lcom/miui/backup/ScriptStrategy;-><init>()V

    iput-object v2, p0, Lcom/miui/backup/BackupRestoreCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    .line 218
    const/16 v2, 0xc

    iget-object v3, p0, Lcom/miui/backup/BackupLauncherDbCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v3, v4}, Lcom/miui/backup/BackupLauncherDbCmd;->addItemToScript(ILjava/lang/String;Ljava/lang/String;)V

    .line 219
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/miui/backup/BackupRestoreCmd;->mBaseDir:Ljava/io/File;

    const-string v3, "com.android.launcher"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 220
    .local v0, packageDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 221
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 223
    :cond_1
    const/16 v2, 0xd

    iget-object v3, p0, Lcom/miui/backup/BackupLauncherDbCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/miui/backup/BackupLauncherDbCmd;->addItemToScript(ILjava/lang/String;Ljava/lang/String;)V

    .line 225
    new-instance v1, Ljava/io/File;

    const-string v2, "system"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 226
    .local v1, widgetDir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    .line 227
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    .line 229
    :cond_2
    const/4 v2, 0x0

    const-string v3, "/data/system/appwidgets.xml"

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/miui/backup/BackupLauncherDbCmd;->addItemToScript(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected postAction()Z
    .locals 5

    .prologue
    .line 234
    sget-object v0, Lcom/miui/backup/BackupLauncherDbCmd;->mDbAdapter:Lcom/miui/backup/DbAdapter;

    invoke-virtual {p0}, Lcom/miui/backup/BackupLauncherDbCmd;->getLabel()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/backup/BackupLauncherDbCmd;->mDataName:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/backup/BackupLauncherDbCmd;->mDataPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget v4, v4, Lcom/miui/milk/common/AppInfo;->type:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/miui/backup/DbAdapter;->insertData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J

    .line 235
    const/4 v0, 0x1

    return v0
.end method
