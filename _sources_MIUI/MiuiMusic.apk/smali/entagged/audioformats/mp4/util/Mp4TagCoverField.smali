.class public Lentagged/audioformats/mp4/util/Mp4TagCoverField;
.super Lentagged/audioformats/mp4/util/Mp4TagBinaryField;
.source "Mp4TagCoverField.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "covr"

    invoke-direct {p0, v0}, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;-><init>(Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public constructor <init>([B)V
    .locals 1
    .parameter "raw"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 29
    const-string v0, "covr"

    invoke-direct {p0, v0, p1}, Lentagged/audioformats/mp4/util/Mp4TagBinaryField;-><init>(Ljava/lang/String;[B)V

    .line 30
    return-void
.end method


# virtual methods
.method public isBinary()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x1

    return v0
.end method
