.class public Lcom/miui/player/helper/LyricParser$Lyric;
.super Ljava/lang/Object;
.source "LyricParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/LyricParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lyric"
.end annotation


# instance fields
.field private final EMPTY_AFTER:Lcom/miui/player/helper/LyricParser$LyricEntity;

.field private final EMPTY_BEFORE:Lcom/miui/player/helper/LyricParser$LyricEntity;

.field private final mEntityList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/player/helper/LyricParser$LyricEntity;",
            ">;"
        }
    .end annotation
.end field

.field private final mFileAbsolutePath:Ljava/lang/String;

.field private final mHeader:Lcom/miui/player/helper/LyricParser$LyricHeader;

.field private mIsModified:Z

.field private final mOpenTime:J

.field private mOriginHeaderOffset:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/miui/player/helper/LyricParser$LyricHeader;Ljava/util/ArrayList;Z)V
    .locals 4
    .parameter "filePath"
    .parameter "header"
    .parameter
    .parameter "isModified"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/miui/player/helper/LyricParser$LyricHeader;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/player/helper/LyricParser$LyricEntity;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p3, entityList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/helper/LyricParser$LyricEntity;>;"
    const-string v3, "\n"

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mOpenTime:J

    .line 119
    iput-object p1, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mFileAbsolutePath:Ljava/lang/String;

    .line 120
    iput-object p2, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mHeader:Lcom/miui/player/helper/LyricParser$LyricHeader;

    .line 121
    iget-object v0, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mHeader:Lcom/miui/player/helper/LyricParser$LyricHeader;

    iget v0, v0, Lcom/miui/player/helper/LyricParser$LyricHeader;->offset:I

    iput v0, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mOriginHeaderOffset:I

    .line 122
    iput-object p3, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 123
    iput-boolean p4, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mIsModified:Z

    .line 124
    new-instance v0, Lcom/miui/player/helper/LyricParser$LyricEntity;

    const/4 v1, -0x1

    const-string v2, "\n"

    invoke-direct {v0, v1, v3}, Lcom/miui/player/helper/LyricParser$LyricEntity;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/miui/player/helper/LyricParser$Lyric;->EMPTY_BEFORE:Lcom/miui/player/helper/LyricParser$LyricEntity;

    .line 125
    new-instance v0, Lcom/miui/player/helper/LyricParser$LyricEntity;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-string v2, "\n"

    invoke-direct {v0, v1, v3}, Lcom/miui/player/helper/LyricParser$LyricEntity;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/miui/player/helper/LyricParser$Lyric;->EMPTY_AFTER:Lcom/miui/player/helper/LyricParser$LyricEntity;

    .line 126
    return-void
.end method

.method private getTimeFromLyricShot(ID)J
    .locals 8
    .parameter "line"
    .parameter "percent"

    .prologue
    .line 227
    const-wide/16 v1, 0x0

    .line 228
    .local v1, time:J
    invoke-virtual {p0}, Lcom/miui/player/helper/LyricParser$Lyric;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v0, v3, v4

    .line 229
    .local v0, maxLine:I
    if-lt p1, v0, :cond_0

    .line 230
    iget-object v3, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/player/helper/LyricParser$LyricEntity;

    iget v3, p0, Lcom/miui/player/helper/LyricParser$LyricEntity;->time:I

    int-to-long v1, v3

    .line 235
    :goto_0
    return-wide v1

    .line 232
    .restart local p0
    :cond_0
    iget-object v3, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/player/helper/LyricParser$LyricEntity;

    iget v3, v3, Lcom/miui/player/helper/LyricParser$LyricEntity;->time:I

    int-to-double v4, v3

    iget-object v3, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/player/helper/LyricParser$LyricEntity;

    iget v3, v3, Lcom/miui/player/helper/LyricParser$LyricEntity;->time:I

    iget-object v6, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/player/helper/LyricParser$LyricEntity;

    iget v6, p0, Lcom/miui/player/helper/LyricParser$LyricEntity;->time:I

    sub-int/2addr v3, v6

    int-to-double v6, v3

    mul-double/2addr v6, p2

    add-double v3, v4, v6

    double-to-long v1, v3

    goto :goto_0
.end method

