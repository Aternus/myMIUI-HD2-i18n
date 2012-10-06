.class public Lcom/miui/uac/DBHelper;
.super Ljava/lang/Object;
.source "DBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/uac/DBHelper$DBOpenHelper;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDB:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/miui/uac/DBHelper;->mContext:Landroid/content/Context;

    .line 57
    new-instance v0, Lcom/miui/uac/DBHelper$DBOpenHelper;

    invoke-direct {v0, p1}, Lcom/miui/uac/DBHelper$DBOpenHelper;-><init>(Landroid/content/Context;)V

    .line 58
    .local v0, dbOpenHelper:Lcom/miui/uac/DBHelper$DBOpenHelper;
    invoke-virtual {v0}, Lcom/miui/uac/DBHelper$DBOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/uac/DBHelper;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 59
    return-void
.end method

.method private addLog(JJI)V
    .locals 4
    .parameter "id"
    .parameter "time"
    .parameter "logType"

    .prologue
    .line 232
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 233
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "app_id"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 234
    const-string v1, "date"

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    if-nez v2, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 235
    const-string v1, "type"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 236
    iget-object v1, p0, Lcom/miui/uac/DBHelper;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "logs"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 237
    return-void

    :cond_0
    move-wide v2, p3

    .line 234
    goto :goto_0
.end method


