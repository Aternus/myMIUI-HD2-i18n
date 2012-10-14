.class public Lcom/miui/player/helper/SongListCache;
.super Ljava/lang/Object;
.source "SongListCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/helper/SongListCache$1;,
        Lcom/miui/player/helper/SongListCache$SongListWaiter;,
        Lcom/miui/player/helper/SongListCache$SongListLoadHandler;,
        Lcom/miui/player/helper/SongListCache$SongListResult;,
        Lcom/miui/player/helper/SongListCache$SongListLoadRunnable;
    }
.end annotation


# static fields
.field private static final MSG_SONG_LIST_REQUEST:I = 0x1

.field private static final RANDOM_CLAUSE:Ljava/util/regex/Pattern;

.field private static sHandler:Landroid/os/Handler;

.field private static sThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

.field private static final sUrlToRequestMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUrlToSongListMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;",
            ">;"
        }
    .end annotation
.end field

.field private static final sUrlToSongListWaiterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/player/helper/SongListCache$SongListWaiter;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/player/helper/SongListCache;->sUrlToSongListMap:Ljava/util/HashMap;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/player/helper/SongListCache;->sUrlToRequestMap:Ljava/util/HashMap;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/player/helper/SongListCache;->sUrlToSongListWaiterMap:Ljava/util/HashMap;

    .line 28
    sput-object v1, Lcom/miui/player/helper/SongListCache;->sThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    .line 30
    new-instance v0, Lcom/miui/player/helper/SongListCache$SongListLoadHandler;

    invoke-direct {v0, v1}, Lcom/miui/player/helper/SongListCache$SongListLoadHandler;-><init>(Lcom/miui/player/helper/SongListCache$1;)V

    sput-object v0, Lcom/miui/player/helper/SongListCache;->sHandler:Landroid/os/Handler;

    .line 49
    const-string v0, "[&|].r=\\d*\\.\\d*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/miui/player/helper/SongListCache;->RANDOM_CLAUSE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    return-void
.end method

.method static synthetic access$100()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/miui/player/helper/SongListCache;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 18
    invoke-static {p0, p1}, Lcom/miui/player/helper/SongListCache;->handleLoadResult(Ljava/lang/String;Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;)V

    return-void
.end method

.method private static handleLoadResult(Ljava/lang/String;Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;)V
    .locals 7
    .parameter "url"
    .parameter "songList"

    .prologue
    .line 87
    if-nez p0, :cond_0

    .line 88
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "bad url == null"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 91
    :cond_0
    invoke-static {p0}, Lcom/miui/player/helper/SongListCache;->ignoreRandomClause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, urlIgnoreRandom:Ljava/lang/String;
    sget-object v5, Lcom/miui/player/helper/SongListCache;->sUrlToRequestMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v5, Lcom/miui/player/helper/SongListCache;->sUrlToSongListWaiterMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 96
    .local v2, queue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/helper/SongListCache$SongListWaiter;>;"
    sget-object v5, Lcom/miui/player/helper/SongListCache;->sUrlToSongListWaiterMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    const/4 v0, 0x0

    .line 99
    .local v0, cacheEnable:Z
    if-eqz v2, :cond_2

    .line 100
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/player/helper/SongListCache$SongListWaiter;

    .line 101
    .local v4, waiter:Lcom/miui/player/helper/SongListCache$SongListWaiter;
    invoke-interface {v4, p1}, Lcom/miui/player/helper/SongListCache$SongListWaiter;->onRequestCompleted(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;)V

    .line 103
    invoke-interface {v4}, Lcom/miui/player/helper/SongListCache$SongListWaiter;->isCacheEnable()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 104
    const/4 v0, 0x1

    goto :goto_0

    .line 109
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v4           #waiter:Lcom/miui/player/helper/SongListCache$SongListWaiter;
    :cond_2
    if-eqz v0, :cond_3

    .line 110
    sget-object v5, Lcom/miui/player/helper/SongListCache;->sUrlToSongListMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :cond_3
    return-void
.end method

