.class public Lentagged/audioformats/mp4/util/Mp4TagTextField;
.super Lentagged/audioformats/mp4/util/Mp4TagField;
.source "Mp4TagTextField.java"

# interfaces
.implements Lentagged/audioformats/generic/TagTextField;


# instance fields
.field protected content:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "content"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lentagged/audioformats/mp4/util/Mp4TagField;-><init>(Ljava/lang/String;)V

    .line 38
    iput-object p2, p0, Lentagged/audioformats/mp4/util/Mp4TagTextField;->content:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0
    .parameter "id"
    .parameter "raw"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lentagged/audioformats/mp4/util/Mp4TagField;-><init>(Ljava/lang/String;[B)V

    .line 34
    return-void
.end method


# virtual methods
.method protected build([B)V
    .locals 4
    .parameter "raw"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v3, 0x8

    .line 42
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-static {p1, v1, v2}, Lentagged/audioformats/generic/Utils;->getNumberBigEndian([BII)I

    move-result v0

    .line 43
    .local v0, dataSize:I
    const/16 v1, 0x10

    sub-int v2, v0, v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lentagged/audioformats/mp4/util/Mp4TagTextField;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v1, v2, v3}, Lentagged/audioformats/generic/Utils;->getString([BIILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lentagged/audioformats/mp4/util/Mp4TagTextField;->content:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public copyContent(Lentagged/audioformats/generic/TagField;)V
    .locals 1
    .parameter "field"

    .prologue
    .line 49
    instance-of v0, p1, Lentagged/audioformats/mp4/util/Mp4TagTextField;

    if-eqz v0, :cond_0

    .line 50
    check-cast p1, Lentagged/audioformats/mp4/util/Mp4TagTextField;

    .end local p1
    invoke-virtual {p1}, Lentagged/audioformats/mp4/util/Mp4TagTextField;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/mp4/util/Mp4TagTextField;->content:Ljava/lang/String;

    .line 52
    :cond_0
    return-void
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lentagged/audioformats/mp4/util/Mp4TagTextField;->content:Ljava/lang/String;

    return-object v0
.end method

.method protected getDataBytes()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lentagged/audioformats/mp4/util/Mp4TagTextField;->content:Ljava/lang/String;

    invoke-virtual {p0}, Lentagged/audioformats/mp4/util/Mp4TagTextField;->getEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "ISO-8859-1"

    return-object v0
.end method

.method public getRawContent()[B
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 68
    invoke-virtual {p0}, Lentagged/audioformats/mp4/util/Mp4TagTextField;->getDataBytes()[B

    move-result-object v1

    .line 69
    .local v1, data:[B
    array-length v3, v1

    add-int/lit8 v3, v3, 0x18

    new-array v0, v3, [B

    .line 71
    .local v0, b:[B
    const/4 v2, 0x0

    .line 72
    .local v2, offset:I
    array-length v3, v0

    invoke-static {v3}, Lentagged/audioformats/generic/Utils;->getSizeBigEndian(I)[B

    move-result-object v3

    invoke-static {v3, v0, v2}, Lentagged/audioformats/generic/Utils;->copy([B[BI)V

    .line 73
    add-int/lit8 v2, v2, 0x4

    .line 75
    invoke-virtual {p0}, Lentagged/audioformats/mp4/util/Mp4TagTextField;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lentagged/audioformats/generic/Utils;->getDefaultBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v0, v2}, Lentagged/audioformats/generic/Utils;->copy([B[BI)V

    .line 76
    add-int/lit8 v2, v2, 0x4

    .line 78
    array-length v3, v1

    add-int/lit8 v3, v3, 0x10

    invoke-static {v3}, Lentagged/audioformats/generic/Utils;->getSizeBigEndian(I)[B

    move-result-object v3

    invoke-static {v3, v0, v2}, Lentagged/audioformats/generic/Utils;->copy([B[BI)V

    .line 80
    add-int/lit8 v2, v2, 0x4

    .line 82
    const-string v3, "data"

    invoke-static {v3}, Lentagged/audioformats/generic/Utils;->getDefaultBytes(Ljava/lang/String;)[B

    move-result-object v3

    invoke-static {v3, v0, v2}, Lentagged/audioformats/generic/Utils;->copy([B[BI)V

    .line 83
    add-int/lit8 v2, v2, 0x4

    .line 85
    new-array v3, v8, [B

    aput-byte v6, v3, v6

    aput-byte v6, v3, v7

    const/4 v4, 0x2

    aput-byte v6, v3, v4

    const/4 v4, 0x3

    invoke-virtual {p0}, Lentagged/audioformats/mp4/util/Mp4TagTextField;->isBinary()Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    :goto_0
    int-to-byte v5, v5

    aput-byte v5, v3, v4

    invoke-static {v3, v0, v2}, Lentagged/audioformats/generic/Utils;->copy([B[BI)V

    .line 87
    add-int/lit8 v2, v2, 0x4

    .line 89
    new-array v3, v8, [B

    fill-array-data v3, :array_0

    invoke-static {v3, v0, v2}, Lentagged/audioformats/generic/Utils;->copy([B[BI)V

    .line 90
    add-int/lit8 v2, v2, 0x4

    .line 92
    invoke-static {v1, v0, v2}, Lentagged/audioformats/generic/Utils;->copy([B[BI)V

    .line 93
    array-length v3, v1

    add-int/lit8 v2, v3, 0x18

    .line 95
    return-object v0

    :cond_0
    move v5, v7

    .line 85
    goto :goto_0

    .line 89
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
    .line 99
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lentagged/audioformats/mp4/util/Mp4TagTextField;->content:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 107
    iput-object p1, p0, Lentagged/audioformats/mp4/util/Mp4TagTextField;->content:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 112
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lentagged/audioformats/mp4/util/Mp4TagTextField;->content:Ljava/lang/String;

    return-object v0
.end method
