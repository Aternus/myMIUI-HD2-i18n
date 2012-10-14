.class public Lentagged/audioformats/generic/AudioFileModificationAdapter;
.super Ljava/lang/Object;
.source "AudioFileModificationAdapter.java"

# interfaces
.implements Lentagged/audioformats/generic/AudioFileModificationListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fileModified(Lentagged/audioformats/AudioFile;Ljava/io/File;)V
    .locals 0
    .parameter "original"
    .parameter "temporary"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/ModifyVetoException;
        }
    .end annotation

    .prologue
    .line 44
    return-void
.end method

.method public fileOperationFinished(Ljava/io/File;)V
    .locals 0
    .parameter "result"

    .prologue
    .line 53
    return-void
.end method

.method public fileWillBeModified(Lentagged/audioformats/AudioFile;Z)V
    .locals 0
    .parameter "file"
    .parameter "delete"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lentagged/audioformats/exceptions/ModifyVetoException;
        }
    .end annotation

    .prologue
    .line 64
    return-void
.end method

.method public vetoThrown(Lentagged/audioformats/generic/AudioFileModificationListener;Lentagged/audioformats/AudioFile;Lentagged/audioformats/exceptions/ModifyVetoException;)V
    .locals 0
    .parameter "cause"
    .parameter "original"
    .parameter "veto"

    .prologue
    .line 76
    return-void
.end method
