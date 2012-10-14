.class Lcom/miui/player/helper/SongListCache$SongListResult;
.super Ljava/lang/Object;
.source "SongListCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/SongListCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SongListResult"
.end annotation


# instance fields
.field public final songList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;)V
    .locals 0
    .parameter "urlA"
    .parameter "songListA"

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p2, p0, Lcom/miui/player/helper/SongListCache$SongListResult;->songList:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList;

    .line 143
    iput-object p1, p0, Lcom/miui/player/helper/SongListCache$SongListResult;->url:Ljava/lang/String;

    .line 144
    return-void
.end method
