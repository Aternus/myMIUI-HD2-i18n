.class public Lentagged/audioformats/ogg/util/OggInfoReader;
.super Ljava/lang/Object;
.source "OggInfoReader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private computeBitrate(IJ)I
    .locals 4
    .parameter "length"
    .parameter "size"

    .prologue
    .line 119
    const-wide/16 v0, 0x3e8

    div-long v0, p2, v0

    const-wide/16 v2, 0x8

    mul-long/2addr v0, v2

    int-to-long v2, p1

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/EncodingInfo;
    .locals 19
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotReadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    new-instance v7, Lentagged/audioformats/EncodingInfo;

    invoke-direct {v7}, Lentagged/audioformats/EncodingInfo;-><init>()V

    .line 31
    .local v7, info:Lentagged/audioformats/EncodingInfo;
    const-wide/16 v9, 0x0

    .line 34
    .local v9, oldPos:J
    const-wide/16 v15, 0x0

    move-object/from16 v0, p1

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 35
    const-wide/high16 v4, -0x4010

    .line 36
    .local v4, PCMSamplesNumber:D
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v15

    const-wide/16 v17, 0x2

    sub-long v15, v15, v17

    move-object/from16 v0, p1

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 37
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v15

    const-wide/16 v17, 0x4

    cmp-long v15, v15, v17

    if-ltz v15, :cond_0

    .line 38
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->read()I

    move-result v15

    const/16 v16, 0x53

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_1

    .line 39
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v15

    const-wide/16 v17, 0x4

    sub-long v15, v15, v17

    move-object/from16 v0, p1

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 40
    const/4 v15, 0x3

    new-array v8, v15, [B

    .line 41
    .local v8, ogg:[B
    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 42
    const/4 v15, 0x0

    aget-byte v15, v8, v15

    const/16 v16, 0x4f

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_1

    const/4 v15, 0x1

    aget-byte v15, v8, v15

    const/16 v16, 0x67

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_1

    const/4 v15, 0x2

    aget-byte v15, v8, v15

    const/16 v16, 0x67

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_1

    .line 43
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v15

    const-wide/16 v17, 0x3

    sub-long v15, v15, v17

    move-object/from16 v0, p1

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 45
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v9

    .line 46
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v15

    const-wide/16 v17, 0x1a

    add-long v15, v15, v17

    move-object/from16 v0, p1

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 47
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->readByte()B

    move-result v15

    and-int/lit16 v12, v15, 0xff

    .line 48
    .local v12, pageSegments:I
    move-object/from16 v0, p1

    move-wide v1, v9

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 50
    add-int/lit8 v15, v12, 0x1b

    new-array v6, v15, [B

    .line 51
    .local v6, b:[B
    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 53
    new-instance v11, Lentagged/audioformats/ogg/util/OggPageHeader;

    invoke-direct {v11, v6}, Lentagged/audioformats/ogg/util/OggPageHeader;-><init>([B)V

    .line 54
    .local v11, pageHeader:Lentagged/audioformats/ogg/util/OggPageHeader;
    const-wide/16 v15, 0x0

    move-object/from16 v0, p1

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 55
    invoke-virtual {v11}, Lentagged/audioformats/ogg/util/OggPageHeader;->getAbsoluteGranulePosition()D

    move-result-wide v4

    .line 62
    .end local v6           #b:[B
    .end local v8           #ogg:[B
    .end local v11           #pageHeader:Lentagged/audioformats/ogg/util/OggPageHeader;
    .end local v12           #pageSegments:I
    :cond_0
    const-wide/high16 v15, -0x4010

    cmpl-double v15, v4, v15

    if-nez v15, :cond_2

    .line 64
    new-instance v15, Lentagged/audioformats/exceptions/CannotReadException;

    const-string v16, "Error: Could not find the Ogg Setup block"

    invoke-direct/range {v15 .. v16}, Lentagged/audioformats/exceptions/CannotReadException;-><init>(Ljava/lang/String;)V

    throw v15

    .line 59
    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v15

    const-wide/16 v17, 0x2

    sub-long v15, v15, v17

    move-object/from16 v0, p1

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    goto/16 :goto_0

    .line 71
    :cond_2
    const/4 v15, 0x4

    new-array v6, v15, [B

    .line 73
    .restart local v6       #b:[B
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v9

    .line 74
    const-wide/16 v15, 0x1a

    move-object/from16 v0, p1

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 75
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->read()I

    move-result v15

    and-int/lit16 v12, v15, 0xff

    .line 76
    .restart local v12       #pageSegments:I
    move-object/from16 v0, p1

    move-wide v1, v9

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 78
    add-int/lit8 v15, v12, 0x1b

    new-array v6, v15, [B

    .line 79
    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 81
    new-instance v11, Lentagged/audioformats/ogg/util/OggPageHeader;

    invoke-direct {v11, v6}, Lentagged/audioformats/ogg/util/OggPageHeader;-><init>([B)V

    .line 83
    .restart local v11       #pageHeader:Lentagged/audioformats/ogg/util/OggPageHeader;
    invoke-virtual {v11}, Lentagged/audioformats/ogg/util/OggPageHeader;->getPageLength()I

    move-result v15

    new-array v14, v15, [B

    .line 85
    .local v14, vorbisData:[B
    move-object/from16 v0, p1

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 87
    new-instance v13, Lentagged/audioformats/ogg/util/VorbisCodecHeader;

    invoke-direct {v13, v14}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;-><init>([B)V

    .line 90
    .local v13, vorbisCodecHeader:Lentagged/audioformats/ogg/util/VorbisCodecHeader;
    invoke-virtual {v13}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->getSamplingRate()I

    move-result v15

    int-to-double v15, v15

    div-double v15, v4, v15

    double-to-float v15, v15

    invoke-virtual {v7, v15}, Lentagged/audioformats/EncodingInfo;->setPreciseLength(F)V

    .line 91
    invoke-virtual {v13}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->getChannelNumber()I

    move-result v15

    invoke-virtual {v7, v15}, Lentagged/audioformats/EncodingInfo;->setChannelNumber(I)V

    .line 92
    invoke-virtual {v13}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->getSamplingRate()I

    move-result v15

    invoke-virtual {v7, v15}, Lentagged/audioformats/EncodingInfo;->setSamplingRate(I)V

    .line 93
    invoke-virtual {v13}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->getEncodingType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v15}, Lentagged/audioformats/EncodingInfo;->setEncodingType(Ljava/lang/String;)V

    .line 94
    const-string v15, ""

    invoke-virtual {v7, v15}, Lentagged/audioformats/EncodingInfo;->setExtraEncodingInfos(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v13}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->getNominalBitrate()I

    move-result v15

    if-eqz v15, :cond_3

    invoke-virtual {v13}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->getMaxBitrate()I

    move-result v15

    invoke-virtual {v13}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->getNominalBitrate()I

    move-result v16

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    invoke-virtual {v13}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->getMinBitrate()I

    move-result v15

    invoke-virtual {v13}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->getNominalBitrate()I

    move-result v16

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    .line 100
    invoke-virtual {v13}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->getNominalBitrate()I

    move-result v15

    div-int/lit16 v15, v15, 0x3e8

    invoke-virtual {v7, v15}, Lentagged/audioformats/EncodingInfo;->setBitrate(I)V

    .line 101
    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Lentagged/audioformats/EncodingInfo;->setVbr(Z)V

    .line 115
    :goto_1
    return-object v7

    .line 103
    :cond_3
    invoke-virtual {v13}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->getNominalBitrate()I

    move-result v15

    if-eqz v15, :cond_4

    invoke-virtual {v13}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->getMaxBitrate()I

    move-result v15

    if-nez v15, :cond_4

    invoke-virtual {v13}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->getMinBitrate()I

    move-result v15

    if-nez v15, :cond_4

    .line 107
    invoke-virtual {v13}, Lentagged/audioformats/ogg/util/VorbisCodecHeader;->getNominalBitrate()I

    move-result v15

    div-int/lit16 v15, v15, 0x3e8

    invoke-virtual {v7, v15}, Lentagged/audioformats/EncodingInfo;->setBitrate(I)V

    .line 108
    const/4 v15, 0x1

    invoke-virtual {v7, v15}, Lentagged/audioformats/EncodingInfo;->setVbr(Z)V

    goto :goto_1

    .line 111
    :cond_4
    invoke-virtual {v7}, Lentagged/audioformats/EncodingInfo;->getLength()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v16

    move-object/from16 v0, p0

    move v1, v15

    move-wide/from16 v2, v16

    invoke-direct {v0, v1, v2, v3}, Lentagged/audioformats/ogg/util/OggInfoReader;->computeBitrate(IJ)I

    move-result v15

    invoke-virtual {v7, v15}, Lentagged/audioformats/EncodingInfo;->setBitrate(I)V

    .line 112
    const/4 v15, 0x1

    invoke-virtual {v7, v15}, Lentagged/audioformats/EncodingInfo;->setVbr(Z)V

    goto :goto_1
.end method
