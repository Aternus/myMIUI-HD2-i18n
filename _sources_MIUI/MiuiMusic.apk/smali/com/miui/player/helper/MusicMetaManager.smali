.class public Lcom/miui/player/helper/MusicMetaManager;
.super Ljava/lang/Object;
.source "MusicMetaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/helper/MusicMetaManager$AlbumUrlListGetTask;,
        Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;,
        Lcom/miui/player/helper/MusicMetaManager$MetaInfo;
    }
.end annotation


# static fields
.field private static final META_FILE_FORMAT:Ljava/lang/String; = "%s_%s%s"

.field private static final META_FULL_PATH_FORMAT:Ljava/lang/String; = null

.field public static final META_TYPE_ALBUM:Ljava/lang/String; = "music/album"

.field public static final META_TYPE_LYRIC:Ljava/lang/String; = "music/lyric"

.field private static final META_TYPE_MAP:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/player/helper/MusicMetaManager$MetaInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final META_TYPE_MP3:Ljava/lang/String; = "music/mp3"

.field private static final MIUI_MP3_DOWNLOAD_PATH:Ljava/lang/String; = null

.field public static final MUSIC_DIR:Ljava/lang/String; = "music/"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-string v5, "music/lyric"

    const-string v4, "music/album"

    const-string v2, "%s"

    const-string v3, "music/mp3"

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getMIUIExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "music/mp3"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/helper/MusicMetaManager;->MIUI_MP3_DOWNLOAD_PATH:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%s"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%s"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/player/helper/MusicMetaManager;->META_FULL_PATH_FORMAT:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/miui/player/helper/MusicMetaManager;->META_TYPE_MAP:Ljava/util/HashMap;

    .line 71
    sget-object v0, Lcom/miui/player/helper/MusicMetaManager;->META_TYPE_MAP:Ljava/util/HashMap;

    const-string v1, "music/lyric"

    new-instance v1, Lcom/miui/player/helper/MusicMetaManager$MetaInfo;

    const-string v2, "music/lyric"

    const-string v2, ".lrc"

    invoke-direct {v1, v5, v2}, Lcom/miui/player/helper/MusicMetaManager$MetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/miui/player/helper/MusicMetaManager;->META_TYPE_MAP:Ljava/util/HashMap;

    const-string v1, "music/album"

    new-instance v1, Lcom/miui/player/helper/MusicMetaManager$MetaInfo;

    const-string v2, "music/album"

    const-string v2, ".jpg"

    invoke-direct {v1, v4, v2}, Lcom/miui/player/helper/MusicMetaManager$MetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/miui/player/helper/MusicMetaManager;->META_TYPE_MAP:Ljava/util/HashMap;

    const-string v1, "music/mp3"

    new-instance v1, Lcom/miui/player/helper/MusicMetaManager$MetaInfo;

    const-string v2, "music/mp3"

    const-string v2, ".mp3"

    invoke-direct {v1, v3, v2}, Lcom/miui/player/helper/MusicMetaManager$MetaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-static {}, Lcom/miui/player/helper/MusicMetaManager;->initializeEnvironment()V

    .line 78
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    return-void
.end method

.method private static addNoMediaFile(Ljava/lang/String;)V
    .locals 2
    .parameter "dir"

    .prologue
    .line 102
    new-instance v0, Ljava/io/File;

    const-string v1, ".nomedia"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static concatFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"
    .parameter "artist"
    .parameter "extendName"

    .prologue
    .line 172
    if-nez p1, :cond_0

    .line 173
    const-string p1, ""

    .line 176
    :cond_0
    if-nez p0, :cond_1

    .line 177
    const-string p0, ""

    .line 180
    :cond_1
    const-string v0, "%s_%s%s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/player/helper/MusicMetaManager;->regularFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static deleteRelateFiles(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "title"
    .parameter "album"
    .parameter "artist"

    .prologue
    .line 478
    const-string v2, "music/lyric"

    invoke-static {p0, p2, v2}, Lcom/miui/player/helper/MusicMetaManager;->getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 479
    .local v1, lyricFile:Ljava/io/File;
    if-eqz v1, :cond_0

    .line 480
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 483
    :cond_0
    const-string v2, "music/album"

    invoke-static {p1, p2, v2}, Lcom/miui/player/helper/MusicMetaManager;->getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 484
    .local v0, albumFile:Ljava/io/File;
    if-eqz v0, :cond_1

    .line 485
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 488
    :cond_1
    return-void
.end method

