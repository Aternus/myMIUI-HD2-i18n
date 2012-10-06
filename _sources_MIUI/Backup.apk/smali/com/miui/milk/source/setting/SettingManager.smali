.class public Lcom/miui/milk/source/setting/SettingManager;
.super Ljava/lang/Object;
.source "SettingManager.java"


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/miui/milk/source/setting/SettingManager;->mContext:Landroid/content/Context;

    .line 25
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/source/setting/SettingManager;->mResolver:Landroid/content/ContentResolver;

    .line 26
    return-void
.end method


# virtual methods
.method public addSecureSetting(Lcom/miui/milk/model/SettingProtos$SecureSetting;)Landroid/net/Uri;
    .locals 5
    .parameter "secureSetting"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "SettingManager"

    .line 114
    const-string v2, "SettingManager"

    const-string v2, "Saving secure setting"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {p1}, Lcom/miui/milk/model/SettingProtos$SecureSetting;->hasName()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/miui/milk/model/SettingProtos$SecureSetting;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/miui/milk/model/SettingProtos$SecureSetting;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 116
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Cannot add secure setting which has empty name"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 118
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 119
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "name"

    invoke-virtual {p1}, Lcom/miui/milk/model/SettingProtos$SecureSetting;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p1}, Lcom/miui/milk/model/SettingProtos$SecureSetting;->hasValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 121
    const-string v2, "value"

    invoke-virtual {p1}, Lcom/miui/milk/model/SettingProtos$SecureSetting;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_2
    iget-object v2, p0, Lcom/miui/milk/source/setting/SettingManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 124
    .local v0, insertedUri:Landroid/net/Uri;
    const-string v2, "SettingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The new secure setting has uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-object v0
.end method

.method public addSystemSetting(Lcom/miui/milk/model/SettingProtos$SystemSetting;)Landroid/net/Uri;
    .locals 5
    .parameter "systemSetting"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "SettingManager"

    .line 99
    const-string v2, "SettingManager"

    const-string v2, "Saving system setting"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p1}, Lcom/miui/milk/model/SettingProtos$SystemSetting;->hasName()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/miui/milk/model/SettingProtos$SystemSetting;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/miui/milk/model/SettingProtos$SystemSetting;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 101
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Cannot add system setting which has empty name"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 103
    :cond_1
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 104
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "name"

    invoke-virtual {p1}, Lcom/miui/milk/model/SettingProtos$SystemSetting;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Lcom/miui/milk/model/SettingProtos$SystemSetting;->hasValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 106
    const-string v2, "value"

    invoke-virtual {p1}, Lcom/miui/milk/model/SettingProtos$SystemSetting;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :cond_2
    iget-object v2, p0, Lcom/miui/milk/source/setting/SettingManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 109
    .local v0, insertedUri:Landroid/net/Uri;
    const-string v2, "SettingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The new system setting has uri : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    return-object v0
.end method

.method public loadSecureSetting(J)Lcom/miui/milk/model/SettingProtos$SecureSetting;
    .locals 13
    .parameter "id"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 64
    const-string v0, "SettingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading secure setting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {}, Lcom/miui/milk/model/SettingProtos$SecureSetting;->newBuilder()Lcom/miui/milk/model/SettingProtos$SecureSetting$Builder;

    move-result-object v9

    .line 66
    .local v9, secureSetting:Lcom/miui/milk/model/SettingProtos$SecureSetting$Builder;
    const/4 v7, 0x0

    .line 69
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/source/setting/SettingManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "_id= ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 76
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 77
    invoke-interface {v7}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    sub-int v8, v0, v12

    .local v8, index:I
    :goto_0
    if-ltz v8, :cond_6

    .line 78
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v6

    .line 79
    .local v6, columnName:Ljava/lang/String;
    const-string v0, "_id"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/miui/milk/model/SettingProtos$SecureSetting$Builder;->setLuid(Ljava/lang/String;)Lcom/miui/milk/model/SettingProtos$SecureSetting$Builder;

    .line 77
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 81
    :cond_1
    const-string v0, "name"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 82
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/miui/milk/model/SettingProtos$SecureSetting$Builder;->setName(Ljava/lang/String;)Lcom/miui/milk/model/SettingProtos$SecureSetting$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 92
    .end local v6           #columnName:Ljava/lang/String;
    .end local v8           #index:I
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 83
    .restart local v6       #columnName:Ljava/lang/String;
    .restart local v8       #index:I
    :cond_3
    :try_start_1
    const-string v0, "value"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/miui/milk/model/SettingProtos$SecureSetting$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/SettingProtos$SecureSetting$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 92
    .end local v6           #columnName:Ljava/lang/String;
    .end local v8           #index:I
    :cond_4
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v11

    .line 94
    :goto_2
    return-object v0

    .line 92
    .restart local v8       #index:I
    :cond_6
    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 94
    :cond_7
    invoke-virtual {v9}, Lcom/miui/milk/model/SettingProtos$SecureSetting$Builder;->build()Lcom/miui/milk/model/SettingProtos$SecureSetting;

    move-result-object v0

    goto :goto_2
.end method

.method public loadSystemSetting(J)Lcom/miui/milk/model/SettingProtos$SystemSetting;
    .locals 13
    .parameter "id"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 29
    const-string v0, "SettingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loading system setting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    invoke-static {}, Lcom/miui/milk/model/SettingProtos$SystemSetting;->newBuilder()Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;

    move-result-object v9

    .line 31
    .local v9, systemSetting:Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;
    const/4 v7, 0x0

    .line 34
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/miui/milk/source/setting/SettingManager;->mResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "_id= ? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 41
    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 42
    invoke-interface {v7}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    sub-int v8, v0, v12

    .local v8, index:I
    :goto_0
    if-ltz v8, :cond_6

    .line 43
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v6

    .line 44
    .local v6, columnName:Ljava/lang/String;
    const-string v0, "_id"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->setLuid(Ljava/lang/String;)Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;

    .line 42
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 46
    :cond_1
    const-string v0, "name"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 47
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->setName(Ljava/lang/String;)Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 57
    .end local v6           #columnName:Ljava/lang/String;
    .end local v8           #index:I
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    .line 48
    .restart local v6       #columnName:Ljava/lang/String;
    .restart local v8       #index:I
    :cond_3
    :try_start_1
    const-string v0, "value"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 57
    .end local v6           #columnName:Ljava/lang/String;
    .end local v8           #index:I
    :cond_4
    if-eqz v7, :cond_5

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_5
    move-object v0, v11

    .line 59
    :goto_2
    return-object v0

    .line 57
    .restart local v8       #index:I
    :cond_6
    if-eqz v7, :cond_7

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 59
    :cond_7
    invoke-virtual {v9}, Lcom/miui/milk/model/SettingProtos$SystemSetting$Builder;->build()Lcom/miui/milk/model/SettingProtos$SystemSetting;

    move-result-object v0

    goto :goto_2
.end method