# virtual methods
.method public changeState(Ljava/lang/String;Z)V
    .locals 13
    .parameter "packageName"
    .parameter "allow"

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v12, "allow"

    const-string v3, " package=? "

    .line 188
    iget-object v0, p0, Lcom/miui/uac/DBHelper;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "apps"

    new-array v2, v11, [Ljava/lang/String;

    const-string v4, "allow"

    aput-object v12, v2, v10

    const-string v4, " package=? "

    new-array v4, v11, [Ljava/lang/String;

    aput-object p1, v4, v10

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 193
    .local v8, c:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 195
    .local v9, values:Landroid/content/ContentValues;
    const-string v0, "allow"

    if-eqz p2, :cond_1

    move v0, v11

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v9, v12, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 196
    iget-object v0, p0, Lcom/miui/uac/DBHelper;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "apps"

    const-string v2, " package=? "

    new-array v2, v11, [Ljava/lang/String;

    aput-object p1, v2, v10

    invoke-virtual {v0, v1, v9, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 197
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    .line 199
    .end local v9           #values:Landroid/content/ContentValues;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 200
    return-void

    .restart local v9       #values:Landroid/content/ContentValues;
    :cond_1
    move v0, v10

    .line 195
    goto :goto_0
.end method

.method public checkApp(IILjava/lang/String;)Lcom/miui/uac/AppDetails;
    .locals 12
    .parameter "uid"
    .parameter "execUid"
    .parameter "execCmd"

    .prologue
    const/4 v11, 0x0

    const/4 v5, 0x1

    .line 62
    const/4 v6, -0x1

    .line 63
    .local v6, allow:I
    const-wide/16 v8, 0x0

    .line 64
    .local v8, dateAccess:J
    iget-object v0, p0, Lcom/miui/uac/DBHelper;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "SELECT apps._id,apps.allow,logs.date FROM apps,logs WHERE (apps.uid=? AND apps.exec_uid=? AND apps.exec_cmd=?) AND (logs.app_id=apps._id AND (logs.type=1 OR logs.type=2)) ORDER BY logs.date LIMIT 1"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    int-to-long v3, p1

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    aput-object p3, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 69
    .local v7, c:Landroid/database/Cursor;
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    const-string v0, "_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 71
    .local v10, id:I
    const-string v0, "allow"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 72
    const-string v0, "date"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 74
    int-to-long v1, v10

    const-wide/16 v3, 0x0

    if-ne v6, v5, :cond_1

    :goto_0
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/uac/DBHelper;->addLog(JJI)V

    .line 76
    .end local v10           #id:I
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 77
    new-instance v0, Lcom/miui/uac/AppDetails;

    invoke-direct {v0, p1, v6, v8, v9}, Lcom/miui/uac/AppDetails;-><init>(IIJ)V

    return-object v0

    .restart local v10       #id:I
    :cond_1
    move v5, v11

    .line 74
    goto :goto_0
.end method

.method public clearLog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 240
    iget-object v0, p0, Lcom/miui/uac/DBHelper;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "logs"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 241
    return-void
.end method

.method public close()V
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/miui/uac/DBHelper;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/miui/uac/DBHelper;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 257
    :cond_0
    return-void
.end method

.method public deleteById(J)V
    .locals 8
    .parameter "id"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v7, "Su.DBHelper"

    .line 212
    const-string v0, "Su.DBHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting from logs table where app_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/miui/uac/DBHelper;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "logs"

    const-string v2, "app_id=?"

    new-array v3, v6, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 214
    const-string v0, "Su.DBHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting from apps table where _id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v0, p0, Lcom/miui/uac/DBHelper;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "apps"

    const-string v2, "_id=?"

    new-array v3, v6, [Ljava/lang/String;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 216
    return-void
.end method

.method public deleteByPackageName(Ljava/lang/String;)V
    .locals 12
    .parameter "packageName"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v11, "_id"

    .line 203
    iget-object v0, p0, Lcom/miui/uac/DBHelper;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "apps"

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v11, v2, v6

    const-string v3, "package=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 205
    .local v8, cursor:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 206
    const-string v0, "_id"

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 207
    .local v9, id:J
    invoke-virtual {p0, v9, v10}, Lcom/miui/uac/DBHelper;->deleteById(J)V

    .line 209
    .end local v9           #id:J
    :cond_0
    return-void
.end method

.method public deleteByUid(I)V
    .locals 14
    .parameter "uid"

    .prologue
    const/4 v5, 0x0

    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v1, "apps"

    const-string v13, "_id"

    .line 219
    iget-object v0, p0, Lcom/miui/uac/DBHelper;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "apps"

    new-array v2, v12, [Ljava/lang/String;

    const-string v3, "_id"

    aput-object v13, v2, v11

    const-string v3, "uid=?"

    new-array v4, v12, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v11

    move-object v6, v5

    move-object v7, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 222
    .local v8, cursor:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    const-string v0, "Su.DBHelper"

    const-string v2, "_id found, deleting logs"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    const-string v0, "_id"

    invoke-interface {v8, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 225
    .local v9, id:J
    iget-object v0, p0, Lcom/miui/uac/DBHelper;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "logs"

    const-string v3, "_id=?"

    new-array v4, v12, [Ljava/lang/String;

    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-virtual {v0, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 227
    .end local v9           #id:J
    :cond_0
    iget-object v0, p0, Lcom/miui/uac/DBHelper;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "apps"

    const-string v2, "uid=?"

    new-array v3, v12, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 228
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 229
    return-void
.end method

.method public getAllApps()Landroid/database/Cursor;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 107
    iget-object v0, p0, Lcom/miui/uac/DBHelper;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "apps"

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "uid"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "package"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "name"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "allow"

    aput-object v5, v2, v4

    const-string v7, "allow DESC, name ASC"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public insert(IILjava/lang/String;I)V
    .locals 8
    .parameter "uid"
    .parameter "toUid"
    .parameter "cmd"
    .parameter "allow"

    .prologue
    .line 81
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 82
    .local v7, values:Landroid/content/ContentValues;
    const-string v0, "uid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 83
    const-string v0, "exec_uid"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 84
    const-string v0, "exec_cmd"

    invoke-virtual {v7, v0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string v0, "allow"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 86
    const-string v0, "package"

    iget-object v1, p0, Lcom/miui/uac/DBHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/miui/uac/Util;->getAppPackage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v0, "name"

    iget-object v1, p0, Lcom/miui/uac/DBHelper;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/miui/uac/Util;->getAppName(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-wide/16 v1, 0x0

    .line 90
    .local v1, id:J
    :try_start_0
    iget-object v0, p0, Lcom/miui/uac/DBHelper;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "apps"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->insertOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 97
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 99
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/uac/DBHelper;->addLog(JJI)V

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    const/4 v0, 0x1

    move v5, v0

    :goto_0
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/uac/DBHelper;->addLog(JJI)V

    .line 104
    :cond_0
    :goto_1
    return-void

    .line 101
    :cond_1
    const/4 v0, 0x0

    move v5, v0

    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 94
    .local v6, e:Landroid/database/SQLException;
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/miui/uac/DBHelper;->deleteByUid(I)V

    .line 95
    iget-object v0, p0, Lcom/miui/uac/DBHelper;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "apps"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v1

    .line 97
    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 99
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/uac/DBHelper;->addLog(JJI)V

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v0, 0x1

    if-ne p4, v0, :cond_2

    const/4 v0, 0x1

    move v5, v0

    :goto_2
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/uac/DBHelper;->addLog(JJI)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    move v5, v0

    goto :goto_2

    .line 97
    .end local v6           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v0

    move-object v6, v0

    invoke-virtual {v7}, Landroid/content/ContentValues;->clear()V

    .line 99
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_3

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x2

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/uac/DBHelper;->addLog(JJI)V

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v0, 0x1

    if-ne p4, v0, :cond_4

    const/4 v0, 0x1

    move v5, v0

    :goto_3
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/miui/uac/DBHelper;->addLog(JJI)V

    :cond_3
    throw v6

    :cond_4
    const/4 v0, 0x0

    move v5, v0

    goto :goto_3
.end method
