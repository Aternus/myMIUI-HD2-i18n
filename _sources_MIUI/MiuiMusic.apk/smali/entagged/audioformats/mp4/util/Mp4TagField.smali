.class public abstract Lentagged/audioformats/mp4/util/Mp4TagField;
.super Ljava/lang/Object;
.source "Mp4TagField.java"

# interfaces
.implements Lentagged/audioformats/generic/TagField;


# instance fields
.field protected id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lentagged/audioformats/mp4/util/Mp4TagField;->id:Ljava/lang/String;

    .line 32
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
    .line 35
    invoke-direct {p0, p1}, Lentagged/audioformats/mp4/util/Mp4TagField;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, p2}, Lentagged/audioformats/mp4/util/Mp4TagField;->build([B)V

    .line 37
    return-void
.end method


# virtual methods
.method protected abstract build([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lentagged/audioformats/mp4/util/Mp4TagField;->id:Ljava/lang/String;

    return-object v0
.end method

.method protected getIdBytes()[B
    .locals 1

    .prologue
    .line 58
    invoke-virtual {p0}, Lentagged/audioformats/mp4/util/Mp4TagField;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lentagged/audioformats/generic/Utils;->getDefaultBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public isBinary(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 45
    return-void
.end method

.method public isCommon()Z
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lentagged/audioformats/mp4/util/Mp4TagField;->id:Ljava/lang/String;

    const-string v1, "ART"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/mp4/util/Mp4TagField;->id:Ljava/lang/String;

    const-string v1, "alb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/mp4/util/Mp4TagField;->id:Ljava/lang/String;

    const-string v1, "nam"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/mp4/util/Mp4TagField;->id:Ljava/lang/String;

    const-string v1, "trkn"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/mp4/util/Mp4TagField;->id:Ljava/lang/String;

    const-string v1, "day"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/mp4/util/Mp4TagField;->id:Ljava/lang/String;

    const-string v1, "cmt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lentagged/audioformats/mp4/util/Mp4TagField;->id:Ljava/lang/String;

    const-string v1, "gen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
