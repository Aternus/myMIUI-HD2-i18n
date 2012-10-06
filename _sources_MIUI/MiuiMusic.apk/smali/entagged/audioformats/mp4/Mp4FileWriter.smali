.class public Lentagged/audioformats/mp4/Mp4FileWriter;
.super Lentagged/audioformats/generic/AudioFileWriter;
.source "Mp4FileWriter.java"


# instance fields
.field private tw:Lentagged/audioformats/mp4/util/Mp4TagWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lentagged/audioformats/generic/AudioFileWriter;-><init>()V

    .line 31
    new-instance v0, Lentagged/audioformats/mp4/util/Mp4TagWriter;

    invoke-direct {v0}, Lentagged/audioformats/mp4/util/Mp4TagWriter;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/mp4/Mp4FileWriter;->tw:Lentagged/audioformats/mp4/util/Mp4TagWriter;

    return-void
.end method


# virtual methods
.method protected deleteTag(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 1
    .parameter "raf"
    .parameter "rafTemp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    iget-object v0, p0, Lentagged/audioformats/mp4/Mp4FileWriter;->tw:Lentagged/audioformats/mp4/util/Mp4TagWriter;

    invoke-virtual {v0}, Lentagged/audioformats/mp4/util/Mp4TagWriter;->delete()V

    .line 40
    return-void
.end method

.method protected writeTag(Lentagged/audioformats/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 1
    .parameter "tag"
    .parameter "raf"
    .parameter "rafTemp"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotWriteException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lentagged/audioformats/mp4/Mp4FileWriter;->tw:Lentagged/audioformats/mp4/util/Mp4TagWriter;

    invoke-virtual {v0}, Lentagged/audioformats/mp4/util/Mp4TagWriter;->write()V

    .line 36
    return-void
.end method
