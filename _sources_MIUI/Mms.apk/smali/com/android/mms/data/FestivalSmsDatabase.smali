.class public Lcom/android/mms/data/FestivalSmsDatabase;
.super Ljava/lang/Object;
.source "FestivalSmsDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/FestivalSmsDatabase$DatabaseSdcardListener;
    }
.end annotation


# static fields
.field private static CATEGORY_TABLE_CREATE:Ljava/lang/String;

.field private static FESTIVAL_TABLE_CREATE:Ljava/lang/String;

.field private static MESSAGE_TABLE_CREATE:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private mDatabaseSdcardListener:Lcom/android/mms/data/FestivalSmsDatabase$DatabaseSdcardListener;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 43
    const-string v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT, %s TEXT, %s INTEGER, %s INTEGER)"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "categories"

    aput-object v2, v1, v4

    const-string v2, "_id"

    aput-object v2, v1, v5

    const-string v2, "name"

    aput-object v2, v1, v6

    const-string v2, "url"

    aput-object v2, v1, v7

    const-string v2, "sms_count"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "timestamp"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/FestivalSmsDatabase;->CATEGORY_TABLE_CREATE:Ljava/lang/String;

    .line 52
    const-string v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s BLOB, %s TEXT, %s INTEGER, %s INTEGER)"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "festival"

    aput-object v2, v1, v4

    const-string v2, "_id"

    aput-object v2, v1, v5

    const-string v2, "banner"

    aput-object v2, v1, v6

    const-string v2, "category_url"

    aput-object v2, v1, v7

    const-string v2, "begin"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "end"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/FestivalSmsDatabase;->FESTIVAL_TABLE_CREATE:Ljava/lang/String;

    .line 61
    const-string v0, "CREATE TABLE %s (%s INTEGER PRIMARY KEY AUTOINCREMENT, %s TEXT, %s TEXT)"

    new-array v1, v8, [Ljava/lang/Object;

    const-string v2, "messages"

    aput-object v2, v1, v4

    const-string v2, "_id"

    aput-object v2, v1, v5

    const-string v2, "category_name"

    aput-object v2, v1, v6

    const-string v2, "body"

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/mms/data/FestivalSmsDatabase;->MESSAGE_TABLE_CREATE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Lcom/android/mms/data/FestivalSmsDatabase;->mContext:Landroid/content/Context;

    .line 74
    new-instance v0, Lcom/android/mms/data/FestivalSmsDatabase$DatabaseSdcardListener;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/data/FestivalSmsDatabase$DatabaseSdcardListener;-><init>(Lcom/android/mms/data/FestivalSmsDatabase;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/data/FestivalSmsDatabase;->mDatabaseSdcardListener:Lcom/android/mms/data/FestivalSmsDatabase$DatabaseSdcardListener;

    .line 75
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/data/FestivalSmsDatabase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/android/mms/data/FestivalSmsDatabase;->close()V

    return-void
.end method

.method private checkTable(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "tableName"
    .parameter "tableSql"

    .prologue
    const/4 v10, 0x0

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/FestivalSmsDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sqlite_master"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "sql"

    aput-object v4, v2, v3

    const-string v3, "type=? AND name=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "table"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 122
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_1

    .line 124
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 128
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 131
    .end local v8           #cursor:Landroid/database/Cursor;
    :goto_0
    return v0

    .line 119
    :catch_0
    move-exception v0

    move-object v9, v0

    .local v9, e:Landroid/database/sqlite/SQLiteException;
    move v0, v10

    .line 120
    goto :goto_0

    .line 128
    .end local v9           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_1
    move v0, v10

    .line 131
    goto :goto_0

    .line 128
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private checkTables()Z
    .locals 2

    .prologue
    .line 108
    const-string v0, "categories"

    sget-object v1, Lcom/android/mms/data/FestivalSmsDatabase;->CATEGORY_TABLE_CREATE:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/data/FestivalSmsDatabase;->checkTable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "messages"

    sget-object v1, Lcom/android/mms/data/FestivalSmsDatabase;->MESSAGE_TABLE_CREATE:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/data/FestivalSmsDatabase;->checkTable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "festival"

    sget-object v1, Lcom/android/mms/data/FestivalSmsDatabase;->FESTIVAL_TABLE_CREATE:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/mms/data/FestivalSmsDatabase;->checkTable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private close()V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/mms/data/FestivalSmsDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/mms/data/FestivalSmsDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/data/FestivalSmsDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 170
    :cond_0
    return-void
.end method

.method private copyRawToFile(ILjava/lang/String;)Z
    .locals 7
    .parameter "rawId"
    .parameter "filePath"

    .prologue
    const/4 v6, 0x0

    .line 208
    :try_start_0
    iget-object v5, p0, Lcom/android/mms/data/FestivalSmsDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 209
    .local v2, in:Ljava/io/InputStream;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 210
    .local v3, out:Ljava/io/OutputStream;
    const/16 v5, 0x1000

    new-array v0, v5, [B

    .line 212
    .local v0, b:[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .local v4, read:I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 213
    const/4 v5, 0x0

    invoke-virtual {v3, v0, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 218
    .end local v0           #b:[B
    .end local v2           #in:Ljava/io/InputStream;
    .end local v3           #out:Ljava/io/OutputStream;
    .end local v4           #read:I
    :catch_0
    move-exception v5

    move-object v1, v5

    .local v1, e:Ljava/io/IOException;
    move v5, v6

    .line 219
    .end local v1           #e:Ljava/io/IOException;
    :goto_1
    return v5

    .line 215
    .restart local v0       #b:[B
    .restart local v2       #in:Ljava/io/InputStream;
    .restart local v3       #out:Ljava/io/OutputStream;
    .restart local v4       #read:I
    :cond_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 216
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    const/4 v5, 0x1

    goto :goto_1
.end method

.method private ensureOpen()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 82
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/mms/data/FestivalSmsDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    move v2, v4

    .line 103
    :goto_0
    return v2

    .line 86
    :cond_1
    iget-object v2, p0, Lcom/android/mms/data/FestivalSmsDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/mms/data/FestivalSmsDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v6

    .line 87
    goto :goto_0

    .line 89
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/data/FestivalSmsDatabase;->close()V

    .line 91
    new-instance v1, Ljava/io/File;

    invoke-direct {p0}, Lcom/android/mms/data/FestivalSmsDatabase;->getDatabaseFullPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    .line 93
    invoke-virtual {p0}, Lcom/android/mms/data/FestivalSmsDatabase;->init()Z

    move-result v2

    goto :goto_0

    .line 96
    :cond_3
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/data/FestivalSmsDatabase;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/mms/data/FestivalSmsDatabase;->getDatabaseFullPath()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/data/FestivalSmsDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    iget-object v2, p0, Lcom/android/mms/data/FestivalSmsDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v2, :cond_4

    invoke-direct {p0}, Lcom/android/mms/data/FestivalSmsDatabase;->checkTables()Z

    move-result v2

    if-nez v2, :cond_5

    .line 101
    :cond_4
    invoke-virtual {p0}, Lcom/android/mms/data/FestivalSmsDatabase;->init()Z

    move-result v2

    goto :goto_0

    .line 97
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 98
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    invoke-virtual {p0}, Lcom/android/mms/data/FestivalSmsDatabase;->init()Z

    move-result v2

    goto :goto_0

    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :cond_5
    move v2, v6

    .line 103
    goto :goto_0
.end method

.method private getDatabaseFullPath()Ljava/lang/String;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/mms/data/FestivalSmsDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "festival_sms.db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getMoreMessages(Ljava/lang/String;Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;)Z
    .locals 4
    .parameter "categoryName"
    .parameter "info"

    .prologue
    const/4 v3, 0x0

    .line 196
    invoke-direct {p0}, Lcom/android/mms/data/FestivalSmsDatabase;->ensureOpen()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 202
    :goto_0
    return v2

    .line 199
    :cond_0
    :try_start_0
    new-instance v1, Lcom/android/mms/data/FestivalSmsUpdater;

    iget-object v2, p0, Lcom/android/mms/data/FestivalSmsDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v1, v2}, Lcom/android/mms/data/FestivalSmsUpdater;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 200
    .local v1, updater:Lcom/android/mms/data/FestivalSmsUpdater;
    invoke-virtual {v1, p1, p2}, Lcom/android/mms/data/FestivalSmsUpdater;->getMoreMessages(Ljava/lang/String;Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 201
    .end local v1           #updater:Lcom/android/mms/data/FestivalSmsUpdater;
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/Exception;
    move v2, v3

    .line 202
    goto :goto_0
.end method

.method public init()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 135
    invoke-direct {p0}, Lcom/android/mms/data/FestivalSmsDatabase;->close()V

    .line 137
    const/high16 v1, 0x7f06

    invoke-direct {p0}, Lcom/android/mms/data/FestivalSmsDatabase;->getDatabaseFullPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/mms/data/FestivalSmsDatabase;->copyRawToFile(ILjava/lang/String;)Z

    .line 139
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/data/FestivalSmsDatabase;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/mms/data/FestivalSmsDatabase;->getDatabaseFullPath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->openOrCreateDatabase(Ljava/lang/String;ILandroid/database/sqlite/SQLiteDatabase$CursorFactory;)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/data/FestivalSmsDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    iget-object v1, p0, Lcom/android/mms/data/FestivalSmsDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    .line 140
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/database/sqlite/SQLiteException;
    move v1, v5

    .line 141
    goto :goto_0

    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :cond_0
    move v1, v5

    .line 143
    goto :goto_0
.end method

.method public query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "table"
    .parameter "columns"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "groupBy"
    .parameter "having"
    .parameter "orderBy"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/mms/data/FestivalSmsDatabase;->ensureOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    const/4 v0, 0x0

    .line 180
    :goto_0
    return-object v0

    .line 178
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/FestivalSmsDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 180
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update(Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;)Z
    .locals 4
    .parameter "info"

    .prologue
    const/4 v3, 0x0

    .line 185
    invoke-direct {p0}, Lcom/android/mms/data/FestivalSmsDatabase;->ensureOpen()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v3

    .line 191
    :goto_0
    return v2

    .line 188
    :cond_0
    :try_start_0
    new-instance v1, Lcom/android/mms/data/FestivalSmsUpdater;

    iget-object v2, p0, Lcom/android/mms/data/FestivalSmsDatabase;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {v1, v2}, Lcom/android/mms/data/FestivalSmsUpdater;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 189
    .local v1, updater:Lcom/android/mms/data/FestivalSmsUpdater;
    invoke-virtual {v1, p1}, Lcom/android/mms/data/FestivalSmsUpdater;->update(Lcom/android/mms/data/FestivalSmsUpdater$UpdateInfo;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 190
    .end local v1           #updater:Lcom/android/mms/data/FestivalSmsUpdater;
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Ljava/lang/Exception;
    move v2, v3

    .line 191
    goto :goto_0
.end method
