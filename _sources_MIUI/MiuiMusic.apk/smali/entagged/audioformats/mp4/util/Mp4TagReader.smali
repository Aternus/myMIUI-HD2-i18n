.class public Lentagged/audioformats/mp4/util/Mp4TagReader;
.super Ljava/lang/Object;
.source "Mp4TagReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createMp4Field(Ljava/lang/String;[B)Lentagged/audioformats/mp4/util/Mp4TagField;
    .locals 1
    .parameter "id"
    .parameter "raw"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 85
    const-string v0, "trkn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "tmpo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    :cond_0
    new-instance v0, Lentagged/audioformats/mp4/util/Mp4TagTextNumberField;

    invoke-direct {v0, p1, p2}, Lentagged/audioformats/mp4/util/Mp4TagTextNumberField;-><init>(Ljava/lang/String;[B)V

    .line 101
    :goto_0
    return-object v0

    .line 88
    :cond_1
    const-string v0, "\u00a9ART"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\u00a9alb"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\u00a9nam"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\u00a9day"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\u00a9cmt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\u00a9gen"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\u00a9too"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "\u00a9wrt"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 96
    :cond_2
    new-instance v0, Lentagged/audioformats/mp4/util/Mp4TagTextField;

    invoke-direct {v0, p1, p2}, Lentagged/audioformats/mp4/util/Mp4TagTextField;-><init>(Ljava/lang/String;[B)V

    goto :goto_0

    .line 98
    :cond_3
    const-string v0, "covr"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 99
    new-instance v0, Lentagged/audioformats/mp4/util/Mp4TagCoverField;

    invoke-direct {v0, p2}, Lentagged/audioformats/mp4/util/Mp4TagCoverField;-><init>([B)V

    goto :goto_0

    .line 101
    :cond_4
    new-instance v0, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;

    invoke-direct {v0, p1, p2}, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;-><init>(Ljava/lang/String;[B)V

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .parameter "args"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 116
    new-instance v0, Lentagged/audioformats/mp4/util/Mp4TagReader;

    invoke-direct {v0}, Lentagged/audioformats/mp4/util/Mp4TagReader;-><init>()V

    new-instance v1, Ljava/io/RandomAccessFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "/home/kikidonk/test.mp4"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lentagged/audioformats/mp4/util/Mp4TagReader;->read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/mp4/Mp4Tag;

    .line 117
    return-void
.end method

.method private seek(Ljava/io/RandomAccessFile;Lentagged/audioformats/mp4/util/Mp4Box;Ljava/lang/String;)V
    .locals 3
    .parameter "raf"
    .parameter "box"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x8

    .line 105
    new-array v0, v2, [B

    .line 106
    .local v0, b:[B
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 107
    invoke-virtual {p2, v0}, Lentagged/audioformats/mp4/util/Mp4Box;->update([B)V

    .line 108
    :goto_0
    invoke-virtual {p2}, Lentagged/audioformats/mp4/util/Mp4Box;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    invoke-virtual {p2}, Lentagged/audioformats/mp4/util/Mp4Box;->getOffset()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 110
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 111
    invoke-virtual {p2, v0}, Lentagged/audioformats/mp4/util/Mp4Box;->update([B)V

    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method


# virtual methods
.method public read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/mp4/Mp4Tag;
    .locals 8
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x8

    .line 42
    new-instance v5, Lentagged/audioformats/mp4/Mp4Tag;

    invoke-direct {v5}, Lentagged/audioformats/mp4/Mp4Tag;-><init>()V

    .line 44
    .local v5, tag:Lentagged/audioformats/mp4/Mp4Tag;
    new-instance v1, Lentagged/audioformats/mp4/util/Mp4Box;

    invoke-direct {v1}, Lentagged/audioformats/mp4/util/Mp4Box;-><init>()V

    .line 45
    .local v1, box:Lentagged/audioformats/mp4/util/Mp4Box;
    const/4 v6, 0x4

    new-array v0, v6, [B

    .line 49
    .local v0, b:[B
    const-string v6, "moov"

    invoke-direct {p0, p1, v1, v6}, Lentagged/audioformats/mp4/util/Mp4TagReader;->seek(Ljava/io/RandomAccessFile;Lentagged/audioformats/mp4/util/Mp4Box;Ljava/lang/String;)V

    .line 52
    const-string v6, "udta"

    invoke-direct {p0, p1, v1, v6}, Lentagged/audioformats/mp4/util/Mp4TagReader;->seek(Ljava/io/RandomAccessFile;Lentagged/audioformats/mp4/util/Mp4Box;Ljava/lang/String;)V

    .line 55
    const-string v6, "meta"

    invoke-direct {p0, p1, v1, v6}, Lentagged/audioformats/mp4/util/Mp4TagReader;->seek(Ljava/io/RandomAccessFile;Lentagged/audioformats/mp4/util/Mp4Box;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 59
    const/4 v6, 0x0

    aget-byte v6, v0, v6

    if-eqz v6, :cond_0

    .line 60
    new-instance v6, Lentagged/audioformats/exceptions/CannotReadException;

    invoke-direct {v6}, Lentagged/audioformats/exceptions/CannotReadException;-><init>()V

    throw v6

    .line 63
    :cond_0
    const-string v6, "ilst"

    invoke-direct {p0, p1, v1, v6}, Lentagged/audioformats/mp4/util/Mp4TagReader;->seek(Ljava/io/RandomAccessFile;Lentagged/audioformats/mp4/util/Mp4Box;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1}, Lentagged/audioformats/mp4/util/Mp4Box;->getOffset()I

    move-result v6

    sub-int v3, v6, v7

    .line 66
    .local v3, length:I
    const/4 v4, 0x0

    .line 67
    .local v4, read:I
    :goto_0
    if-ge v4, v3, :cond_1

    .line 68
    new-array v0, v7, [B

    .line 69
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 70
    invoke-virtual {v1, v0}, Lentagged/audioformats/mp4/util/Mp4Box;->update([B)V

    .line 72
    invoke-virtual {v1}, Lentagged/audioformats/mp4/util/Mp4Box;->getOffset()I

    move-result v6

    sub-int v2, v6, v7

    .line 73
    .local v2, fieldLength:I
    new-array v0, v2, [B

    .line 74
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 76
    invoke-virtual {v1}, Lentagged/audioformats/mp4/util/Mp4Box;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v0}, Lentagged/audioformats/mp4/util/Mp4TagReader;->createMp4Field(Ljava/lang/String;[B)Lentagged/audioformats/mp4/util/Mp4TagField;

    move-result-object v6

    invoke-virtual {v5, v6}, Lentagged/audioformats/mp4/Mp4Tag;->add(Lentagged/audioformats/generic/TagField;)V

    .line 77
    add-int/lit8 v6, v2, 0x8

    add-int/2addr v4, v6

    .line 78
    goto :goto_0

    .line 80
    .end local v2           #fieldLength:I
    :cond_1
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 81
    return-object v5
.end method
