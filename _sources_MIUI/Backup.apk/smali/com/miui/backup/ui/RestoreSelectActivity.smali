.class public Lcom/miui/backup/ui/RestoreSelectActivity;
.super Lcom/miui/backup/ui/BaseSelectList;
.source "RestoreSelectActivity.java"


# instance fields
.field protected mBackupFileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/miui/backup/ui/BaseSelectList;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/backup/ui/RestoreSelectActivity;->mBackupFileName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$001(Lcom/miui/backup/ui/RestoreSelectActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-super {p0}, Lcom/miui/backup/ui/BaseSelectList;->startExecution()V

    return-void
.end method

.method private closeDB(Lcom/miui/backup/DbAdapter;)V
    .locals 0
    .parameter "dbAdapter"

    .prologue
    .line 157
    if-eqz p1, :cond_0

    .line 158
    invoke-virtual {p1}, Lcom/miui/backup/DbAdapter;->close()V

    .line 160
    :cond_0
    return-void
.end method

.method private exceptionAction()V
    .locals 3

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/miui/backup/ui/RestoreSelectActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f06001b

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 164
    invoke-virtual {p0}, Lcom/miui/backup/ui/RestoreSelectActivity;->finish()V

    .line 165
    return-void
.end method

.method private getOneAppInfoFromDb(Landroid/database/Cursor;)Lcom/miui/backup/AppInfo;
    .locals 4
    .parameter "appsCursor"

    .prologue
    .line 117
    new-instance v0, Lcom/miui/backup/AppInfo;

    invoke-direct {v0}, Lcom/miui/backup/AppInfo;-><init>()V

    .line 119
    .local v0, appInfo:Lcom/miui/backup/AppInfo;
    const-string v1, "_id"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/miui/milk/common/AppInfo;->id:I

    .line 120
    const-string v1, "appName"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/milk/common/AppInfo;->name:Ljava/lang/String;

    .line 121
    const-string v1, "appType"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/miui/milk/common/AppInfo;->type:I

    .line 122
    const-string v1, "appPackage"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    .line 123
    const-string v1, "appPath"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/milk/common/AppInfo;->packagePath:Ljava/lang/String;

    .line 124
    const-string v1, "dataDir"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/milk/common/AppInfo;->dataDir:Ljava/lang/String;

    .line 125
    invoke-virtual {v0, p0}, Lcom/miui/backup/AppInfo;->genDisplay(Landroid/content/Context;)V

    .line 126
    invoke-virtual {v0, p0}, Lcom/miui/backup/AppInfo;->genSummary(Landroid/content/Context;)V

    .line 127
    iget-object v1, v0, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.android.providers.contacts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/miui/milk/common/AppInfo;->summary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/backup/ui/RestoreSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060021

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/milk/common/AppInfo;->summary:Ljava/lang/String;

    .line 137
    :cond_0
    :goto_0
    return-object v0

    .line 129
    :cond_1
    iget-object v1, v0, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.android.providers.telephony"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/miui/milk/common/AppInfo;->summary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/backup/ui/RestoreSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060022

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/milk/common/AppInfo;->summary:Ljava/lang/String;

    goto :goto_0

    .line 131
    :cond_2
    iget-object v1, v0, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    const-string v2, "launcher.db"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/miui/milk/common/AppInfo;->summary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/backup/ui/RestoreSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/milk/common/AppInfo;->summary:Ljava/lang/String;

    goto :goto_0

    .line 133
    :cond_3
    iget-object v1, v0, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    const-string v2, "setting.store"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/miui/milk/common/AppInfo;->summary:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/backup/ui/RestoreSelectActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060024

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/miui/milk/common/AppInfo;->summary:Ljava/lang/String;

    goto/16 :goto_0
.end method

.method private openDB()Lcom/miui/backup/DbAdapter;
    .locals 5

    .prologue
    .line 141
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/miui/backup/ui/BaseSelectList;->mBackupRestoreDir:Ljava/io/File;

    const-string v4, "backup_config.db"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 142
    .local v2, restoreDatabase:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 143
    invoke-direct {p0}, Lcom/miui/backup/ui/RestoreSelectActivity;->exceptionAction()V

    .line 146
    :cond_0
    new-instance v0, Lcom/miui/backup/DbAdapter;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/miui/backup/DbAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 148
    .local v0, dbAdapter:Lcom/miui/backup/DbAdapter;
    :try_start_0
    invoke-virtual {v0}, Lcom/miui/backup/DbAdapter;->open()Lcom/miui/backup/DbAdapter;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :goto_0
    return-object v0

    .line 149
    :catch_0
    move-exception v1

    .line 150
    .local v1, e:Landroid/database/SQLException;
    invoke-direct {p0}, Lcom/miui/backup/ui/RestoreSelectActivity;->exceptionAction()V

    goto :goto_0
.end method


# virtual methods
.method protected getBackupRestoreDir()Ljava/io/File;
    .locals 4

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/miui/backup/ui/RestoreSelectActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 32
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "ext_backup"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/backup/ui/RestoreSelectActivity;->mBackupFileName:Ljava/lang/String;

    .line 33
    iget-object v1, p0, Lcom/miui/backup/ui/RestoreSelectActivity;->mBackupFileName:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 34
    invoke-direct {p0}, Lcom/miui/backup/ui/RestoreSelectActivity;->exceptionAction()V

    .line 37
    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/miui/backup/ui/BaseSelectList;->CONTENT_BASE_DIR:Ljava/io/File;

    iget-object v3, p0, Lcom/miui/backup/ui/RestoreSelectActivity;->mBackupFileName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method protected getNextButtonText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const v0, 0x7f06001a

    invoke-virtual {p0, v0}, Lcom/miui/backup/ui/RestoreSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSelectedApps()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/backup/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v1, appInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/backup/AppInfo;>;"
    const/4 v3, 0x0

    .line 65
    .local v3, launcherAppInfo:Lcom/miui/backup/AppInfo;
    iget-object v4, p0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/backup/AppInfo;

    .line 66
    .local v0, appInfo:Lcom/miui/backup/AppInfo;
    const-string v4, "launcher.db"

    iget-object v5, v0, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 67
    move-object v3, v0

    .line 71
    :goto_1
    const-string v4, "addressbook.store"

    iget-object v5, v0, Lcom/miui/milk/common/AppInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 72
    iput-object v0, p0, Lcom/miui/backup/ui/BaseSelectList;->mContactInfo:Lcom/miui/backup/AppInfo;

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 75
    .end local v0           #appInfo:Lcom/miui/backup/AppInfo;
    :cond_2
    iget-object v4, p0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 76
    if-eqz v3, :cond_3

    .line 77
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_3
    return-object v1
.end method

.method protected getTaskType()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method protected getTitleSecondaryText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/miui/backup/ui/RestoreSelectActivity;->mBackupFileName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/miui/backup/BackupUtils;->getShowNameFromFileName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/backup/ui/RestoreSelectActivity;->mBackupFileName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    iget-object v0, p0, Lcom/miui/backup/ui/RestoreSelectActivity;->mBackupFileName:Ljava/lang/String;

    return-object v0

    .line 54
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected getTitleText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    const v0, 0x7f060035

    invoke-virtual {p0, v0}, Lcom/miui/backup/ui/RestoreSelectActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected prepareAppInfos()V
    .locals 8

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/miui/backup/ui/RestoreSelectActivity;->openDB()Lcom/miui/backup/DbAdapter;

    move-result-object v2

    .line 90
    .local v2, dbAdapter:Lcom/miui/backup/DbAdapter;
    invoke-virtual {v2}, Lcom/miui/backup/DbAdapter;->fetchAllApps()Landroid/database/Cursor;

    move-result-object v1

    .line 93
    .local v1, appsCursor:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    .line 94
    .local v5, listSize:I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    .line 95
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    .line 96
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 97
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 98
    invoke-direct {p0, v1}, Lcom/miui/backup/ui/RestoreSelectActivity;->getOneAppInfoFromDb(Landroid/database/Cursor;)Lcom/miui/backup/AppInfo;

    move-result-object v0

    .line 99
    .local v0, appInfo:Lcom/miui/backup/AppInfo;
    iget v6, v0, Lcom/miui/milk/common/AppInfo;->type:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    .line 100
    iget-object v6, p0, Lcom/miui/backup/ui/BaseSelectList;->mUserAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 97
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 102
    :cond_0
    iget-object v6, p0, Lcom/miui/backup/ui/BaseSelectList;->mSysDataInfos:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 106
    .end local v0           #appInfo:Lcom/miui/backup/AppInfo;
    .end local v4           #i:I
    .end local v5           #listSize:I
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 107
    .local v3, e:Ljava/lang/Exception;
    :try_start_1
    const-string v6, "RestoreSelectActivity"

    const-string v7, "Cannot get app infos: "

    invoke-static {v6, v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 112
    .end local v3           #e:Ljava/lang/Exception;
    :goto_2
    invoke-direct {p0, v2}, Lcom/miui/backup/ui/RestoreSelectActivity;->closeDB(Lcom/miui/backup/DbAdapter;)V

    .line 114
    return-void

    .line 109
    .restart local v4       #i:I
    .restart local v5       #listSize:I
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    .end local v4           #i:I
    .end local v5           #listSize:I
    :catchall_0
    move-exception v6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    throw v6
.end method

.method protected startExecution()V
    .locals 4

    .prologue
    .line 169
    const-wide/32 v1, 0x1e00000

    invoke-static {v1, v2}, Lcom/miui/backup/SysUtils;->enoughSpaceOnData(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 171
    .local v0, dialogBuilder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f060054

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f06000d

    new-instance v3, Lcom/miui/backup/ui/RestoreSelectActivity$1;

    invoke-direct {v3, p0}, Lcom/miui/backup/ui/RestoreSelectActivity$1;-><init>(Lcom/miui/backup/ui/RestoreSelectActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f060005

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 180
    .end local v0           #dialogBuilder:Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-super {p0}, Lcom/miui/backup/ui/BaseSelectList;->startExecution()V

    goto :goto_0
.end method
