.class public final Lcom/miui/player/provider/PlayerDBHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "PlayerDBHelper.java"


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "com_miui_player.db"

.field private static final DATABASE_VERSION:I = 0x6

.field private static final TAG:Ljava/lang/String; = "com.miui.player.PlaylistDBHelper"


# instance fields
.field final mContext:Landroid/content/Context;

.field final mInternal:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .parameter "context"
    .parameter "name"
    .parameter "internal"

    .prologue
    .line 44
    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 45
    iput-object p1, p0, Lcom/miui/player/provider/PlayerDBHelper;->mContext:Landroid/content/Context;

    .line 46
    iput-boolean p3, p0, Lcom/miui/player/provider/PlayerDBHelper;->mInternal:Z

    .line 47
    return-void
.end method

.method private static createNowplayinglist(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6
    .parameter "db"

    .prologue
    const-string v5, "date_added"

    .line 157
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 158
    .local v0, cv:Landroid/content/ContentValues;
    const-string v3, "_id"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    const-string v3, "name"

    const-string v4, "nowplaying"

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v3, "list_type"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 164
    .local v1, time:J
    const-string v3, "date_added"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 165
    const-string v3, "date_modified"

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 167
    const-string v3, "playlists"

    const-string v4, "date_added"

    invoke-virtual {p0, v3, v5, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 170
    return-void
.end method

.method private static insertEqualizerConfig(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 11
    .parameter "context"
    .parameter "db"

    .prologue
    .line 233
    const-string v0, "INSERT INTO equalizer VALUES (?, ?, ?, ?)"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3

    .line 236
    .local v3, insertStatement:Landroid/database/sqlite/SQLiteStatement;
    const/4 p1, 0x1

    const-wide/16 v0, 0x0

    invoke-virtual {v3, p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 237
    .end local p1
    const/4 p1, 0x2

    const-string v0, "$$custom"

    invoke-virtual {v3, p1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 238
    const/4 p1, 0x3

    const-string v0, "[0,0,0,0,0]"

    invoke-virtual {v3, p1, v0}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 239
    const/4 p1, 0x4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {v3, p1, v0, v1}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 240
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J

    .line 242
    const/4 v1, 0x1

    .line 243
    .local v1, id:I
    const/4 v0, 0x0

    .line 244
    .local v0, is:Ljava/io/InputStream;
    const/4 p1, 0x0

    .line 245
    .local p1, fis:Ljava/io/InputStreamReader;
    const/4 v2, 0x0

    .line 247
    .local v2, reader:Ljava/io/BufferedReader;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "eq_config"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 248
    .end local v0           #is:Ljava/io/InputStream;
    .local v4, is:Ljava/io/InputStream;
    :try_start_1
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 249
    .end local p1           #fis:Ljava/io/InputStreamReader;
    .local v0, fis:Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 250
    .end local v2           #reader:Ljava/io/BufferedReader;
    .local v6, reader:Ljava/io/BufferedReader;
    const/4 p1, 0x0

    .line 252
    .local p1, s:Ljava/lang/String;
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .end local p0
    const/high16 v2, 0x7f0a

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v5

    .line 253
    .local v5, names:[Ljava/lang/String;
    const/4 p0, 0x0

    .local p0, i:I
    move v2, v1

    .end local v1           #id:I
    .local v2, id:I
    move-object v10, p1

    .end local p1           #s:Ljava/lang/String;
    .local v10, s:Ljava/lang/String;
    move p1, p0

    .end local p0           #i:I
    .local p1, i:I
    move-object p0, v10

    .line 254
    .end local v10           #s:Ljava/lang/String;
    .local p0, s:Ljava/lang/String;
    :goto_0
    :try_start_4
    invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .end local p0           #s:Ljava/lang/String;
    .local v1, s:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 255
    const/16 p0, 0x23

    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    .line 256
    .local p0, comment:I
    if-ltz p0, :cond_5

    .line 257
    const/4 v7, 0x0

    invoke-virtual {v1, v7, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .end local v1           #s:Ljava/lang/String;
    .local p0, s:Ljava/lang/String;
    move-object v7, p0

    .line 260
    .end local p0           #s:Ljava/lang/String;
    .local v7, s:Ljava/lang/String;
    :goto_1
    invoke-virtual {v7}, Ljava/lang/String;->length()I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    move-result p0

    if-nez p0, :cond_0

    move-object p0, v7

    .line 261
    .end local v7           #s:Ljava/lang/String;
    .restart local p0       #s:Ljava/lang/String;
    goto :goto_0

    .line 263
    .end local p0           #s:Ljava/lang/String;
    .restart local v7       #s:Ljava/lang/String;
    :cond_0
    const/4 p0, 0x1

    add-int/lit8 v1, v2, 0x1

    .end local v2           #id:I
    .local v1, id:I
    int-to-long v8, v2

    :try_start_5
    invoke-virtual {v3, p0, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 264
    const/4 v2, 0x2

    add-int/lit8 p0, p1, 0x1

    .end local p1           #i:I
    .local p0, i:I
    aget-object p1, v5, p1

    invoke-virtual {v3, v2, p1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 265
    const/4 p1, 0x3

    invoke-virtual {v3, p1, v7}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 266
    const/4 p1, 0x4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v3, p1, v8, v9}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 267
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->executeInsert()J
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    move p1, p0

    .end local p0           #i:I
    .restart local p1       #i:I
    move v2, v1

    .end local v1           #id:I
    .restart local v2       #id:I
    move-object p0, v7

    .line 268
    .end local v7           #s:Ljava/lang/String;
    .local p0, s:Ljava/lang/String;
    goto :goto_0

    .end local p0           #s:Ljava/lang/String;
    .local v1, s:Ljava/lang/String;
    :cond_1
    move-object v1, v6

    .end local v6           #reader:Ljava/io/BufferedReader;
    .local v1, reader:Ljava/io/BufferedReader;
    move-object p0, v0

    .end local v0           #fis:Ljava/io/InputStreamReader;
    .local p0, fis:Ljava/io/InputStreamReader;
    move p1, v2

    .end local v2           #id:I
    .local p1, id:I
    move-object v0, v4

    .line 285
    .end local v4           #is:Ljava/io/InputStream;
    .end local v5           #names:[Ljava/lang/String;
    .local v0, is:Ljava/io/InputStream;
    :goto_2
    return-void

    .line 269
    .local v1, id:I
    .local v2, reader:Ljava/io/BufferedReader;
    .local p0, context:Landroid/content/Context;
    .local p1, fis:Ljava/io/InputStreamReader;
    :catch_0
    move-exception p0

    move-object v10, v0

    .end local v0           #is:Ljava/io/InputStream;
    .local v10, is:Ljava/io/InputStream;
    move v0, v1

    .end local v1           #id:I
    .local v0, id:I
    move-object v1, v10

    .line 270
    .end local v10           #is:Ljava/io/InputStream;
    .local v1, is:Ljava/io/InputStream;
    .local p0, e1:Ljava/io/IOException;
    :goto_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 272
    if-eqz v2, :cond_2

    .line 273
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 275
    :cond_2
    if-eqz p1, :cond_3

    .line 276
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->close()V

    .line 279
    :cond_3
    if-eqz v1, :cond_4

    .line 280
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_4
    move-object p0, p1

    .end local p1           #fis:Ljava/io/InputStreamReader;
    .local p0, fis:Ljava/io/InputStreamReader;
    move p1, v0

    .end local v0           #id:I
    .local p1, id:I
    move-object v0, v1

    .end local v1           #is:Ljava/io/InputStream;
    .local v0, is:Ljava/io/InputStream;
    move-object v1, v2

    .line 283
    .end local v2           #reader:Ljava/io/BufferedReader;
    .local v1, reader:Ljava/io/BufferedReader;
    goto :goto_2

    .line 282
    .local v0, id:I
    .local v1, is:Ljava/io/InputStream;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    .local p0, e1:Ljava/io/IOException;
    .local p1, fis:Ljava/io/InputStreamReader;
    :catch_1
    move-exception p0

    .end local p0           #e1:Ljava/io/IOException;
    move-object p0, p1

    .end local p1           #fis:Ljava/io/InputStreamReader;
    .local p0, fis:Ljava/io/InputStreamReader;
    move p1, v0

    .end local v0           #id:I
    .local p1, id:I
    move-object v0, v1

    .end local v1           #is:Ljava/io/InputStream;
    .local v0, is:Ljava/io/InputStream;
    move-object v1, v2

    .end local v2           #reader:Ljava/io/BufferedReader;
    .local v1, reader:Ljava/io/BufferedReader;
    goto :goto_2

    .line 269
    .end local v0           #is:Ljava/io/InputStream;
    .local v1, id:I
    .restart local v2       #reader:Ljava/io/BufferedReader;
    .restart local v4       #is:Ljava/io/InputStream;
    .local p0, context:Landroid/content/Context;
    .local p1, fis:Ljava/io/InputStreamReader;
    :catch_2
    move-exception p0

    move v0, v1

    .end local v1           #id:I
    .local v0, id:I
    move-object v1, v4

    .end local v4           #is:Ljava/io/InputStream;
    .local v1, is:Ljava/io/InputStream;
    goto :goto_3

    .end local p1           #fis:Ljava/io/InputStreamReader;
    .local v0, fis:Ljava/io/InputStreamReader;
    .local v1, id:I
    .restart local v4       #is:Ljava/io/InputStream;
    :catch_3
    move-exception p0

    move-object p1, v0

    .end local v0           #fis:Ljava/io/InputStreamReader;
    .restart local p1       #fis:Ljava/io/InputStreamReader;
    move v0, v1

    .end local v1           #id:I
    .local v0, id:I
    move-object v1, v4

    .end local v4           #is:Ljava/io/InputStream;
    .local v1, is:Ljava/io/InputStream;
    goto :goto_3

    .end local v2           #reader:Ljava/io/BufferedReader;
    .end local p0           #context:Landroid/content/Context;
    .end local p1           #fis:Ljava/io/InputStreamReader;
    .local v0, fis:Ljava/io/InputStreamReader;
    .local v1, id:I
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    :catch_4
    move-exception p0

    move-object v2, v6

    .end local v6           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    move-object p1, v0

    .end local v0           #fis:Ljava/io/InputStreamReader;
    .restart local p1       #fis:Ljava/io/InputStreamReader;
    move v0, v1

    .end local v1           #id:I
    .local v0, id:I
    move-object v1, v4

    .end local v4           #is:Ljava/io/InputStream;
    .local v1, is:Ljava/io/InputStream;
    goto :goto_3

    .end local v1           #is:Ljava/io/InputStream;
    .local v0, fis:Ljava/io/InputStreamReader;
    .local v2, id:I
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v5       #names:[Ljava/lang/String;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    .local p1, i:I
    :catch_5
    move-exception p0

    move-object p1, v0

    .end local v0           #fis:Ljava/io/InputStreamReader;
    .local p1, fis:Ljava/io/InputStreamReader;
    move-object v1, v4

    .end local v4           #is:Ljava/io/InputStream;
    .restart local v1       #is:Ljava/io/InputStream;
    move v0, v2

    .end local v2           #id:I
    .local v0, id:I
    move-object v2, v6

    .end local v6           #reader:Ljava/io/BufferedReader;
    .local v2, reader:Ljava/io/BufferedReader;
    goto :goto_3

    .local v0, fis:Ljava/io/InputStreamReader;
    .local v1, s:Ljava/lang/String;
    .local v2, id:I
    .restart local v4       #is:Ljava/io/InputStream;
    .restart local v6       #reader:Ljava/io/BufferedReader;
    .local p0, comment:I
    .local p1, i:I
    :cond_5
    move-object v7, v1

    .end local v1           #s:Ljava/lang/String;
    .restart local v7       #s:Ljava/lang/String;
    goto :goto_1
.end method

.method private static recreateViews(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1
    .parameter "db"

    .prologue
    .line 211
    const-string v0, "CREATE VIEW IF NOT EXISTS nowplaying_audio_view AS SELECT audio_id AS _id , title , album , artist , _data , date_added , duration , online_id , play_order FROM playlists_audio_map WHERE playlist_id = 0 ;"

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 225
    const-string v0, "CREATE TRIGGER IF NOT EXISTS nowplayinglist_delete INSTEAD OF DELETE ON nowplaying_audio_view BEGIN  DELETE FROM playlists_audio_map WHERE audio_id = old._id;  END "

    invoke-virtual {p0, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method private static updateDatabase(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZII)V
    .locals 5
    .parameter "context"
    .parameter "db"
    .parameter "internal"
    .parameter "fromVersion"
    .parameter "toVersion"

    .prologue
    const/4 v3, 0x6

    const-string v4, " to "

    const-string v2, "com.miui.player.PlaylistDBHelper"

    .line 79
    if-eq p4, v3, :cond_0

    .line 80
    const-string v0, "com.miui.player.PlaylistDBHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal update request. Got "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 83
    :cond_0
    if-le p3, p4, :cond_1

    .line 84
    const-string v0, "com.miui.player.PlaylistDBHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Illegal update request: can\'t downgrade from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ". Did you forget to wipe data?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 89
    :cond_1
    const/4 v0, 0x3

    if-ge p3, v0, :cond_2

    .line 91
    const-string v0, "com.miui.player.PlaylistDBHelper"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upgrading media database from version "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", which will destroy all old data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v0, "DROP TABLE IF EXISTS playlists"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 95
    const-string v0, "DROP TABLE IF EXISTS playlists_audio_map"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 98
    const-string v0, "CREATE TABLE IF NOT EXISTS playlists ( _id  INTEGER PRIMARY KEY,name TEXT, folder_path TEXT, date_added INTEGER, list_type INTEGER, date_modified INTEGER );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 106
    const-string v0, "CREATE TABLE IF NOT EXISTS playlists_audio_map (_id INTEGER PRIMARY KEY, audio_id INTEGER NOT NULL, playlist_id INTEGER NOT NULL, play_order INTEGER NOT NULL, date_added INTEGER, _data TEXT NOT NULL, title TEXT NOT NULL, online_id TEXT, album TEXT, artist TEXT, duration INTEGER );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 120
    const-string v0, "CREATE TRIGGER IF NOT EXISTS audio_playlist_cleanup DELETE ON playlists BEGIN  DELETE FROM playlists_audio_map WHERE playlist_id = old._id;  END "

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 124
    invoke-static {p1}, Lcom/miui/player/provider/PlayerDBHelper;->createNowplayinglist(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 127
    const-string v0, "CREATE TABLE IF NOT EXISTS select_folder (_id INTEGER PRIMARY KEY, folder_path TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 131
    :cond_2
    const/4 v0, 0x4

    if-ge p3, v0, :cond_3

    .line 132
    const-string v0, "com.miui.player.PlaylistDBHelper"

    const-string v0, "upgrade to v4, add sort_key for playlists"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string v0, "ALTER TABLE playlists ADD COLUMN sort_key TEXT COLLATE LOCALIZED;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 135
    invoke-static {p1}, Lcom/miui/player/provider/PlayerDBHelper;->updateSortKeyForPlaylist(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 138
    :cond_3
    invoke-static {p1}, Lcom/miui/player/provider/PlayerDBHelper;->recreateViews(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 140
    if-ge p3, v3, :cond_4

    .line 141
    const-string v0, "com.miui.player.PlaylistDBHelper"

    const-string v0, "upgrade to v6, add equalizer databases and change presets name to chinese"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const-string v0, "DROP TABLE IF EXISTS equalizer"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 143
    const-string v0, "CREATE TABLE IF NOT EXISTS equalizer (_id INTEGER PRIMARY KEY, name TEXT NOT NULL, _data TEXT NOT NULL, data_added INTEGER NOT NULL );"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 150
    invoke-static {p0, p1}, Lcom/miui/player/provider/PlayerDBHelper;->insertEqualizerConfig(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;)V

    .line 153
    :cond_4
    return-void
.end method

.method public static updateNowPlayinglist(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    const/4 v3, 0x0

    .line 174
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 175
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "name"

    const-string v2, "nowplaying"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v1, "list_type"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 178
    const-string v1, "playlists"

    invoke-virtual {p0, v1, v0, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 179
    return-void
.end method

.method private static updateSortKeyForPlaylist(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 15
    .parameter "db"

    .prologue
    .line 182
    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v10, "_id"

    aput-object v10, v9, v8

    const/4 v8, 0x1

    const-string v10, "name"

    aput-object v10, v9, v8

    .line 184
    .local v9, PLAYLIST_COLS:[Ljava/lang/String;
    const-string v8, "playlists"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move-object v1, v8

    move-object v2, v9

    move-object v3, v10

    move-object v4, v11

    move-object v5, v12

    move-object v6, v13

    move-object v7, v14

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 187
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    .line 188
    const-string v9, "UPDATE playlists SET sort_key =? WHERE _id=?"

    .end local v9           #PLAYLIST_COLS:[Ljava/lang/String;
    invoke-virtual {p0, v9}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v12

    .line 192
    .local v12, updateStatement:Landroid/database/sqlite/SQLiteStatement;
    invoke-static {}, Landroid/util/LocaleUtils;->getIntance()Landroid/util/LocaleUtils;

    move-result-object p0

    .line 194
    .local p0, locale:Landroid/util/LocaleUtils;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 195
    const/4 v9, 0x0

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 196
    .local v9, id:J
    const/4 v11, 0x1

    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 197
    .local v11, name:Ljava/lang/String;
    if-nez v11, :cond_0

    .line 198
    const/4 v11, 0x1

    invoke-virtual {v12, v11}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    .line 202
    .end local v11           #name:Ljava/lang/String;
    :goto_1
    const/4 v11, 0x2

    invoke-virtual {v12, v11, v9, v10}, Landroid/database/sqlite/SQLiteStatement;->bindLong(IJ)V

    .line 203
    invoke-virtual {v12}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0

    .line 200
    .restart local v11       #name:Ljava/lang/String;
    :cond_0
    const/4 v13, 0x1

    invoke-virtual {p0, v11}, Landroid/util/LocaleUtils;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .end local v11           #name:Ljava/lang/String;
    invoke-virtual {v12, v13, v11}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    goto :goto_1

    .line 205
    .end local v9           #id:J
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 208
    .end local v12           #updateStatement:Landroid/database/sqlite/SQLiteStatement;
    .end local p0           #locale:Landroid/util/LocaleUtils;
    :cond_2
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4
    .parameter "db"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/miui/player/provider/PlayerDBHelper;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/miui/player/provider/PlayerDBHelper;->mInternal:Z

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v0, p1, v1, v2, v3}, Lcom/miui/player/provider/PlayerDBHelper;->updateDatabase(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZII)V

    .line 55
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .parameter "db"
    .parameter "oldV"
    .parameter "newV"

    .prologue
    .line 63
    iget-object v0, p0, Lcom/miui/player/provider/PlayerDBHelper;->mContext:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/miui/player/provider/PlayerDBHelper;->mInternal:Z

    invoke-static {v0, p1, v1, p2, p3}, Lcom/miui/player/provider/PlayerDBHelper;->updateDatabase(Landroid/content/Context;Landroid/database/sqlite/SQLiteDatabase;ZII)V

    .line 64
    return-void
.end method
