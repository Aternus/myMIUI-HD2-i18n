.class public Lentagged/audioformats/asf/io/StreamChunkReader;
.super Ljava/lang/Object;
.source "StreamChunkReader.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method private parseData(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/StreamChunk;
    .locals 41
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    const/16 v28, 0x0

    .line 84
    .local v28, result:Lentagged/audioformats/asf/data/StreamChunk;
    invoke-virtual/range {p1 .. p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v13

    .line 85
    .local v13, chunkStart:J
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readGUID(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/GUID;

    move-result-object v22

    .line 86
    .local v22, guid:Lentagged/audioformats/asf/data/GUID;
    sget-object v40, Lentagged/audioformats/asf/data/GUID;->GUID_STREAM:Lentagged/audioformats/asf/data/GUID;

    move-object/from16 v0, v40

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lentagged/audioformats/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_2

    .line 87
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readBig64(Ljava/io/RandomAccessFile;)Ljava/math/BigInteger;

    move-result-object v12

    .line 90
    .local v12, chunkLength:Ljava/math/BigInteger;
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readGUID(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/GUID;

    move-result-object v34

    .line 91
    .local v34, streamTypeGUID:Lentagged/audioformats/asf/data/GUID;
    sget-object v40, Lentagged/audioformats/asf/data/GUID;->GUID_AUDIOSTREAM:Lentagged/audioformats/asf/data/GUID;

    move-object/from16 v0, v40

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lentagged/audioformats/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-nez v40, :cond_0

    sget-object v40, Lentagged/audioformats/asf/data/GUID;->GUID_VIDEOSTREAM:Lentagged/audioformats/asf/data/GUID;

    move-object/from16 v0, v40

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lentagged/audioformats/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_2

    .line 96
    :cond_0
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readGUID(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/GUID;

    move-result-object v20

    .line 100
    .local v20, errorConcealment:Lentagged/audioformats/asf/data/GUID;
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT64(Ljava/io/RandomAccessFile;)J

    move-result-wide v35

    .line 102
    .local v35, timeOffset:J
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT32(Ljava/io/RandomAccessFile;)J

    move-result-wide v37

    .line 103
    .local v37, typeSpecificDataSize:J
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT32(Ljava/io/RandomAccessFile;)J

    move-result-wide v32

    .line 109
    .local v32, streamSpecificDataSize:J
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT16(Ljava/io/RandomAccessFile;)I

    move-result v23

    .line 110
    .local v23, mask:I
    and-int/lit8 v31, v23, 0x7f

    .line 111
    .local v31, streamNumber:I
    const v40, 0x8000

    and-int v40, v40, v23

    if-eqz v40, :cond_3

    const/16 v40, 0x1

    move/from16 v19, v40

    .line 116
    .local v19, contentEncrypted:Z
    :goto_0
    const/16 v40, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 118
    sget-object v40, Lentagged/audioformats/asf/data/GUID;->GUID_AUDIOSTREAM:Lentagged/audioformats/asf/data/GUID;

    move-object/from16 v0, v40

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lentagged/audioformats/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_4

    .line 122
    new-instance v4, Lentagged/audioformats/asf/data/AudioStreamChunk;

    invoke-direct {v4, v13, v14, v12}, Lentagged/audioformats/asf/data/AudioStreamChunk;-><init>(JLjava/math/BigInteger;)V

    .line 124
    .local v4, audioStreamChunk:Lentagged/audioformats/asf/data/AudioStreamChunk;
    move-object/from16 v28, v4

    .line 129
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT16(Ljava/io/RandomAccessFile;)I

    move-result v40

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v17, v0

    .line 130
    .local v17, compressionFormat:J
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT16(Ljava/io/RandomAccessFile;)I

    move-result v40

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide v10, v0

    .line 131
    .local v10, channelCount:J
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT32(Ljava/io/RandomAccessFile;)J

    move-result-wide v29

    .line 132
    .local v29, samplingRate:J
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT32(Ljava/io/RandomAccessFile;)J

    move-result-wide v5

    .line 133
    .local v5, avgBytesPerSec:J
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT16(Ljava/io/RandomAccessFile;)I

    move-result v40

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide v8, v0

    .line 134
    .local v8, blockAlignment:J
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT16(Ljava/io/RandomAccessFile;)I

    move-result v7

    .line 135
    .local v7, bitsPerSample:I
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT16(Ljava/io/RandomAccessFile;)I

    move-result v16

    .line 136
    .local v16, codecSpecificDataSize:I
    move/from16 v0, v16

    new-array v0, v0, [B

    move-object v15, v0

    .line 137
    .local v15, codecSpecificData:[B
    move-object/from16 v0, p1

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 139
    move-object v0, v4

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lentagged/audioformats/asf/data/AudioStreamChunk;->setCompressionFormat(J)V

    .line 140
    invoke-virtual {v4, v10, v11}, Lentagged/audioformats/asf/data/AudioStreamChunk;->setChannelCount(J)V

    .line 141
    move-object v0, v4

    move-wide/from16 v1, v29

    invoke-virtual {v0, v1, v2}, Lentagged/audioformats/asf/data/AudioStreamChunk;->setSamplingRate(J)V

    .line 142
    invoke-virtual {v4, v5, v6}, Lentagged/audioformats/asf/data/AudioStreamChunk;->setAverageBytesPerSec(J)V

    .line 143
    move-object v0, v4

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lentagged/audioformats/asf/data/AudioStreamChunk;->setErrorConcealment(Lentagged/audioformats/asf/data/GUID;)V

    .line 144
    invoke-virtual {v4, v8, v9}, Lentagged/audioformats/asf/data/AudioStreamChunk;->setBlockAlignment(J)V

    .line 145
    invoke-virtual {v4, v7}, Lentagged/audioformats/asf/data/AudioStreamChunk;->setBitsPerSample(I)V

    .line 146
    invoke-virtual {v4, v15}, Lentagged/audioformats/asf/data/AudioStreamChunk;->setCodecData([B)V

    .line 179
    .end local v4           #audioStreamChunk:Lentagged/audioformats/asf/data/AudioStreamChunk;
    .end local v5           #avgBytesPerSec:J
    .end local v7           #bitsPerSample:I
    .end local v8           #blockAlignment:J
    .end local v10           #channelCount:J
    .end local v15           #codecSpecificData:[B
    .end local v16           #codecSpecificDataSize:I
    .end local v17           #compressionFormat:J
    .end local v29           #samplingRate:J
    :cond_1
    :goto_1
    move-object/from16 v0, v28

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lentagged/audioformats/asf/data/StreamChunk;->setStreamNumber(I)V

    .line 180
    move-object/from16 v0, v28

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Lentagged/audioformats/asf/data/StreamChunk;->setStreamSpecificDataSize(J)V

    .line 181
    move-object/from16 v0, v28

    move-wide/from16 v1, v37

    invoke-virtual {v0, v1, v2}, Lentagged/audioformats/asf/data/StreamChunk;->setTypeSpecificDataSize(J)V

    .line 182
    move-object/from16 v0, v28

    move-wide/from16 v1, v35

    invoke-virtual {v0, v1, v2}, Lentagged/audioformats/asf/data/StreamChunk;->setTimeOffset(J)V

    .line 183
    move-object/from16 v0, v28

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lentagged/audioformats/asf/data/StreamChunk;->setContentEncrypted(Z)V

    .line 186
    .end local v12           #chunkLength:Ljava/math/BigInteger;
    .end local v19           #contentEncrypted:Z
    .end local v20           #errorConcealment:Lentagged/audioformats/asf/data/GUID;
    .end local v23           #mask:I
    .end local v31           #streamNumber:I
    .end local v32           #streamSpecificDataSize:J
    .end local v34           #streamTypeGUID:Lentagged/audioformats/asf/data/GUID;
    .end local v35           #timeOffset:J
    .end local v37           #typeSpecificDataSize:J
    :cond_2
    return-object v28

    .line 111
    .restart local v12       #chunkLength:Ljava/math/BigInteger;
    .restart local v20       #errorConcealment:Lentagged/audioformats/asf/data/GUID;
    .restart local v23       #mask:I
    .restart local v31       #streamNumber:I
    .restart local v32       #streamSpecificDataSize:J
    .restart local v34       #streamTypeGUID:Lentagged/audioformats/asf/data/GUID;
    .restart local v35       #timeOffset:J
    .restart local v37       #typeSpecificDataSize:J
    :cond_3
    const/16 v40, 0x0

    move/from16 v19, v40

    goto/16 :goto_0

    .line 147
    .restart local v19       #contentEncrypted:Z
    :cond_4
    sget-object v40, Lentagged/audioformats/asf/data/GUID;->GUID_VIDEOSTREAM:Lentagged/audioformats/asf/data/GUID;

    move-object/from16 v0, v40

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lentagged/audioformats/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v40

    if-eqz v40, :cond_1

    .line 151
    new-instance v39, Lentagged/audioformats/asf/data/VideoStreamChunk;

    move-object/from16 v0, v39

    move-wide v1, v13

    move-object v3, v12

    invoke-direct {v0, v1, v2, v3}, Lentagged/audioformats/asf/data/VideoStreamChunk;-><init>(JLjava/math/BigInteger;)V

    .line 153
    .local v39, videoStreamChunk:Lentagged/audioformats/asf/data/VideoStreamChunk;
    move-object/from16 v28, v39

    .line 155
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT32(Ljava/io/RandomAccessFile;)J

    move-result-wide v26

    .line 156
    .local v26, pictureWidth:J
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT32(Ljava/io/RandomAccessFile;)J

    move-result-wide v24

    .line 159
    .local v24, pictureHeight:J
    const/16 v40, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 165
    invoke-static/range {p1 .. p1}, Lentagged/audioformats/asf/util/Utils;->readUINT16(Ljava/io/RandomAccessFile;)I

    .line 167
    const/16 v40, 0x10

    move-object/from16 v0, p1

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    .line 168
    const/16 v40, 0x4

    move/from16 v0, v40

    new-array v0, v0, [B

    move-object/from16 v21, v0

    .line 169
    .local v21, fourCC:[B
    move-object/from16 v0, p1

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 171
    move-object/from16 v0, v39

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lentagged/audioformats/asf/data/VideoStreamChunk;->setPictureWidth(J)V

    .line 172
    move-object/from16 v0, v39

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lentagged/audioformats/asf/data/VideoStreamChunk;->setPictureHeight(J)V

    .line 173
    move-object/from16 v0, v39

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lentagged/audioformats/asf/data/VideoStreamChunk;->setCodecId([B)V

    goto/16 :goto_1
.end method

.method public static read(Ljava/io/RandomAccessFile;Lentagged/audioformats/asf/data/Chunk;)Lentagged/audioformats/asf/data/StreamChunk;
    .locals 2
    .parameter "raf"
    .parameter "candidate"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Arguments must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_1
    sget-object v0, Lentagged/audioformats/asf/data/GUID;->GUID_STREAM:Lentagged/audioformats/asf/data/GUID;

    invoke-virtual {p1}, Lentagged/audioformats/asf/data/Chunk;->getGuid()Lentagged/audioformats/asf/data/GUID;

    move-result-object v1

    invoke-virtual {v0, v1}, Lentagged/audioformats/asf/data/GUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 66
    invoke-virtual {p1}, Lentagged/audioformats/asf/data/Chunk;->getPosition()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 67
    new-instance v0, Lentagged/audioformats/asf/io/StreamChunkReader;

    invoke-direct {v0}, Lentagged/audioformats/asf/io/StreamChunkReader;-><init>()V

    invoke-direct {v0, p0}, Lentagged/audioformats/asf/io/StreamChunkReader;->parseData(Ljava/io/RandomAccessFile;)Lentagged/audioformats/asf/data/StreamChunk;

    move-result-object v0

    .line 69
    :goto_0
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
