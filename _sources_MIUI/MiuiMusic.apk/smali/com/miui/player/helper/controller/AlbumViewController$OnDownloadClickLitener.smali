.class Lcom/miui/player/helper/controller/AlbumViewController$OnDownloadClickLitener;
.super Ljava/lang/Object;
.source "AlbumViewController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/controller/AlbumViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnDownloadClickLitener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/helper/controller/AlbumViewController;


# direct methods
.method private constructor <init>(Lcom/miui/player/helper/controller/AlbumViewController;)V
    .locals 0
    .parameter

    .prologue
    .line 359
    iput-object p1, p0, Lcom/miui/player/helper/controller/AlbumViewController$OnDownloadClickLitener;->this$0:Lcom/miui/player/helper/controller/AlbumViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/helper/controller/AlbumViewController;Lcom/miui/player/helper/controller/AlbumViewController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 359
    invoke-direct {p0, p1}, Lcom/miui/player/helper/controller/AlbumViewController$OnDownloadClickLitener;-><init>(Lcom/miui/player/helper/controller/AlbumViewController;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 363
    new-instance v1, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;

    invoke-direct {v1}, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;-><init>()V

    .line 364
    .local v1, songItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    sget-object v0, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    .line 366
    .local v0, service:Lcom/miui/player/IMediaPlaybackService;
    if-eqz v0, :cond_0

    .line 367
    :try_start_0
    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->getOnlineId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Id:Ljava/lang/String;

    .line 368
    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Artist:Ljava/lang/String;

    .line 369
    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->getTrackName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Name:Ljava/lang/String;

    .line 370
    invoke-interface {v0}, Lcom/miui/player/IMediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Album:Ljava/lang/String;

    .line 372
    iget-object v2, v1, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Id:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v1, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;->Name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 373
    iget-object v2, p0, Lcom/miui/player/helper/controller/AlbumViewController$OnDownloadClickLitener;->this$0:Lcom/miui/player/helper/controller/AlbumViewController;

    #getter for: Lcom/miui/player/helper/controller/AlbumViewController;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/miui/player/helper/controller/AlbumViewController;->access$100(Lcom/miui/player/helper/controller/AlbumViewController;)Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/miui/player/helper/controller/AlbumViewController$OnDownloadClickLitener$1;

    invoke-direct {v3, p0}, Lcom/miui/player/helper/controller/AlbumViewController$OnDownloadClickLitener$1;-><init>(Lcom/miui/player/helper/controller/AlbumViewController$OnDownloadClickLitener;)V

    invoke-static {v2, v1, v3}, Lcom/miui/player/helper/OnlinePlayHelper;->download(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    :cond_0
    :goto_0
    return-void

    .line 381
    :catch_0
    move-exception v2

    goto :goto_0
.end method