.method private static ignoreRandomClause(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "rawUrl"

    .prologue
    .line 52
    if-nez p0, :cond_0

    .line 53
    const/4 v2, 0x0

    .line 57
    :goto_0
    return-object v2

    .line 55
    :cond_0
    sget-object v2, Lcom/miui/player/helper/SongListCache;->RANDOM_CLAUSE:Ljava/util/regex/Pattern;

    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 56
    .local v0, matcher:Ljava/util/regex/Matcher;
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, str:Ljava/lang/String;
    move-object v2, v1

    .line 57
    goto :goto_0
.end method

.method private static registInternel(Landroid/content/Context;Ljava/lang/String;Lcom/miui/player/helper/SongListCache$SongListWaiter;)V
    .locals 5
    .parameter "context"
    .parameter "url"
    .parameter "waiter"

    .prologue
    .line 61
    invoke-static {p1}, Lcom/miui/player/helper/SongListCache;->ignoreRandomClause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    .local v2, urlIgnoreRandom:Ljava/lang/String;
    sget-object v3, Lcom/miui/player/helper/SongListCache;->sUrlToSongListWaiterMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 64
    .local v0, queue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/helper/SongListCache$SongListWaiter;>;"
    if-nez v0, :cond_0

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #queue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/helper/SongListCache$SongListWaiter;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .restart local v0       #queue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/helper/SongListCache$SongListWaiter;>;"
    sget-object v3, Lcom/miui/player/helper/SongListCache;->sUrlToSongListWaiterMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v3, Lcom/miui/player/helper/SongListCache;->sUrlToRequestMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 72
    .local v1, runnable:Ljava/lang/Runnable;
    if-nez v1, :cond_2

    .line 73
    new-instance v1, Lcom/miui/player/helper/SongListCache$SongListLoadRunnable;

    .end local v1           #runnable:Ljava/lang/Runnable;
    invoke-direct {v1, p0, p1}, Lcom/miui/player/helper/SongListCache$SongListLoadRunnable;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 74
    .restart local v1       #runnable:Ljava/lang/Runnable;
    sget-object v3, Lcom/miui/player/helper/SongListCache;->sUrlToRequestMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-class v3, Lcom/miui/player/helper/SongListCache;

    monitor-enter v3

    .line 77
    :try_start_0
    sget-object v4, Lcom/miui/player/helper/SongListCache;->sThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    if-nez v4, :cond_1

    .line 78
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    sput-object v4, Lcom/miui/player/helper/SongListCache;->sThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    .line 80
    :cond_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    sget-object v3, Lcom/miui/player/helper/SongListCache;->sThreadPoolExecutor:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v3, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 84
    :cond_2
    return-void

    .line 80
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method public static registerWaiter(Landroid/content/Context;Lcom/miui/player/helper/SongListCache$SongListWaiter;)Z
    .locals 5
    .parameter "context"
    .parameter "waiter"

    .prologue
    const/4 v4, 0x0

    .line 33
    invoke-interface {p1}, Lcom/miui/player/helper/SongListCache$SongListWaiter;->getUrl()Ljava/lang/String;

    move-result-object v1

    .line 34
    .local v1, url:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v4

    .line 45
    :goto_0
    return v2

    .line 38
    :cond_0
    sget-object v2, Lcom/miui/player/helper/SongListCache;->sUrlToSongListMap:Ljava/util/HashMap;

    invoke-static {v1}, Lcom/miui/player/helper/SongListCache;->ignoreRandomClause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    .line 39
    .local v0, songList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;
    if-eqz v0, :cond_1

    .line 40
    invoke-interface {p1, v0}, Lcom/miui/player/helper/SongListCache$SongListWaiter;->onRequestCompleted(Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;)V

    .line 41
    const/4 v2, 0x1

    goto :goto_0

    .line 44
    :cond_1
    invoke-static {p0, v1, p1}, Lcom/miui/player/helper/SongListCache;->registInternel(Landroid/content/Context;Ljava/lang/String;Lcom/miui/player/helper/SongListCache$SongListWaiter;)V

    move v2, v4

    .line 45
    goto :goto_0
.end method
