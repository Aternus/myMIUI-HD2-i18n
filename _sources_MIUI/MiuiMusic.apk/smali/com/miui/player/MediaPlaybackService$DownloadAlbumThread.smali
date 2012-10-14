.class Lcom/miui/player/MediaPlaybackService$DownloadAlbumThread;
.super Ljava/lang/Thread;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DownloadAlbumThread"
.end annotation


# instance fields
.field private final mAlbumName:Ljava/lang/String;

.field private final mArtistName:Ljava/lang/String;

.field private final mTrackName:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/player/MediaPlaybackService;


# direct methods
.method public constructor <init>(Lcom/miui/player/MediaPlaybackService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "trackName"
    .parameter "albumName"
    .parameter "artistName"

    .prologue
    .line 401
    iput-object p1, p0, Lcom/miui/player/MediaPlaybackService$DownloadAlbumThread;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 402
    iput-object p2, p0, Lcom/miui/player/MediaPlaybackService$DownloadAlbumThread;->mTrackName:Ljava/lang/String;

    .line 403
    iput-object p3, p0, Lcom/miui/player/MediaPlaybackService$DownloadAlbumThread;->mAlbumName:Ljava/lang/String;

    .line 404
    iput-object p4, p0, Lcom/miui/player/MediaPlaybackService$DownloadAlbumThread;->mArtistName:Ljava/lang/String;

    .line 405
    return-void
.end method

.method static synthetic access$2600(Lcom/miui/player/MediaPlaybackService$DownloadAlbumThread;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$DownloadAlbumThread;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/miui/player/MediaPlaybackService$DownloadAlbumThread;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$DownloadAlbumThread;->mArtistName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 409
    iget-object v5, p0, Lcom/miui/player/MediaPlaybackService$DownloadAlbumThread;->this$0:Lcom/miui/player/MediaPlaybackService;

    const v6, 0x7f0800e9

    invoke-virtual {v5, v6}, Lcom/miui/player/MediaPlaybackService;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 410
    .local v4, urlPattern:Ljava/lang/String;
    const/4 v0, 0x3

    .line 411
    .local v0, RETRY:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v5, 0x3

    if-ge v2, v5, :cond_0

    .line 412
    new-instance v5, Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;

    iget-object v6, p0, Lcom/miui/player/MediaPlaybackService$DownloadAlbumThread;->mTrackName:Ljava/lang/String;

    iget-object v7, p0, Lcom/miui/player/MediaPlaybackService$DownloadAlbumThread;->mAlbumName:Ljava/lang/String;

    iget-object v8, p0, Lcom/miui/player/MediaPlaybackService$DownloadAlbumThread;->mArtistName:Ljava/lang/String;

    invoke-direct {v5, v6, v7, v8}, Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4, v5}, Lcom/miui/player/helper/MusicMetaManager;->downloadAlbum(Ljava/lang/String;Lcom/miui/player/helper/MusicMetaManager$MetaDownloadInfo;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 414
    .local v1, bm:Landroid/graphics/Bitmap;
    if-eqz v1, :cond_1

    iget-object v5, p0, Lcom/miui/player/MediaPlaybackService$DownloadAlbumThread;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v5}, Lcom/miui/player/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/player/MediaPlaybackService$DownloadAlbumThread;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/miui/player/MediaPlaybackService$DownloadAlbumThread;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v5}, Lcom/miui/player/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/player/MediaPlaybackService$DownloadAlbumThread;->mArtistName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 415
    iget-object v5, p0, Lcom/miui/player/MediaPlaybackService$DownloadAlbumThread;->this$0:Lcom/miui/player/MediaPlaybackService;

    #getter for: Lcom/miui/player/MediaPlaybackService;->mMetaDownloadHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/miui/player/MediaPlaybackService;->access$900(Lcom/miui/player/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 416
    .local v3, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/miui/player/MediaPlaybackService$DownloadAlbumThread;->this$0:Lcom/miui/player/MediaPlaybackService;

    #getter for: Lcom/miui/player/MediaPlaybackService;->mMetaDownloadHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/miui/player/MediaPlaybackService;->access$900(Lcom/miui/player/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 421
    .end local v1           #bm:Landroid/graphics/Bitmap;
    .end local v3           #msg:Landroid/os/Message;
    :cond_0
    return-void

    .line 411
    .restart local v1       #bm:Landroid/graphics/Bitmap;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
