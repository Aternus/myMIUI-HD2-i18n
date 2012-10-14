.class public Lentagged/audioformats/AudioFile;
.super Ljava/io/File;
.source "AudioFile.java"


# instance fields
.field private id:I

.field private info:Lentagged/audioformats/EncodingInfo;

.field private tag:Lentagged/audioformats/Tag;


# direct methods
.method public constructor <init>(Ljava/io/File;Lentagged/audioformats/EncodingInfo;)V
    .locals 1
    .parameter "f"
    .parameter "info"

    .prologue
    .line 52
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 53
    iput-object p2, p0, Lentagged/audioformats/AudioFile;->info:Lentagged/audioformats/EncodingInfo;

    .line 54
    new-instance v0, Lentagged/audioformats/generic/GenericTag;

    invoke-direct {v0}, Lentagged/audioformats/generic/GenericTag;-><init>()V

    iput-object v0, p0, Lentagged/audioformats/AudioFile;->tag:Lentagged/audioformats/Tag;

    .line 55
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lentagged/audioformats/EncodingInfo;Lentagged/audioformats/Tag;)V
    .locals 1
    .parameter "f"
    .parameter "info"
    .parameter "tag"

    .prologue
    .line 66
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    iput-object p2, p0, Lentagged/audioformats/AudioFile;->info:Lentagged/audioformats/EncodingInfo;

    .line 68
    iput-object p3, p0, Lentagged/audioformats/AudioFile;->tag:Lentagged/audioformats/Tag;

    .line 69
    return-void
.end method


# virtual methods
.method public commit()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/CannotWriteException;
        }
    .end annotation

    .prologue
    .line 78
    invoke-static {p0}, Lentagged/audioformats/AudioFileIO;->write(Lentagged/audioformats/AudioFile;)V

    .line 79
    return-void
.end method

.method public getBitrate()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lentagged/audioformats/AudioFile;->info:Lentagged/audioformats/EncodingInfo;

    invoke-virtual {v0}, Lentagged/audioformats/EncodingInfo;->getBitrate()I

    move-result v0

    return v0
.end method

.method public getChannelNumber()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lentagged/audioformats/AudioFile;->info:Lentagged/audioformats/EncodingInfo;

    invoke-virtual {v0}, Lentagged/audioformats/EncodingInfo;->getChannelNumber()I

    move-result v0

    return v0
.end method

.method public getEncodingType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lentagged/audioformats/AudioFile;->info:Lentagged/audioformats/EncodingInfo;

    invoke-virtual {v0}, Lentagged/audioformats/EncodingInfo;->getEncodingType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtraEncodingInfos()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lentagged/audioformats/AudioFile;->info:Lentagged/audioformats/EncodingInfo;

    invoke-virtual {v0}, Lentagged/audioformats/EncodingInfo;->getExtraEncodingInfos()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getID()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lentagged/audioformats/AudioFile;->id:I

    return v0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lentagged/audioformats/AudioFile;->info:Lentagged/audioformats/EncodingInfo;

    invoke-virtual {v0}, Lentagged/audioformats/EncodingInfo;->getLength()I

    move-result v0

    return v0
.end method

.method public getPreciseLength()F
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lentagged/audioformats/AudioFile;->info:Lentagged/audioformats/EncodingInfo;

    invoke-virtual {v0}, Lentagged/audioformats/EncodingInfo;->getPreciseLength()F

    move-result v0

    return v0
.end method

.method public getSamplingRate()I
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lentagged/audioformats/AudioFile;->info:Lentagged/audioformats/EncodingInfo;

    invoke-virtual {v0}, Lentagged/audioformats/EncodingInfo;->getSamplingRate()I

    move-result v0

    return v0
.end method

.method public getTag()Lentagged/audioformats/Tag;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lentagged/audioformats/AudioFile;->tag:Lentagged/audioformats/Tag;

    if-nez v0, :cond_0

    new-instance v0, Lentagged/audioformats/generic/GenericTag;

    invoke-direct {v0}, Lentagged/audioformats/generic/GenericTag;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lentagged/audioformats/AudioFile;->tag:Lentagged/audioformats/Tag;

    goto :goto_0
.end method

.method public isVbr()Z
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lentagged/audioformats/AudioFile;->info:Lentagged/audioformats/EncodingInfo;

    invoke-virtual {v0}, Lentagged/audioformats/EncodingInfo;->isVbr()Z

    move-result v0

    return v0
.end method

.method public setID(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 181
    iput p1, p0, Lentagged/audioformats/AudioFile;->id:I

    .line 182
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioFile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lentagged/audioformats/AudioFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  --------\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lentagged/audioformats/AudioFile;->info:Lentagged/audioformats/EncodingInfo;

    invoke-virtual {v1}, Lentagged/audioformats/EncodingInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lentagged/audioformats/AudioFile;->tag:Lentagged/audioformats/Tag;

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n-------------------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lentagged/audioformats/AudioFile;->tag:Lentagged/audioformats/Tag;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
