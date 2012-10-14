.class Lcom/miui/player/helper/SongListCache$SongListLoadHandler;
.super Landroid/os/Handler;
.source "SongListCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/SongListCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SongListLoadHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/helper/SongListCache$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 147
    invoke-direct {p0}, Lcom/miui/player/helper/SongListCache$SongListLoadHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 150
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 151
    const/4 v0, 0x0

    .line 153
    .local v0, result:Lcom/miui/player/helper/SongListCache$SongListResult;
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 154
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #result:Lcom/miui/player/helper/SongListCache$SongListResult;
    check-cast v0, Lcom/miui/player/helper/SongListCache$SongListResult;

    .line 157
    .restart local v0       #result:Lcom/miui/player/helper/SongListCache$SongListResult;
    :cond_0
    iget-object v1, v0, Lcom/miui/player/helper/SongListCache$SongListResult;->url:Ljava/lang/String;

    iget-object v2, v0, Lcom/miui/player/helper/SongListCache$SongListResult;->songList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    #calls: Lcom/miui/player/helper/SongListCache;->handleLoadResult(Ljava/lang/String;Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;)V
    invoke-static {v1, v2}, Lcom/miui/player/helper/SongListCache;->access$200(Ljava/lang/String;Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;)V

    .line 159
    .end local v0           #result:Lcom/miui/player/helper/SongListCache$SongListResult;
    :cond_1
    return-void
.end method
