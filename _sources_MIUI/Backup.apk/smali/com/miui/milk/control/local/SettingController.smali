.class public Lcom/miui/milk/control/local/SettingController;
.super Ljava/lang/Object;
.source "SettingController.java"


# instance fields
.field private mCanceled:Z

.field protected mContext:Landroid/content/Context;

.field private mCurrExportIndex:I

.field private mCurrImportIndex:I

.field protected mResolver:Landroid/content/ContentResolver;

.field private mSecureSettingIds:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingManager:Lcom/miui/milk/source/setting/SettingManager;

.field private mSystemSettingIds:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTotalImport:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/control/local/SettingController;->mSystemSettingIds:Ljava/util/Vector;

    .line 31
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/miui/milk/control/local/SettingController;->mSecureSettingIds:Ljava/util/Vector;

    .line 33
    iput v1, p0, Lcom/miui/milk/control/local/SettingController;->mCurrExportIndex:I

    .line 34
    iput v1, p0, Lcom/miui/milk/control/local/SettingController;->mTotalImport:I

    .line 35
    iput v1, p0, Lcom/miui/milk/control/local/SettingController;->mCurrImportIndex:I

    .line 37
    iput-boolean v1, p0, Lcom/miui/milk/control/local/SettingController;->mCanceled:Z

    .line 40
    iput-object p1, p0, Lcom/miui/milk/control/local/SettingController;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/control/local/SettingController;->mResolver:Landroid/content/ContentResolver;

    .line 42
    new-instance v0, Lcom/miui/milk/source/setting/SettingManager;

    invoke-direct {v0, p1}, Lcom/miui/milk/source/setting/SettingManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/milk/control/local/SettingController;->mSettingManager:Lcom/miui/milk/source/setting/SettingManager;

    .line 43
    return-void
.end method