.method public static downloadAlbum(Ljava/lang/String;Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "urlPattern"
    .parameter "metaInfo"

    .prologue
    .line 390
    const/4 v0, 0x1

    invoke-static {p0, p1, p1, v0}, Lcom/miui/player/helper/MusicMetaManager;->downloadAlbum(Ljava/lang/String;Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static downloadAlbum(Ljava/lang/String;Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;Z)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "urlPattern"
    .parameter "metaInfo"
    .parameter "searchInfo"
    .parameter "auto"

    .prologue
    .line 396
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 397
    :cond_0
    const/4 p0, 0x0

    .line 474
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    :goto_0
    return-object p0

    .line 400
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    :cond_1
    const/4 v0, 0x0

    .line 401
    .local v0, bm:Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 403
    .local v1, outputStream:Ljava/io/FileOutputStream;
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p2, Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;->mAlbumName:Ljava/lang/String;

    invoke-static {v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object p2, p2, Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;->mArtistName:Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 407
    .local p0, url:Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Lcom/miui/player/helper/NetworkUtils;->getJSONObjectFromURL(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_f

    move-result-object p0

    .line 408
    .local p0, json:Lorg/json/JSONObject;
    if-nez p0, :cond_3

    .line 409
    const/4 p1, 0x0

    .line 465
    .end local p1
    if-eqz v1, :cond_2

    .line 467
    :try_start_1
    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .end local p0           #json:Lorg/json/JSONObject;
    :cond_2
    :goto_1
    move-object p0, p1

    .line 470
    goto :goto_0

    .line 468
    .restart local p0       #json:Lorg/json/JSONObject;
    :catch_0
    move-exception p0

    .line 469
    .local p0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 412
    .local p0, json:Lorg/json/JSONObject;
    .restart local p1
    :cond_3
    :try_start_2
    const-string p2, "data"

    invoke-virtual {p0, p2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 413
    .local p0, data:Lorg/json/JSONArray;
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_b
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_f

    move-result p2

    const/4 v2, 0x1

    if-ge p2, v2, :cond_6

    .line 414
    :cond_4
    const/4 p1, 0x0

    .line 465
    .end local p1
    if-eqz v1, :cond_5

    .line 467
    :try_start_3
    throw v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .end local p0           #data:Lorg/json/JSONArray;
    :cond_5
    :goto_2
    move-object p0, p1

    .line 470
    goto :goto_0

    .line 468
    .restart local p0       #data:Lorg/json/JSONArray;
    :catch_1
    move-exception p0

    .line 469
    .local p0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 417
    .local p0, data:Lorg/json/JSONArray;
    .restart local p1
    :cond_6
    const/4 p2, 0x0

    :try_start_4
    invoke-virtual {p0, p2}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #data:Lorg/json/JSONArray;
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_b
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_f

    move-result-object p0

    .line 418
    .local p0, albumUrl:Ljava/lang/String;
    if-nez p0, :cond_8

    .line 419
    const/4 p1, 0x0

    .line 465
    .end local p1
    if-eqz v1, :cond_7

    .line 467
    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .end local p0           #albumUrl:Ljava/lang/String;
    :cond_7
    :goto_3
    move-object p0, p1

    .line 470
    goto :goto_0

    .line 468
    .restart local p0       #albumUrl:Ljava/lang/String;
    :catch_2
    move-exception p0

    .line 469
    .local p0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 423
    .local p0, albumUrl:Ljava/lang/String;
    .restart local p1
    :cond_8
    :try_start_6
    invoke-static {p0}, Lcom/miui/player/helper/NetworkUtils;->doHttpGetSync(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_b
    .catch Ljava/net/URISyntaxException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_f

    move-result-object p2

    .line 424
    .local p2, is:Ljava/io/InputStream;
    if-nez p2, :cond_a

    .line 425
    const/4 p1, 0x0

    .line 465
    .end local p1
    if-eqz v1, :cond_9

    .line 467
    :try_start_7
    throw v1
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .end local p0           #albumUrl:Ljava/lang/String;
    :cond_9
    :goto_4
    move-object p0, p1

    .line 470
    goto :goto_0

    .line 468
    .restart local p0       #albumUrl:Ljava/lang/String;
    :catch_3
    move-exception p0

    .line 469
    .local p0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 428
    .local p0, albumUrl:Ljava/lang/String;
    .restart local p1
    :cond_a
    :try_start_8
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_9
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/net/URISyntaxException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_f

    move-result-object p0

    .line 429
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .local p0, bm:Landroid/graphics/Bitmap;
    :try_start_9
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 431
    const/4 v0, 0x0

    .line 432
    .local v0, save:Z
    if-nez p3, :cond_b

    .line 433
    const/4 p2, 0x1

    .line 444
    .end local v0           #save:Z
    .end local p3
    .local p2, save:Z
    :goto_5
    if-eqz p2, :cond_f

    if-eqz p0, :cond_f

    const-string p2, "music/album"

    .end local p2           #save:Z
    invoke-static {p2}, Lcom/miui/player/helper/MusicMetaManager;->makeDirIfNotExists(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_f

    .line 445
    iget-object p2, p1, Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;->mAlbumName:Ljava/lang/String;

    iget-object p1, p1, Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;->mArtistName:Ljava/lang/String;

    .end local p1
    const-string p3, "music/album"

    invoke-static {p2, p1, p3}, Lcom/miui/player/helper/MusicMetaManager;->getFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 447
    .local p2, path:Ljava/lang/String;
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_9 .. :try_end_9} :catch_1c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1a
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_18
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_16
    .catch Ljava/net/URISyntaxException; {:try_start_9 .. :try_end_9} :catch_14
    .catch Ljava/lang/OutOfMemoryError; {:try_start_9 .. :try_end_9} :catch_12

    .line 448
    .end local v1           #outputStream:Ljava/io/FileOutputStream;
    .local p1, outputStream:Ljava/io/FileOutputStream;
    const/16 p3, 0x1ff

    const/4 v0, -0x1

    const/4 v1, -0x1

    :try_start_a
    invoke-static {p2, p3, v0, v1}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 449
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .end local p2           #path:Ljava/lang/String;
    const/16 p3, 0x64

    invoke-virtual {p0, p2, p3, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_a .. :try_end_a} :catch_1d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_19
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_17
    .catch Ljava/net/URISyntaxException; {:try_start_a .. :try_end_a} :catch_15
    .catch Ljava/lang/OutOfMemoryError; {:try_start_a .. :try_end_a} :catch_13

    move-object p2, p1

    .line 465
    .end local p1           #outputStream:Ljava/io/FileOutputStream;
    .local p2, outputStream:Ljava/io/FileOutputStream;
    :goto_6
    if-eqz p2, :cond_e

    .line 467
    :try_start_b
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    move-object p1, p2

    .line 470
    .end local p2           #outputStream:Ljava/io/FileOutputStream;
    .restart local p1       #outputStream:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 435
    .restart local v0       #save:Z
    .restart local v1       #outputStream:Ljava/io/FileOutputStream;
    .local p1, metaInfo:Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;
    .local p2, is:Ljava/io/InputStream;
    .restart local p3
    :cond_b
    :try_start_c
    iget-object p2, p1, Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;->mAlbumName:Ljava/lang/String;

    .end local p2           #is:Ljava/io/InputStream;
    iget-object p3, p1, Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;->mArtistName:Ljava/lang/String;

    .end local p3
    const-string v2, "music/album"

    invoke-static {p2, p3, v2}, Lcom/miui/player/helper/MusicMetaManager;->getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    .line 436
    .local p2, file:Ljava/io/File;
    if-eqz p2, :cond_c

    if-eqz p0, :cond_c

    .line 437
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 438
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    .end local p2           #file:Ljava/io/File;
    invoke-static {p2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_c .. :try_end_c} :catch_1c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_1a
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_18
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_16
    .catch Ljava/net/URISyntaxException; {:try_start_c .. :try_end_c} :catch_14
    .catch Ljava/lang/OutOfMemoryError; {:try_start_c .. :try_end_c} :catch_12

    move-result-object p0

    move p2, v0

    .end local v0           #save:Z
    .local p2, save:Z
    goto :goto_5

    .line 440
    .restart local v0       #save:Z
    .local p2, file:Ljava/io/File;
    :cond_c
    const/4 p2, 0x1

    .end local v0           #save:Z
    .local p2, save:Z
    goto :goto_5

    .line 468
    .end local v1           #outputStream:Ljava/io/FileOutputStream;
    .end local p1           #metaInfo:Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;
    .local p2, outputStream:Ljava/io/FileOutputStream;
    :catch_4
    move-exception p1

    .line 469
    .local p1, e:Ljava/io/IOException;
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    move-object p1, p2

    .line 470
    .end local p2           #outputStream:Ljava/io/FileOutputStream;
    .local p1, outputStream:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 452
    .end local p0           #bm:Landroid/graphics/Bitmap;
    .local v0, bm:Landroid/graphics/Bitmap;
    .restart local v1       #outputStream:Ljava/io/FileOutputStream;
    .local p1, metaInfo:Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;
    .restart local p3
    :catch_5
    move-exception p0

    move-object p1, p0

    move-object p2, v1

    .end local v1           #outputStream:Ljava/io/FileOutputStream;
    .restart local p2       #outputStream:Ljava/io/FileOutputStream;
    move-object p0, v0

    .line 453
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local p3
    .restart local p0       #bm:Landroid/graphics/Bitmap;
    .local p1, e:Lorg/apache/http/client/ClientProtocolException;
    :goto_7
    :try_start_d
    invoke-virtual {p1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 465
    if-eqz p2, :cond_e

    .line 467
    :try_start_e
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6

    move-object p1, p2

    .line 470
    .end local p2           #outputStream:Ljava/io/FileOutputStream;
    .local p1, outputStream:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 468
    .local p1, e:Lorg/apache/http/client/ClientProtocolException;
    .restart local p2       #outputStream:Ljava/io/FileOutputStream;
    :catch_6
    move-exception p1

    .line 469
    .local p1, e:Ljava/io/IOException;
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    move-object p1, p2

    .line 470
    .end local p2           #outputStream:Ljava/io/FileOutputStream;
    .local p1, outputStream:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 454
    .end local p0           #bm:Landroid/graphics/Bitmap;
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v1       #outputStream:Ljava/io/FileOutputStream;
    .local p1, metaInfo:Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;
    .restart local p3
    :catch_7
    move-exception p0

    move-object p1, p0

    move-object p2, v1

    .end local v1           #outputStream:Ljava/io/FileOutputStream;
    .restart local p2       #outputStream:Ljava/io/FileOutputStream;
    move-object p0, v0

    .line 455
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local p3
    .restart local p0       #bm:Landroid/graphics/Bitmap;
    .local p1, e:Ljava/io/IOException;
    :goto_8
    :try_start_f
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 465
    if-eqz p2, :cond_e

    .line 467
    :try_start_10
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_8

    move-object p1, p2

    .line 470
    .end local p2           #outputStream:Ljava/io/FileOutputStream;
    .local p1, outputStream:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 468
    .local p1, e:Ljava/io/IOException;
    .restart local p2       #outputStream:Ljava/io/FileOutputStream;
    :catch_8
    move-exception p1

    .line 469
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    move-object p1, p2

    .line 470
    .end local p2           #outputStream:Ljava/io/FileOutputStream;
    .local p1, outputStream:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 456
    .end local p0           #bm:Landroid/graphics/Bitmap;
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v1       #outputStream:Ljava/io/FileOutputStream;
    .local p1, metaInfo:Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;
    .restart local p3
    :catch_9
    move-exception p0

    move-object p1, p0

    move-object p2, v1

    .end local v1           #outputStream:Ljava/io/FileOutputStream;
    .restart local p2       #outputStream:Ljava/io/FileOutputStream;
    move-object p0, v0

    .line 457
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local p3
    .restart local p0       #bm:Landroid/graphics/Bitmap;
    .local p1, e:Ljava/lang/IllegalStateException;
    :goto_9
    :try_start_11
    invoke-virtual {p1}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 465
    if-eqz p2, :cond_e

    .line 467
    :try_start_12
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    move-object p1, p2

    .line 470
    .end local p2           #outputStream:Ljava/io/FileOutputStream;
    .local p1, outputStream:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 468
    .local p1, e:Ljava/lang/IllegalStateException;
    .restart local p2       #outputStream:Ljava/io/FileOutputStream;
    :catch_a
    move-exception p1

    .line 469
    .local p1, e:Ljava/io/IOException;
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    move-object p1, p2

    .line 470
    .end local p2           #outputStream:Ljava/io/FileOutputStream;
    .local p1, outputStream:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 458
    .end local p0           #bm:Landroid/graphics/Bitmap;
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v1       #outputStream:Ljava/io/FileOutputStream;
    .local p1, metaInfo:Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;
    .restart local p3
    :catch_b
    move-exception p0

    move-object p1, p0

    move-object p2, v1

    .end local v1           #outputStream:Ljava/io/FileOutputStream;
    .restart local p2       #outputStream:Ljava/io/FileOutputStream;
    move-object p0, v0

    .line 459
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local p3
    .restart local p0       #bm:Landroid/graphics/Bitmap;
    .local p1, e:Lorg/json/JSONException;
    :goto_a
    :try_start_13
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 465
    if-eqz p2, :cond_e

    .line 467
    :try_start_14
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_c

    move-object p1, p2

    .line 470
    .end local p2           #outputStream:Ljava/io/FileOutputStream;
    .local p1, outputStream:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 468
    .local p1, e:Lorg/json/JSONException;
    .restart local p2       #outputStream:Ljava/io/FileOutputStream;
    :catch_c
    move-exception p1

    .line 469
    .local p1, e:Ljava/io/IOException;
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    move-object p1, p2

    .line 470
    .end local p2           #outputStream:Ljava/io/FileOutputStream;
    .local p1, outputStream:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 460
    .end local p0           #bm:Landroid/graphics/Bitmap;
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v1       #outputStream:Ljava/io/FileOutputStream;
    .local p1, metaInfo:Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;
    .restart local p3
    :catch_d
    move-exception p0

    move-object p1, p0

    move-object p2, v1

    .end local v1           #outputStream:Ljava/io/FileOutputStream;
    .restart local p2       #outputStream:Ljava/io/FileOutputStream;
    move-object p0, v0

    .line 461
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local p3
    .restart local p0       #bm:Landroid/graphics/Bitmap;
    .local p1, e:Ljava/net/URISyntaxException;
    :goto_b
    :try_start_15
    invoke-virtual {p1}, Ljava/net/URISyntaxException;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .line 465
    if-eqz p2, :cond_e

    .line 467
    :try_start_16
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_e

    move-object p1, p2

    .line 470
    .end local p2           #outputStream:Ljava/io/FileOutputStream;
    .local p1, outputStream:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 468
    .local p1, e:Ljava/net/URISyntaxException;
    .restart local p2       #outputStream:Ljava/io/FileOutputStream;
    :catch_e
    move-exception p1

    .line 469
    .local p1, e:Ljava/io/IOException;
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    move-object p1, p2

    .line 470
    .end local p2           #outputStream:Ljava/io/FileOutputStream;
    .local p1, outputStream:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 462
    .end local p0           #bm:Landroid/graphics/Bitmap;
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v1       #outputStream:Ljava/io/FileOutputStream;
    .local p1, metaInfo:Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;
    .restart local p3
    :catch_f
    move-exception p0

    move-object p2, v1

    .end local v1           #outputStream:Ljava/io/FileOutputStream;
    .restart local p2       #outputStream:Ljava/io/FileOutputStream;
    move-object p0, v0

    .line 465
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local p1           #metaInfo:Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;
    .end local p3
    .restart local p0       #bm:Landroid/graphics/Bitmap;
    :goto_c
    if-eqz p2, :cond_e

    .line 467
    :try_start_17
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_10

    move-object p1, p2

    .line 470
    .end local p2           #outputStream:Ljava/io/FileOutputStream;
    .local p1, outputStream:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 468
    .end local p1           #outputStream:Ljava/io/FileOutputStream;
    .restart local p2       #outputStream:Ljava/io/FileOutputStream;
    :catch_10
    move-exception p1

    .line 469
    .local p1, e:Ljava/io/IOException;
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    move-object p1, p2

    .line 470
    .end local p2           #outputStream:Ljava/io/FileOutputStream;
    .local p1, outputStream:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .line 465
    .end local p0           #bm:Landroid/graphics/Bitmap;
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    .restart local v1       #outputStream:Ljava/io/FileOutputStream;
    .local p1, metaInfo:Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;
    .restart local p3
    :catchall_0
    move-exception p0

    move-object p2, p0

    move-object p1, v1

    .end local v1           #outputStream:Ljava/io/FileOutputStream;
    .local p1, outputStream:Ljava/io/FileOutputStream;
    move-object p0, v0

    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local p3
    .restart local p0       #bm:Landroid/graphics/Bitmap;
    :goto_d
    if-eqz p1, :cond_d

    .line 467
    :try_start_18
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_11

    .line 470
    .end local p0           #bm:Landroid/graphics/Bitmap;
    :cond_d
    :goto_e
    throw p2

    .line 468
    .restart local p0       #bm:Landroid/graphics/Bitmap;
    :catch_11
    move-exception p0

    .line 469
    .local p0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 465
    .end local p1           #outputStream:Ljava/io/FileOutputStream;
    .restart local v1       #outputStream:Ljava/io/FileOutputStream;
    .local p0, bm:Landroid/graphics/Bitmap;
    :catchall_1
    move-exception p1

    move-object p2, p1

    move-object p1, v1

    .end local v1           #outputStream:Ljava/io/FileOutputStream;
    .restart local p1       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_d

    :catchall_2
    move-exception p2

    goto :goto_d

    .end local p1           #outputStream:Ljava/io/FileOutputStream;
    .restart local p2       #outputStream:Ljava/io/FileOutputStream;
    :catchall_3
    move-exception p1

    move-object v5, p1

    move-object p1, p2

    .end local p2           #outputStream:Ljava/io/FileOutputStream;
    .restart local p1       #outputStream:Ljava/io/FileOutputStream;
    move-object p2, v5

    goto :goto_d

    .line 462
    .end local p1           #outputStream:Ljava/io/FileOutputStream;
    .restart local v1       #outputStream:Ljava/io/FileOutputStream;
    :catch_12
    move-exception p1

    move-object p2, v1

    .end local v1           #outputStream:Ljava/io/FileOutputStream;
    .restart local p2       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_c

    .end local p2           #outputStream:Ljava/io/FileOutputStream;
    .restart local p1       #outputStream:Ljava/io/FileOutputStream;
    :catch_13
    move-exception p2

    move-object p2, p1

    .end local p1           #outputStream:Ljava/io/FileOutputStream;
    .restart local p2       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_c

    .line 460
    .end local p2           #outputStream:Ljava/io/FileOutputStream;
    .restart local v1       #outputStream:Ljava/io/FileOutputStream;
    :catch_14
    move-exception p1

    move-object p2, v1

    .end local v1           #outputStream:Ljava/io/FileOutputStream;
    .restart local p2       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_b

    .end local p2           #outputStream:Ljava/io/FileOutputStream;
    .restart local p1       #outputStream:Ljava/io/FileOutputStream;
    :catch_15
    move-exception p2

    move-object v5, p2

    move-object p2, p1

    .end local p1           #outputStream:Ljava/io/FileOutputStream;
    .restart local p2       #outputStream:Ljava/io/FileOutputStream;
    move-object p1, v5

    goto :goto_b

    .line 458
    .end local p2           #outputStream:Ljava/io/FileOutputStream;
    .restart local v1       #outputStream:Ljava/io/FileOutputStream;
    :catch_16
    move-exception p1

    move-object p2, v1

    .end local v1           #outputStream:Ljava/io/FileOutputStream;
    .restart local p2       #outputStream:Ljava/io/FileOutputStream;
    goto :goto_a

    .end local p2           #outputStream:Ljava/io/FileOutputStream;
    .restart local p1       #outputStream:Ljava/io/FileOutputStream;
    :catch_17
    move-exception p2

    move-object v5, p2

    move-object p2, p1

    .end local p1           #outputStream:Ljava/io/FileOutputStream;
    .restart local p2       #outputStream:Ljava/io/FileOutputStream;
    move-object p1, v5

    goto :goto_a

    .line 456
    .end local p2           #outputStream:Ljava/io/FileOutputStream;
    .restart local v1       #outputStream:Ljava/io/FileOutputStream;
    :catch_18
    move-exception p1

    move-object p2, v1

    .end local v1           #outputStream:Ljava/io/FileOutputStream;
    .restart local p2       #outputStream:Ljava/io/FileOutputStream;
    goto/16 :goto_9

    .end local p2           #outputStream:Ljava/io/FileOutputStream;
    .restart local p1       #outputStream:Ljava/io/FileOutputStream;
    :catch_19
    move-exception p2

    move-object v5, p2

    move-object p2, p1

    .end local p1           #outputStream:Ljava/io/FileOutputStream;
    .restart local p2       #outputStream:Ljava/io/FileOutputStream;
    move-object p1, v5

    goto/16 :goto_9

    .line 454
    .end local p2           #outputStream:Ljava/io/FileOutputStream;
    .restart local v1       #outputStream:Ljava/io/FileOutputStream;
    :catch_1a
    move-exception p1

    move-object p2, v1

    .end local v1           #outputStream:Ljava/io/FileOutputStream;
    .restart local p2       #outputStream:Ljava/io/FileOutputStream;
    goto/16 :goto_8

    .end local p2           #outputStream:Ljava/io/FileOutputStream;
    .restart local p1       #outputStream:Ljava/io/FileOutputStream;
    :catch_1b
    move-exception p2

    move-object v5, p2

    move-object p2, p1

    .end local p1           #outputStream:Ljava/io/FileOutputStream;
    .restart local p2       #outputStream:Ljava/io/FileOutputStream;
    move-object p1, v5

    goto/16 :goto_8

    .line 452
    .end local p2           #outputStream:Ljava/io/FileOutputStream;
    .restart local v1       #outputStream:Ljava/io/FileOutputStream;
    :catch_1c
    move-exception p1

    move-object p2, v1

    .end local v1           #outputStream:Ljava/io/FileOutputStream;
    .restart local p2       #outputStream:Ljava/io/FileOutputStream;
    goto/16 :goto_7

    .end local p2           #outputStream:Ljava/io/FileOutputStream;
    .restart local p1       #outputStream:Ljava/io/FileOutputStream;
    :catch_1d
    move-exception p2

    move-object v5, p2

    move-object p2, p1

    .end local p1           #outputStream:Ljava/io/FileOutputStream;
    .restart local p2       #outputStream:Ljava/io/FileOutputStream;
    move-object p1, v5

    goto/16 :goto_7

    :cond_e
    move-object p1, p2

    .end local p2           #outputStream:Ljava/io/FileOutputStream;
    .restart local p1       #outputStream:Ljava/io/FileOutputStream;
    goto/16 :goto_0

    .restart local v1       #outputStream:Ljava/io/FileOutputStream;
    .local p1, metaInfo:Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;
    :cond_f
    move-object p2, v1

    .end local v1           #outputStream:Ljava/io/FileOutputStream;
    .restart local p2       #outputStream:Ljava/io/FileOutputStream;
    goto/16 :goto_6
.end method

.method public static downloadLyricFile(Landroid/content/Context;Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;Lcom/miui/player/helper/LyricDownloader$LyricAsyncCallback;)I
    .locals 2
    .parameter "context"
    .parameter "searchInfo"
    .parameter "runnable"

    .prologue
    const/4 v1, 0x2

    .line 286
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 299
    :goto_0
    return v0

    .line 290
    :cond_1
    invoke-static {p0}, Lcom/miui/player/helper/NetworkUtils;->isConnectivityActive(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 291
    const/4 v0, 0x4

    goto :goto_0

    .line 293
    :cond_2
    invoke-static {p0}, Lcom/miui/player/helper/NetworkUtils;->isWIFIConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "other_connect_lyric"

    invoke-static {p0, v0}, Lcom/miui/player/ui/PreferencesActivity;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 295
    :cond_3
    invoke-static {p0, p1, p2}, Lcom/miui/player/helper/LyricDownloader;->download(Landroid/content/Context;Lcom/miui/player/plugin/onlinelyric/LyricSearchInfo;Lcom/miui/player/helper/LyricDownloader$LyricAsyncCallback;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_0

    .line 299
    :cond_5
    const/4 v0, 0x5

    goto :goto_0
.end method

.method public static getAlbumFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 10
    .parameter "title"
    .parameter "artist"
    .parameter "songPath"

    .prologue
    const/4 v9, 0x0

    const-string v8, "music/album"

    .line 263
    const-string v6, "music/album"

    invoke-static {p0, p1, v8}, Lcom/miui/player/helper/MusicMetaManager;->getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 264
    .local v0, albumFile:Ljava/io/File;
    if-eqz v0, :cond_0

    move-object v6, v0

    .line 281
    :goto_0
    return-object v6

    .line 267
    :cond_0
    if-eqz p2, :cond_2

    .line 268
    const-string v6, "."

    invoke-virtual {p2, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 269
    .local v3, lastDot:I
    if-gez v3, :cond_1

    move-object v6, v9

    .line 270
    goto :goto_0

    .line 272
    :cond_1
    sget-object v6, Lcom/miui/player/helper/MusicMetaManager;->META_TYPE_MAP:Ljava/util/HashMap;

    const-string v7, "music/album"

    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/player/helper/MusicMetaManager$MetaInfo;

    .line 273
    .local v2, info:Lcom/miui/player/helper/MusicMetaManager$MetaInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    invoke-virtual {p2, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/miui/player/helper/MusicMetaManager$MetaInfo;->mExtendName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 274
    .local v5, localAlbumPath:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 275
    .local v4, localAlbumFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 276
    const-string v6, "music/album"

    invoke-static {p0, p1, v8}, Lcom/miui/player/helper/MusicMetaManager;->getFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 277
    .local v1, destFileName:Ljava/lang/String;
    invoke-static {v5, v1}, Lcom/miui/player/helper/Global;->copyFile(Ljava/lang/String;Ljava/lang/String;)Z

    .line 278
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .end local v1           #destFileName:Ljava/lang/String;
    .end local v2           #info:Lcom/miui/player/helper/MusicMetaManager$MetaInfo;
    .end local v3           #lastDot:I
    .end local v4           #localAlbumFile:Ljava/io/File;
    .end local v5           #localAlbumPath:Ljava/lang/String;
    :cond_2
    move-object v6, v9

    .line 281
    goto :goto_0
.end method

.method public static getDir(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "dir"

    .prologue
    .line 193
    invoke-static {p0}, Lcom/miui/player/helper/Global;->getPathRelateToRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getExtendName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "metaType"

    .prologue
    .line 112
    sget-object v0, Lcom/miui/player/helper/MusicMetaManager;->META_TYPE_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/player/helper/MusicMetaManager$MetaInfo;

    iget-object v0, p0, Lcom/miui/player/helper/MusicMetaManager$MetaInfo;->mExtendName:Ljava/lang/String;

    return-object v0
.end method

.method public static getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "fileName"
    .parameter "metaType"

    .prologue
    .line 206
    invoke-static {p0, p1}, Lcom/miui/player/helper/MusicMetaManager;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, absPath:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 209
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 210
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    .line 215
    .end local v1           #file:Ljava/io/File;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 1
    .parameter "title"
    .parameter "artist"
    .parameter "metaType"

    .prologue
    .line 244
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/miui/player/helper/MusicMetaManager;->getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/io/File;
    .locals 4
    .parameter "title"
    .parameter "artist"
    .parameter "metaType"
    .parameter "isTemp"

    .prologue
    const/4 v3, 0x0

    .line 224
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v3

    .line 240
    :goto_0
    return-object v2

    .line 229
    :cond_0
    if-eqz p3, :cond_1

    .line 230
    invoke-static {p0, p1, p2}, Lcom/miui/player/helper/MusicMetaManager;->getTempFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 235
    .local v1, path:Ljava/lang/String;
    :goto_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v0

    .line 237
    goto :goto_0

    .line 232
    .end local v0           #file:Ljava/io/File;
    .end local v1           #path:Ljava/lang/String;
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/miui/player/helper/MusicMetaManager;->getFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1       #path:Ljava/lang/String;
    goto :goto_1

    .restart local v0       #file:Ljava/io/File;
    :cond_2
    move-object v2, v3

    .line 240
    goto :goto_0
.end method

.method public static getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "fileName"
    .parameter "metaType"

    .prologue
    .line 197
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    const/4 v1, 0x0

    .line 202
    :goto_0
    return-object v1

    .line 201
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, path:Ljava/lang/String;
    invoke-static {v0}, Lcom/miui/player/helper/Global;->getPathRelateToRoot(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "name"
    .parameter "artist"
    .parameter "metaType"

    .prologue
    .line 156
    sget-object v3, Lcom/miui/player/helper/MusicMetaManager;->META_TYPE_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/player/helper/MusicMetaManager$MetaInfo;

    .line 157
    .local v2, info:Lcom/miui/player/helper/MusicMetaManager$MetaInfo;
    if-nez v2, :cond_0

    .line 158
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFileName bad arg "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 161
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 162
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "name and artist are both empty"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 165
    :cond_1
    iget-object v3, v2, Lcom/miui/player/helper/MusicMetaManager$MetaInfo;->mRelateDir:Ljava/lang/String;

    invoke-static {v3}, Lcom/miui/player/helper/MusicMetaManager;->getDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, dir:Ljava/lang/String;
    iget-object v3, v2, Lcom/miui/player/helper/MusicMetaManager$MetaInfo;->mExtendName:Ljava/lang/String;

    invoke-static {p0, p1, v3}, Lcom/miui/player/helper/MusicMetaManager;->concatFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, fileName:Ljava/lang/String;
    sget-object v3, Lcom/miui/player/helper/MusicMetaManager;->META_FULL_PATH_FORMAT:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getLyricFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .parameter "title"
    .parameter "artist"
    .parameter "songPath"

    .prologue
    const-string v6, "music/lyric"

    .line 248
    if-eqz p2, :cond_0

    .line 249
    const-string v4, "."

    invoke-virtual {p2, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    .line 250
    .local v2, lastDot:I
    if-lez v2, :cond_0

    .line 251
    sget-object v4, Lcom/miui/player/helper/MusicMetaManager;->META_TYPE_MAP:Ljava/util/HashMap;

    const-string v5, "music/lyric"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/player/helper/MusicMetaManager$MetaInfo;

    .line 252
    .local v1, info:Lcom/miui/player/helper/MusicMetaManager$MetaInfo;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    invoke-virtual {p2, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/miui/player/helper/MusicMetaManager$MetaInfo;->mExtendName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, localLyricPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    .local v0, autoLyricFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v0

    .line 259
    .end local v0           #autoLyricFile:Ljava/io/File;
    .end local v1           #info:Lcom/miui/player/helper/MusicMetaManager$MetaInfo;
    .end local v2           #lastDot:I
    .end local v3           #localLyricPath:Ljava/lang/String;
    :goto_0
    return-object v4

    :cond_0
    const-string v4, "music/lyric"

    invoke-static {p0, p1, v6}, Lcom/miui/player/helper/MusicMetaManager;->getFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    goto :goto_0
.end method

.method public static getMP3AppointName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "trackName"
    .parameter "artistName"

    .prologue
    .line 491
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    const/4 v0, 0x0

    .line 495
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mp3"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getMetaDir(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .parameter "metaType"

    .prologue
    .line 116
    invoke-static {p0}, Lcom/miui/player/helper/MusicMetaManager;->getMetaDirName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    .local v1, dirPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, dir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 119
    const/4 v0, 0x0

    .line 121
    :cond_0
    return-object v0
.end method

.method public static getMetaDirName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "metaType"

    .prologue
    .line 125
    sget-object v1, Lcom/miui/player/helper/MusicMetaManager;->META_TYPE_MAP:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/helper/MusicMetaManager$MetaInfo;

    .line 126
    .local v0, info:Lcom/miui/player/helper/MusicMetaManager$MetaInfo;
    iget-object v1, v0, Lcom/miui/player/helper/MusicMetaManager$MetaInfo;->mRelateDir:Ljava/lang/String;

    invoke-static {v1}, Lcom/miui/player/helper/MusicMetaManager;->getDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTempFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "name"
    .parameter "artist"
    .parameter "metaType"

    .prologue
    .line 184
    invoke-static {p0, p1, p2}, Lcom/miui/player/helper/MusicMetaManager;->getFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, fileName:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static initializeEnvironment()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 130
    sget-object v6, Lcom/miui/player/helper/MusicMetaManager;->META_TYPE_MAP:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 131
    .local v4, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/player/helper/MusicMetaManager$MetaInfo;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 132
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 133
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/player/helper/MusicMetaManager$MetaInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/player/helper/MusicMetaManager$MetaInfo;

    .line 134
    .local v3, info:Lcom/miui/player/helper/MusicMetaManager$MetaInfo;
    iget-object v6, v3, Lcom/miui/player/helper/MusicMetaManager$MetaInfo;->mRelateDir:Ljava/lang/String;

    invoke-static {v6}, Lcom/miui/player/helper/MusicMetaManager;->getDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, dir:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 137
    const/16 v6, 0x1ff

    invoke-static {v2, v6, v7, v7}, Landroid/os/FileUtils;->mkdirs(Ljava/io/File;III)Z

    .line 140
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 141
    .local v5, type:Ljava/lang/String;
    const-string v6, "music/lyric"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "music/album"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 142
    :cond_2
    invoke-static {v0}, Lcom/miui/player/helper/MusicMetaManager;->addNoMediaFile(Ljava/lang/String;)V

    goto :goto_0

    .line 145
    .end local v0           #dir:Ljava/lang/String;
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/miui/player/helper/MusicMetaManager$MetaInfo;>;"
    .end local v2           #file:Ljava/io/File;
    .end local v3           #info:Lcom/miui/player/helper/MusicMetaManager$MetaInfo;
    .end local v5           #type:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public static isMiuiMp3DownloadPath(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 499
    sget-object v0, Lcom/miui/player/helper/MusicMetaManager;->MIUI_MP3_DOWNLOAD_PATH:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static makeDirIfNotExists(Ljava/lang/String;)Z
    .locals 6
    .parameter "metaType"

    .prologue
    const/4 v5, -0x1

    .line 81
    sget-object v4, Lcom/miui/player/helper/MusicMetaManager;->META_TYPE_MAP:Ljava/util/HashMap;

    invoke-virtual {v4, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/player/helper/MusicMetaManager$MetaInfo;

    .line 82
    .local v2, info:Lcom/miui/player/helper/MusicMetaManager$MetaInfo;
    if-nez v2, :cond_0

    .line 83
    const/4 v4, 0x0

    .line 98
    :goto_0
    return v4

    .line 85
    :cond_0
    const/4 v3, 0x0

    .line 86
    .local v3, ret:Z
    iget-object v4, v2, Lcom/miui/player/helper/MusicMetaManager$MetaInfo;->mRelateDir:Ljava/lang/String;

    invoke-static {v4}, Lcom/miui/player/helper/MusicMetaManager;->getDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, dir:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 89
    const/16 v4, 0x1ff

    invoke-static {v1, v4, v5, v5}, Landroid/os/FileUtils;->mkdirs(Ljava/io/File;III)Z

    move-result v3

    .line 94
    :goto_1
    const-string v4, "music/lyric"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "music/album"

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 95
    :cond_1
    invoke-static {v0}, Lcom/miui/player/helper/MusicMetaManager;->addNoMediaFile(Ljava/lang/String;)V

    :cond_2
    move v4, v3

    .line 98
    goto :goto_0

    .line 91
    :cond_3
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v3

    goto :goto_1
.end method

.method private static regularFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "src"

    .prologue
    .line 189
    invoke-static {p0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static saveLyricFile(Ljava/lang/String;Ljava/lang/String;Lcom/miui/player/plugin/onlinelyric/LyricContent;)Z
    .locals 6
    .parameter "title"
    .parameter "artist"
    .parameter "content"

    .prologue
    const/4 v5, 0x0

    const-string v3, "music/lyric"

    .line 303
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v5

    .line 319
    :goto_0
    return v2

    .line 307
    :cond_0
    const-string v2, "music/lyric"

    invoke-static {p0, p1, v3}, Lcom/miui/player/helper/MusicMetaManager;->getFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 309
    .local v1, path:Ljava/lang/String;
    :try_start_0
    const-string v2, "music/lyric"

    invoke-static {v2}, Lcom/miui/player/helper/MusicMetaManager;->makeDirIfNotExists(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 310
    invoke-interface {p2, v1}, Lcom/miui/player/plugin/onlinelyric/LyricContent;->persist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 311
    const/16 v2, 0x1ff

    const/4 v3, -0x1

    const/4 v4, -0x1

    invoke-static {v1, v2, v3, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 315
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 316
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    move v2, v5

    .line 319
    goto :goto_0
.end method
