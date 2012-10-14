.class Lcom/miui/backup/RestoreLauncherDbCmd;
.super Lcom/miui/backup/RestoreCmd;
.source "RestoreCmd.java"


# instance fields
.field private mDataDir:Ljava/io/File;

.field private mPkgInfo:Landroid/content/pm/PackageInfo;

.field private mTempDbFile:Ljava/io/File;

.field private mWidgetFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V
    .locals 0
    .parameter "info"
    .parameter "baseDir"
    .parameter "context"

    .prologue
    .line 446
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/backup/RestoreCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    .line 447
    return-void
.end method

.method private createTempDbFile()V
    .locals 5

    .prologue
    .line 560
    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/miui/backup/Customization;->APP_TEMP_DIR:Ljava/io/File;

    iget-object v4, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v4, v4, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/miui/backup/RestoreLauncherDbCmd;->mTempDbFile:Ljava/io/File;

    .line 561
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/miui/backup/BackupRestoreCmd;->mBaseDir:Ljava/io/File;

    iget-object v3, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v3, v3, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 562
    .local v0, launcherDbFile:Ljava/io/File;
    new-instance v1, Lcom/miui/backup/ScriptStrategy;

    invoke-direct {v1}, Lcom/miui/backup/ScriptStrategy;-><init>()V

    .line 563
    .local v1, tempStrategy:Lcom/miui/backup/ScriptStrategy;
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/miui/backup/RestoreLauncherDbCmd;->mTempDbFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/backup/ScriptStrategy;->add(ILjava/lang/String;Ljava/lang/String;)V

    .line 564
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/backup/RestoreLauncherDbCmd;->mTempDbFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/backup/ScriptStrategy;->add(ILjava/lang/String;Ljava/lang/String;)V

    .line 565
    invoke-virtual {v1}, Lcom/miui/backup/ScriptStrategy;->execute()Z

    .line 566
    return-void
.end method

.method private getDeletedIds(Lcom/miui/backup/LauncherDbAdapter;)Ljava/util/ArrayList;
    .locals 7
    .parameter "launcherDb"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/backup/LauncherDbAdapter;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 590
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 592
    .local v1, deleteIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/miui/backup/LauncherDbAdapter;->fetchAll()Landroid/database/Cursor;

    move-result-object v2

    .line 594
    .local v2, favoriteCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 595
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .line 596
    .local v5, listSize:I
    const/4 v4, 0x0

    .local v4, k:I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 597
    const-string v6, "iconPackage"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 598
    .local v3, iconPackage:Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {p0, v3}, Lcom/miui/backup/RestoreLauncherDbCmd;->pkgExists(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 599
    const-string v6, "_id"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 600
    .local v0, _id:Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 602
    .end local v0           #_id:Ljava/lang/String;
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 596
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 606
    .end local v3           #iconPackage:Ljava/lang/String;
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 609
    .end local v4           #k:I
    .end local v5           #listSize:I
    :goto_1
    return-object v1

    .line 604
    :catch_0
    move-exception v6

    .line 606
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v6

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    throw v6
.end method

.method private getOldDbVersion()I
    .locals 5

    .prologue
    .line 570
    new-instance v1, Lcom/miui/backup/LauncherDbAdapter;

    iget-object v2, p0, Lcom/miui/backup/BackupRestoreCmd;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/backup/RestoreLauncherDbCmd;->mTempDbFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, v4}, Lcom/miui/backup/LauncherDbAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 571
    .local v1, launcherDb:Lcom/miui/backup/LauncherDbAdapter;
    invoke-virtual {v1}, Lcom/miui/backup/LauncherDbAdapter;->open()Lcom/miui/backup/LauncherDbAdapter;

    .line 572
    invoke-virtual {v1}, Lcom/miui/backup/LauncherDbAdapter;->getOldDbVersion()I

    move-result v0

    .line 573
    .local v0, dbVersion:I
    if-nez v0, :cond_0

    .line 574
    const/4 v0, 0x1

    .line 576
    :cond_0
    invoke-virtual {v1}, Lcom/miui/backup/LauncherDbAdapter;->close()V

    .line 577
    return v0
.end method

