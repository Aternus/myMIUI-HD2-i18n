.class public Lentagged/audioformats/mp3/util/Id3v1TagReader;
.super Ljava/lang/Object;
.source "Id3v1TagReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private read(Ljava/io/RandomAccessFile;I)Ljava/lang/String;
    .locals 5
    .parameter "raf"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 80
    new-array v0, p2, [B

    .line 81
    .local v0, b:[B
    invoke-virtual {p1, v0}, Ljava/io/RandomAccessFile;->read([B)I

    .line 82
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 83
    .local v2, ret:Ljava/lang/String;
    const-string v3, "\u0000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 84
    .local v1, i:I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 85
    const/4 v3, 0x0

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 87
    :goto_0
    return-object v3

    :cond_0
    move-object v3, v2

    goto :goto_0
.end method


# virtual methods
.method public read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/mp3/Id3v1Tag;
    .locals 18
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    new-instance v9, Lentagged/audioformats/mp3/Id3v1Tag;

    invoke-direct {v9}, Lentagged/audioformats/mp3/Id3v1Tag;-><init>()V

    .line 31
    .local v9, tag:Lentagged/audioformats/mp3/Id3v1Tag;
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x80

    sub-long v14, v14, v16

    move-object/from16 v0, p1

    move-wide v1, v14

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 33
    const/4 v14, 0x3

    new-array v5, v14, [B

    .line 34
    .local v5, b:[B
    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 35
    const-wide/16 v14, 0x0

    move-object/from16 v0, p1

    move-wide v1, v14

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 36
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v5}, Ljava/lang/String;-><init>([B)V

    .line 37
    .local v10, tagS:Ljava/lang/String;
    const-string v14, "TAG"

    invoke-virtual {v10, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 38
    new-instance v14, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v15, "There is no Id3v1 Tag in this file"

    invoke-direct {v14, v15}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 41
    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x80

    sub-long v14, v14, v16

    const-wide/16 v16, 0x3

    add-long v14, v14, v16

    move-object/from16 v0, p1

    move-wide v1, v14

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 43
    const/16 v14, 0x1e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    invoke-direct {v0, v1, v2}, Lentagged/audioformats/mp3/util/Id3v1TagReader;->read(Ljava/io/RandomAccessFile;I)Ljava/lang/String;

    move-result-object v8

    .line 45
    .local v8, songName:Ljava/lang/String;
    const/16 v14, 0x1e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    invoke-direct {v0, v1, v2}, Lentagged/audioformats/mp3/util/Id3v1TagReader;->read(Ljava/io/RandomAccessFile;I)Ljava/lang/String;

    move-result-object v4

    .line 47
    .local v4, artist:Ljava/lang/String;
    const/16 v14, 0x1e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    invoke-direct {v0, v1, v2}, Lentagged/audioformats/mp3/util/Id3v1TagReader;->read(Ljava/io/RandomAccessFile;I)Ljava/lang/String;

    move-result-object v3

    .line 49
    .local v3, album:Ljava/lang/String;
    const/4 v14, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    invoke-direct {v0, v1, v2}, Lentagged/audioformats/mp3/util/Id3v1TagReader;->read(Ljava/io/RandomAccessFile;I)Ljava/lang/String;

    move-result-object v13

    .line 51
    .local v13, year:Ljava/lang/String;
    const/16 v14, 0x1e

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v14

    invoke-direct {v0, v1, v2}, Lentagged/audioformats/mp3/util/Id3v1TagReader;->read(Ljava/io/RandomAccessFile;I)Ljava/lang/String;

    move-result-object v6

    .line 53
    .local v6, comment:Ljava/lang/String;
    const-string v12, ""

    .line 55
    .local v12, trackNumber:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v14

    const-wide/16 v16, 0x2

    sub-long v14, v14, v16

    move-object/from16 v0, p1

    move-wide v1, v14

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 56
    const/4 v14, 0x2

    new-array v5, v14, [B

    .line 57
    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 59
    const/4 v14, 0x0

    aget-byte v14, v5, v14

    if-nez v14, :cond_1

    .line 60
    new-instance v11, Ljava/lang/Integer;

    const/4 v14, 0x1

    aget-byte v14, v5, v14

    invoke-direct {v11, v14}, Ljava/lang/Integer;-><init>(I)V

    .line 61
    .local v11, track:Ljava/lang/Integer;
    invoke-virtual {v11}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v12

    .line 64
    .end local v11           #track:Ljava/lang/Integer;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v7

    .line 65
    .local v7, genreByte:B
    const-wide/16 v14, 0x0

    move-object/from16 v0, p1

    move-wide v1, v14

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 67
    invoke-virtual {v9, v8}, Lentagged/audioformats/mp3/Id3v1Tag;->setTitle(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v9, v4}, Lentagged/audioformats/mp3/Id3v1Tag;->setArtist(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v9, v3}, Lentagged/audioformats/mp3/Id3v1Tag;->setAlbum(Ljava/lang/String;)V

    .line 70
    invoke-virtual {v9, v13}, Lentagged/audioformats/mp3/Id3v1Tag;->setYear(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v9, v6}, Lentagged/audioformats/mp3/Id3v1Tag;->setComment(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v9, v12}, Lentagged/audioformats/mp3/Id3v1Tag;->setTrack(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v9, v7}, Lentagged/audioformats/mp3/Id3v1Tag;->translateGenre(B)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Lentagged/audioformats/mp3/Id3v1Tag;->setGenre(Ljava/lang/String;)V

    .line 76
    return-object v9
.end method
