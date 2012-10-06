.class public Lentagged/audioformats/mp4/util/Mp4InfoReader;
.super Ljava/lang/Object;
.source "Mp4InfoReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
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
    .line 63
    new-instance v0, Lentagged/audioformats/mp4/util/Mp4InfoReader;

    invoke-direct {v0}, Lentagged/audioformats/mp4/util/Mp4InfoReader;-><init>()V

    new-instance v1, Ljava/io/RandomAccessFile;

    new-instance v2, Ljava/io/File;

    const-string v3, "/home/kikidonk/test.mp4"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lentagged/audioformats/mp4/util/Mp4InfoReader;->read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/EncodingInfo;

    .line 64
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

    .line 52
    new-array v0, v2, [B

    .line 53
    .local v0, b:[B
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 54
    invoke-virtual {p2, v0}, Lentagged/audioformats/mp4/util/Mp4Box;->update([B)V

    .line 55
    :goto_0
    invoke-virtual {p2}, Lentagged/audioformats/mp4/util/Mp4Box;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    invoke-virtual {p2}, Lentagged/audioformats/mp4/util/Mp4Box;->getOffset()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 57
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 58
    invoke-virtual {p2, v0}, Lentagged/audioformats/mp4/util/Mp4Box;->update([B)V

    goto :goto_0

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/EncodingInfo;
    .locals 6
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 30
    new-instance v2, Lentagged/audioformats/EncodingInfo;

    invoke-direct {v2}, Lentagged/audioformats/EncodingInfo;-><init>()V

    .line 32
    .local v2, info:Lentagged/audioformats/EncodingInfo;
    new-instance v1, Lentagged/audioformats/mp4/util/Mp4Box;

    invoke-direct {v1}, Lentagged/audioformats/mp4/util/Mp4Box;-><init>()V

    .line 36
    .local v1, box:Lentagged/audioformats/mp4/util/Mp4Box;
    const-string v4, "moov"

    invoke-direct {p0, p1, v1, v4}, Lentagged/audioformats/mp4/util/Mp4InfoReader;->seek(Ljava/io/RandomAccessFile;Lentagged/audioformats/mp4/util/Mp4Box;Ljava/lang/String;)V

    .line 39
    const-string v4, "mvhd"

    invoke-direct {p0, p1, v1, v4}, Lentagged/audioformats/mp4/util/Mp4InfoReader;->seek(Ljava/io/RandomAccessFile;Lentagged/audioformats/mp4/util/Mp4Box;Ljava/lang/String;)V

    .line 41
    invoke-virtual {v1}, Lentagged/audioformats/mp4/util/Mp4Box;->getOffset()I

    move-result v4

    const/16 v5, 0x8

    sub-int/2addr v4, v5

    new-array v0, v4, [B

    .line 42
    .local v0, b:[B
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 44
    new-instance v3, Lentagged/audioformats/mp4/util/Mp4MvhdBox;

    invoke-direct {v3, v0}, Lentagged/audioformats/mp4/util/Mp4MvhdBox;-><init>([B)V

    .line 45
    .local v3, mvhd:Lentagged/audioformats/mp4/util/Mp4MvhdBox;
    invoke-virtual {v3}, Lentagged/audioformats/mp4/util/Mp4MvhdBox;->getLength()I

    move-result v4

    invoke-virtual {v2, v4}, Lentagged/audioformats/EncodingInfo;->setLength(I)V

    .line 47
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 48
    return-object v2
.end method