.method private writeHeaderElement(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "fw"
    .parameter "tag"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 174
    const-string v0, "[%s:%s]"

    .line 175
    .local v0, pattern:Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 176
    :goto_0
    const-string v1, "[%s:%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 178
    return-void

    .line 175
    :cond_0
    const-string v1, ""

    move-object p3, v1

    goto :goto_0
.end method


# virtual methods
.method public addOffset(I)V
    .locals 2
    .parameter "offset"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mHeader:Lcom/miui/player/helper/LyricParser$LyricHeader;

    iget v1, v0, Lcom/miui/player/helper/LyricParser$LyricHeader;->offset:I

    add-int/2addr v1, p1

    iput v1, v0, Lcom/miui/player/helper/LyricParser$LyricHeader;->offset:I

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mIsModified:Z

    .line 131
    return-void
.end method

.method public correctLyric(Lcom/miui/player/helper/LyricParser$LyricShot;ID)V
    .locals 11
    .parameter "lyricShot"
    .parameter "lineIndex"
    .parameter "percent"

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/miui/player/helper/LyricParser$Lyric;->size()I

    move-result v8

    const/4 v9, 0x1

    sub-int v3, v8, v9

    .line 240
    .local v3, maxLine:I
    if-lez p2, :cond_0

    if-ge p2, v3, :cond_0

    iget v8, p1, Lcom/miui/player/helper/LyricParser$LyricShot;->lineIndex:I

    if-lez v8, :cond_0

    iget v8, p1, Lcom/miui/player/helper/LyricParser$LyricShot;->lineIndex:I

    if-lt v8, v3, :cond_1

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    iget v8, p1, Lcom/miui/player/helper/LyricParser$LyricShot;->lineIndex:I

    iget-wide v9, p1, Lcom/miui/player/helper/LyricParser$LyricShot;->percent:D

    invoke-direct {p0, v8, v9, v10}, Lcom/miui/player/helper/LyricParser$Lyric;->getTimeFromLyricShot(ID)J

    move-result-wide v0

    .line 246
    .local v0, currentTime:J
    invoke-direct {p0, p2, p3, p4}, Lcom/miui/player/helper/LyricParser$Lyric;->getTimeFromLyricShot(ID)J

    move-result-wide v4

    .line 247
    .local v4, newTime:J
    const/4 v2, 0x1

    .line 248
    .local v2, isOffsetDelay:Z
    iget v8, p1, Lcom/miui/player/helper/LyricParser$LyricShot;->lineIndex:I

    if-gt p2, v8, :cond_2

    iget v8, p1, Lcom/miui/player/helper/LyricParser$LyricShot;->lineIndex:I

    if-ne p2, v8, :cond_3

    iget-wide v8, p1, Lcom/miui/player/helper/LyricParser$LyricShot;->percent:D

    cmpl-double v8, p3, v8

    if-lez v8, :cond_3

    .line 250
    :cond_2
    const/4 v2, 0x0

    .line 252
    :cond_3
    if-nez v2, :cond_4

    cmp-long v8, v0, v4

    if-gtz v8, :cond_0

    .line 255
    :cond_4
    if-eqz v2, :cond_5

    cmp-long v8, v0, v4

    if-ltz v8, :cond_0

    .line 259
    :cond_5
    sub-long v6, v0, v4

    .line 260
    .local v6, offset:J
    long-to-int v8, v6

    invoke-virtual {p0, v8}, Lcom/miui/player/helper/LyricParser$Lyric;->addOffset(I)V

    goto :goto_0
.end method

.method public decorate()V
    .locals 5

    .prologue
    .line 316
    iget-object v4, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 330
    .end local p0
    :cond_0
    return-void

    .line 319
    .restart local p0
    :cond_1
    iget-object v0, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    .line 321
    .local v0, el:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/helper/LyricParser$LyricEntity;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 322
    .local v3, len:I
    if-lez v3, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/player/helper/LyricParser$LyricEntity;

    invoke-virtual {p0}, Lcom/miui/player/helper/LyricParser$LyricEntity;->isDecorated()Z

    move-result v4

    if-nez v4, :cond_0

    .line 326
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 327
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/player/helper/LyricParser$LyricEntity;

    .line 328
    .local v1, entity:Lcom/miui/player/helper/LyricParser$LyricEntity;
    invoke-virtual {v1}, Lcom/miui/player/helper/LyricParser$LyricEntity;->decorate()V

    .line 326
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mFileAbsolutePath:Ljava/lang/String;

    return-object v0
.end method

.method public getLyricContent(I)Lcom/miui/player/helper/LyricParser$LyricEntity;
    .locals 2
    .parameter "index"

    .prologue
    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, entity:Lcom/miui/player/helper/LyricParser$LyricEntity;
    if-gez p1, :cond_0

    .line 266
    iget-object v0, p0, Lcom/miui/player/helper/LyricParser$Lyric;->EMPTY_BEFORE:Lcom/miui/player/helper/LyricParser$LyricEntity;

    .line 273
    :goto_0
    return-object v0

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 268
    iget-object v0, p0, Lcom/miui/player/helper/LyricParser$Lyric;->EMPTY_AFTER:Lcom/miui/player/helper/LyricParser$LyricEntity;

    goto :goto_0

    .line 270
    :cond_1
    iget-object v1, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #entity:Lcom/miui/player/helper/LyricParser$LyricEntity;
    check-cast v0, Lcom/miui/player/helper/LyricParser$LyricEntity;

    .restart local v0       #entity:Lcom/miui/player/helper/LyricParser$LyricEntity;
    goto :goto_0
.end method

.method public getLyricShot(J)Lcom/miui/player/helper/LyricParser$LyricShot;
    .locals 12
    .parameter "time"

    .prologue
    .line 200
    iget-object v8, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mHeader:Lcom/miui/player/helper/LyricParser$LyricHeader;

    iget v1, v8, Lcom/miui/player/helper/LyricParser$LyricHeader;->offset:I

    .line 202
    .local v1, offset:I
    iget-object v8, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/helper/LyricParser$LyricEntity;

    iget v8, v0, Lcom/miui/player/helper/LyricParser$LyricEntity;->time:I

    add-int/2addr v8, v1

    int-to-long v8, v8

    cmp-long v8, v8, p1

    if-lez v8, :cond_0

    .line 203
    new-instance v8, Lcom/miui/player/helper/LyricParser$LyricShot;

    const/4 v9, -0x1

    const-wide/16 v10, 0x0

    invoke-direct {v8, v9, v10, v11}, Lcom/miui/player/helper/LyricParser$LyricShot;-><init>(ID)V

    .line 223
    .end local p0
    :goto_0
    return-object v8

    .line 206
    .restart local p0
    :cond_0
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    iget-object v8, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_3

    .line 207
    iget-object v8, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/player/helper/LyricParser$LyricEntity;

    iget v8, v2, Lcom/miui/player/helper/LyricParser$LyricEntity;->time:I

    add-int v7, v8, v1

    .line 208
    .local v7, timeThis:I
    int-to-long v8, v7

    cmp-long v8, v8, p1

    if-lez v8, :cond_2

    .line 209
    iget-object v8, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    const/4 v9, 0x1

    sub-int v9, v0, v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/miui/player/helper/LyricParser$LyricEntity;

    iget v8, p0, Lcom/miui/player/helper/LyricParser$LyricEntity;->time:I

    add-int v6, v8, v1

    .line 210
    .local v6, timePrev:I
    const-wide/16 v2, 0x0

    .line 211
    .local v2, percent:D
    if-le v7, v6, :cond_1

    .line 212
    int-to-long v8, v6

    sub-long v8, p1, v8

    long-to-double v8, v8

    sub-int v10, v7, v6

    int-to-double v10, v10

    div-double v2, v8, v10

    .line 214
    :cond_1
    new-instance v8, Lcom/miui/player/helper/LyricParser$LyricShot;

    const/4 v9, 0x1

    sub-int v9, v0, v9

    invoke-direct {v8, v9, v2, v3}, Lcom/miui/player/helper/LyricParser$LyricShot;-><init>(ID)V

    goto :goto_0

    .line 206
    .end local v2           #percent:D
    .end local v6           #timePrev:I
    .restart local p0
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 217
    .end local v7           #timeThis:I
    :cond_3
    iget-object v8, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/miui/player/helper/LyricParser$Lyric;->size()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #i:I
    check-cast v0, Lcom/miui/player/helper/LyricParser$LyricEntity;

    iget v8, v0, Lcom/miui/player/helper/LyricParser$LyricEntity;->time:I

    int-to-long v4, v8

    .line 218
    .local v4, timeLast:J
    sub-long v8, p1, v4

    const-wide/16 v10, 0x1f40

    cmp-long v8, v8, v10

    if-gez v8, :cond_4

    .line 219
    sub-long v8, p1, v4

    long-to-double v8, v8

    const-wide v10, 0x40bf400000000000L

    div-double v2, v8, v10

    .line 220
    .restart local v2       #percent:D
    new-instance v8, Lcom/miui/player/helper/LyricParser$LyricShot;

    invoke-virtual {p0}, Lcom/miui/player/helper/LyricParser$Lyric;->size()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    invoke-direct {v8, v9, v2, v3}, Lcom/miui/player/helper/LyricParser$LyricShot;-><init>(ID)V

    goto :goto_0

    .line 223
    .end local v2           #percent:D
    :cond_4
    new-instance v8, Lcom/miui/player/helper/LyricParser$LyricShot;

    iget-object v9, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const-wide/16 v10, 0x0

    invoke-direct {v8, v9, v10, v11}, Lcom/miui/player/helper/LyricParser$LyricShot;-><init>(ID)V

    goto :goto_0
.end method

.method public getOpenTime()J
    .locals 2

    .prologue
    .line 282
    iget-wide v0, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mOpenTime:J

    return-wide v0
.end method

.method public getStringArr()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 286
    iget-object v4, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 287
    const/4 v4, 0x0

    .line 296
    :goto_0
    return-object v4

    .line 289
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 292
    .local v2, lyricArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v4, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/player/helper/LyricParser$LyricEntity;

    .line 293
    .local v3, lyricEntity:Lcom/miui/player/helper/LyricParser$LyricEntity;
    iget-object v1, v3, Lcom/miui/player/helper/LyricParser$LyricEntity;->lyric:Ljava/lang/CharSequence;

    .line 294
    .local v1, lyric:Ljava/lang/CharSequence;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .end local v1           #lyric:Ljava/lang/CharSequence;
    .end local v3           #lyricEntity:Lcom/miui/player/helper/LyricParser$LyricEntity;
    :cond_1
    move-object v4, v2

    .line 296
    goto :goto_0
.end method

.method public getTimeArr()[I
    .locals 7

    .prologue
    .line 300
    iget-object v5, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 301
    const/4 v5, 0x0

    .line 308
    :goto_0
    return-object v5

    .line 303
    :cond_0
    iget-object v5, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v4, v5, [I

    .line 304
    .local v4, timeArr:[I
    const/4 v0, 0x0

    .line 305
    .local v0, i:I
    iget-object v5, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/player/helper/LyricParser$LyricEntity;

    .line 306
    .local v3, lyricEntity:Lcom/miui/player/helper/LyricParser$LyricEntity;
    add-int/lit8 v1, v0, 0x1

    .end local v0           #i:I
    .local v1, i:I
    iget v5, v3, Lcom/miui/player/helper/LyricParser$LyricEntity;->time:I

    iget-object v6, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mHeader:Lcom/miui/player/helper/LyricParser$LyricHeader;

    iget v6, v6, Lcom/miui/player/helper/LyricParser$LyricHeader;->offset:I

    add-int/2addr v5, v6

    aput v5, v4, v0

    move v0, v1

    .end local v1           #i:I
    .restart local v0       #i:I
    goto :goto_1

    .end local v3           #lyricEntity:Lcom/miui/player/helper/LyricParser$LyricEntity;
    :cond_1
    move-object v5, v4

    .line 308
    goto :goto_0
.end method

.method public isModified()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mIsModified:Z

    return v0
.end method

.method public recyleContent()V
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 313
    return-void
.end method

.method public resetHeaderOffset()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mHeader:Lcom/miui/player/helper/LyricParser$LyricHeader;

    iget v1, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mOriginHeaderOffset:I

    iput v1, v0, Lcom/miui/player/helper/LyricParser$LyricHeader;->offset:I

    .line 135
    return-void
.end method

.method public save()Z
    .locals 7

    .prologue
    .line 146
    const/4 v4, 0x0

    .line 148
    .local v4, isSuccess:Z
    :try_start_0
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    iget-object v6, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mFileAbsolutePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 149
    .local v2, fw:Ljava/io/BufferedWriter;
    const-string v5, "ti"

    iget-object v6, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mHeader:Lcom/miui/player/helper/LyricParser$LyricHeader;

    iget-object v6, v6, Lcom/miui/player/helper/LyricParser$LyricHeader;->title:Ljava/lang/String;

    invoke-direct {p0, v2, v5, v6}, Lcom/miui/player/helper/LyricParser$Lyric;->writeHeaderElement(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v5, "ar"

    iget-object v6, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mHeader:Lcom/miui/player/helper/LyricParser$LyricHeader;

    iget-object v6, v6, Lcom/miui/player/helper/LyricParser$LyricHeader;->artist:Ljava/lang/String;

    invoke-direct {p0, v2, v5, v6}, Lcom/miui/player/helper/LyricParser$Lyric;->writeHeaderElement(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v5, "al"

    iget-object v6, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mHeader:Lcom/miui/player/helper/LyricParser$LyricHeader;

    iget-object v6, v6, Lcom/miui/player/helper/LyricParser$LyricHeader;->album:Ljava/lang/String;

    invoke-direct {p0, v2, v5, v6}, Lcom/miui/player/helper/LyricParser$Lyric;->writeHeaderElement(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v5, "by"

    iget-object v6, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mHeader:Lcom/miui/player/helper/LyricParser$LyricHeader;

    iget-object v6, v6, Lcom/miui/player/helper/LyricParser$LyricHeader;->editor:Ljava/lang/String;

    invoke-direct {p0, v2, v5, v6}, Lcom/miui/player/helper/LyricParser$Lyric;->writeHeaderElement(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v5, "ve"

    iget-object v6, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mHeader:Lcom/miui/player/helper/LyricParser$LyricHeader;

    iget-object v6, v6, Lcom/miui/player/helper/LyricParser$LyricHeader;->version:Ljava/lang/String;

    invoke-direct {p0, v2, v5, v6}, Lcom/miui/player/helper/LyricParser$Lyric;->writeHeaderElement(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v5, "offset"

    iget-object v6, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mHeader:Lcom/miui/player/helper/LyricParser$LyricHeader;

    iget v6, v6, Lcom/miui/player/helper/LyricParser$LyricHeader;->offset:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v2, v5, v6}, Lcom/miui/player/helper/LyricParser$Lyric;->writeHeaderElement(Ljava/io/BufferedWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v5, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/player/helper/LyricParser$LyricEntity;

    .line 157
    .local v1, entity:Lcom/miui/player/helper/LyricParser$LyricEntity;
    invoke-virtual {p0, v2, v1}, Lcom/miui/player/helper/LyricParser$Lyric;->writeEntityElement(Ljava/io/BufferedWriter;Lcom/miui/player/helper/LyricParser$LyricEntity;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    .end local v1           #entity:Lcom/miui/player/helper/LyricParser$LyricEntity;
    .end local v2           #fw:Ljava/io/BufferedWriter;
    .end local v3           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 166
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 169
    .end local v0           #e:Ljava/io/IOException;
    :goto_1
    return v4

    .line 160
    .restart local v2       #fw:Ljava/io/BufferedWriter;
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 161
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 163
    const/4 v4, 0x1

    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/miui/player/helper/LyricParser$Lyric;->mEntityList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public writeEntityElement(Ljava/io/BufferedWriter;Lcom/miui/player/helper/LyricParser$LyricEntity;)V
    .locals 11
    .parameter "fw"
    .parameter "entity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    const-string v3, "[%02d:%02d.%02d]%s"

    .line 182
    .local v3, patternNoHour:Ljava/lang/String;
    const-string v4, "[%02d:%02d:%02d.%02d]%s"

    .line 183
    .local v4, patternWithHour:Ljava/lang/String;
    iget v7, p2, Lcom/miui/player/helper/LyricParser$LyricEntity;->time:I

    div-int/lit16 v5, v7, 0x3e8

    .line 184
    .local v5, s:I
    div-int/lit16 v1, v5, 0xe10

    .line 185
    .local v1, hour:I
    rem-int/lit16 v7, v5, 0xe10

    div-int/lit8 v2, v7, 0x3c

    .line 186
    .local v2, minute:I
    rem-int/lit8 v6, v5, 0x3c

    .line 187
    .local v6, second:I
    iget v7, p2, Lcom/miui/player/helper/LyricParser$LyricEntity;->time:I

    rem-int/lit16 v0, v7, 0x3e8

    .line 189
    .local v0, delta:I
    if-lez v1, :cond_0

    .line 190
    const-string v7, "[%02d:%02d:%02d.%02d]%s"

    const/4 v8, 0x5

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x4

    iget-object v10, p2, Lcom/miui/player/helper/LyricParser$LyricEntity;->lyric:Ljava/lang/CharSequence;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 195
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 196
    return-void

    .line 192
    :cond_0
    const-string v7, "[%02d:%02d.%02d]%s"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x3

    iget-object v10, p2, Lcom/miui/player/helper/LyricParser$LyricEntity;->lyric:Ljava/lang/CharSequence;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method
