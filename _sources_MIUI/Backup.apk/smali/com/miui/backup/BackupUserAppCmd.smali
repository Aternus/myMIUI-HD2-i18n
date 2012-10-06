.class Lcom/miui/backup/BackupUserAppCmd;
.super Lcom/miui/backup/BackupAppCmd;
.source "BackupCmd.java"


# instance fields
.field private mDefaultIME:Ljava/lang/String;

.field private mPM:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/pm/PackageInfo;Landroid/content/Context;)V
    .locals 1
    .parameter "info"
    .parameter "baseDir"
    .parameter "pkgInfo"
    .parameter "context"

    .prologue
    .line 118
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/backup/BackupAppCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/pm/PackageInfo;Landroid/content/Context;)V

    .line 119
    invoke-virtual {p4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/backup/BackupUserAppCmd;->mPM:Landroid/content/pm/PackageManager;

    .line 120
    return-void
.end method


# virtual methods
.method protected genStrategy()V
    .locals 5

    .prologue
    .line 139
    invoke-super {p0}, Lcom/miui/backup/BackupAppCmd;->genStrategy()V

    .line 141
    invoke-virtual {p0}, Lcom/miui/backup/BackupUserAppCmd;->getApkCopyName()Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, dstFileName:Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/backup/BackupUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    iget-object v2, p0, Lcom/miui/backup/BackupAppCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v2}, Lcom/miui/backup/BackupUtils;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 145
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/miui/backup/BackupRestoreCmd;->mBaseDir:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 146
    .local v0, dstFile:Ljava/io/File;
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/miui/backup/BackupAppCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/miui/backup/BackupUserAppCmd;->addItemToScript(ILjava/lang/String;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method protected getApkCopyName()Ljava/lang/String;
    .locals 6

    .prologue
    const-string v4, "/pkg.apk"

    .line 152
    const-string v0, ""

    .line 153
    .local v0, apkCopyName:Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/backup/BackupAppCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v3, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 154
    .local v1, apkSrc:Ljava/lang/String;
    const-string v3, "/pkg.apk"

    invoke-virtual {v1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    const-string v3, "/pkg.apk"

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 157
    .local v2, endIndex:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    const/4 v5, 0x1

    sub-int v5, v2, v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".apk"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 159
    .end local v2           #endIndex:I
    :cond_0
    return-object v0
.end method

.method protected getLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/miui/backup/BackupUserAppCmd;->mPM:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/miui/backup/BackupAppCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected postAction()Z
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/miui/backup/BackupUserAppCmd;->mDefaultIME:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "default_input_method"

    iget-object v2, p0, Lcom/miui/backup/BackupUserAppCmd;->mDefaultIME:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 168
    :cond_0
    invoke-super {p0}, Lcom/miui/backup/BackupAppCmd;->postAction()Z

    move-result v0

    return v0
.end method

.method protected preAction()Z
    .locals 3

    .prologue
    .line 129
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.view.InputMethod"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v1, v1, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    iget-object v1, p0, Lcom/miui/backup/BackupUserAppCmd;->mPM:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/miui/backup/BackupRestoreCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_input_method"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/backup/BackupUserAppCmd;->mDefaultIME:Ljava/lang/String;

    .line 134
    :cond_0
    invoke-super {p0}, Lcom/miui/backup/BackupAppCmd;->preAction()Z

    move-result v1

    return v1
.end method
