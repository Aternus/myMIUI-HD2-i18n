.class Lcom/miui/backup/BackupThemeCmd;
.super Lcom/miui/backup/BackupAppDataCmd;
.source "BackupCmd.java"


# direct methods
.method public constructor <init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "info"
    .parameter "baseDir"
    .parameter "context"
    .parameter "dataName"
    .parameter "dataPath"

    .prologue
    .line 438
    invoke-direct/range {p0 .. p5}, Lcom/miui/backup/BackupAppDataCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    return-void
.end method


# virtual methods
.method protected genStrategy()V
    .locals 13

    .prologue
    const-string v12, ""

    .line 443
    new-instance v7, Lcom/miui/backup/ThemeBackup;

    iget-object v8, p0, Lcom/miui/backup/BackupRestoreCmd;->mBaseDir:Ljava/io/File;

    iget-object v9, p0, Lcom/miui/backup/BackupAppDataCmd;->mDataName:Ljava/lang/String;

    iget-object v10, p0, Lcom/miui/backup/BackupRestoreCmd;->mContext:Landroid/content/Context;

    const-string v11, "com.android.thememanager"

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/miui/backup/ThemeBackup;-><init>(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/miui/backup/BackupRestoreCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    .line 444
    iget-object v7, p0, Lcom/miui/backup/BackupRestoreCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    check-cast v7, Lcom/miui/backup/ThemeBackup;

    invoke-virtual {v7}, Lcom/miui/backup/ThemeBackup;->getSrcAndDstPath()Landroid/util/Pair;

    move-result-object v3

    .line 445
    .local v3, pair:Landroid/util/Pair;,"Landroid/util/Pair<[Ljava/lang/String;[Ljava/lang/String;>;"
    if-nez v3, :cond_1

    .line 463
    :cond_0
    return-void

    .line 449
    :cond_1
    iget-object v4, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, [Ljava/lang/String;

    .line 450
    .local v4, src:[Ljava/lang/String;
    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    .line 451
    .local v0, dst:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v7, v4

    if-ge v2, v7, :cond_0

    .line 452
    new-instance v5, Ljava/io/File;

    aget-object v7, v4, v2

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 453
    .local v5, srcFileDir:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    aget-object v7, v0, v2

    invoke-direct {v1, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 455
    .local v1, dstFileDir:Ljava/io/File;
    const/4 v7, 0x3

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {p0, v7, v8, v12}, Lcom/miui/backup/BackupThemeCmd;->addItemToScript(ILjava/lang/String;Ljava/lang/String;)V

    .line 456
    const/16 v7, 0xa

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {p0, v7, v8, v12}, Lcom/miui/backup/BackupThemeCmd;->addItemToScript(ILjava/lang/String;Ljava/lang/String;)V

    .line 457
    const/4 v7, 0x1

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v7, v8, v9}, Lcom/miui/backup/BackupThemeCmd;->addItemToScript(ILjava/lang/String;Ljava/lang/String;)V

    .line 458
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 459
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 460
    .local v6, tmpSrcPath:Ljava/lang/String;
    const/16 v7, 0xb

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v6, v8}, Lcom/miui/backup/BackupThemeCmd;->addItemToScript(ILjava/lang/String;Ljava/lang/String;)V

    .line 451
    .end local v6           #tmpSrcPath:Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
