.class public Lentagged/audioformats/mp4/util/Mp4Box;
.super Ljava/lang/Object;
.source "Mp4Box.java"


# instance fields
.field private id:Ljava/lang/String;

.field private offset:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lentagged/audioformats/mp4/util/Mp4Box;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lentagged/audioformats/mp4/util/Mp4Box;->offset:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Box "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lentagged/audioformats/mp4/util/Mp4Box;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lentagged/audioformats/mp4/util/Mp4Box;->offset:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update([B)V
    .locals 3
    .parameter "b"

    .prologue
    const/4 v2, 0x4

    .line 29
    const/4 v0, 0x0

    const/4 v1, 0x3

    invoke-static {p1, v0, v1}, Lentagged/audioformats/generic/Utils;->getNumberBigEndian([BII)I

    move-result v0

    iput v0, p0, Lentagged/audioformats/mp4/util/Mp4Box;->offset:I

    .line 31
    invoke-static {p1, v2, v2}, Lentagged/audioformats/generic/Utils;->getString([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/mp4/util/Mp4Box;->id:Ljava/lang/String;

    .line 32
    return-void
.end method
