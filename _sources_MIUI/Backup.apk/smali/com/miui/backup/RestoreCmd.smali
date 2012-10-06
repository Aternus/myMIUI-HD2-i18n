.class public Lcom/miui/backup/RestoreCmd;
.super Lcom/miui/backup/BackupRestoreCmd;
.source "RestoreCmd.java"


# direct methods
.method public constructor <init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V
    .locals 3
    .parameter "info"
    .parameter "baseDir"
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/backup/BackupRestoreCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    .line 35
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    iput-boolean v2, v0, Lcom/miui/backup/CmdRunningInfo;->isBackup:Z

    .line 36
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mRunningInfo:Lcom/miui/backup/CmdRunningInfo;

    iget v1, p1, Lcom/miui/milk/common/AppInfo;->type:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, v0, Lcom/miui/backup/CmdRunningInfo;->isSystemApp:Z

    .line 37
    return-void

    :cond_0
    move v1, v2

    .line 36
    goto :goto_0
.end method


# virtual methods
.method protected changePermission(Lcom/miui/backup/ScriptStrategy;Ljava/lang/String;III)V
    .locals 4
    .parameter "strategy"
    .parameter "targetFilePath"
    .parameter "mode"
    .parameter "ownUid"
    .parameter "grpUid"

    .prologue
    const-string v3, ""

    .line 46
    const/4 v0, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/miui/backup/RestoreCmd;->addItemToScript(Lcom/miui/backup/BackupRestoreStrategy;ILjava/lang/String;Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/miui/backup/RestoreCmd;->addItemToScript(Lcom/miui/backup/BackupRestoreStrategy;ILjava/lang/String;Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/miui/backup/RestoreCmd;->addItemToScript(Lcom/miui/backup/BackupRestoreStrategy;ILjava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method protected changePermissionRecursively(Lcom/miui/backup/ScriptStrategy;Ljava/io/File;ILjava/lang/String;Ljava/lang/String;)V
    .locals 18
    .parameter "strategy"
    .parameter "restoreDataDir"
    .parameter "uid"
    .parameter "packageName"
    .parameter "targetDirPrefix"

    .prologue
    .line 92
    invoke-virtual/range {p2 .. p2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v14

    .line 93
    .local v14, contents:[Ljava/io/File;
    if-nez v14, :cond_1

    .line 136
    :cond_0
    return-void

    .line 97
    :cond_1
    move-object v13, v14

    .local v13, arr$:[Ljava/io/File;
    move-object v0, v13

    array-length v0, v0

    move/from16 v17, v0

    .local v17, len$:I
    const/16 v16, 0x0

    .local v16, i$:I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_0

    aget-object v9, v13, v16

    .line 98
    .local v9, file:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 100
    const/16 v5, 0x309

    .line 101
    .local v5, mode:I
    move/from16 v6, p3

    .line 102
    .local v6, ownerUid:I
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    .line 103
    .local v15, filePath:Ljava/lang/String;
    const-string v2, "shared_prefs"

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "databases"

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "cache/"

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "files"

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 104
    :cond_2
    const/16 v5, 0x303

    .line 110
    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v2

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v0, v15

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v15, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, targetFilePath:Ljava/lang/String;
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move v7, v6

    .line 111
    invoke-virtual/range {v2 .. v7}, Lcom/miui/backup/RestoreCmd;->changePermission(Lcom/miui/backup/ScriptStrategy;Ljava/lang/String;III)V

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    .line 113
    invoke-virtual/range {v7 .. v12}, Lcom/miui/backup/RestoreCmd;->changePermissionRecursively(Lcom/miui/backup/ScriptStrategy;Ljava/io/File;ILjava/lang/String;Ljava/lang/String;)V

    .line 97
    .end local v4           #targetFilePath:Ljava/lang/String;
    .end local v5           #mode:I
    .end local v6           #ownerUid:I
    .end local v15           #filePath:Ljava/lang/String;
    :cond_4
    :goto_2
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 105
    .restart local v5       #mode:I
    .restart local v6       #ownerUid:I
    .restart local v15       #filePath:Ljava/lang/String;
    :cond_5
    const-string v2, "lib"

    invoke-virtual {v9}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 106
    const/16 v5, 0x2f3

    .line 107
    const/16 v6, 0x3e8

    goto :goto_1

    .line 114
    .end local v5           #mode:I
    .end local v6           #ownerUid:I
    .end local v15           #filePath:Ljava/lang/String;
    :cond_6
    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 116
    const/16 v5, 0x294

    .line 117
    .restart local v5       #mode:I
    move/from16 v6, p3

    .line 118
    .restart local v6       #ownerUid:I
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    .line 119
    .restart local v15       #filePath:Ljava/lang/String;
    const-string v2, "/lib/"

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 120
    const/16 v5, 0x2f3

    .line 121
    const/16 v6, 0x3e8

    .line 132
    :cond_7
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v2

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v15, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4       #targetFilePath:Ljava/lang/String;
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move v7, v6

    .line 133
    invoke-virtual/range {v2 .. v7}, Lcom/miui/backup/RestoreCmd;->changePermission(Lcom/miui/backup/ScriptStrategy;Ljava/lang/String;III)V

    goto :goto_2

    .line 122
    .end local v4           #targetFilePath:Ljava/lang/String;
    :cond_8
    const-string v2, "shared_prefs/webviewCache/"

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "cache/webviewCache/"

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "files/cache/"

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "cache/"

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 126
    :cond_9
    const/16 v5, 0x258

    goto :goto_3

    .line 127
    :cond_a
    const-string v2, "databases/"

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "shared_prefs/"

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b

    const-string v2, "files/"

    invoke-virtual {v15, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 128
    :cond_b
    const/16 v5, 0x294

    goto :goto_3
.end method

.method protected pkgExists(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/backup/BackupUtils;->getPkgInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected prepareRestorePreferences(Lcom/miui/backup/ScriptStrategy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "strategy"
    .parameter "packageName"
    .parameter "prefFileName"
    .parameter "oriPrefPath"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/miui/backup/BackupUtils;->getPkgInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 66
    .local v6, pkgInfo:Landroid/content/pm/PackageInfo;
    if-nez v6, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    new-instance v7, Ljava/io/File;

    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mBaseDir:Ljava/io/File;

    invoke-direct {v7, v0, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 70
    .local v7, prefFile:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x1

    invoke-virtual {p0, p4, v0}, Lcom/miui/backup/RestoreCmd;->rmData(Ljava/lang/String;Z)Z

    .line 74
    const/4 v0, 0x0

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/miui/backup/RestoreCmd;->addItemToScript(Lcom/miui/backup/BackupRestoreStrategy;ILjava/lang/String;Ljava/lang/String;)V

    .line 75
    const/16 v3, 0x294

    iget-object v0, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    invoke-virtual/range {v0 .. v5}, Lcom/miui/backup/RestoreCmd;->changePermission(Lcom/miui/backup/ScriptStrategy;Ljava/lang/String;III)V

    goto :goto_0
.end method

.method protected rmData(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "dataDir"
    .parameter "isFile"

    .prologue
    .line 52
    new-instance v1, Lcom/miui/backup/ScriptStrategy;

    invoke-direct {v1}, Lcom/miui/backup/ScriptStrategy;-><init>()V

    .line 53
    .local v1, strategy:Lcom/miui/backup/ScriptStrategy;
    if-eqz p2, :cond_0

    const/4 v2, 0x2

    move v0, v2

    .line 54
    .local v0, rmCmd:I
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, p1, v2}, Lcom/miui/backup/RestoreCmd;->addItemToScript(Lcom/miui/backup/BackupRestoreStrategy;ILjava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-virtual {v1}, Lcom/miui/backup/ScriptStrategy;->execute()Z

    .line 56
    invoke-virtual {v1}, Lcom/miui/backup/ScriptStrategy;->isSucceeded()Z

    move-result v2

    return v2

    .line 53
    .end local v0           #rmCmd:I
    :cond_0
    const/4 v2, 0x3

    move v0, v2

    goto :goto_0
.end method
