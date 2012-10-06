.class public Lentagged/audioformats/mp4/util/Mp4TagTextNumberField;
.super Lentagged/audioformats/mp4/util/Mp4TagTextField;
.source "Mp4TagTextNumberField.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "n"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lentagged/audioformats/mp4/util/Mp4TagTextField;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
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
    .line 32
    invoke-direct {p0, p1, p2}, Lentagged/audioformats/mp4/util/Mp4TagTextField;-><init>(Ljava/lang/String;[B)V

    .line 33
    return-void
.end method


# virtual methods
.method protected build([B)V
    .locals 3
    .parameter "raw"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x10

    const/16 v2, 0x13

    invoke-static {p1, v1, v2}, Lentagged/audioformats/generic/Utils;->getNumberBigEndian([BII)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lentagged/audioformats/mp4/util/Mp4TagTextField;->content:Ljava/lang/String;

    .line 41
    return-void
.end method

.method protected getDataBytes()[B
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lentagged/audioformats/mp4/util/Mp4TagTextField;->content:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lentagged/audioformats/generic/Utils;->getSizeBigEndian(I)[B

    move-result-object v0

    return-object v0
.end method
