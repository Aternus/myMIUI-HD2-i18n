.class public Lcom/android/browser/model/MetadataDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "MetadataDatabaseHelper.java"


# static fields
.field public static final COLUMN_MUSIC_ALBUM:Ljava/lang/String; = "album"

.field public static final COLUMN_MUSIC_ALBUM_PHOTO_URL:Ljava/lang/String; = "albumphoto_weburl"

.field public static final COLUMN_MUSIC_ARTIST:Ljava/lang/String; = "artist"

.field public static final COLUMN_MUSIC_CREATE_DATE:Ljava/lang/String; = "create_date"

.field public static final COLUMN_MUSIC_DM_ERROR_CODE:Ljava/lang/String; = "dm_errorcode"

.field public static final COLUMN_MUSIC_DURATION_SEC:Ljava/lang/String; = "duration"

.field public static final COLUMN_MUSIC_FILE_EXTENSION:Ljava/lang/String; = "fileext"

.field public static final COLUMN_MUSIC_FILE_SIZE_BYTE:Ljava/lang/String; = "filesize"

.field public static final COLUMN_MUSIC_ID:Ljava/lang/String; = "_id"

.field public static final COLUMN_MUSIC_LOCAL_PATH:Ljava/lang/String; = "localpath"

.field public static final COLUMN_MUSIC_LYRIC_URL:Ljava/lang/String; = "lrc_weburl"

.field public static final COLUMN_MUSIC_NAME:Ljava/lang/String; = "name"

.field public static final COLUMN_MUSIC_SOURCE:Ljava/lang/String; = "source"

.field public static final COLUMN_MUSIC_SOURCE_CANDIDATES:Ljava/lang/String; = "source_candidates"

.field public static final COLUMN_MUSIC_SOURCE_ID:Ljava/lang/String; = "sourceid"

.field public static final COLUMN_MUSIC_STATUS:Ljava/lang/String; = "status"

.field public static final COLUMN_MUSIC_WEB_URL:Ljava/lang/String; = "weburl"

.field public static final DB_TABLE_MUSIC:Ljava/lang/String; = "music"

.field private static final LogTag:Ljava/lang/String; = "browser/MetadataDatabaseHelper"

.field public static final MUSIC_STATUS_DOWNLOAD_FAIL:I = 0x3

.field public static final MUSIC_STATUS_DOWNLOAD_RUNNING:I = 0x1

.field public static final MUSIC_STATUS_DOWNLOAD_SUCCESS:I = 0x2

.field private static final sDatabaseName:Ljava/lang/String; = "metadata.db"

.field private static final sDatabaseVersion:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 41
    const-string v0, "metadata.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 42
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 3
    .parameter "db"

    .prologue
    .line 47
    :try_start_0
    const-string v1, "CREATE TABLE music (_id INTEGER PRIMARY KEY AUTOINCREMENT,status INTEGER, dm_errorcode INTEGER, create_date INTEGER, name TEXT, artist TEXT, album TEXT, fileext TEXT, filesize INTEGER, source TEXT, sourceid TEXT, source_candidates TEXT, localpath TEXT, weburl TEXT, lrc_weburl TEXT, albumphoto_weburl TEXT, duration INTEGER);"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    return-void

    .line 66
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 67
    .local v0, ex:Landroid/database/SQLException;
    const-string v1, "browser/MetadataDatabaseHelper"

    const-string v2, "couldn\'t create table in downloads database"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    throw v0
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 75
    :try_start_0
    const-string v1, "DROP TABLE IF EXISTS music"

    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/browser/model/MetadataDatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 82
    return-void

    .line 76
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 77
    .local v0, ex:Landroid/database/SQLException;
    const-string v1, "browser/MetadataDatabaseHelper"

    const-string v2, "couldn\'t drop table in metadata database"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    throw v0
.end method