.method private prepareSecureSettingIds()Ljava/util/Vector;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "_id"

    .line 212
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 213
    .local v9, ids:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 215
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/control/local/SettingController;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 221
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 222
    .local v8, idColumnIndex:I
    const/4 v7, 0x0

    .line 223
    .local v7, cursorId:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 224
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 225
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 226
    invoke-virtual {v9, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 230
    .end local v7           #cursorId:Ljava/lang/String;
    .end local v8           #idColumnIndex:I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_0

    .line 231
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 230
    .restart local v7       #cursorId:Ljava/lang/String;
    .restart local v8       #idColumnIndex:I
    :cond_1
    if-eqz v6, :cond_2

    .line 231
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 234
    :cond_2
    return-object v9
.end method

.method private prepareSystemSettingIds()Ljava/util/Vector;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v0, "_id"

    .line 183
    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    .line 184
    .local v9, ids:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 186
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/control/local/SettingController;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 192
    if-nez v6, :cond_1

    .line 204
    if-eqz v6, :cond_0

    .line 205
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 208
    :cond_0
    :goto_0
    return-object v9

    .line 195
    :cond_1
    :try_start_1
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 196
    .local v8, idColumnIndex:I
    const/4 v7, 0x0

    .line 197
    .local v7, cursorId:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 198
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 199
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    .line 200
    invoke-virtual {v9, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 201
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 204
    .end local v7           #cursorId:Ljava/lang/String;
    .end local v8           #idColumnIndex:I
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 205
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 204
    .restart local v7       #cursorId:Ljava/lang/String;
    .restart local v8       #idColumnIndex:I
    :cond_3
    if-eqz v6, :cond_0

    .line 205
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/milk/control/local/SettingController;->mCanceled:Z

    .line 47
    return-void
.end method

.method public exportSettings(Ljava/io/File;)V
    .locals 14
    .parameter "exportFile"

    .prologue
    const-string v13, "Cannot export settings "

    const-string v12, "SettingController"

    .line 50
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 51
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 54
    :cond_0
    invoke-static {}, Lcom/miui/milk/model/SettingProtos$Settings;->newBuilder()Lcom/miui/milk/model/SettingProtos$Settings$Builder;

    move-result-object v6

    .line 55
    .local v6, settings:Lcom/miui/milk/model/SettingProtos$Settings$Builder;
    invoke-direct {p0}, Lcom/miui/milk/control/local/SettingController;->prepareSystemSettingIds()Ljava/util/Vector;

    move-result-object v9

    iput-object v9, p0, Lcom/miui/milk/control/local/SettingController;->mSystemSettingIds:Ljava/util/Vector;

    .line 56
    invoke-direct {p0}, Lcom/miui/milk/control/local/SettingController;->prepareSecureSettingIds()Ljava/util/Vector;

    move-result-object v9

    iput-object v9, p0, Lcom/miui/milk/control/local/SettingController;->mSecureSettingIds:Ljava/util/Vector;

    .line 57
    const/4 v9, 0x0

    iput v9, p0, Lcom/miui/milk/control/local/SettingController;->mCurrExportIndex:I

    .line 59
    const/4 v8, 0x0

    .line 60
    .local v8, systemCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v9, p0, Lcom/miui/milk/control/local/SettingController;->mSystemSettingIds:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-ge v1, v9, :cond_4

    .line 61
    iget-boolean v9, p0, Lcom/miui/milk/control/local/SettingController;->mCanceled:Z

    if-eqz v9, :cond_2

    .line 111
    :cond_1
    :goto_1
    return-void

    .line 62
    :cond_2
    iget-object v9, p0, Lcom/miui/milk/control/local/SettingController;->mSystemSettingIds:Ljava/util/Vector;

    invoke-virtual {v9, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 64
    .local v2, id:Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/miui/milk/control/local/SettingController;->mSettingManager:Lcom/miui/milk/source/setting/SettingManager;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/miui/milk/source/setting/SettingManager;->loadSystemSetting(J)Lcom/miui/milk/model/SettingProtos$SystemSetting;

    move-result-object v5

    .line 65
    .local v5, setting:Lcom/miui/milk/model/SettingProtos$SystemSetting;
    if-eqz v5, :cond_3

    .line 66
    invoke-virtual {v6, v5}, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->addSystem(Lcom/miui/milk/model/SettingProtos$SystemSetting;)Lcom/miui/milk/model/SettingProtos$Settings$Builder;

    .line 67
    add-int/lit8 v8, v8, 0x1

    .line 68
    iget v9, p0, Lcom/miui/milk/control/local/SettingController;->mCurrExportIndex:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/miui/milk/control/local/SettingController;->mCurrExportIndex:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .end local v5           #setting:Lcom/miui/milk/model/SettingProtos$SystemSetting;
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :catch_0
    move-exception v9

    move-object v0, v9

    .line 71
    .local v0, e:Ljava/lang/Exception;
    const-string v9, "SettingController"

    const-string v9, "Cannot load system setting "

    invoke-static {v12, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 75
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #id:Ljava/lang/String;
    :cond_4
    const/4 v4, 0x0

    .line 76
    .local v4, secureCount:I
    const/4 v1, 0x0

    :goto_3
    iget-object v9, p0, Lcom/miui/milk/control/local/SettingController;->mSecureSettingIds:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->size()I

    move-result v9

    if-ge v1, v9, :cond_6

    .line 77
    iget-boolean v9, p0, Lcom/miui/milk/control/local/SettingController;->mCanceled:Z

    if-nez v9, :cond_1

    .line 78
    iget-object v9, p0, Lcom/miui/milk/control/local/SettingController;->mSecureSettingIds:Ljava/util/Vector;

    invoke-virtual {v9, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 80
    .restart local v2       #id:Ljava/lang/String;
    :try_start_1
    iget-object v9, p0, Lcom/miui/milk/control/local/SettingController;->mSettingManager:Lcom/miui/milk/source/setting/SettingManager;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Lcom/miui/milk/source/setting/SettingManager;->loadSecureSetting(J)Lcom/miui/milk/model/SettingProtos$SecureSetting;

    move-result-object v5

    .line 81
    .local v5, setting:Lcom/miui/milk/model/SettingProtos$SecureSetting;
    if-eqz v5, :cond_5

    .line 82
    invoke-virtual {v6, v5}, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->addSecure(Lcom/miui/milk/model/SettingProtos$SecureSetting;)Lcom/miui/milk/model/SettingProtos$Settings$Builder;

    .line 83
    add-int/lit8 v4, v4, 0x1

    .line 84
    iget v9, p0, Lcom/miui/milk/control/local/SettingController;->mCurrExportIndex:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/miui/milk/control/local/SettingController;->mCurrExportIndex:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 76
    .end local v5           #setting:Lcom/miui/milk/model/SettingProtos$SecureSetting;
    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 86
    :catch_1
    move-exception v9

    move-object v0, v9

    .line 87
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v9, "SettingController"

    const-string v9, "Cannot load secure setting "

    invoke-static {v12, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 91
    .end local v0           #e:Ljava/lang/Exception;
    .end local v2           #id:Ljava/lang/String;
    :cond_6
    invoke-static {}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->newBuilder()Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    move-result-object v7

    .line 92
    .local v7, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;
    invoke-virtual {v6}, Lcom/miui/milk/model/SettingProtos$Settings$Builder;->build()Lcom/miui/milk/model/SettingProtos$Settings;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setSetting(Lcom/miui/milk/model/SettingProtos$Settings;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 93
    const-string v9, "1"

    invoke-virtual {v7, v9}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->setVersion(Ljava/lang/String;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;

    .line 95
    iget-boolean v9, p0, Lcom/miui/milk/control/local/SettingController;->mCanceled:Z

    if-nez v9, :cond_1

    .line 99
    :try_start_2
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 100
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 101
    .local v3, output:Ljava/io/FileOutputStream;
    invoke-virtual {v7}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot$Builder;->build()Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->writeTo(Ljava/io/OutputStream;)V

    .line 102
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 103
    const-string v9, "SettingController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Export System Setting Counts : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string v9, "SettingController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Export Secure Setting Counts : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_1

    .line 105
    .end local v3           #output:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v9

    move-object v0, v9

    .line 106
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v9, "SettingController"

    const-string v9, "Cannot export settings "

    invoke-static {v12, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 107
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_3
    move-exception v9

    move-object v0, v9

    .line 108
    .local v0, e:Ljava/io/IOException;
    const-string v9, "SettingController"

    const-string v9, "Cannot export settings "

    invoke-static {v12, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1
.end method

.method public getExportedSize()J
    .locals 2

    .prologue
    .line 121
    iget v0, p0, Lcom/miui/milk/control/local/SettingController;->mCurrExportIndex:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getImportedSize()J
    .locals 2

    .prologue
    .line 129
    iget v0, p0, Lcom/miui/milk/control/local/SettingController;->mCurrImportIndex:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getTotalExportSize()J
    .locals 3

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 115
    .local v0, size:I
    iget-object v1, p0, Lcom/miui/milk/control/local/SettingController;->mSystemSettingIds:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/milk/control/local/SettingController;->mSystemSettingIds:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/miui/milk/control/local/SettingController;->mSecureSettingIds:Ljava/util/Vector;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/milk/control/local/SettingController;->mSecureSettingIds:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    add-int/2addr v0, v1

    .line 117
    :cond_1
    int-to-long v1, v0

    return-wide v1
.end method

.method public getTotalImportSize()J
    .locals 2

    .prologue
    .line 125
    iget v0, p0, Lcom/miui/milk/control/local/SettingController;->mTotalImport:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public importSettings(Ljava/io/File;)V
    .locals 14
    .parameter "importFile"

    .prologue
    const-string v13, "Cannot import settings "

    const-string v12, "SettingController"

    .line 134
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 135
    .local v2, input:Ljava/io/FileInputStream;
    invoke-static {v2}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->parseFrom(Ljava/io/InputStream;)Lcom/miui/milk/model/SyncRootProtos$SyncRoot;

    move-result-object v6

    .line 136
    .local v6, syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    const/4 v5, 0x0

    .line 137
    .local v5, settings:Lcom/miui/milk/model/SettingProtos$Settings;
    if-eqz v6, :cond_0

    .line 138
    invoke-virtual {v6}, Lcom/miui/milk/model/SyncRootProtos$SyncRoot;->getSetting()Lcom/miui/milk/model/SettingProtos$Settings;

    move-result-object v5

    .line 141
    :cond_0
    iget-boolean v9, p0, Lcom/miui/milk/control/local/SettingController;->mCanceled:Z

    if-eqz v9, :cond_2

    .line 180
    .end local v2           #input:Ljava/io/FileInputStream;
    .end local v5           #settings:Lcom/miui/milk/model/SettingProtos$Settings;
    .end local v6           #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :cond_1
    :goto_0
    return-void

    .line 143
    .restart local v2       #input:Ljava/io/FileInputStream;
    .restart local v5       #settings:Lcom/miui/milk/model/SettingProtos$Settings;
    .restart local v6       #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    :cond_2
    if-eqz v5, :cond_1

    .line 144
    invoke-virtual {v5}, Lcom/miui/milk/model/SettingProtos$Settings;->getSystemCount()I

    move-result v9

    invoke-virtual {v5}, Lcom/miui/milk/model/SettingProtos$Settings;->getSecureCount()I

    move-result v10

    add-int/2addr v9, v10

    iput v9, p0, Lcom/miui/milk/control/local/SettingController;->mTotalImport:I

    .line 145
    const/4 v9, 0x0

    iput v9, p0, Lcom/miui/milk/control/local/SettingController;->mCurrImportIndex:I

    .line 146
    const/4 v8, 0x0

    .line 147
    .local v8, systemCount:I
    const/4 v4, 0x0

    .line 149
    .local v4, secureCount:I
    invoke-virtual {v5}, Lcom/miui/milk/model/SettingProtos$Settings;->getSystemList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/milk/model/SettingProtos$SystemSetting;

    .line 150
    .local v7, system:Lcom/miui/milk/model/SettingProtos$SystemSetting;
    iget-boolean v9, p0, Lcom/miui/milk/control/local/SettingController;->mCanceled:Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v9, :cond_1

    .line 152
    :try_start_1
    iget-object v9, p0, Lcom/miui/milk/control/local/SettingController;->mSettingManager:Lcom/miui/milk/source/setting/SettingManager;

    invoke-virtual {v9, v7}, Lcom/miui/milk/source/setting/SettingManager;->addSystemSetting(Lcom/miui/milk/model/SettingProtos$SystemSetting;)Landroid/net/Uri;

    .line 153
    add-int/lit8 v8, v8, 0x1

    .line 154
    iget v9, p0, Lcom/miui/milk/control/local/SettingController;->mCurrImportIndex:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/miui/milk/control/local/SettingController;->mCurrImportIndex:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 155
    :catch_0
    move-exception v9

    move-object v0, v9

    .line 156
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v9, "SettingController"

    const-string v10, "Cannot add system setting "

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 175
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #input:Ljava/io/FileInputStream;
    .end local v4           #secureCount:I
    .end local v5           #settings:Lcom/miui/milk/model/SettingProtos$Settings;
    .end local v6           #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .end local v7           #system:Lcom/miui/milk/model/SettingProtos$SystemSetting;
    .end local v8           #systemCount:I
    :catch_1
    move-exception v9

    move-object v0, v9

    .line 176
    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v9, "SettingController"

    const-string v9, "Cannot import settings "

    invoke-static {v12, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 160
    .end local v0           #e:Ljava/io/FileNotFoundException;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #input:Ljava/io/FileInputStream;
    .restart local v4       #secureCount:I
    .restart local v5       #settings:Lcom/miui/milk/model/SettingProtos$Settings;
    .restart local v6       #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .restart local v8       #systemCount:I
    :cond_3
    :try_start_3
    invoke-virtual {v5}, Lcom/miui/milk/model/SettingProtos$Settings;->getSecureList()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/milk/model/SettingProtos$SecureSetting;

    .line 161
    .local v3, secure:Lcom/miui/milk/model/SettingProtos$SecureSetting;
    iget-boolean v9, p0, Lcom/miui/milk/control/local/SettingController;->mCanceled:Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    if-nez v9, :cond_1

    .line 163
    :try_start_4
    iget-object v9, p0, Lcom/miui/milk/control/local/SettingController;->mSettingManager:Lcom/miui/milk/source/setting/SettingManager;

    invoke-virtual {v9, v3}, Lcom/miui/milk/source/setting/SettingManager;->addSecureSetting(Lcom/miui/milk/model/SettingProtos$SecureSetting;)Landroid/net/Uri;

    .line 164
    add-int/lit8 v4, v4, 0x1

    .line 165
    iget v9, p0, Lcom/miui/milk/control/local/SettingController;->mCurrImportIndex:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Lcom/miui/milk/control/local/SettingController;->mCurrImportIndex:I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 166
    :catch_2
    move-exception v9

    move-object v0, v9

    .line 167
    .local v0, e:Ljava/lang/Exception;
    :try_start_5
    const-string v9, "SettingController"

    const-string v10, "Cannot add secure setting "

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 177
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #input:Ljava/io/FileInputStream;
    .end local v3           #secure:Lcom/miui/milk/model/SettingProtos$SecureSetting;
    .end local v4           #secureCount:I
    .end local v5           #settings:Lcom/miui/milk/model/SettingProtos$Settings;
    .end local v6           #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .end local v8           #systemCount:I
    :catch_3
    move-exception v9

    move-object v0, v9

    .line 178
    .local v0, e:Ljava/io/IOException;
    const-string v9, "SettingController"

    const-string v9, "Cannot import settings "

    invoke-static {v12, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 171
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #input:Ljava/io/FileInputStream;
    .restart local v4       #secureCount:I
    .restart local v5       #settings:Lcom/miui/milk/model/SettingProtos$Settings;
    .restart local v6       #syncroot:Lcom/miui/milk/model/SyncRootProtos$SyncRoot;
    .restart local v8       #systemCount:I
    :cond_4
    :try_start_6
    const-string v9, "SettingController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Import System Setting Counts : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const-string v9, "SettingController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Import Secure Setting Counts : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0
.end method
