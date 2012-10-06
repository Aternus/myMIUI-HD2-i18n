.class Lcom/miui/player/MediaPlaybackService$LyricOpenRunnable;
.super Lcom/miui/player/helper/LyricDownloader$LyricAsyncCallback;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LyricOpenRunnable"
.end annotation


# instance fields
.field private final rArtist:Ljava/lang/String;

.field private final rTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/player/MediaPlaybackService;


# direct methods
.method public constructor <init>(Lcom/miui/player/MediaPlaybackService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "title"
    .parameter "artist"

    .prologue
    .line 446
    iput-object p1, p0, Lcom/miui/player/MediaPlaybackService$LyricOpenRunnable;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-direct {p0}, Lcom/miui/player/helper/LyricDownloader$LyricAsyncCallback;-><init>()V

    .line 447
    iput-object p2, p0, Lcom/miui/player/MediaPlaybackService$LyricOpenRunnable;->rTitle:Ljava/lang/String;

    .line 448
    iput-object p3, p0, Lcom/miui/player/MediaPlaybackService$LyricOpenRunnable;->rArtist:Ljava/lang/String;

    .line 449
    return-void
.end method

.method private isPlayingTrack(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "title"
    .parameter "artist"

    .prologue
    const/4 v3, 0x0

    .line 469
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v3

    .line 476
    :goto_0
    return v2

    .line 473
    :cond_0
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService$LyricOpenRunnable;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/miui/player/MediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v1

    .line 474
    .local v1, currentTrackName:Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService$LyricOpenRunnable;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v2}, Lcom/miui/player/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, currentArtistName:Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_0
.end method


# virtual methods
.method public isAutoChoose()Z
    .locals 1

    .prologue
    .line 482
    const/4 v0, 0x1

    return v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 453
    const/4 v0, 0x0

    .line 454
    .local v0, lyric:Lcom/miui/player/plugin/onlinelyric/LyricContent;
    iget-object v2, p0, Lcom/miui/player/helper/LyricDownloader$LyricAsyncCallback;->mInfoList:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/miui/player/helper/LyricDownloader$LyricAsyncCallback;->mInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 455
    iget-object v2, p0, Lcom/miui/player/helper/LyricDownloader$LyricAsyncCallback;->mInfoList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;

    invoke-virtual {v2}, Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;->getContent()Lcom/miui/player/plugin/onlinelyric/LyricContent;

    move-result-object v0

    .line 456
    if-eqz v0, :cond_0

    .line 457
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService$LyricOpenRunnable;->rTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService$LyricOpenRunnable;->rArtist:Ljava/lang/String;

    invoke-static {v2, v3, v0}, Lcom/miui/player/helper/MusicMetaManager;->saveLyricFile(Ljava/lang/String;Ljava/lang/String;Lcom/miui/player/plugin/onlinelyric/LyricContent;)Z

    .line 460
    :cond_0
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService$LyricOpenRunnable;->rTitle:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/player/MediaPlaybackService$LyricOpenRunnable;->rArtist:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/miui/player/MediaPlaybackService$LyricOpenRunnable;->isPlayingTrack(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 466
    :goto_0
    return-void

    .line 464
    :cond_1
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService$LyricOpenRunnable;->this$0:Lcom/miui/player/MediaPlaybackService;

    #getter for: Lcom/miui/player/MediaPlaybackService;->mMetaDownloadHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/miui/player/MediaPlaybackService;->access$900(Lcom/miui/player/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 465
    .local v1, msg:Landroid/os/Message;
    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService$LyricOpenRunnable;->this$0:Lcom/miui/player/MediaPlaybackService;

    #getter for: Lcom/miui/player/MediaPlaybackService;->mMetaDownloadHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/miui/player/MediaPlaybackService;->access$900(Lcom/miui/player/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
