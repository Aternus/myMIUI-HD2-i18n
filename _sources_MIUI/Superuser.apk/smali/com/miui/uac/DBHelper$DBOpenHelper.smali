.class Lcom/miui/uac/DBHelper$DBOpenHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DBHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/uac/DBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DBOpenHelper"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 275
    const-string v0, "permissions.sqlite"

    const/4 v1, 0x0

    const/4 v2, 0x5

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 276
    iput-object p1, p0, Lcom/miui/uac/DBHelper$DBOpenHelper;->mContext:Landroid/content/Context;

    .line 277
    return-void
.end method

.method private createPrefs(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 5
    .parameter "db"

    .prologue
    .line 339
    iget-object v3, p0, Lcom/miui/uac/DBHelper$DBOpenHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 340
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v3, "pref_notifications"

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 342
    .local v0, notifications:Z
    const-string v3, "CREATE TABLE IF NOT EXISTS prefs (_id INTEGER, key TEXT, value TEXT, PRIMARY KEY (_id));"

    invoke-virtual {p1, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 344
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 345
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "key"

    const-string v4, "notifications"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v3, "value"

    if-eqz v0, :cond_0

    const-string v4, "1"

    :goto_0
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    const-string v3, "prefs"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 348
    return-void

    .line 346
    :cond_0
    const-string v4, "0"

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 281
    const-string v0, "CREATE TABLE IF NOT EXISTS apps (_id INTEGER, uid INTEGER, package TEXT, name TEXT, exec_uid INTEGER, exec_cmd TEXT, allow INTEGER, PRIMARY KEY (_id), UNIQUE (uid,exec_uid,exec_cmd));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 282
    const-string v0, "CREATE TABLE IF NOT EXISTS logs (_id INTEGER, app_id INTEGER, date INTEGER, type INTEGER, PRIMARY KEY (_id));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 283
    invoke-direct {p0, p1}, Lcom/miui/uac/DBHelper$DBOpenHelper;->createPrefs(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 284
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 20
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 288
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .line 290
    .local v19, values:Landroid/content/ContentValues;
    const/4 v4, 0x1

    move/from16 v0, p2

    move v1, v4

    if-ne v0, v1, :cond_1

    .line 291
    const-string v4, "DROP TABLE IF EXISTS permissions"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 292
    const-string v4, "CREATE TABLE IF NOT EXISTS apps (_id INTEGER, uid INTEGER, package TEXT, name TEXT, exec_uid INTEGER, exec_cmd TEXT, allow INTEGER, PRIMARY KEY (_id), UNIQUE (uid,exec_uid,exec_cmd));"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 293
    const-string v4, "CREATE TABLE IF NOT EXISTS logs (_id INTEGER, app_id INTEGER, date INTEGER, type INTEGER, PRIMARY KEY (_id));"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 294
    invoke-direct/range {p0 .. p1}, Lcom/miui/uac/DBHelper$DBOpenHelper;->createPrefs(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 295
    :cond_1
    const/4 v4, 0x2

    move/from16 v0, p2

    move v1, v4

    if-ne v0, v1, :cond_0

    const/4 v4, 0x5

    move/from16 v0, p3

    move v1, v4

    if-ne v0, v1, :cond_0

    .line 296
    const-string v4, "CREATE TABLE IF NOT EXISTS apps (_id INTEGER, uid INTEGER, package TEXT, name TEXT, exec_uid INTEGER, exec_cmd TEXT, allow INTEGER, PRIMARY KEY (_id), UNIQUE (uid,exec_uid,exec_cmd));"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 297
    const-string v4, "CREATE TABLE IF NOT EXISTS logs (_id INTEGER, app_id INTEGER, date INTEGER, type INTEGER, PRIMARY KEY (_id));"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 298
    invoke-direct/range {p0 .. p1}, Lcom/miui/uac/DBHelper$DBOpenHelper;->createPrefs(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 305
    const-string v5, "permissions"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v4 .. v11}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 306
    .local v14, c:Landroid/database/Cursor;
    :goto_1
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 307
    const-string v4, "from_uid"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    .line 308
    .local v18, uid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/uac/DBHelper$DBOpenHelper;->mContext:Landroid/content/Context;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, v18

    invoke-static {v0, v1}, Lcom/miui/uac/Util;->getAppPackage(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v17

    .line 309
    .local v17, packageName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/uac/DBHelper$DBOpenHelper;->mContext:Landroid/content/Context;

    move-object v4, v0

    const/4 v5, 0x0

    move-object v0, v4

    move/from16 v1, v18

    move v2, v5

    invoke-static {v0, v1, v2}, Lcom/miui/uac/Util;->getAppName(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v13

    .line 310
    .local v13, appName:Ljava/lang/String;
    const-string v4, "allow"

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v14, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 312
    .local v12, allow:I
    const-string v4, "uid"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v19

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 313
    const-string v4, "package"

    move-object/from16 v0, v19

    move-object v1, v4

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    const-string v4, "name"

    move-object/from16 v0, v19

    move-object v1, v4

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const-string v4, "exec_uid"

    const-string v5, "exec_uid"

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v19

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 316
    const-string v4, "exec_cmd"

    const-string v5, "exec_command"

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    const-string v4, "allow"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v19

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 318
    const-string v4, "apps"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v15

    .line 319
    .local v15, id:J
    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentValues;->clear()V

    .line 321
    const-string v4, "app_id"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v19

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 322
    const-string v4, "date"

    const-string v5, "date_created"

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v19

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 323
    const-string v4, "type"

    const/4 v5, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v19

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 324
    const-string v4, "logs"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 325
    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentValues;->clear()V

    .line 327
    const-string v4, "app_id"

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v19

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 328
    const-string v4, "date"

    const-string v5, "date_access"

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v14, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v19

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 329
    const-string v4, "type"

    const/4 v5, 0x1

    if-ne v12, v5, :cond_2

    const/4 v5, 0x1

    :goto_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v19

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 330
    const-string v4, "logs"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    move-object/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 331
    invoke-virtual/range {v19 .. v19}, Landroid/content/ContentValues;->clear()V

    goto/16 :goto_1

    .line 329
    :cond_2
    const/4 v5, 0x0

    goto :goto_2

    .line 333
    .end local v12           #allow:I
    .end local v13           #appName:Ljava/lang/String;
    .end local v15           #id:J
    .end local v17           #packageName:Ljava/lang/String;
    .end local v18           #uid:I
    :cond_3
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 334
    const-string v4, "DROP TABLE IF EXISTS permissions"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
