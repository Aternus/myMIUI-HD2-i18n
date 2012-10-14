.class Lcom/miui/player/helper/SongListCache$SongListLoadRunnable;
.super Ljava/lang/Object;
.source "SongListCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/SongListCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SongListLoadRunnable"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .parameter "context"
    .parameter "url"

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p2, p0, Lcom/miui/player/helper/SongListCache$SongListLoadRunnable;->mUrl:Ljava/lang/String;

    .line 122
    iput-object p1, p0, Lcom/miui/player/helper/SongListCache$SongListLoadRunnable;->mContext:Landroid/content/Context;

    .line 123
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 127
    iget-object v2, p0, Lcom/miui/player/helper/SongListCache$SongListLoadRunnable;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/player/helper/SongListCache$SongListLoadRunnable;->mUrl:Ljava/lang/String;

    const-string v4, "baidu"

    invoke-static {v2, v3, v4}, Lcom/miui/player/helper/OnlineMusicProxy;->findSongsWithRawUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    move-result-object v1

    .line 130
    .local v1, songList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;
    invoke-static {}, Lcom/miui/player/helper/SongListCache;->access$100()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 131
    .local v0, msg:Landroid/os/Message;
    new-instance v2, Lcom/miui/player/helper/SongListCache$SongListResult;

    iget-object v3, p0, Lcom/miui/player/helper/SongListCache$SongListLoadRunnable;->mUrl:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Lcom/miui/player/helper/SongListCache$SongListResult;-><init>(Ljava/lang/String;Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;)V

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 132
    invoke-static {}, Lcom/miui/player/helper/SongListCache;->access$100()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 133
    return-void
.end method
