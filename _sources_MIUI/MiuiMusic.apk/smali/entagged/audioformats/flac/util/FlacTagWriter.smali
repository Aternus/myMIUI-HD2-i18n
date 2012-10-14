.class public Lentagged/audioformats/flac/util/FlacTagWriter;
.super Ljava/lang/Object;
.source "FlacTagWriter.java"


# instance fields
.field private metadataBlockApplication:Ljava/util/Vector;

.field private metadataBlockCueSheet:Ljava/util/Vector;

.field private metadataBlockPadding:Ljava/util/Vector;

.field private metadataBlockSeekTable:Ljava/util/Vector;

.field private reader:Lentagged/audioformats/flac/util/FlacTagReader;

.field private tc:Lentagged/audioformats/flac/util/FlacTagCreator;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockPadding:Ljava/util/Vector;

    .line 33
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockApplication:Ljava/util/Vector;

    .line 34
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockSeekTable:Ljava/util/Vector;

    .line 35
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockCueSheet:Ljava/util/Vector;

    .line 37
    new-instance v0, Lentagged/audioformats/flac/util/FlacTagCreator;

    invoke-direct {v0}, Lentagged/audioformats/flac/util/FlacTagCreator;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->tc:Lentagged/audioformats/flac/util/FlacTagCreator;

    .line 38
    new-instance v0, Lentagged/audioformats/flac/util/FlacTagReader;

    invoke-direct {v0}, Lentagged/audioformats/flac/util/FlacTagReader;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->reader:Lentagged/audioformats/flac/util/FlacTagReader;

    return-void
.end method

.method private computeAvailableRoom()I
    .locals 3

    .prologue
    .line 152
    const/4 v1, 0x0

    .line 154
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockApplication:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 155
    iget-object v2, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockApplication:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-virtual {v2}, Lentagged/audioformats/flac/util/MetadataBlock;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    .line 154
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockSeekTable:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 158
    iget-object v2, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockSeekTable:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-virtual {v2}, Lentagged/audioformats/flac/util/MetadataBlock;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    .line 157
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 160
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockCueSheet:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 161
    iget-object v2, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockCueSheet:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-virtual {v2}, Lentagged/audioformats/flac/util/MetadataBlock;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 163
    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget-object v2, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockPadding:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 164
    iget-object v2, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockPadding:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-virtual {v2}, Lentagged/audioformats/flac/util/MetadataBlock;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    .line 163
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 166
    :cond_3
    return v1
.end method

.method private computeNeededRoom()I
    .locals 3

    .prologue
    .line 170
    const/4 v1, 0x0

    .line 172
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockApplication:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 173
    iget-object v2, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockApplication:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-virtual {v2}, Lentagged/audioformats/flac/util/MetadataBlock;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    .line 172
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 175
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockSeekTable:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 176
    iget-object v2, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockSeekTable:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-virtual {v2}, Lentagged/audioformats/flac/util/MetadataBlock;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    .line 175
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 178
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockCueSheet:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 179
    iget-object v2, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockCueSheet:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-virtual {v2}, Lentagged/audioformats/flac/util/MetadataBlock;->getLength()I

    move-result v2

    add-int/2addr v1, v2

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 181
    :cond_2
    return v1
.end method

