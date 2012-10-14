.class public Lcom/miui/player/helper/FavoritePlaylist;
.super Ljava/lang/Object;
.source "FavoritePlaylist.java"


# static fields
.field public static final PLAYLIST_NAME:Ljava/lang/String; = "$$miui"

.field private static sFavoriteLocalTracks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static sFavoriteOnlineTracks:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sFavoritePlaylistId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 20
    sput-object v0, Lcom/miui/player/helper/FavoritePlaylist;->sFavoriteLocalTracks:Ljava/util/HashSet;

    .line 22
    sput-object v0, Lcom/miui/player/helper/FavoritePlaylist;->sFavoriteOnlineTracks:Ljava/util/HashSet;

    .line 24
    sput-object v0, Lcom/miui/player/helper/FavoritePlaylist;->sFavoritePlaylistId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static add(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "id"

    .prologue
    .line 90
    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    invoke-static {p0, v0}, Lcom/miui/player/helper/FavoritePlaylist;->add(Landroid/content/Context;[J)Z

    .line 93
    return-void
.end method

.method public static add(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "providerId"

    .prologue
    .line 57
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lcom/miui/player/helper/FavoritePlaylist;->add(Landroid/content/Context;[Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public static add(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "providerIds"

    .prologue
    .line 44
    invoke-static {p0}, Lcom/miui/player/helper/FavoritePlaylist;->initialize(Landroid/content/Context;)V

    .line 45
    sget-object v4, Lcom/miui/player/helper/FavoritePlaylist;->sFavoritePlaylistId:Ljava/lang/String;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/miui/player/helper/FavoritePlaylist;->sFavoriteLocalTracks:Ljava/util/HashSet;

    if-eqz v4, :cond_0

    sget-object v4, Lcom/miui/player/helper/FavoritePlaylist;->sFavoriteOnlineTracks:Ljava/util/HashSet;

    if-eqz v4, :cond_0

    .line 47
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 48
    .local v3, providerId:Ljava/lang/String;
    sget-object v4, Lcom/miui/player/helper/FavoritePlaylist;->sFavoriteOnlineTracks:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 47
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 51
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #providerId:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static add(Landroid/content/Context;[J)Z
    .locals 8
    .parameter "context"
    .parameter "ids"

    .prologue
    .line 66
    invoke-static {p0}, Lcom/miui/player/helper/FavoritePlaylist;->initialize(Landroid/content/Context;)V

    .line 67
    const/4 v0, 0x1

    .line 69
    .local v0, addAll:Z
    sget-object v6, Lcom/miui/player/helper/FavoritePlaylist;->sFavoritePlaylistId:Ljava/lang/String;

    if-eqz v6, :cond_1

    sget-object v6, Lcom/miui/player/helper/FavoritePlaylist;->sFavoriteLocalTracks:Ljava/util/HashSet;

    if-eqz v6, :cond_1

    sget-object v6, Lcom/miui/player/helper/FavoritePlaylist;->sFavoriteOnlineTracks:Ljava/util/HashSet;

    if-eqz v6, :cond_1

    .line 72
    move-object v1, p1

    .local v1, arr$:[J
    array-length v5, v1

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v5, :cond_1

    aget-wide v3, v1, v2

    .line 74
    .local v3, id:J
    invoke-static {v3, v4}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v6

    if-nez v6, :cond_0

    .line 75
    sget-object v6, Lcom/miui/player/helper/FavoritePlaylist;->sFavoriteLocalTracks:Ljava/util/HashSet;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 72
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 83
    .end local v1           #arr$:[J
    .end local v2           #i$:I
    .end local v3           #id:J
    .end local v5           #len$:I
    :cond_1
    return v0
.end method

.method public static contains(Landroid/content/Context;JLjava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "id"
    .parameter "providerId"

    .prologue
    .line 151
    invoke-static {p0}, Lcom/miui/player/helper/FavoritePlaylist;->initialize(Landroid/content/Context;)V

    .line 153
    const/4 v0, 0x0

    .line 155
    .local v0, isFavorite:Z
    invoke-static {p1, p2}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    invoke-static {p0, p1, p2}, Lcom/miui/player/helper/FavoritePlaylist;->localContains(Landroid/content/Context;J)Z

    move-result v0

    .line 164
    :goto_0
    return v0

    .line 157
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 158
    invoke-static {p0, p3}, Lcom/miui/player/helper/FavoritePlaylist;->onlineContains(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 160
    :cond_1
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v1}, Lcom/miui/player/provider/PlayerProviderUtils;->getProviderId(Landroid/content/Context;JLjava/lang/Long;)Ljava/lang/String;

    move-result-object p3

    .line 161
    invoke-static {p0, p3}, Lcom/miui/player/helper/FavoritePlaylist;->onlineContains(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method public static filter(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6
    .parameter "where"
    .parameter "isFirst"

    .prologue
    .line 33
    const-string v1, "%s %s %s != \'%s\'"

    .line 34
    .local v1, PATTERN:Ljava/lang/String;
    if-eqz p1, :cond_0

    const-string v2, ""

    move-object v0, v2

    .line 36
    .local v0, AND:Ljava/lang/String;
    :goto_0
    const-string v2, "%s %s %s != \'%s\'"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    const/4 v4, 0x2

    const-string v5, "name"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "$$miui"

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 34
    .end local v0           #AND:Ljava/lang/String;
    :cond_0
    const-string v2, " AND "

    move-object v0, v2

    goto :goto_0
.end method

.method public static getFavoriteCount(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 186
    const/4 v0, 0x0

    .line 187
    .local v0, ret:I
    invoke-static {p0}, Lcom/miui/player/helper/FavoritePlaylist;->initialize(Landroid/content/Context;)V

    .line 188
    sget-object v1, Lcom/miui/player/helper/FavoritePlaylist;->sFavoriteLocalTracks:Ljava/util/HashSet;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/miui/player/helper/FavoritePlaylist;->sFavoriteOnlineTracks:Ljava/util/HashSet;

    if-eqz v1, :cond_0

    .line 189
    sget-object v1, Lcom/miui/player/helper/FavoritePlaylist;->sFavoriteLocalTracks:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    sget-object v2, Lcom/miui/player/helper/FavoritePlaylist;->sFavoriteOnlineTracks:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v2

    add-int v0, v1, v2

    .line 192
    :cond_0
    return v0
.end method

.method public static getFavoritePlaylistId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 181
    invoke-static {p0}, Lcom/miui/player/helper/FavoritePlaylist;->initialize(Landroid/content/Context;)V

    .line 182
    sget-object v0, Lcom/miui/player/helper/FavoritePlaylist;->sFavoritePlaylistId:Ljava/lang/String;

    return-object v0
.end method

.method private static initialize(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 27
    sget-object v0, Lcom/miui/player/helper/FavoritePlaylist;->sFavoritePlaylistId:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 28
    invoke-static {p0}, Lcom/miui/player/helper/FavoritePlaylist;->readFavoritePlaylist(Landroid/content/Context;)V

    .line 30
    :cond_0
    return-void
.end method

.method public static isFavoritePlaylistId(J)Z
    .locals 3
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 173
    :try_start_0
    sget-object v0, Lcom/miui/player/helper/FavoritePlaylist;->sFavoritePlaylistId:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/player/helper/FavoritePlaylist;->sFavoritePlaylistId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    cmp-long v0, v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 177
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 173
    goto :goto_0

    .line 174
    :catch_0
    move-exception v0

    move v0, v2

    .line 177
    goto :goto_0
.end method

.method public static isFavoritePlaylistId(Ljava/lang/String;)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 168
    sget-object v0, Lcom/miui/player/helper/FavoritePlaylist;->sFavoritePlaylistId:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/player/helper/FavoritePlaylist;->sFavoritePlaylistId:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static localContains(Landroid/content/Context;J)Z
    .locals 2
    .parameter "context"
    .parameter "id"

    .prologue
    .line 141
    invoke-static {p0}, Lcom/miui/player/helper/FavoritePlaylist;->initialize(Landroid/content/Context;)V

    .line 142
    sget-object v0, Lcom/miui/player/helper/FavoritePlaylist;->sFavoriteLocalTracks:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/player/helper/FavoritePlaylist;->sFavoriteLocalTracks:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static onlineContains(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .parameter "context"
    .parameter "providerId"

    .prologue
    .line 146
    invoke-static {p0}, Lcom/miui/player/helper/FavoritePlaylist;->initialize(Landroid/content/Context;)V

    .line 147
    sget-object v0, Lcom/miui/player/helper/FavoritePlaylist;->sFavoriteOnlineTracks:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/player/helper/FavoritePlaylist;->sFavoriteOnlineTracks:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static readFavoritePlaylist(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    .line 206
    const-string v0, "$$miui"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/miui/player/MusicUtils;->createPlaylist(Landroid/content/Context;Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v0

    .line 207
    .local v0, uri:Landroid/net/Uri;
    if-eqz v0, :cond_3

    .line 208
    const-string v0, "$$miui"

    .end local v0           #uri:Landroid/net/Uri;
    const/4 v1, 0x3

    invoke-static {p0, v0, v1}, Lcom/miui/player/MusicUtils;->idForplaylist(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    .line 210
    .local v0, id:J
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/miui/player/helper/FavoritePlaylist;->sFavoritePlaylistId:Ljava/lang/String;

    .line 212
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 213
    .local v6, localMap:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 215
    .local v7, onlineMap:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "audio_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "online_id"

    aput-object v4, v2, v3

    .line 220
    .local v2, AUDIO_KEY:[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playlist_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/miui/player/helper/FavoritePlaylist;->sFavoritePlaylistId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, WHERE:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists$Members;->getMembersUri(J)Landroid/net/Uri;

    move-result-object v1

    .line 224
    .end local v0           #id:J
    .local v1, memberUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 227
    .local p0, cursor:Landroid/database/Cursor;
    if-eqz p0, :cond_2

    .line 228
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .end local v1           #memberUri:Landroid/net/Uri;
    .end local v2           #AUDIO_KEY:[Ljava/lang/String;
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 230
    .local v0, audioId:J
    invoke-static {v0, v1}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 231
    const/4 v0, 0x1

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .end local v0           #audioId:J
    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 228
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 233
    .restart local v0       #audioId:J
    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .end local v0           #audioId:J
    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 237
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 240
    :cond_2
    sput-object v6, Lcom/miui/player/helper/FavoritePlaylist;->sFavoriteLocalTracks:Ljava/util/HashSet;

    .line 241
    sput-object v7, Lcom/miui/player/helper/FavoritePlaylist;->sFavoriteOnlineTracks:Ljava/util/HashSet;

    .line 244
    .end local v3           #WHERE:Ljava/lang/String;
    .end local v6           #localMap:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    .end local v7           #onlineMap:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local p0           #cursor:Landroid/database/Cursor;
    :cond_3
    return-void
.end method

.method public static recreate(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 196
    const-string v4, "$$miui"

    const/4 v5, 0x3

    invoke-static {p0, v4, v5}, Lcom/miui/player/MusicUtils;->idForplaylist(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    int-to-long v1, v4

    .line 198
    .local v1, id:J
    invoke-static {v1, v2}, Lcom/miui/player/provider/PlayerStore$MiuiPlaylists$Members;->getMembersUri(J)Landroid/net/Uri;

    move-result-object v3

    .line 199
    .local v3, memberUri:Landroid/net/Uri;
    invoke-static {p0, v3}, Lcom/miui/player/provider/PlayerProviderUtils;->getRecordCount(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v0

    .line 200
    .local v0, count:I
    invoke-static {p0}, Lcom/miui/player/helper/FavoritePlaylist;->getFavoriteCount(Landroid/content/Context;)I

    move-result v4

    if-eq v0, v4, :cond_0

    .line 201
    invoke-static {p0}, Lcom/miui/player/helper/FavoritePlaylist;->readFavoritePlaylist(Landroid/content/Context;)V

    .line 203
    :cond_0
    return-void
.end method

.method public static remove(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "id"

    .prologue
    .line 99
    invoke-static {p0}, Lcom/miui/player/helper/FavoritePlaylist;->initialize(Landroid/content/Context;)V

    .line 100
    sget-object v1, Lcom/miui/player/helper/FavoritePlaylist;->sFavoriteLocalTracks:Ljava/util/HashSet;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/miui/player/helper/FavoritePlaylist;->sFavoriteOnlineTracks:Ljava/util/HashSet;

    if-eqz v1, :cond_0

    .line 101
    invoke-static {p1, p2}, Lcom/miui/player/provider/PlayerProvider;->isOnlineAudio(J)Z

    move-result v1

    if-nez v1, :cond_1

    .line 102
    sget-object v1, Lcom/miui/player/helper/FavoritePlaylist;->sFavoriteLocalTracks:Ljava/util/HashSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    sget-object v1, Lcom/miui/player/helper/FavoritePlaylist;->sFavoritePlaylistId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p0, p1, p2, v1}, Lcom/miui/player/provider/PlayerProviderUtils;->getProviderId(Landroid/content/Context;JLjava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, providerId:Ljava/lang/String;
    sget-object v1, Lcom/miui/player/helper/FavoritePlaylist;->sFavoriteOnlineTracks:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static remove(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .parameter "context"
    .parameter "providerId"

    .prologue
    .line 134
    invoke-static {p0}, Lcom/miui/player/helper/FavoritePlaylist;->initialize(Landroid/content/Context;)V

    .line 135
    sget-object v0, Lcom/miui/player/helper/FavoritePlaylist;->sFavoriteLocalTracks:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/miui/player/helper/FavoritePlaylist;->sFavoriteOnlineTracks:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 136
    sget-object v0, Lcom/miui/player/helper/FavoritePlaylist;->sFavoriteOnlineTracks:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 138
    :cond_0
    return-void
.end method

.method public static removeAll()V
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/miui/player/helper/FavoritePlaylist;->sFavoriteLocalTracks:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 117
    sget-object v0, Lcom/miui/player/helper/FavoritePlaylist;->sFavoriteLocalTracks:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 119
    :cond_0
    sget-object v0, Lcom/miui/player/helper/FavoritePlaylist;->sFavoriteOnlineTracks:Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 120
    sget-object v0, Lcom/miui/player/helper/FavoritePlaylist;->sFavoriteOnlineTracks:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 123
    :cond_1
    return-void
.end method

.method public static reset()V
    .locals 1

    .prologue
    .line 126
    invoke-static {}, Lcom/miui/player/helper/FavoritePlaylist;->removeAll()V

    .line 127
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/player/helper/FavoritePlaylist;->sFavoritePlaylistId:Ljava/lang/String;

    .line 128
    return-void
.end method
