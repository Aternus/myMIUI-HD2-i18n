.class Lcom/miui/player/MediaPlaybackService$2;
.super Landroid/os/Handler;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/MediaPlaybackService;


# direct methods
.method constructor <init>(Lcom/miui/player/MediaPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 424
    iput-object p1, p0, Lcom/miui/player/MediaPlaybackService$2;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x1

    .line 427
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 437
    :goto_0
    return-void

    .line 429
    :pswitch_0
    new-instance v0, Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;

    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$2;->this$0:Lcom/miui/player/MediaPlaybackService;

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/player/MediaPlaybackService$2;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v5}, Lcom/miui/player/MediaPlaybackService;->getAlbumName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/player/MediaPlaybackService$2;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v6}, Lcom/miui/player/MediaPlaybackService;->getArtistName()Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/player/model/AlbumBrowserAdapter;->removeCacheAlbum(Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;)Z

    .line 431
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$2;->this$0:Lcom/miui/player/MediaPlaybackService;

    const-string v1, "meta_changed_album"

    #calls: Lcom/miui/player/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v7}, Lcom/miui/player/MediaPlaybackService;->access$1000(Lcom/miui/player/MediaPlaybackService;Ljava/lang/String;Z)V

    goto :goto_0

    .line 434
    :pswitch_1
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$2;->this$0:Lcom/miui/player/MediaPlaybackService;

    const-string v1, "meta_changed_lyric"

    #calls: Lcom/miui/player/MediaPlaybackService;->notifyMetaChange(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v7}, Lcom/miui/player/MediaPlaybackService;->access$1000(Lcom/miui/player/MediaPlaybackService;Ljava/lang/String;Z)V

    goto :goto_0

    .line 427
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
