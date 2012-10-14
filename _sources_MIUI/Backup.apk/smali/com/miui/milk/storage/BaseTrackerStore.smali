.class public abstract Lcom/miui/milk/storage/BaseTrackerStore;
.super Ljava/lang/Object;
.source "BaseTrackerStore.java"


# instance fields
.field protected GUID_COLUMN_NAME:Ljava/lang/String;

.field protected KEY_COLUMN_NAME:Ljava/lang/String;

.field protected VALUE_COLUMN_NAME:Ljava/lang/String;

.field private dbStore:Landroid/database/sqlite/SQLiteDatabase;

.field private mDatabaseHelper:Lcom/miui/milk/storage/BackupDatabaseHelper;

.field protected mTableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/miui/milk/storage/BaseTrackerStore;->mDatabaseHelper:Lcom/miui/milk/storage/BackupDatabaseHelper;

    .line 21
    iput-object v0, p0, Lcom/miui/milk/storage/BaseTrackerStore;->mTableName:Ljava/lang/String;

    .line 23
    const-string v0, "_key"

    iput-object v0, p0, Lcom/miui/milk/storage/BaseTrackerStore;->KEY_COLUMN_NAME:Ljava/lang/String;

    .line 24
    const-string v0, "_value"

    iput-object v0, p0, Lcom/miui/milk/storage/BaseTrackerStore;->VALUE_COLUMN_NAME:Ljava/lang/String;

    .line 25
    const-string v0, "_guid"

    iput-object v0, p0, Lcom/miui/milk/storage/BaseTrackerStore;->GUID_COLUMN_NAME:Ljava/lang/String;

    .line 28
    new-instance v0, Lcom/miui/milk/storage/BackupDatabaseHelper;

    invoke-direct {v0, p1}, Lcom/miui/milk/storage/BackupDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/milk/storage/BaseTrackerStore;->mDatabaseHelper:Lcom/miui/milk/storage/BackupDatabaseHelper;

    .line 29
    invoke-virtual {p0}, Lcom/miui/milk/storage/BaseTrackerStore;->setMemberVariables()V

    .line 30
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "key"
    .parameter "value"
    .parameter "guid"

    .prologue
    const-string v7, "BaseTrackerStore"

    const-string v6, " value: "

    const-string v5, " guid: "

    .line 35
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 36
    .local v0, cv:Landroid/content/ContentValues;
    iget-object v1, p0, Lcom/miui/milk/storage/BaseTrackerStore;->KEY_COLUMN_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    if-eqz p2, :cond_0

    .line 38
    iget-object v1, p0, Lcom/miui/milk/storage/BaseTrackerStore;->VALUE_COLUMN_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_0
    if-eqz p3, :cond_1

    .line 41
    iget-object v1, p0, Lcom/miui/milk/storage/BaseTrackerStore;->GUID_COLUMN_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_1
    iget-object v1, p0, Lcom/miui/milk/storage/BaseTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v1, :cond_2

    .line 44
    invoke-virtual {p0}, Lcom/miui/milk/storage/BaseTrackerStore;->open()V

    .line 46
    :cond_2
    iget-object v1, p0, Lcom/miui/milk/storage/BaseTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/miui/milk/storage/BaseTrackerStore;->mTableName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 47
    const-string v1, "BaseTrackerStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Insert new record. Key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " guid: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :goto_0
    return-void

    .line 49
    :cond_3
    const-string v1, "BaseTrackerStore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error while insert new record. Key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " guid: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/miui/milk/storage/BaseTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/miui/milk/storage/BaseTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 234
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/milk/storage/BaseTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    .line 236
    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 17
    .parameter "key"

    .prologue
    .line 199
    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v14

    .line 205
    .local v14, longkey:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/storage/BaseTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, v0

    if-nez v2, :cond_0

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/storage/BaseTrackerStore;->open()V

    .line 208
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/storage/BaseTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, v0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/storage/BaseTrackerStore;->mTableName:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/storage/BaseTrackerStore;->KEY_COLUMN_NAME:Ljava/lang/String;

    move-object v7, v0

    aput-object v7, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/storage/BaseTrackerStore;->KEY_COLUMN_NAME:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "= ? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 210
    .local v16, result:Landroid/database/Cursor;
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v12

    .line 211
    .local v12, count:I
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 212
    if-lez v12, :cond_1

    const/4 v2, 0x1

    .end local v12           #count:I
    .end local v14           #longkey:J
    .end local v16           #result:Landroid/database/Cursor;
    :goto_0
    return v2

    .line 200
    :catch_0
    move-exception v13

    .line 201
    .local v13, ex:Ljava/lang/NumberFormatException;
    const-string v2, "BaseTrackerStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const/4 v2, 0x0

    goto :goto_0

    .line 212
    .end local v13           #ex:Ljava/lang/NumberFormatException;
    .restart local v12       #count:I
    .restart local v14       #longkey:J
    .restart local v16       #result:Landroid/database/Cursor;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getAllKeys()Ljava/util/HashSet;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 176
    iget-object v0, p0, Lcom/miui/milk/storage/BaseTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/miui/milk/storage/BaseTrackerStore;->open()V

    .line 179
    :cond_0
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 180
    .local v12, keys:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/miui/milk/storage/BaseTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/miui/milk/storage/BaseTrackerStore;->mTableName:Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/miui/milk/storage/BaseTrackerStore;->KEY_COLUMN_NAME:Ljava/lang/String;

    aput-object v6, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/miui/milk/storage/BaseTrackerStore;->GUID_COLUMN_NAME:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " is not null"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    move-object v9, v5

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 182
    .local v13, resultCursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/miui/milk/storage/BaseTrackerStore;->KEY_COLUMN_NAME:Ljava/lang/String;

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 183
    .local v11, keyColumnIndex:I
    const/4 v10, 0x0

    .line 184
    .local v10, cursorId:Ljava/lang/String;
    if-eqz v13, :cond_1

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    invoke-interface {v13, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    .line 187
    invoke-virtual {v12, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 191
    :cond_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 192
    return-object v12
.end method

.method public getGuid(Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .parameter "key"

    .prologue
    .line 134
    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v14

    .line 139
    .local v14, longkey:J
    const/16 v16, 0x0

    .line 140
    .local v16, result:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/storage/BaseTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, v0

    if-nez v2, :cond_0

    .line 141
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/storage/BaseTrackerStore;->open()V

    .line 143
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/storage/BaseTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, v0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/storage/BaseTrackerStore;->mTableName:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/storage/BaseTrackerStore;->GUID_COLUMN_NAME:Ljava/lang/String;

    move-object v7, v0

    aput-object v7, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/storage/BaseTrackerStore;->KEY_COLUMN_NAME:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "= ?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 146
    .local v17, resultCursor:Landroid/database/Cursor;
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 147
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/storage/BaseTrackerStore;->GUID_COLUMN_NAME:Ljava/lang/String;

    move-object v2, v0

    move-object/from16 v0, v17

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 148
    .local v12, colIndex:I
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    .line 149
    move-object/from16 v0, v17

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 151
    .end local v12           #colIndex:I
    :cond_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    move-object/from16 v2, v16

    .line 152
    .end local v14           #longkey:J
    .end local v16           #result:Ljava/lang/String;
    .end local v17           #resultCursor:Landroid/database/Cursor;
    :goto_0
    return-object v2

    .line 135
    :catch_0
    move-exception v13

    .line 136
    .local v13, ex:Ljava/lang/NumberFormatException;
    const-string v2, "BaseTrackerStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getKeyVersionMap()Ljava/util/HashMap;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/storage/BaseTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    if-nez v3, :cond_0

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/storage/BaseTrackerStore;->open()V

    .line 109
    :cond_0
    new-instance v16, Ljava/util/HashMap;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashMap;-><init>()V

    .line 111
    .local v16, ret:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/storage/BaseTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v0

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/storage/BaseTrackerStore;->mTableName:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/storage/BaseTrackerStore;->KEY_COLUMN_NAME:Ljava/lang/String;

    move-object v8, v0

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/storage/BaseTrackerStore;->VALUE_COLUMN_NAME:Ljava/lang/String;

    move-object v8, v0

    aput-object v8, v6, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/storage/BaseTrackerStore;->GUID_COLUMN_NAME:Ljava/lang/String;

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " is not null"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual/range {v3 .. v12}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 113
    .local v15, resultCursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/storage/BaseTrackerStore;->KEY_COLUMN_NAME:Ljava/lang/String;

    move-object v3, v0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 114
    .local v14, keyColumnIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/storage/BaseTrackerStore;->VALUE_COLUMN_NAME:Ljava/lang/String;

    move-object v3, v0

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v18

    .line 116
    .local v18, versionColumnIndex:I
    const/4 v13, 0x0

    .line 117
    .local v13, cursorId:Ljava/lang/String;
    const/16 v17, 0x0

    .line 118
    .local v17, version:Ljava/lang/Long;
    if-eqz v15, :cond_1

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 119
    :goto_0
    invoke-interface {v15}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-nez v3, :cond_1

    .line 120
    invoke-interface {v15, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    .line 121
    move-object v0, v15

    move/from16 v1, v18

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    .line 122
    move-object/from16 v0, v16

    move-object v1, v13

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 126
    :cond_1
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 127
    return-object v16
.end method

.method public getLuidsByGuid(Ljava/lang/String;)[Ljava/lang/String;
    .locals 14
    .parameter "guid"

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x1

    const/4 v6, 0x0

    .line 156
    iget-object v0, p0, Lcom/miui/milk/storage/BaseTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/miui/milk/storage/BaseTrackerStore;->open()V

    .line 159
    :cond_0
    new-instance v12, Ljava/util/Vector;

    invoke-direct {v12}, Ljava/util/Vector;-><init>()V

    .line 160
    .local v12, luids:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/miui/milk/storage/BaseTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v2, p0, Lcom/miui/milk/storage/BaseTrackerStore;->mTableName:Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/milk/storage/BaseTrackerStore;->KEY_COLUMN_NAME:Ljava/lang/String;

    aput-object v4, v3, v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/miui/milk/storage/BaseTrackerStore;->GUID_COLUMN_NAME:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "= ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/String;

    aput-object p1, v5, v7

    move-object v7, v6

    move-object v8, v6

    move-object v9, v6

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 162
    .local v13, resultCursor:Landroid/database/Cursor;
    iget-object v0, p0, Lcom/miui/milk/storage/BaseTrackerStore;->KEY_COLUMN_NAME:Ljava/lang/String;

    invoke-interface {v13, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 163
    .local v11, keyColumnIndex:I
    const/4 v10, 0x0

    .line 164
    .local v10, cursorId:Ljava/lang/String;
    if-eqz v13, :cond_1

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    :goto_0
    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    invoke-interface {v13, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    .line 167
    invoke-virtual {v12, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 171
    :cond_1
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 172
    invoke-virtual {v12}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 18
    .parameter "key"

    .prologue
    .line 83
    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v14

    .line 88
    .local v14, longkey:J
    const/16 v16, 0x0

    .line 89
    .local v16, result:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/storage/BaseTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, v0

    if-nez v2, :cond_0

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/miui/milk/storage/BaseTrackerStore;->open()V

    .line 92
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/storage/BaseTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    move-object v2, v0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/storage/BaseTrackerStore;->mTableName:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/storage/BaseTrackerStore;->VALUE_COLUMN_NAME:Ljava/lang/String;

    move-object v7, v0

    aput-object v7, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/storage/BaseTrackerStore;->KEY_COLUMN_NAME:Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "= ?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v2 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .line 95
    .local v17, resultCursor:Landroid/database/Cursor;
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/milk/storage/BaseTrackerStore;->VALUE_COLUMN_NAME:Ljava/lang/String;

    move-object v2, v0

    move-object/from16 v0, v17

    move-object v1, v2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 97
    .local v12, colIndex:I
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    .line 98
    move-object/from16 v0, v17

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 100
    .end local v12           #colIndex:I
    :cond_1
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    move-object/from16 v2, v16

    .line 101
    .end local v14           #longkey:J
    .end local v16           #result:Ljava/lang/String;
    .end local v17           #resultCursor:Landroid/database/Cursor;
    :goto_0
    return-object v2

    .line 84
    :catch_0
    move-exception v13

    .line 85
    .local v13, ex:Ljava/lang/NumberFormatException;
    const-string v2, "BaseTrackerStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public open()V
    .locals 1

    .prologue
    .line 248
    iget-object v0, p0, Lcom/miui/milk/storage/BaseTrackerStore;->mDatabaseHelper:Lcom/miui/milk/storage/BackupDatabaseHelper;

    invoke-virtual {v0}, Lcom/miui/milk/storage/BackupDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/storage/BaseTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    .line 249
    return-void
.end method

.method public remove(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "key"

    .prologue
    const/4 v8, 0x0

    const-string v9, "BaseTrackerStore"

    .line 218
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 223
    .local v1, longkey:J
    iget-object v3, p0, Lcom/miui/milk/storage/BaseTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/miui/milk/storage/BaseTrackerStore;->open()V

    .line 226
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/storage/BaseTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v4, p0, Lcom/miui/milk/storage/BaseTrackerStore;->mTableName:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/miui/milk/storage/BaseTrackerStore;->KEY_COLUMN_NAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "= ? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-virtual {v3, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 227
    const-string v3, "BaseTrackerStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remove record. Key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v8

    .line 228
    .end local v1           #longkey:J
    :goto_0
    return-object v3

    .line 219
    :catch_0
    move-exception v0

    .line 220
    .local v0, ex:Ljava/lang/NumberFormatException;
    const-string v3, "BaseTrackerStore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid key "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v8

    .line 221
    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 240
    iget-object v0, p0, Lcom/miui/milk/storage/BaseTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 241
    invoke-virtual {p0}, Lcom/miui/milk/storage/BaseTrackerStore;->open()V

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/miui/milk/storage/BaseTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v1, p0, Lcom/miui/milk/storage/BaseTrackerStore;->mTableName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 244
    const-string v0, "BaseTrackerStore"

    const-string v1, "reset track db "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return-void
.end method

.method public abstract setMemberVariables()V
.end method

.method public update(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "key"
    .parameter "value"
    .parameter "guid"

    .prologue
    const-string v11, " value: "

    const-string v10, " guid: "

    const-string v9, "BaseTrackerStore"

    .line 56
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 61
    .local v2, longkey:J
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 63
    .local v0, cv:Landroid/content/ContentValues;
    if-eqz p2, :cond_0

    .line 64
    iget-object v4, p0, Lcom/miui/milk/storage/BaseTrackerStore;->VALUE_COLUMN_NAME:Ljava/lang/String;

    invoke-virtual {v0, v4, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_0
    if-eqz p3, :cond_1

    .line 67
    iget-object v4, p0, Lcom/miui/milk/storage/BaseTrackerStore;->GUID_COLUMN_NAME:Ljava/lang/String;

    invoke-virtual {v0, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_1
    iget-object v4, p0, Lcom/miui/milk/storage/BaseTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_2

    .line 70
    invoke-virtual {p0}, Lcom/miui/milk/storage/BaseTrackerStore;->open()V

    .line 72
    :cond_2
    iget-object v4, p0, Lcom/miui/milk/storage/BaseTrackerStore;->dbStore:Landroid/database/sqlite/SQLiteDatabase;

    iget-object v5, p0, Lcom/miui/milk/storage/BaseTrackerStore;->mTableName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/miui/milk/storage/BaseTrackerStore;->KEY_COLUMN_NAME:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "= ?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-virtual {v4, v5, v0, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    .line 73
    const-string v4, "BaseTrackerStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Update old record. Key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " value: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " guid: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v2           #longkey:J
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .local v1, ex:Ljava/lang/NumberFormatException;
    const-string v4, "BaseTrackerStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 75
    .end local v1           #ex:Ljava/lang/NumberFormatException;
    .restart local v0       #cv:Landroid/content/ContentValues;
    .restart local v2       #longkey:J
    :cond_3
    const-string v4, "BaseTrackerStore"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error while update record. Key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " value: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " guid: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