.method private removeDeletedIds(Ljava/util/ArrayList;Lcom/miui/backup/LauncherDbAdapter;)V
    .locals 2
    .parameter
    .parameter "launcherDb"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/miui/backup/LauncherDbAdapter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 582
    .local p1, deleteIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 583
    .local v1, size:I
    const/4 v0, 0x0

    .end local p0
    .local v0, j:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 584
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2, p0}, Lcom/miui/backup/LauncherDbAdapter;->remove(Ljava/lang/String;)V

    .line 583
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 586
    :cond_0
    return-void
.end method


# virtual methods
.method protected action()Z
    .locals 1

    .prologue
    .line 451
    invoke-super {p0}, Lcom/miui/backup/RestoreCmd;->action()Z

    .line 452
    iget-object v0, p0, Lcom/miui/backup/RestoreLauncherDbCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    .line 453
    const/4 v0, 0x0

    .line 456
    :goto_0
    return v0

    .line 455
    :cond_0
    iget-object v0, p0, Lcom/miui/backup/RestoreLauncherDbCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/miui/backup/RestoreLauncherDbCmd;->forceStop(Ljava/lang/String;)V

    .line 456
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected genStrategy()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const-string v9, "/data/system/appwidgets.xml"

    const-string v7, "com.android.launcher"

    .line 490
    new-instance v4, Lcom/miui/backup/ScriptStrategy;

    invoke-direct {v4}, Lcom/miui/backup/ScriptStrategy;-><init>()V

    iput-object v4, p0, Lcom/miui/backup/BackupRestoreCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    .line 491
    const-string v4, "/data/data/com.android.launcher/databases/launcher.db"

    iget-object v5, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v5, v5, Lcom/miui/milk/common/AppInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 493
    iget-object v4, p0, Lcom/miui/backup/RestoreLauncherDbCmd;->mTempDbFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v5, v5, Lcom/miui/milk/common/AppInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p0, v6, v4, v5}, Lcom/miui/backup/RestoreLauncherDbCmd;->addItemToScript(ILjava/lang/String;Ljava/lang/String;)V

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 494
    :cond_1
    const-string v4, "/data/data/com.android.launcher/databases"

    iget-object v5, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v5, v5, Lcom/miui/milk/common/AppInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 496
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/miui/backup/BackupRestoreCmd;->mBaseDir:Ljava/io/File;

    const-string v5, "com.android.launcher"

    invoke-direct {v0, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 497
    .local v0, packageDir:Ljava/io/File;
    iget-object v4, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v4, v4, Lcom/miui/milk/common/AppInfo;->dataDir:Ljava/lang/String;

    invoke-static {v4}, Lcom/miui/backup/BackupUtils;->getFileNameFromPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 498
    .local v2, restoreDbPath:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 501
    .local v1, restoreDbDir:Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v5, v5, Lcom/miui/milk/common/AppInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p0, v6, v4, v5}, Lcom/miui/backup/RestoreLauncherDbCmd;->addItemToScript(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 502
    .end local v0           #packageDir:Ljava/io/File;
    .end local v1           #restoreDbDir:Ljava/io/File;
    .end local v2           #restoreDbPath:Ljava/lang/String;
    :cond_2
    const-string v4, "/data/data/com.android.launcher"

    iget-object v5, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v5, v5, Lcom/miui/milk/common/AppInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 503
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/miui/backup/BackupRestoreCmd;->mBaseDir:Ljava/io/File;

    const-string v5, "com.android.launcher"

    invoke-direct {v0, v4, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 505
    .restart local v0       #packageDir:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v5, "com.android.launcher"

    invoke-direct {v4, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/miui/backup/RestoreLauncherDbCmd;->mDataDir:Ljava/io/File;

    .line 506
    iget-object v4, p0, Lcom/miui/backup/RestoreLauncherDbCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p0, v4, v6}, Lcom/miui/backup/RestoreLauncherDbCmd;->rmData(Ljava/lang/String;Z)Z

    .line 507
    iget-object v4, p0, Lcom/miui/backup/RestoreLauncherDbCmd;->mDataDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/backup/RestoreLauncherDbCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p0, v8, v4, v5}, Lcom/miui/backup/RestoreLauncherDbCmd;->addItemToScript(ILjava/lang/String;Ljava/lang/String;)V

    .line 510
    new-instance v3, Ljava/io/File;

    const-string v4, "system"

    invoke-direct {v3, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 511
    .local v3, widgetDir:Ljava/io/File;
    new-instance v4, Ljava/io/File;

    const-string v5, "appwidgets.xml"

    invoke-direct {v4, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/miui/backup/RestoreLauncherDbCmd;->mWidgetFile:Ljava/io/File;

    .line 512
    const-string v4, "/data/system/appwidgets.xml"

    invoke-virtual {p0, v9, v8}, Lcom/miui/backup/RestoreLauncherDbCmd;->rmData(Ljava/lang/String;Z)Z

    .line 513
    iget-object v4, p0, Lcom/miui/backup/RestoreLauncherDbCmd;->mWidgetFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/data/system/appwidgets.xml"

    invoke-virtual {p0, v6, v4, v9}, Lcom/miui/backup/RestoreLauncherDbCmd;->addItemToScript(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected postAction()Z
    .locals 15

    .prologue
    .line 519
    iget-object v0, p0, Lcom/miui/backup/RestoreLauncherDbCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    .line 520
    const/4 v0, 0x0

    .line 555
    :goto_0
    return v0

    .line 522
    :cond_0
    new-instance v1, Lcom/miui/backup/ScriptStrategy;

    invoke-direct {v1}, Lcom/miui/backup/ScriptStrategy;-><init>()V

    .line 524
    .local v1, strategy:Lcom/miui/backup/ScriptStrategy;
    const-string v0, "/data/data/com.android.launcher/databases/launcher.db"

    iget-object v2, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v2, v2, Lcom/miui/milk/common/AppInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 526
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v2, v0, Lcom/miui/milk/common/AppInfo;->dataDir:Ljava/lang/String;

    const/16 v3, 0x294

    iget-object v0, p0, Lcom/miui/backup/RestoreLauncherDbCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v0, p0, Lcom/miui/backup/RestoreLauncherDbCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/backup/RestoreLauncherDbCmd;->changePermission(Lcom/miui/backup/ScriptStrategy;Ljava/lang/String;III)V

    .line 551
    :cond_1
    :goto_1
    invoke-virtual {v1}, Lcom/miui/backup/ScriptStrategy;->execute()Z

    .line 554
    iget-object v0, p0, Lcom/miui/backup/RestoreLauncherDbCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/miui/backup/RestoreLauncherDbCmd;->forceStop(Ljava/lang/String;)V

    .line 555
    const/4 v0, 0x1

    goto :goto_0

    .line 533
    :cond_2
    const-string v0, "/data/data/com.android.launcher/databases"

    iget-object v2, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v2, v2, Lcom/miui/milk/common/AppInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 534
    iget-object v0, p0, Lcom/miui/backup/RestoreLauncherDbCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 535
    .local v8, dataDir:Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/backup/RestoreLauncherDbCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 537
    .local v3, uid:I
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/miui/backup/RestoreLauncherDbCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v8, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 538
    .local v5, targetDirPrefix:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mBaseDir:Ljava/io/File;

    const-string v4, "com.android.launcher"

    invoke-direct {v2, v0, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 539
    .local v2, restoreDataDir:Ljava/io/File;
    const-string v4, "com.android.launcher"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/backup/RestoreLauncherDbCmd;->changePermissionRecursively(Lcom/miui/backup/ScriptStrategy;Ljava/io/File;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 540
    .end local v2           #restoreDataDir:Ljava/io/File;
    .end local v3           #uid:I
    .end local v5           #targetDirPrefix:Ljava/lang/String;
    .end local v8           #dataDir:Ljava/lang/String;
    :cond_3
    const-string v0, "/data/data/com.android.launcher"

    iget-object v2, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v2, v2, Lcom/miui/milk/common/AppInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/miui/backup/RestoreLauncherDbCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 542
    .restart local v8       #dataDir:Ljava/lang/String;
    iget-object v0, p0, Lcom/miui/backup/RestoreLauncherDbCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 543
    .restart local v3       #uid:I
    const/16 v9, 0x2ef

    move-object v6, p0

    move-object v7, v1

    move v10, v3

    move v11, v3

    invoke-virtual/range {v6 .. v11}, Lcom/miui/backup/RestoreLauncherDbCmd;->changePermission(Lcom/miui/backup/ScriptStrategy;Ljava/lang/String;III)V

    .line 544
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/miui/backup/RestoreLauncherDbCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v8, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 545
    .restart local v5       #targetDirPrefix:Ljava/lang/String;
    iget-object v11, p0, Lcom/miui/backup/RestoreLauncherDbCmd;->mDataDir:Ljava/io/File;

    const-string v13, "com.android.launcher"

    move-object v9, p0

    move-object v10, v1

    move v12, v3

    move-object v14, v5

    invoke-virtual/range {v9 .. v14}, Lcom/miui/backup/RestoreLauncherDbCmd;->changePermissionRecursively(Lcom/miui/backup/ScriptStrategy;Ljava/io/File;ILjava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string v11, "/data/system/appwidgets.xml"

    const/16 v12, 0x258

    const/16 v13, 0x3e8

    const/16 v14, 0x3e8

    move-object v9, p0

    move-object v10, v1

    invoke-virtual/range {v9 .. v14}, Lcom/miui/backup/RestoreLauncherDbCmd;->changePermission(Lcom/miui/backup/ScriptStrategy;Ljava/lang/String;III)V

    goto/16 :goto_1
.end method

.method protected preAction()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 463
    iget-object v3, p0, Lcom/miui/backup/BackupRestoreCmd;->mContext:Landroid/content/Context;

    const-string v4, "com.android.launcher"

    invoke-static {v3, v4}, Lcom/miui/backup/BackupUtils;->getPkgInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/backup/RestoreLauncherDbCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    .line 464
    iget-object v3, p0, Lcom/miui/backup/RestoreLauncherDbCmd;->mPkgInfo:Landroid/content/pm/PackageInfo;

    if-nez v3, :cond_0

    move v3, v5

    .line 485
    :goto_0
    return v3

    .line 468
    :cond_0
    const-string v3, "/data/data/com.android.launcher/databases/launcher.db"

    iget-object v4, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v4, v4, Lcom/miui/milk/common/AppInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 470
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/miui/backup/BackupRestoreCmd;->mBaseDir:Ljava/io/File;

    iget-object v4, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v4, v4, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 471
    .local v1, launcherDbFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v5

    .line 472
    goto :goto_0

    .line 475
    :cond_1
    invoke-direct {p0}, Lcom/miui/backup/RestoreLauncherDbCmd;->createTempDbFile()V

    .line 476
    new-instance v2, Lcom/miui/backup/LauncherDbAdapter;

    iget-object v3, p0, Lcom/miui/backup/BackupRestoreCmd;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/backup/RestoreLauncherDbCmd;->mTempDbFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/miui/backup/RestoreLauncherDbCmd;->getOldDbVersion()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/backup/LauncherDbAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    .line 477
    .local v2, tempDb:Lcom/miui/backup/LauncherDbAdapter;
    invoke-virtual {v2}, Lcom/miui/backup/LauncherDbAdapter;->open()Lcom/miui/backup/LauncherDbAdapter;

    .line 478
    invoke-direct {p0, v2}, Lcom/miui/backup/RestoreLauncherDbCmd;->getDeletedIds(Lcom/miui/backup/LauncherDbAdapter;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/miui/backup/RestoreLauncherDbCmd;->removeDeletedIds(Ljava/util/ArrayList;Lcom/miui/backup/LauncherDbAdapter;)V

    .line 479
    invoke-virtual {v2}, Lcom/miui/backup/LauncherDbAdapter;->close()V

    .line 483
    .end local v1           #launcherDbFile:Ljava/io/File;
    .end local v2           #tempDb:Lcom/miui/backup/LauncherDbAdapter;
    :cond_2
    const-string v0, "/data/data/com.android.launcher/databases/*"

    .line 484
    .local v0, dbFiles:Ljava/lang/String;
    invoke-virtual {p0, v0, v6}, Lcom/miui/backup/RestoreLauncherDbCmd;->rmData(Ljava/lang/String;Z)Z

    move v3, v6

    .line 485
    goto :goto_0
.end method
