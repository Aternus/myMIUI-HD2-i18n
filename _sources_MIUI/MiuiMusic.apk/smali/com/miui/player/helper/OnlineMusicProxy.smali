.class public Lcom/miui/player/helper/OnlineMusicProxy;
.super Ljava/lang/Object;
.source "OnlineMusicProxy.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findSongsWithRawUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;
    .locals 2
    .parameter "context"
    .parameter "url"
    .parameter "provider"

    .prologue
    .line 53
    invoke-static {p0}, Lcom/miui/player/helper/OnlineMusicProxy;->getPlugIn(Landroid/content/Context;)Lcom/miui/player/plugin/onlinemusic/OnlineMusicPlugIn;

    move-result-object v0

    .line 54
    .local v0, omp:Lcom/miui/player/plugin/onlinemusic/OnlineMusicPlugIn;
    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0, p1, p2}, Lcom/miui/player/plugin/onlinemusic/OnlineMusicPlugIn;->findSongsWithRawUrl(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    move-result-object v1

    .line 58
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getPlugIn(Landroid/content/Context;)Lcom/miui/player/plugin/onlinemusic/OnlineMusicPlugIn;
    .locals 3
    .parameter "context"

    .prologue
    .line 80
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/miui/player/plugin/PlugInManager;->instance(Landroid/content/Context;I)Lcom/miui/player/plugin/PlugInManager;

    move-result-object v1

    .line 81
    .local v1, pim:Lcom/miui/player/plugin/PlugInManager;
    invoke-virtual {v1, p0}, Lcom/miui/player/plugin/PlugInManager;->getPlugInInterface(Landroid/content/Context;)Lcom/miui/player/plugin/base/PlugInInterface;

    move-result-object v0

    .line 82
    .local v0, pii:Lcom/miui/player/plugin/base/PlugInInterface;
    instance-of v2, v0, Lcom/miui/player/plugin/onlinemusic/OnlineMusicPlugIn;

    if-eqz v2, :cond_0

    .line 83
    check-cast v0, Lcom/miui/player/plugin/onlinemusic/OnlineMusicPlugIn;

    .end local v0           #pii:Lcom/miui/player/plugin/base/PlugInInterface;
    move-object v2, v0

    .line 86
    :goto_0
    return-object v2

    .restart local v0       #pii:Lcom/miui/player/plugin/base/PlugInInterface;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getSearchSongUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "query"
    .parameter "provider"

    .prologue
    .line 35
    invoke-static {p0}, Lcom/miui/player/helper/OnlineMusicProxy;->getPlugIn(Landroid/content/Context;)Lcom/miui/player/plugin/onlinemusic/OnlineMusicPlugIn;

    move-result-object v0

    .line 36
    .local v0, omp:Lcom/miui/player/plugin/onlinemusic/OnlineMusicPlugIn;
    if-eqz v0, :cond_0

    .line 37
    invoke-interface {v0, p1, p2}, Lcom/miui/player/plugin/onlinemusic/OnlineMusicPlugIn;->getSearchSongUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 40
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSongCategoryList(Landroid/content/Context;Ljava/lang/String;)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;
    .locals 2
    .parameter "context"
    .parameter "provider"

    .prologue
    .line 71
    invoke-static {p0}, Lcom/miui/player/helper/OnlineMusicProxy;->getPlugIn(Landroid/content/Context;)Lcom/miui/player/plugin/onlinemusic/OnlineMusicPlugIn;

    move-result-object v0

    .line 72
    .local v0, omp:Lcom/miui/player/plugin/onlinemusic/OnlineMusicPlugIn;
    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0, p1}, Lcom/miui/player/plugin/onlinemusic/OnlineMusicPlugIn;->getSongCategoryList(Ljava/lang/String;)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongCategoryList;

    move-result-object v1

    .line 76
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSongCategoryUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "category"
    .parameter "provider"

    .prologue
    .line 44
    invoke-static {p0}, Lcom/miui/player/helper/OnlineMusicProxy;->getPlugIn(Landroid/content/Context;)Lcom/miui/player/plugin/onlinemusic/OnlineMusicPlugIn;

    move-result-object v0

    .line 45
    .local v0, omp:Lcom/miui/player/plugin/onlinemusic/OnlineMusicPlugIn;
    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0, p1, p2}, Lcom/miui/player/plugin/onlinemusic/OnlineMusicPlugIn;->getSongCategoryUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSongInfo(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;Ljava/lang/String;)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;
    .locals 2
    .parameter "context"
    .parameter "songItem"
    .parameter "provider"

    .prologue
    .line 16
    invoke-static {p0}, Lcom/miui/player/helper/OnlineMusicProxy;->getPlugIn(Landroid/content/Context;)Lcom/miui/player/plugin/onlinemusic/OnlineMusicPlugIn;

    move-result-object v0

    .line 17
    .local v0, omp:Lcom/miui/player/plugin/onlinemusic/OnlineMusicPlugIn;
    if-eqz v0, :cond_0

    .line 18
    invoke-interface {v0, p1, p2}, Lcom/miui/player/plugin/onlinemusic/OnlineMusicPlugIn;->getSongInfo(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;Ljava/lang/String;)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;

    move-result-object v1

    .line 21
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSongInfo(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;I)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;
    .locals 2
    .parameter "context"
    .parameter "songList"
    .parameter "index"

    .prologue
    .line 26
    invoke-static {p0}, Lcom/miui/player/helper/OnlineMusicProxy;->getPlugIn(Landroid/content/Context;)Lcom/miui/player/plugin/onlinemusic/OnlineMusicPlugIn;

    move-result-object v0

    .line 27
    .local v0, omp:Lcom/miui/player/plugin/onlinemusic/OnlineMusicPlugIn;
    if-eqz v0, :cond_0

    .line 28
    invoke-interface {v0, p1, p2}, Lcom/miui/player/plugin/onlinemusic/OnlineMusicPlugIn;->getSongInfo(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;I)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;

    move-result-object v1

    .line 31
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static guessYouLikeFromSong(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;
    .locals 2
    .parameter "context"
    .parameter "seed"

    .prologue
    .line 62
    invoke-static {p0}, Lcom/miui/player/helper/OnlineMusicProxy;->getPlugIn(Landroid/content/Context;)Lcom/miui/player/plugin/onlinemusic/OnlineMusicPlugIn;

    move-result-object v0

    .line 63
    .local v0, omp:Lcom/miui/player/plugin/onlinemusic/OnlineMusicPlugIn;
    if-eqz v0, :cond_0

    .line 64
    invoke-interface {v0, p1}, Lcom/miui/player/plugin/onlinemusic/OnlineMusicPlugIn;->guessYouLikeFromSong(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    move-result-object v1

    .line 67
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
