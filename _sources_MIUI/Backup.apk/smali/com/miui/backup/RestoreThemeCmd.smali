.class Lcom/miui/backup/RestoreThemeCmd;
.super Lcom/miui/backup/RestoreCmd;
.source "RestoreCmd.java"


# instance fields
.field mDstDir:[Ljava/lang/String;

.field mFolderStatus:[Landroid/os/FileUtils$FileStatus;

.field mSrcDir:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V
    .locals 1
    .parameter "info"
    .parameter "baseDir"
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 877
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/backup/RestoreCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    .line 872
    iput-object v0, p0, Lcom/miui/backup/RestoreThemeCmd;->mSrcDir:[Ljava/lang/String;

    .line 873
    iput-object v0, p0, Lcom/miui/backup/RestoreThemeCmd;->mDstDir:[Ljava/lang/String;

    .line 874
    iput-object v0, p0, Lcom/miui/backup/RestoreThemeCmd;->mFolderStatus:[Landroid/os/FileUtils$FileStatus;

    .line 878
    return-void
.end method

.method private getFileStatus(Ljava/lang/String;)Landroid/os/FileUtils$FileStatus;
    .locals 3
    .parameter "path"

    .prologue
    .line 943
    new-instance v1, Landroid/os/FileUtils$FileStatus;

    invoke-direct {v1}, Landroid/os/FileUtils$FileStatus;-><init>()V

    .line 944
    .local v1, status:Landroid/os/FileUtils$FileStatus;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 945
    .local v0, file:Ljava/io/File;
    :goto_0
    iget v2, v1, Landroid/os/FileUtils$FileStatus;->uid:I

    if-nez v2, :cond_0

    .line 946
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/os/FileUtils;->getFileStatus(Ljava/lang/String;Landroid/os/FileUtils$FileStatus;)Z

    .line 947
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 949
    :cond_0
    iget v2, v1, Landroid/os/FileUtils$FileStatus;->mode:I

    or-int/lit16 v2, v2, 0x1c0

    iput v2, v1, Landroid/os/FileUtils$FileStatus;->mode:I

    .line 950
    iget v2, v1, Landroid/os/FileUtils$FileStatus;->mode:I

    and-int/lit16 v2, v2, 0x1ff

    iput v2, v1, Landroid/os/FileUtils$FileStatus;->mode:I

    .line 952
    return-object v1
.end method


# virtual methods
.method public execute()Z
    .locals 8

    .prologue
    .line 906
    invoke-super {p0}, Lcom/miui/backup/RestoreCmd;->execute()Z

    move-result v2

    .line 907
    .local v2, ret:Z
    if-eqz v2, :cond_0

    .line 910
    :try_start_0
    iget-object p0, p0, Lcom/miui/backup/BackupRestoreCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    .end local p0
    check-cast p0, Lcom/miui/backup/ThemeStrategy;

    iget-object v4, p0, Lcom/miui/backup/ThemeStrategy;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 911
    .local v3, themeAppDataDir:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 912
    .local v0, builder:Ljava/lang/StringBuilder;
    const-string v4, "killall %s;"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "com.android.thememanager"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    const-string v4, "touch \'%s/%s\'"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    const-string v7, "RestoreFromBackup"

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v4}, Lcom/miui/backup/SysUtils;->runExecSh([Ljava/lang/String;)V

    .line 917
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 918
    .local v1, curConfig:Landroid/content/res/Configuration;
    const-wide/32 v4, 0x10007899

    invoke-virtual {v1, v4, v5}, Landroid/content/res/Configuration;->updateTheme(J)V

    .line 919
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/app/IActivityManager;->updateConfiguration(Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 923
    .end local v0           #builder:Ljava/lang/StringBuilder;
    .end local v1           #curConfig:Landroid/content/res/Configuration;
    .end local v3           #themeAppDataDir:Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 920
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method protected genStrategy()V
    .locals 11

    .prologue
    const-string v10, ""

    .line 882
    new-instance v5, Lcom/miui/backup/ThemeRestore;

    iget-object v6, p0, Lcom/miui/backup/BackupRestoreCmd;->mBaseDir:Ljava/io/File;

    iget-object v7, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v7, v7, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    iget-object v8, p0, Lcom/miui/backup/BackupRestoreCmd;->mContext:Landroid/content/Context;

    const-string v9, "com.android.thememanager"

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/miui/backup/ThemeRestore;-><init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/miui/backup/BackupRestoreCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    .line 883
    iget-object v5, p0, Lcom/miui/backup/BackupRestoreCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    check-cast v5, Lcom/miui/backup/ThemeRestore;

    invoke-virtual {v5}, Lcom/miui/backup/ThemeRestore;->getSrcAndDstPath()Landroid/util/Pair;

    move-result-object v2

    .line 885
    .local v2, pair:Landroid/util/Pair;,"Landroid/util/Pair<[Ljava/lang/String;[Ljava/lang/String;>;"
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/miui/backup/RestoreThemeCmd;->mSrcDir:[Ljava/lang/String;

    .line 886
    iget-object v5, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/miui/backup/RestoreThemeCmd;->mDstDir:[Ljava/lang/String;

    .line 887
    iget-object v5, p0, Lcom/miui/backup/RestoreThemeCmd;->mSrcDir:[Ljava/lang/String;

    array-length v5, v5

    new-array v5, v5, [Landroid/os/FileUtils$FileStatus;

    iput-object v5, p0, Lcom/miui/backup/RestoreThemeCmd;->mFolderStatus:[Landroid/os/FileUtils$FileStatus;

    .line 889
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Lcom/miui/backup/RestoreThemeCmd;->mSrcDir:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 890
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/miui/backup/RestoreThemeCmd;->mSrcDir:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 891
    .local v3, srcFileDir:Ljava/io/File;
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lcom/miui/backup/RestoreThemeCmd;->mDstDir:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 892
    .local v0, dstFileDir:Ljava/io/File;
    iget-object v5, p0, Lcom/miui/backup/RestoreThemeCmd;->mFolderStatus:[Landroid/os/FileUtils$FileStatus;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/miui/backup/RestoreThemeCmd;->getFileStatus(Ljava/lang/String;)Landroid/os/FileUtils$FileStatus;

    move-result-object v6

    aput-object v6, v5, v1

    .line 894
    const/4 v5, 0x3

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {p0, v5, v6, v10}, Lcom/miui/backup/RestoreThemeCmd;->addItemToScript(ILjava/lang/String;Ljava/lang/String;)V

    .line 895
    const/16 v5, 0xa

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {p0, v5, v6, v10}, Lcom/miui/backup/RestoreThemeCmd;->addItemToScript(ILjava/lang/String;Ljava/lang/String;)V

    .line 896
    const/4 v5, 0x1

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v5, v6, v7}, Lcom/miui/backup/RestoreThemeCmd;->addItemToScript(ILjava/lang/String;Ljava/lang/String;)V

    .line 897
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 898
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 899
    .local v4, tmpSrcPath:Ljava/lang/String;
    const/16 v5, 0xb

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v4, v6}, Lcom/miui/backup/RestoreThemeCmd;->addItemToScript(ILjava/lang/String;Ljava/lang/String;)V

    .line 889
    .end local v4           #tmpSrcPath:Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 902
    .end local v0           #dstFileDir:Ljava/io/File;
    .end local v3           #srcFileDir:Ljava/io/File;
    :cond_1
    return-void
.end method

.method protected postAction()Z
    .locals 6

    .prologue
    .line 928
    new-instance v3, Lcom/miui/backup/ScriptStrategy;

    invoke-direct {v3}, Lcom/miui/backup/ScriptStrategy;-><init>()V

    .line 930
    .local v3, strategy:Lcom/miui/backup/ScriptStrategy;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/miui/backup/RestoreThemeCmd;->mDstDir:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_0

    .line 931
    iget-object v4, p0, Lcom/miui/backup/RestoreThemeCmd;->mDstDir:[Ljava/lang/String;

    aget-object v0, v4, v1

    .line 932
    .local v0, dstFolder:Ljava/lang/String;
    iget-object v4, p0, Lcom/miui/backup/RestoreThemeCmd;->mFolderStatus:[Landroid/os/FileUtils$FileStatus;

    aget-object v2, v4, v1

    .line 934
    .local v2, status:Landroid/os/FileUtils$FileStatus;
    const/4 v4, 0x7

    iget v5, v2, Landroid/os/FileUtils$FileStatus;->mode:I

    invoke-static {v5}, Ljava/lang/Integer;->toOctalString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5, v0}, Lcom/miui/backup/RestoreThemeCmd;->addItemToScript(Lcom/miui/backup/BackupRestoreStrategy;ILjava/lang/String;Ljava/lang/String;)V

    .line 935
    const/16 v4, 0x9

    iget v5, v2, Landroid/os/FileUtils$FileStatus;->uid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5, v0}, Lcom/miui/backup/RestoreThemeCmd;->addItemToScript(Lcom/miui/backup/BackupRestoreStrategy;ILjava/lang/String;Ljava/lang/String;)V

    .line 936
    const/16 v4, 0x8

    iget v5, v2, Landroid/os/FileUtils$FileStatus;->gid:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v3, v4, v5, v0}, Lcom/miui/backup/RestoreThemeCmd;->addItemToScript(Lcom/miui/backup/BackupRestoreStrategy;ILjava/lang/String;Ljava/lang/String;)V

    .line 930
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 939
    .end local v0           #dstFolder:Ljava/lang/String;
    .end local v2           #status:Landroid/os/FileUtils$FileStatus;
    :cond_0
    invoke-virtual {v3}, Lcom/miui/backup/ScriptStrategy;->execute()Z

    move-result v4

    return v4
.end method
