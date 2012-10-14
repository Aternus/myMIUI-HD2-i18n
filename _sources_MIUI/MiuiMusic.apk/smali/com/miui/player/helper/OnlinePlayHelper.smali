.class public Lcom/miui/player/helper/OnlinePlayHelper;
.super Ljava/lang/Object;
.source "OnlinePlayHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/helper/OnlinePlayHelper$CorrectId3AfterPlay;,
        Lcom/miui/player/helper/OnlinePlayHelper$OnlinePlayDeniedException;
    }
.end annotation


# static fields
.field public static final ALBUM_JSON:Ljava/lang/String; = "album"

.field public static final ARTIST_JSON:Ljava/lang/String; = "artist"

.field public static final ID_JSON:Ljava/lang/String; = "online_id"

.field private static final PROJECTION:[Ljava/lang/String; = null

.field public static final TRACK_JSON:Ljava/lang/String; = "track"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 42
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "online_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "artist"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "album"

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/player/helper/OnlinePlayHelper;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    return-void
.end method

.method public static correctId3(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "appointName"
    .parameter "details"

    .prologue
    .line 274
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 276
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 277
    .local v3, json:Lorg/json/JSONObject;
    const-string v5, "album"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 278
    .local v0, album:Ljava/lang/String;
    const-string v5, "artist"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 279
    .local v1, artist:Ljava/lang/String;
    const-string v5, "track"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 281
    .local v4, track:Ljava/lang/String;
    const-string v5, "music/mp3"

    invoke-static {p1, v5}, Lcom/miui/player/helper/MusicMetaManager;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 282
    .local v2, file:Ljava/io/File;
    invoke-static {p0, v2, v4, v1, v0}, Lcom/miui/player/helper/MediaInfo;->correctID3(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 287
    .end local v0           #album:Ljava/lang/String;
    .end local v1           #artist:Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #json:Lorg/json/JSONObject;
    .end local v4           #track:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public static download(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;)Z
    .locals 7
    .parameter "context"
    .parameter "dsp"

    .prologue
    .line 222
    invoke-static {}, Landroid/os/Environment;->isExternalStorageMounted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    const/4 p0, 0x0

    .line 256
    .end local p0
    .end local p1
    :goto_0
    return p0

    .line 226
    .restart local p0
    .restart local p1
    :cond_0
    if-nez p1, :cond_2

    .line 227
    invoke-static {p0}, Lcom/miui/player/helper/NetworkUtils;->isConnectivityActive(Landroid/content/Context;)Z

    move-result p1

    .end local p1
    if-nez p1, :cond_1

    .line 228
    const p1, 0x7f080093

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 230
    :cond_1
    const/4 p0, 0x0

    goto :goto_0

    .line 233
    .restart local p0
    .restart local p1
    :cond_2
    invoke-static {p1}, Lcom/miui/player/helper/OnlinePlayHelper;->getCandidateInfo(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;)Ljava/util/ArrayList;

    move-result-object v6

    .line 235
    .local v6, urlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v6, :cond_3

    .line 236
    const p1, 0x7f080094

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .end local p1
    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 237
    const/4 p0, 0x0

    goto :goto_0

    .line 240
    .restart local p0
    .restart local p1
    :cond_3
    iget-object v2, p1, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;->SongInfo:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;

    .line 242
    .local v2, songItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    iget-object v1, v2, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Name:Ljava/lang/String;

    .line 243
    .local v1, tr:Ljava/lang/String;
    iget-object p1, v2, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Artist:Ljava/lang/String;

    .end local p1
    if-eqz p1, :cond_4

    iget-object p1, v2, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Artist:Ljava/lang/String;

    move-object v0, p1

    .line 244
    .local v0, ar:Ljava/lang/String;
    :goto_1
    iget-object p1, v2, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Album:Ljava/lang/String;

    if-eqz p1, :cond_5

    iget-object p1, v2, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Album:Ljava/lang/String;

    .line 246
    .local p1, al:Ljava/lang/String;
    :goto_2
    invoke-static {v1, v0}, Lcom/miui/player/helper/MusicMetaManager;->getMP3AppointName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 247
    .local v5, appointName:Ljava/lang/String;
    if-nez v5, :cond_6

    .line 248
    const/4 p0, 0x0

    goto :goto_0

    .line 243
    .end local v0           #ar:Ljava/lang/String;
    .end local v5           #appointName:Ljava/lang/String;
    .end local p1           #al:Ljava/lang/String;
    :cond_4
    const-string p1, ""

    move-object v0, p1

    goto :goto_1

    .line 244
    .restart local v0       #ar:Ljava/lang/String;
    :cond_5
    const-string p1, ""

    goto :goto_2

    .line 250
    .restart local v5       #appointName:Ljava/lang/String;
    .restart local p1       #al:Ljava/lang/String;
    :cond_6
    const-string v4, "music/mp3"

    .line 251
    .local v4, subDirectory:Ljava/lang/String;
    iget-object v3, v2, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Id:Ljava/lang/String;

    invoke-static {v3, v1, v0, p1}, Lcom/miui/player/helper/OnlinePlayHelper;->getDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 253
    .local p1, details:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .end local v0           #ar:Ljava/lang/String;
    move-result-object v1

    .end local v1           #tr:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    iget-object v2, v2, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Id:Ljava/lang/String;

    .end local v2           #songItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 p1, 0x1

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .end local p1           #details:Ljava/lang/String;
    move-result v0

    invoke-virtual {v6, p1, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v6

    .end local v6           #urlList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lcom/miui/player/downloader/DownloadProvider;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/net/Uri;

    move-result-object p0

    .line 256
    .local p0, uri:Landroid/net/Uri;
    if-eqz p0, :cond_7

    const/4 p0, 0x1

    goto :goto_0

    :cond_7
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static download(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;Ljava/lang/Runnable;)Z
    .locals 2
    .parameter "context"
    .parameter "songItem"
    .parameter "runOnStartDownload"

    .prologue
    const/4 v1, 0x0

    .line 184
    if-nez p1, :cond_0

    move v0, v1

    .line 218
    :goto_0
    return v0

    .line 188
    :cond_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageMounted()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 189
    goto :goto_0

    .line 192
    :cond_1
    new-instance v0, Lcom/miui/player/helper/OnlinePlayHelper$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/miui/player/helper/OnlinePlayHelper$2;-><init>(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;Ljava/lang/Runnable;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/player/helper/OnlinePlayHelper$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 218
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static getCandidateInfo(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;)Ljava/util/ArrayList;
    .locals 5
    .parameter "dsp"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    const/4 v3, 0x0

    .line 156
    .local v3, ret:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p0, :cond_2

    iget-object v4, p0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;->SongCandidates:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;->SongCandidates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 157
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;->SongCandidates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 158
    .local v1, candidateUrls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;->SongCandidates:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription$SongCandidateItem;

    .line 159
    .local v0, candidate:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription$SongCandidateItem;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription$SongCandidateItem;->MusicUrl:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 160
    iget-object v4, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription$SongCandidateItem;->MusicUrl:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 164
    .end local v0           #candidate:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription$SongCandidateItem;
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    move-object v3, v1

    .line 167
    .end local v1           #candidateUrls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    return-object v3

    .line 164
    .restart local v1       #candidateUrls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_3
    const/4 v4, 0x0

    move-object v3, v4

    goto :goto_1
.end method

.method private static getDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "id"
    .parameter "tr"
    .parameter "ar"
    .parameter "al"

    .prologue
    .line 261
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 263
    .local v0, details:Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "online_id"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    const-string v1, "album"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 265
    const-string v1, "artist"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    const-string v1, "track"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 267
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getRemoteMediaInfo(Landroid/content/Context;J)Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;
    .locals 7
    .parameter "context"
    .parameter "audioId"

    .prologue
    .line 78
    invoke-static {p1, p2}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 79
    const/4 p0, 0x0

    .line 110
    .end local p0
    .end local p1
    :cond_0
    :goto_0
    return-object p0

    .line 82
    .restart local p0
    .restart local p1
    :cond_1
    const/4 v6, 0x0

    .line 83
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v0, 0x0

    .line 86
    .local v0, info:Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;
    :try_start_0
    sget-object v0, Lcom/miui/player/provider/PlayerStore$MiuiNowPlayingAudio;->EXTERNAL_URI:Landroid/net/Uri;

    .end local v0           #info:Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;
    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 88
    .local v1, uri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/miui/player/helper/OnlinePlayHelper;->PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 89
    .end local v6           #cursor:Landroid/database/Cursor;
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_2

    .line 90
    const/4 p0, 0x0

    .line 105
    .end local p0
    if-eqz v0, :cond_0

    .line 106
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 91
    .restart local p0
    :cond_2
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result p0

    .end local p0
    if-nez p0, :cond_3

    .line 92
    const/4 p0, 0x0

    .line 105
    if-eqz v0, :cond_0

    .line 106
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 95
    :cond_3
    const/4 p0, 0x1

    :try_start_2
    invoke-interface {v0, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, onlineId:Ljava/lang/String;
    const/4 p0, 0x2

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 97
    .local v2, title:Ljava/lang/String;
    const/4 p0, 0x3

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 98
    .end local p1
    .local p2, artist:Ljava/lang/String;
    const/4 p0, 0x4

    invoke-interface {v0, p0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 99
    .local p0, album:Ljava/lang/String;
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "_"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, ".mp3"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 100
    .local p1, appointName:Ljava/lang/String;
    invoke-static {v1, v2, p2, p0}, Lcom/miui/player/helper/OnlinePlayHelper;->getDetails(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 102
    .local p0, details:Ljava/lang/String;
    new-instance p2, Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;

    .end local p2           #artist:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p2, v1, p1, p0, v2}, Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 105
    .end local v2           #title:Ljava/lang/String;
    .local p2, info:Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;
    if-eqz v0, :cond_4

    .line 106
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object p0, p2

    .line 110
    goto :goto_0

    .line 105
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v1           #onlineId:Ljava/lang/String;
    .end local p2           #info:Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;
    .restart local v6       #cursor:Landroid/database/Cursor;
    .local p0, context:Landroid/content/Context;
    .local p1, audioId:J
    :catchall_0
    move-exception p0

    move-object p1, p0

    move-object p0, v6

    .end local v6           #cursor:Landroid/database/Cursor;
    .end local p1           #audioId:J
    .local p0, cursor:Landroid/database/Cursor;
    :goto_1
    if-eqz p0, :cond_5

    .line 106
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p1

    .line 105
    .end local p0           #cursor:Landroid/database/Cursor;
    .restart local v0       #cursor:Landroid/database/Cursor;
    :catchall_1
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .end local v0           #cursor:Landroid/database/Cursor;
    .restart local p0       #cursor:Landroid/database/Cursor;
    goto :goto_1
.end method

.method private static localExists(Landroid/content/Context;Lcom/miui/player/helper/BufferedMediaPlayer;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "mp"
    .parameter "appointName"

    .prologue
    .line 114
    const-string v2, "music/mp3"

    invoke-static {p2, v2}, Lcom/miui/player/helper/MusicMetaManager;->getFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    .local v1, path:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 116
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    .line 120
    .end local v0           #f:Ljava/io/File;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static play(Landroid/content/Context;Lcom/miui/player/helper/BufferedMediaPlayer;Lcom/miui/player/helper/BufferedMediaPlayer$RemoteControlInfo;JJ)V
    .locals 9
    .parameter "context"
    .parameter "mp"
    .parameter "remoteControlInfo"
    .parameter "audioId"
    .parameter "nextId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/miui/player/helper/OnlinePlayHelper$OnlinePlayDeniedException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 52
    const/4 v6, 0x0

    .line 55
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-static {p0, p3, p4}, Lcom/miui/player/helper/OnlinePlayHelper;->getRemoteMediaInfo(Landroid/content/Context;J)Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 56
    .local v3, remoteMediaInfo:Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;
    if-nez v3, :cond_1

    .line 71
    if-eqz v6, :cond_0

    .line 72
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    :try_start_1
    invoke-static {p0}, Lcom/miui/player/helper/NetworkUtils;->isWIFIConnected(Landroid/content/Context;)Z

    move-result v7

    .line 61
    .local v7, isWifiConnected:Z
    if-nez v7, :cond_2

    const-string v0, "other_connect_listen"

    invoke-static {p0, v0}, Lcom/miui/player/ui/PreferencesActivity;->getPrefAsBoolean(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    const/4 v0, 0x1

    move v8, v0

    .line 64
    .local v8, onlineAllow:Z
    :goto_1
    if-nez v8, :cond_5

    iget-object v0, v3, Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;->mAppointName:Ljava/lang/String;

    invoke-static {p0, p1, v0}, Lcom/miui/player/helper/OnlinePlayHelper;->localExists(Landroid/content/Context;Lcom/miui/player/helper/BufferedMediaPlayer;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 65
    new-instance v0, Lcom/miui/player/helper/OnlinePlayHelper$OnlinePlayDeniedException;

    const-string v1, "online play not allow"

    invoke-direct {v0, v1}, Lcom/miui/player/helper/OnlinePlayHelper$OnlinePlayDeniedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    .end local v3           #remoteMediaInfo:Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;
    .end local v7           #isWifiConnected:Z
    .end local v8           #onlineAllow:Z
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 72
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 61
    .restart local v3       #remoteMediaInfo:Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;
    .restart local v7       #isWifiConnected:Z
    :cond_4
    const/4 v0, 0x0

    move v8, v0

    goto :goto_1

    .restart local v8       #onlineAllow:Z
    :cond_5
    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-wide v4, p5

    .line 68
    :try_start_2
    invoke-virtual/range {v0 .. v5}, Lcom/miui/player/helper/BufferedMediaPlayer;->prepareWithBuffer(Landroid/content/Context;Lcom/miui/player/helper/BufferedMediaPlayer$RemoteControlInfo;Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    if-eqz v6, :cond_0

    .line 72
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public static requestCandidateUrls(Landroid/content/Context;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 3
    .parameter "context"
    .parameter "onlineId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    new-instance v1, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;

    invoke-direct {v1}, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;-><init>()V

    .line 129
    .local v1, songItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    iput-object p1, v1, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Id:Ljava/lang/String;

    .line 131
    const-string v2, "baidu"

    invoke-static {p0, v1, v2}, Lcom/miui/player/helper/OnlineMusicProxy;->getSongInfo(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;Ljava/lang/String;)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;

    move-result-object v0

    .line 134
    .local v0, dsp:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;
    invoke-static {v0}, Lcom/miui/player/helper/OnlinePlayHelper;->getCandidateInfo(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2
.end method

.method public static requestCandidateUrlsAsync(Landroid/content/Context;Ljava/lang/String;Lcom/miui/player/helper/NetworkUtils$HttpGetSyncRunnable;)V
    .locals 2
    .parameter "context"
    .parameter "onlineId"
    .parameter "runnable"

    .prologue
    .line 139
    invoke-static {}, Lcom/miui/player/helper/NetworkUtils;->getNetworkExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/miui/player/helper/OnlinePlayHelper$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/player/helper/OnlinePlayHelper$1;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/miui/player/helper/NetworkUtils$HttpGetSyncRunnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 151
    return-void
.end method
