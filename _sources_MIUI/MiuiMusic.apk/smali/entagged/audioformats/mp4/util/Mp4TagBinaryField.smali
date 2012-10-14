.class public Lentagged/audioformats/mp4/util/Mp4TagBinaryField;
.super Lentagged/audioformats/mp4/util/Mp4TagField;
.source "Mp4TagBinaryField.java"


# instance fields
.field protected dataBytes:[B

.field protected isBinary:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lentagged/audioformats/mp4/util/Mp4TagField;-><init>(Ljava/lang/String;)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;->isBinary:Z

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1
    .parameter "id"
    .parameter "raw"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lentagged/audioformats/mp4/util/Mp4TagField;-><init>(Ljava/lang/String;[B)V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;->isBinary:Z

    .line 37
    return-void
.end method


# virtual methods
.method protected build([B)V
    .locals 7
    .parameter "raw"

    .prologue
    const/16 v6, 0x10

    const/4 v5, 0x0

    .line 69
    const/4 v2, 0x3

    invoke-static {p1, v5, v2}, Lentagged/audioformats/generic/Utils;->getNumberBigEndian([BII)I

    move-result v0

    .line 71
    .local v0, dataSize:I
    sub-int v2, v0, v6

    new-array v2, v2, [B

    iput-object v2, p0, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;->dataBytes:[B

    .line 72
    const/16 v1, 0x10

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 73
    iget-object v2, p0, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;->dataBytes:[B

    sub-int v3, v1, v6

    aget-byte v4, p1, v1

    aput-byte v4, v2, v3

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 75
    :cond_0
    const/16 v2, 0xb

    aget-byte v2, p1, v2

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    iput-boolean v2, p0, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;->isBinary:Z

    .line 76
    return-void

    :cond_1
    move v2, v5

    .line 75
    goto :goto_1
.end method

.method public copyContent(Lentagged/audioformats/generic/TagField;)V
    .locals 2
    .parameter "field"

    .prologue
    .line 95
    instance-of v1, p1, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;

    if-eqz v1, :cond_0

    .line 96
    move-object v0, p1

    check-cast v0, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;

    move-object v1, v0

    invoke-virtual {v1}, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;->getData()[B

    move-result-object v1

    iput-object v1, p0, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;->dataBytes:[B

    .line 97
    check-cast p1, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;

    .end local p1
    invoke-virtual {p1}, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;->isBinary()Z

    move-result v1

    iput-boolean v1, p0, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;->isBinary:Z

    .line 99
    :cond_0
    return-void
.end method

.method public getData()[B
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;->dataBytes:[B

    return-object v0
.end method

.method public getRawContent()[B
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 40
    iget-object v1, p0, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;->dataBytes:[B

    .line 41
    .local v1, data:[B
    array-length v3, v1

    add-int/lit8 v3, v3, 0x18

    new-array v0, v3, [B

    .line 43
    .local v0, b:[B
    const/4 v2, 0x0

    .line 44
    .local v2, offset:I
    array-length v3, v0

    invoke-static {v3}, Lentagged/audioformats/generic/Utils;->getSizeBigEndian(I)[B

    move-result-object v3

    invoke-static {v3, v0, v2}, Lentagged/audioformats/generic/Utils;->copy([B[BI)V

    .line 45
    add-int/lit8 v2, v2, 0x4

    .line 47
    invoke-virtual {p0}, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lentagged/audioformats/generic/Utils;->getDefaultBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v0, v2}, Lentagged/audioformats/generic/Utils;->copy([B[BI)V

    .line 48
    add-int/lit8 v2, v2, 0x4

    .line 50
    array-length v3, v1

    add-int/lit8 v3, v3, 0x10

    invoke-static {v3}, Lentagged/audioformats/generic/Utils;->getSizeBigEndian(I)[B

    move-result-object v3

    invoke-static {v3, v0, v2}, Lentagged/audioformats/generic/Utils;->copy([B[BI)V

    .line 51
    add-int/lit8 v2, v2, 0x4

    .line 53
    const-string v3, "data"

    invoke-static {v3}, Lentagged/audioformats/generic/Utils;->getDefaultBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v0, v2}, Lentagged/audioformats/generic/Utils;->copy([B[BI)V

    .line 54
    add-int/lit8 v2, v2, 0x4

    .line 56
    new-array v3, v8, [B

    aput-byte v6, v3, v6

    aput-byte v6, v3, v7

    const/4 v4, 0x2

    aput-byte v6, v3, v4

    const/4 v4, 0x3

    invoke-virtual {p0}, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;->isBinary()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    :goto_0
    int-to-byte v5, v5

    aput-byte v5, v3, v4

    invoke-static {v3, v0, v2}, Lentagged/audioformats/generic/Utils;->copy([B[BI)V

    .line 57
    add-int/lit8 v2, v2, 0x4

    .line 59
    new-array v3, v8, [B

    fill-array-data v3, :array_0

    invoke-static {v3, v0, v2}, Lentagged/audioformats/generic/Utils;->copy([B[BI)V

    .line 60
    add-int/lit8 v2, v2, 0x4

    .line 62
    invoke-static {v1, v0, v2}, Lentagged/audioformats/generic/Utils;->copy([B[BI)V

    .line 63
    array-length v3, v1

    add-int/lit8 v2, v3, 0x18

    .line 65
    return-object v0

    :cond_0
    move v5, v7

    .line 56
    goto :goto_0

    .line 59
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public isBinary()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;->isBinary:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;->dataBytes:[B

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setData([B)V
    .locals 0
    .parameter "d"

    .prologue
    .line 91
    iput-object p1, p0, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;->dataBytes:[B

    .line 92
    return-void
.end method
