.class Lcom/miui/player/MediaPlaybackService$ServiceStub;
.super Lcom/miui/player/IMediaPlaybackService$Stub;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ServiceStub"
.end annotation


# instance fields
.field mService:Lcom/miui/player/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/miui/player/MediaPlaybackService;)V
    .locals 0
    .parameter "service"

    .prologue
    .line 2824
    invoke-direct {p0}, Lcom/miui/player/IMediaPlaybackService$Stub;-><init>()V

    .line 2825
    iput-object p1, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Lcom/miui/player/MediaPlaybackService;

    .line 2826
    return-void
.end method


# virtual methods
.method public duration()J
    .locals 2

    .prologue
    .line 2921
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService;->duration()J

    move-result-wide v0

    return-wide v0
.end method

.method public enqueue([JI)V
    .locals 1
    .parameter "list"
    .parameter "action"

    .prologue
    .line 2897
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/miui/player/MediaPlaybackService;->enqueue([JI)V

    .line 2898
    return-void
.end method

.method public getAbsolutePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2969
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAlbumId()J
    .locals 2

    .prologue
    .line 2881
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService;->getAlbumId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2877
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getArtistId()J
    .locals 2

    .prologue
    .line 2889
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService;->getArtistId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2885
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioId()J
    .locals 2

    .prologue
    .line 2913
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService;->getAudioId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBufferedPercent()F
    .locals 1

    .prologue
    .line 2989
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService;->getBufferedPercent()F

    move-result v0

    return v0
.end method

.method public getBufferedPosition()J
    .locals 2

    .prologue
    .line 2977
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService;->getBufferedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLyricStatus()I
    .locals 1

    .prologue
    .line 2965
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService;->getLyricStatus()I

    move-result v0

    return v0
.end method

.method public getMediaMountedCount()I
    .locals 1

    .prologue
    .line 2957
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService;->getMediaMountedCount()I

    move-result v0

    return v0
.end method

.method public getOnlineId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2893
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService;->getOnlineId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2909
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQueue()[J
    .locals 1

    .prologue
    .line 2901
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService;->getQueue()[J

    move-result-object v0

    return-object v0
.end method

.method public getQueuePosition()I
    .locals 1

    .prologue
    .line 2837
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService;->getQueuePosition()I

    move-result v0

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .prologue
    .line 2941
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public getShuffleMode()I
    .locals 1

    .prologue
    .line 2937
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService;->getShuffleMode()I

    move-result v0

    return v0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2873
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBlocking()Z
    .locals 1

    .prologue
    .line 2973
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService;->isBlocking()Z

    move-result v0

    return v0
.end method

.method public isBuffering()Z
    .locals 1

    .prologue
    .line 2849
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService;->isBuffering()Z

    move-result v0

    return v0
.end method

.method public isOneShot()Z
    .locals 1

    .prologue
    .line 2961
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService;->isOneShot()Z

    move-result v0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 2845
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public moveQueueItem(II)V
    .locals 1
    .parameter "from"
    .parameter "to"

    .prologue
    .line 2905
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/miui/player/MediaPlaybackService;->moveQueueItem(II)V

    .line 2906
    return-void
.end method

.method public next()V
    .locals 2

    .prologue
    .line 2869
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Lcom/miui/player/MediaPlaybackService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/player/MediaPlaybackService;->next(Z)V

    .line 2870
    return-void
.end method

.method public open([JI)V
    .locals 1
    .parameter "list"
    .parameter "position"

    .prologue
    .line 2833
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/miui/player/MediaPlaybackService;->open([JI)V

    .line 2834
    return-void
.end method

.method public openFile(Ljava/lang/String;Z)V
    .locals 2
    .parameter "path"
    .parameter "oneShot"

    .prologue
    const/4 v1, 0x1

    .line 2829
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0, p1, p2, v1, v1}, Lcom/miui/player/MediaPlaybackService;->open(Ljava/lang/String;ZZZ)V

    .line 2830
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 2857
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService;->pause()V

    .line 2858
    return-void
.end method

.method public play()V
    .locals 1

    .prologue
    .line 2861
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService;->play()V

    .line 2862
    return-void
.end method

.method public position()J
    .locals 2

    .prologue
    .line 2917
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public prev()V
    .locals 1

    .prologue
    .line 2865
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService;->prev()V

    .line 2866
    return-void
.end method

.method public quit()V
    .locals 1

    .prologue
    .line 2985
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService;->quit()V

    .line 2986
    return-void
.end method

.method public removeTrack(J)I
    .locals 1
    .parameter "id"

    .prologue
    .line 2953
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/miui/player/MediaPlaybackService;->removeTrack(J)I

    move-result v0

    return v0
.end method

.method public removeTracks(II)I
    .locals 1
    .parameter "first"
    .parameter "last"

    .prologue
    .line 2945
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/miui/player/MediaPlaybackService;->removeTracks(II)I

    move-result v0

    return v0
.end method

.method public removeTracksBatch([I)I
    .locals 1
    .parameter "rmPosArr"

    .prologue
    .line 2949
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/miui/player/MediaPlaybackService;->removeTracks([I)I

    move-result v0

    return v0
.end method

.method public seek(J)J
    .locals 2
    .parameter "pos"

    .prologue
    .line 2925
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0, p1, p2}, Lcom/miui/player/MediaPlaybackService;->seek(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public setQueuePosition(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 2841
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/miui/player/MediaPlaybackService;->setQueuePosition(I)V

    .line 2842
    return-void
.end method

.method public setRepeatMode(I)V
    .locals 1
    .parameter "repeatMode"

    .prologue
    .line 2933
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/miui/player/MediaPlaybackService;->setRepeatMode(I)V

    .line 2934
    return-void
.end method

.method public setShuffleMode(I)V
    .locals 1
    .parameter "shuffleMode"

    .prologue
    .line 2929
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/miui/player/MediaPlaybackService;->setShuffleMode(I)V

    .line 2930
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 2853
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService;->stop()V

    .line 2854
    return-void
.end method

.method public updateEqualizerBands([I)V
    .locals 1
    .parameter "levels"

    .prologue
    .line 2981
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ServiceStub;->mService:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0, p1}, Lcom/miui/player/MediaPlaybackService;->updateEqualizerBands([I)V

    .line 2982
    return-void
.end method
