.class public Lentagged/audioformats/asf/util/ChunkPositionComparator;
.super Ljava/lang/Object;
.source "ChunkPositionComparator.java"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 8
    .parameter "o1"
    .parameter "o2"

    .prologue
    .line 40
    const/4 v3, 0x0

    .line 41
    .local v3, result:I
    instance-of v4, p1, Lentagged/audioformats/asf/data/Chunk;

    if-eqz v4, :cond_0

    instance-of v4, p2, Lentagged/audioformats/asf/data/Chunk;

    if-eqz v4, :cond_0

    .line 42
    move-object v0, p1

    check-cast v0, Lentagged/audioformats/asf/data/Chunk;

    move-object v1, v0

    .line 43
    .local v1, c1:Lentagged/audioformats/asf/data/Chunk;
    move-object v0, p2

    check-cast v0, Lentagged/audioformats/asf/data/Chunk;

    move-object v2, v0

    .line 44
    .local v2, c2:Lentagged/audioformats/asf/data/Chunk;
    invoke-virtual {v1}, Lentagged/audioformats/asf/data/Chunk;->getPosition()J

    move-result-wide v4

    invoke-virtual {v2}, Lentagged/audioformats/asf/data/Chunk;->getPosition()J

    move-result-wide v6

    sub-long/2addr v4, v6

    long-to-int v3, v4

    .line 46
    .end local v1           #c1:Lentagged/audioformats/asf/data/Chunk;
    .end local v2           #c2:Lentagged/audioformats/asf/data/Chunk;
    :cond_0
    return v3
.end method
