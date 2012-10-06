.class Lcom/miui/backup/RestoreWifiCmd;
.super Lcom/miui/backup/RestoreCmd;
.source "RestoreCmd.java"


# instance fields
.field private mTmpFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V
    .locals 0
    .parameter "info"
    .parameter "baseDir"
    .parameter "context"

    .prologue
    .line 356
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/backup/RestoreCmd;-><init>(Lcom/miui/backup/AppInfo;Ljava/io/File;Landroid/content/Context;)V

    .line 357
    return-void
.end method

.method private enableWifi(Z)I
    .locals 4
    .parameter "enable"

    .prologue
    .line 427
    const/4 v0, 0x4

    .line 429
    .local v0, state:I
    iget-object v2, p0, Lcom/miui/backup/BackupRestoreCmd;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 430
    .local v1, wfm:Landroid/net/wifi/WifiManager;
    if-eqz v1, :cond_0

    .line 431
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 432
    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 435
    :cond_0
    return v0
.end method


# virtual methods
.method protected action()Z
    .locals 1

    .prologue
    .line 361
    invoke-super {p0}, Lcom/miui/backup/RestoreCmd;->action()Z

    .line 364
    const/4 v0, 0x1

    return v0
.end method

.method protected genStrategy()V
    .locals 3

    .prologue
    .line 412
    new-instance v0, Lcom/miui/backup/ScriptStrategy;

    invoke-direct {v0}, Lcom/miui/backup/ScriptStrategy;-><init>()V

    iput-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mStrategy:Lcom/miui/backup/BackupRestoreStrategy;

    .line 413
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/miui/backup/RestoreWifiCmd;->mTmpFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v2, v2, Lcom/miui/milk/common/AppInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2}, Lcom/miui/backup/RestoreWifiCmd;->addItemToScript(ILjava/lang/String;Ljava/lang/String;)V

    .line 414
    return-void
.end method

.method protected postAction()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 418
    new-instance v1, Lcom/miui/backup/ScriptStrategy;

    invoke-direct {v1}, Lcom/miui/backup/ScriptStrategy;-><init>()V

    .line 419
    .local v1, strategy:Lcom/miui/backup/ScriptStrategy;
    iget-object v0, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v2, v0, Lcom/miui/milk/common/AppInfo;->dataDir:Ljava/lang/String;

    const/16 v3, 0x294

    const/16 v4, 0x3e8

    const/16 v5, 0x3f2

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/miui/backup/RestoreWifiCmd;->changePermission(Lcom/miui/backup/ScriptStrategy;Ljava/lang/String;III)V

    .line 420
    invoke-virtual {v1}, Lcom/miui/backup/ScriptStrategy;->execute()Z

    .line 421
    iget-object v0, p0, Lcom/miui/backup/RestoreWifiCmd;->mTmpFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 422
    invoke-direct {p0, v6}, Lcom/miui/backup/RestoreWifiCmd;->enableWifi(Z)I

    .line 423
    return v6
.end method

.method protected preAction()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 369
    new-instance v3, Ljava/io/File;

    iget-object v5, p0, Lcom/miui/backup/BackupRestoreCmd;->mBaseDir:Ljava/io/File;

    iget-object v6, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v6, v6, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 370
    .local v3, wifiFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v8

    .line 407
    :goto_0
    return v5

    .line 373
    :cond_0
    invoke-direct {p0, v8}, Lcom/miui/backup/RestoreWifiCmd;->enableWifi(Z)I

    .line 374
    iget-object v5, p0, Lcom/miui/backup/BackupRestoreCmd;->mAppInfo:Lcom/miui/backup/AppInfo;

    iget-object v5, v5, Lcom/miui/milk/common/AppInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p0, v5, v9}, Lcom/miui/backup/RestoreWifiCmd;->rmData(Ljava/lang/String;Z)Z

    .line 378
    :try_start_0
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/miui/backup/BackupRestoreCmd;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "wifi.tmp"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v5, p0, Lcom/miui/backup/RestoreWifiCmd;->mTmpFile:Ljava/io/File;

    .line 379
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 380
    .local v2, reader:Ljava/io/BufferedReader;
    new-instance v4, Ljava/io/FileWriter;

    iget-object v5, p0, Lcom/miui/backup/RestoreWifiCmd;->mTmpFile:Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 382
    .local v4, writer:Ljava/io/FileWriter;
    sget-boolean v5, Landroid/os/Build;->IS_DEFY:Z

    if-nez v5, :cond_1

    sget-boolean v5, Landroid/os/Build;->IS_MILESTONE:Z

    if-eqz v5, :cond_4

    .line 383
    :cond_1
    const-string v5, "ctrl_interface=tiwlan0\nupdate_config=1\n"

    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 389
    :goto_1
    const/4 v1, 0x0

    .line 390
    .local v1, line:Ljava/lang/String;
    :cond_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 391
    const-string v5, "network={"

    invoke-virtual {v1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 397
    :cond_3
    :goto_2
    if-eqz v1, :cond_5

    .line 398
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 385
    .end local v1           #line:Ljava/lang/String;
    :cond_4
    const-string v5, "ctrl_interface=eth0\nupdate_config=1\n"

    invoke-virtual {v4, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 403
    .end local v2           #reader:Ljava/io/BufferedReader;
    .end local v4           #writer:Ljava/io/FileWriter;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 404
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v5, v8

    .line 405
    goto :goto_0

    .line 401
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #line:Ljava/lang/String;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    .restart local v4       #writer:Ljava/io/FileWriter;
    :cond_5
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 402
    invoke-virtual {v4}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move v5, v9

    .line 407
    goto :goto_0
.end method