.method private handleApplication(Lentagged/audioformats/flac/util/MetadataBlockHeader;Ljava/io/RandomAccessFile;)V
    .locals 4
    .parameter "mbh"
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    invoke-virtual {p1}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->getDataLength()I

    move-result v2

    new-array v0, v2, [B

    .line 199
    .local v0, b:[B
    invoke-virtual {p2, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 201
    new-instance v1, Lentagged/audioformats/flac/util/MetadataBlockDataApplication;

    invoke-direct {v1, v0}, Lentagged/audioformats/flac/util/MetadataBlockDataApplication;-><init>([B)V

    .line 202
    .local v1, mbd:Lentagged/audioformats/flac/util/MetadataBlockData;
    iget-object v2, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockApplication:Ljava/util/Vector;

    new-instance v3, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-direct {v3, p1, v1}, Lentagged/audioformats/flac/util/MetadataBlock;-><init>(Lentagged/audioformats/flac/util/MetadataBlockHeader;Lentagged/audioformats/flac/util/MetadataBlockData;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 203
    return-void
.end method

.method private handleCueSheet(Lentagged/audioformats/flac/util/MetadataBlockHeader;Ljava/io/RandomAccessFile;)V
    .locals 4
    .parameter "mbh"
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    invoke-virtual {p1}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->getDataLength()I

    move-result v2

    new-array v0, v2, [B

    .line 215
    .local v0, b:[B
    invoke-virtual {p2, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 217
    new-instance v1, Lentagged/audioformats/flac/util/MetadataBlockDataCueSheet;

    invoke-direct {v1, v0}, Lentagged/audioformats/flac/util/MetadataBlockDataCueSheet;-><init>([B)V

    .line 218
    .local v1, mbd:Lentagged/audioformats/flac/util/MetadataBlockData;
    iget-object v2, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockCueSheet:Ljava/util/Vector;

    new-instance v3, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-direct {v3, p1, v1}, Lentagged/audioformats/flac/util/MetadataBlock;-><init>(Lentagged/audioformats/flac/util/MetadataBlockHeader;Lentagged/audioformats/flac/util/MetadataBlockData;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 219
    return-void
.end method

.method private handlePadding(Lentagged/audioformats/flac/util/MetadataBlockHeader;Ljava/io/RandomAccessFile;)V
    .locals 5
    .parameter "mbh"
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v1

    invoke-virtual {p1}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->getDataLength()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-virtual {p2, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 193
    new-instance v0, Lentagged/audioformats/flac/util/MetadataBlockDataPadding;

    invoke-virtual {p1}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->getDataLength()I

    move-result v1

    invoke-direct {v0, v1}, Lentagged/audioformats/flac/util/MetadataBlockDataPadding;-><init>(I)V

    .line 194
    .local v0, mbd:Lentagged/audioformats/flac/util/MetadataBlockData;
    iget-object v1, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockPadding:Ljava/util/Vector;

    new-instance v2, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-direct {v2, p1, v0}, Lentagged/audioformats/flac/util/MetadataBlock;-><init>(Lentagged/audioformats/flac/util/MetadataBlockHeader;Lentagged/audioformats/flac/util/MetadataBlockData;)V

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 195
    return-void
.end method

.method private handleSeekTable(Lentagged/audioformats/flac/util/MetadataBlockHeader;Ljava/io/RandomAccessFile;)V
    .locals 4
    .parameter "mbh"
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-virtual {p1}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->getDataLength()I

    move-result v2

    new-array v0, v2, [B

    .line 207
    .local v0, b:[B
    invoke-virtual {p2, v0}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 209
    new-instance v1, Lentagged/audioformats/flac/util/MetadataBlockDataSeekTable;

    invoke-direct {v1, v0}, Lentagged/audioformats/flac/util/MetadataBlockDataSeekTable;-><init>([B)V

    .line 210
    .local v1, mbd:Lentagged/audioformats/flac/util/MetadataBlockData;
    iget-object v2, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockSeekTable:Ljava/util/Vector;

    new-instance v3, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-direct {v3, p1, v1}, Lentagged/audioformats/flac/util/MetadataBlock;-><init>(Lentagged/audioformats/flac/util/MetadataBlockHeader;Lentagged/audioformats/flac/util/MetadataBlockData;)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 211
    return-void
.end method

.method private skipBlock(Lentagged/audioformats/flac/util/MetadataBlockHeader;Ljava/io/RandomAccessFile;)V
    .locals 4
    .parameter "mbh"
    .parameter "raf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p2}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    invoke-virtual {p1}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->getDataLength()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 187
    return-void
.end method


# virtual methods
.method public delete(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 6
    .parameter "raf"
    .parameter "tempRaf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lentagged/audioformats/exceptions/CannotWriteException;
        }
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 41
    const/4 v2, 0x0

    .line 43
    .local v2, tag:Lentagged/audioformats/ogg/OggTag;
    :try_start_0
    iget-object v3, p0, Lentagged/audioformats/flac/util/FlacTagWriter;->reader:Lentagged/audioformats/flac/util/FlacTagReader;

    invoke-virtual {v3, p1}, Lentagged/audioformats/flac/util/FlacTagReader;->read(Ljava/io/RandomAccessFile;)Lentagged/audioformats/ogg/OggTag;
    :try_end_0
    .catch Lentagged/audioformats/exceptions/CannotReadException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 49
    new-instance v1, Lentagged/audioformats/ogg/OggTag;

    invoke-direct {v1}, Lentagged/audioformats/ogg/OggTag;-><init>()V

    .line 50
    .local v1, emptyTag:Lentagged/audioformats/ogg/OggTag;
    invoke-virtual {v2}, Lentagged/audioformats/ogg/OggTag;->getVendor()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lentagged/audioformats/ogg/OggTag;->setVendor(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 53
    invoke-virtual {p2, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 55
    invoke-virtual {p0, v1, p1, p2}, Lentagged/audioformats/flac/util/FlacTagWriter;->write(Lentagged/audioformats/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    .line 56
    .end local v1           #emptyTag:Lentagged/audioformats/ogg/OggTag;
    :goto_0
    return-void

    .line 44
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 45
    .local v0, e:Lentagged/audioformats/exceptions/CannotReadException;
    new-instance v3, Lentagged/audioformats/ogg/OggTag;

    invoke-direct {v3}, Lentagged/audioformats/ogg/OggTag;-><init>()V

    invoke-virtual {p0, v3, p1, p2}, Lentagged/audioformats/flac/util/FlacTagWriter;->write(Lentagged/audioformats/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V

    goto :goto_0
.end method

.method public write(Lentagged/audioformats/Tag;Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;)V
    .locals 17
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
    .line 60
    move-object/from16 v0, p0

    iget-object v0, v0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockPadding:Ljava/util/Vector;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/Vector;->removeAllElements()V

    .line 61
    move-object/from16 v0, p0

    iget-object v0, v0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockApplication:Ljava/util/Vector;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/Vector;->removeAllElements()V

    .line 62
    move-object/from16 v0, p0

    iget-object v0, v0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockSeekTable:Ljava/util/Vector;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/Vector;->removeAllElements()V

    .line 63
    move-object/from16 v0, p0

    iget-object v0, v0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockCueSheet:Ljava/util/Vector;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/Vector;->removeAllElements()V

    .line 65
    const/4 v5, 0x4

    new-array v10, v5, [B

    .line 66
    .local v10, b:[B
    move-object/from16 v0, p2

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 68
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v10}, Ljava/lang/String;-><init>([B)V

    .line 69
    .local v11, flac:Ljava/lang/String;
    const-string v5, "fLaC"

    invoke-virtual {v11, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 70
    new-instance v5, Lentagged/audioformats/exceptions/CannotWriteException;

    const-string v6, "This is not a FLAC file"

    invoke-direct {v5, v6}, Lentagged/audioformats/exceptions/CannotWriteException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 72
    :cond_0
    const/4 v13, 0x0

    .line 73
    .local v13, isLastBlock:Z
    :goto_0
    if-nez v13, :cond_1

    .line 74
    const/4 v5, 0x4

    new-array v10, v5, [B

    .line 75
    move-object/from16 v0, p2

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 76
    new-instance v14, Lentagged/audioformats/flac/util/MetadataBlockHeader;

    invoke-direct {v14, v10}, Lentagged/audioformats/flac/util/MetadataBlockHeader;-><init>([B)V

    .line 79
    .local v14, mbh:Lentagged/audioformats/flac/util/MetadataBlockHeader;
    invoke-virtual {v14}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->getBlockType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 85
    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lentagged/audioformats/flac/util/FlacTagWriter;->skipBlock(Lentagged/audioformats/flac/util/MetadataBlockHeader;Ljava/io/RandomAccessFile;)V

    .line 88
    :goto_1
    invoke-virtual {v14}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->isLastBlock()Z

    move-result v13

    .line 89
    goto :goto_0

    .line 80
    :pswitch_0
    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lentagged/audioformats/flac/util/FlacTagWriter;->handlePadding(Lentagged/audioformats/flac/util/MetadataBlockHeader;Ljava/io/RandomAccessFile;)V

    goto :goto_1

    .line 81
    :pswitch_1
    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lentagged/audioformats/flac/util/FlacTagWriter;->handlePadding(Lentagged/audioformats/flac/util/MetadataBlockHeader;Ljava/io/RandomAccessFile;)V

    goto :goto_1

    .line 82
    :pswitch_2
    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lentagged/audioformats/flac/util/FlacTagWriter;->handleApplication(Lentagged/audioformats/flac/util/MetadataBlockHeader;Ljava/io/RandomAccessFile;)V

    goto :goto_1

    .line 83
    :pswitch_3
    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lentagged/audioformats/flac/util/FlacTagWriter;->handleSeekTable(Lentagged/audioformats/flac/util/MetadataBlockHeader;Ljava/io/RandomAccessFile;)V

    goto :goto_1

    .line 84
    :pswitch_4
    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lentagged/audioformats/flac/util/FlacTagWriter;->handleCueSheet(Lentagged/audioformats/flac/util/MetadataBlockHeader;Ljava/io/RandomAccessFile;)V

    goto :goto_1

    .line 91
    .end local v14           #mbh:Lentagged/audioformats/flac/util/MetadataBlockHeader;
    :cond_1
    invoke-direct/range {p0 .. p0}, Lentagged/audioformats/flac/util/FlacTagWriter;->computeAvailableRoom()I

    move-result v9

    .line 92
    .local v9, availableRoom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lentagged/audioformats/flac/util/FlacTagWriter;->tc:Lentagged/audioformats/flac/util/FlacTagCreator;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lentagged/audioformats/flac/util/FlacTagCreator;->getTagLength(Lentagged/audioformats/Tag;)I

    move-result v16

    .line 93
    .local v16, newTagSize:I
    invoke-direct/range {p0 .. p0}, Lentagged/audioformats/flac/util/FlacTagWriter;->computeNeededRoom()I

    move-result v5

    add-int v15, v16, v5

    .line 95
    .local v15, neededRoom:I
    const-wide/16 v5, 0x0

    move-object/from16 v0, p2

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 97
    if-lt v9, v15, :cond_5

    .line 99
    const-wide/16 v5, 0x2a

    move-object/from16 v0, p2

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 101
    const/4 v12, 0x0

    .end local p3
    .local v12, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockApplication:Ljava/util/Vector;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v12, v5, :cond_2

    .line 102
    move-object/from16 v0, p0

    iget-object v0, v0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockApplication:Ljava/util/Vector;

    move-object v5, v0

    invoke-virtual {v5, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-virtual/range {p3 .. p3}, Lentagged/audioformats/flac/util/MetadataBlock;->getHeader()Lentagged/audioformats/flac/util/MetadataBlockHeader;

    move-result-object v5

    invoke-virtual {v5}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->getBytes()[B

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockApplication:Ljava/util/Vector;

    move-object v5, v0

    invoke-virtual {v5, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-virtual/range {p3 .. p3}, Lentagged/audioformats/flac/util/MetadataBlock;->getData()Lentagged/audioformats/flac/util/MetadataBlockData;

    move-result-object v5

    invoke-interface {v5}, Lentagged/audioformats/flac/util/MetadataBlockData;->getBytes()[B

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 101
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 106
    :cond_2
    const/4 v12, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockSeekTable:Ljava/util/Vector;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v12, v5, :cond_3

    .line 107
    move-object/from16 v0, p0

    iget-object v0, v0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockSeekTable:Ljava/util/Vector;

    move-object v5, v0

    invoke-virtual {v5, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-virtual/range {p3 .. p3}, Lentagged/audioformats/flac/util/MetadataBlock;->getHeader()Lentagged/audioformats/flac/util/MetadataBlockHeader;

    move-result-object v5

    invoke-virtual {v5}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->getBytes()[B

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockSeekTable:Ljava/util/Vector;

    move-object v5, v0

    invoke-virtual {v5, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-virtual/range {p3 .. p3}, Lentagged/audioformats/flac/util/MetadataBlock;->getData()Lentagged/audioformats/flac/util/MetadataBlockData;

    move-result-object v5

    invoke-interface {v5}, Lentagged/audioformats/flac/util/MetadataBlockData;->getBytes()[B

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 106
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 111
    :cond_3
    const/4 v12, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockCueSheet:Ljava/util/Vector;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v12, v5, :cond_4

    .line 112
    move-object/from16 v0, p0

    iget-object v0, v0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockCueSheet:Ljava/util/Vector;

    move-object v5, v0

    invoke-virtual {v5, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-virtual/range {p3 .. p3}, Lentagged/audioformats/flac/util/MetadataBlock;->getHeader()Lentagged/audioformats/flac/util/MetadataBlockHeader;

    move-result-object v5

    invoke-virtual {v5}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->getBytes()[B

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockCueSheet:Ljava/util/Vector;

    move-object v5, v0

    invoke-virtual {v5, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-virtual/range {p3 .. p3}, Lentagged/audioformats/flac/util/MetadataBlock;->getData()Lentagged/audioformats/flac/util/MetadataBlockData;

    move-result-object v5

    invoke-interface {v5}, Lentagged/audioformats/flac/util/MetadataBlockData;->getBytes()[B

    move-result-object v5

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 111
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 116
    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lentagged/audioformats/flac/util/FlacTagWriter;->tc:Lentagged/audioformats/flac/util/FlacTagCreator;

    move-object v6, v0

    sub-int v7, v9, v15

    move-object v0, v6

    move-object/from16 v1, p1

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lentagged/audioformats/flac/util/FlacTagCreator;->convert(Lentagged/audioformats/Tag;I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 149
    .end local p2
    :goto_5
    return-void

    .line 121
    .end local v12           #i:I
    .restart local p2
    .restart local p3
    :cond_5
    invoke-virtual/range {p2 .. p2}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 122
    .local v4, fc:Ljava/nio/channels/FileChannel;
    const/16 v5, 0x2a

    new-array v10, v5, [B

    .line 123
    move-object/from16 v0, p2

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 124
    add-int/lit8 v5, v9, 0x2a

    int-to-long v5, v5

    move-object/from16 v0, p2

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 126
    invoke-virtual/range {p3 .. p3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3

    .line 128
    .local v3, tempFC:Ljava/nio/channels/FileChannel;
    move-object/from16 v0, p3

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 130
    const/4 v12, 0x0

    .end local p2
    .restart local v12       #i:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockApplication:Ljava/util/Vector;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v12, v5, :cond_6

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockApplication:Ljava/util/Vector;

    move-object v5, v0

    invoke-virtual {v5, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-virtual/range {p2 .. p2}, Lentagged/audioformats/flac/util/MetadataBlock;->getHeader()Lentagged/audioformats/flac/util/MetadataBlockHeader;

    move-result-object v5

    invoke-virtual {v5}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->getBytes()[B

    move-result-object v5

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockApplication:Ljava/util/Vector;

    move-object v5, v0

    invoke-virtual {v5, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-virtual/range {p2 .. p2}, Lentagged/audioformats/flac/util/MetadataBlock;->getData()Lentagged/audioformats/flac/util/MetadataBlockData;

    move-result-object v5

    invoke-interface {v5}, Lentagged/audioformats/flac/util/MetadataBlockData;->getBytes()[B

    move-result-object v5

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 130
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 135
    :cond_6
    const/4 v12, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockSeekTable:Ljava/util/Vector;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v12, v5, :cond_7

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockSeekTable:Ljava/util/Vector;

    move-object v5, v0

    invoke-virtual {v5, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-virtual/range {p2 .. p2}, Lentagged/audioformats/flac/util/MetadataBlock;->getHeader()Lentagged/audioformats/flac/util/MetadataBlockHeader;

    move-result-object v5

    invoke-virtual {v5}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->getBytes()[B

    move-result-object v5

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockSeekTable:Ljava/util/Vector;

    move-object v5, v0

    invoke-virtual {v5, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-virtual/range {p2 .. p2}, Lentagged/audioformats/flac/util/MetadataBlock;->getData()Lentagged/audioformats/flac/util/MetadataBlockData;

    move-result-object v5

    invoke-interface {v5}, Lentagged/audioformats/flac/util/MetadataBlockData;->getBytes()[B

    move-result-object v5

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 135
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 140
    :cond_7
    const/4 v12, 0x0

    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockCueSheet:Ljava/util/Vector;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v12, v5, :cond_8

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockCueSheet:Ljava/util/Vector;

    move-object v5, v0

    invoke-virtual {v5, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-virtual/range {p2 .. p2}, Lentagged/audioformats/flac/util/MetadataBlock;->getHeader()Lentagged/audioformats/flac/util/MetadataBlockHeader;

    move-result-object v5

    invoke-virtual {v5}, Lentagged/audioformats/flac/util/MetadataBlockHeader;->getBytes()[B

    move-result-object v5

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 142
    move-object/from16 v0, p0

    iget-object v0, v0, Lentagged/audioformats/flac/util/FlacTagWriter;->metadataBlockCueSheet:Ljava/util/Vector;

    move-object v5, v0

    invoke-virtual {v5, v12}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lentagged/audioformats/flac/util/MetadataBlock;

    invoke-virtual/range {p2 .. p2}, Lentagged/audioformats/flac/util/MetadataBlock;->getData()Lentagged/audioformats/flac/util/MetadataBlockData;

    move-result-object v5

    invoke-interface {v5}, Lentagged/audioformats/flac/util/MetadataBlockData;->getBytes()[B

    move-result-object v5

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 140
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 145
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lentagged/audioformats/flac/util/FlacTagWriter;->tc:Lentagged/audioformats/flac/util/FlacTagCreator;

    move-object v5, v0

    const/16 v6, 0xfa0

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lentagged/audioformats/flac/util/FlacTagCreator;->convert(Lentagged/audioformats/Tag;I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->write([B)V

    .line 147
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J

    goto/16 :goto_5

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
