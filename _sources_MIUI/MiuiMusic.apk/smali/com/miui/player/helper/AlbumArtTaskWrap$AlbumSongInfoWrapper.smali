.class public Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;
.super Ljava/lang/Object;
.source "AlbumArtTaskWrap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/AlbumArtTaskWrap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumSongInfoWrapper"
.end annotation


# instance fields
.field public albumName:Ljava/lang/String;

.field public albumid:J

.field public artistName:Ljava/lang/String;

.field public songid:J

.field public trackName:Ljava/lang/String;


# direct methods
.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "aid"
    .parameter "sid"
    .parameter "alName"
    .parameter "arName"
    .parameter "trName"

    .prologue
    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput-wide p1, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->albumid:J

    .line 206
    iput-wide p3, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->songid:J

    .line 207
    iput-object p5, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->albumName:Ljava/lang/String;

    .line 208
    iput-object p6, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->artistName:Ljava/lang/String;

    .line 209
    iput-object p7, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->trackName:Ljava/lang/String;

    .line 210
    return-void
.end method

.method private isEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "str1"
    .parameter "str2"

    .prologue
    .line 230
    const/4 v0, 0x0

    .line 231
    .local v0, ret:Z
    if-eqz p1, :cond_0

    .line 232
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 237
    :goto_0
    return v0

    .line 234
    :cond_0
    if-nez p2, :cond_1

    const/4 v1, 0x1

    move v0, v1

    :goto_1
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .parameter "obj"

    .prologue
    .line 214
    const/4 v2, 0x0

    .line 216
    .local v2, ret:Z
    if-eqz p1, :cond_0

    instance-of v3, p1, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;

    if-eqz v3, :cond_0

    .line 217
    move-object v0, p1

    check-cast v0, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;

    move-object v1, v0

    .line 218
    .local v1, other:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;
    iget-wide v3, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->albumid:J

    iget-wide v5, v1, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->albumid:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    iget-wide v3, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->songid:J

    iget-wide v5, v1, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->songid:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->albumName:Ljava/lang/String;

    iget-object v4, v1, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->albumName:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->artistName:Ljava/lang/String;

    iget-object v4, v1, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->artistName:Ljava/lang/String;

    invoke-direct {p0, v3, v4}, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 222
    const/4 v2, 0x1

    .line 226
    .end local v1           #other:Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;
    :cond_0
    return v2
.end method
