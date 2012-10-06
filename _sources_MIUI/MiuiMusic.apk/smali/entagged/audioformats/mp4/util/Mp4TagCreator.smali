.class public Lentagged/audioformats/mp4/util/Mp4TagCreator;
.super Lentagged/audioformats/generic/AbstractTagCreator;
.source "Mp4TagCreator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lentagged/audioformats/generic/AbstractTagCreator;-><init>()V

    return-void
.end method


# virtual methods
.method protected create(Lentagged/audioformats/Tag;Ljava/nio/ByteBuffer;Ljava/util/List;II)V
    .locals 2
    .parameter "tag"
    .parameter "buf"
    .parameter "fields"
    .parameter "tagSize"
    .parameter "padding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getCompatibleTag(Lentagged/audioformats/Tag;)Lentagged/audioformats/Tag;
    .locals 2
    .parameter "tag"

    .prologue
    .line 35
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getFixedTagLength(Lentagged/audioformats/Tag;)I
    .locals 2
    .parameter "tag"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
