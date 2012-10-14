.class public Lcom/android/browser/model/HttpHeaderDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "HttpHeaderDatabaseHelper.java"


# static fields
.field public static final COLUMN_FORUMS_URL:Ljava/lang/String; = "url"

.field public static final DB_TABLE_FORUMS:Ljava/lang/String; = "forums"

.field public static final FORUMS_PROJECTION_URL_INDEX:I = 0x0

.field private static final LogTag:Ljava/lang/String; = "browser/HttpHeaderDatabaseHelper"

.field private static final sDatabaseName:Ljava/lang/String; = "httpheader.db"

.field private static final sDatabaseVersion:I = 0x4


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 22
    const-string v0, "httpheader.db"

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 23
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 29
    :try_start_0
    const-string v1, "CREATE TABLE forums (url TEXT);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    return-void

    .line 31
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 32
    .local v0, ex:Landroid/database/SQLException;
    const-string v1, "browser/HttpHeaderDatabaseHelper"

    const-string v2, "couldn\'t create table in httpheader database"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    throw v0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 4
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    const-string v2, "browser/HttpHeaderDatabaseHelper"

    .line 39
    const-string v1, "browser/HttpHeaderDatabaseHelper"

    monitor-enter v2

    .line 42
    :try_start_0
    const-string v2, "DROP TABLE IF EXISTS forums"

    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0, p1}, Lcom/android/browser/model/HttpHeaderDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :try_start_1
    monitor-exit v1

    .line 50
    return-void

    .line 45
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 46
    .local v0, ex:Landroid/database/SQLException;
    const-string v2, "browser/HttpHeaderDatabaseHelper"

    const-string v3, "couldn\'t drop table in httpheader database"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    throw v0

    .line 49
    .end local v0           #ex:Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
