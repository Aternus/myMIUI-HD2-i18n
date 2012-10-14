.class Lcom/miui/player/helper/controller/PlaylistViewController$1;
.super Landroid/content/BroadcastReceiver;
.source "PlaylistViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/controller/PlaylistViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/helper/controller/PlaylistViewController;


# direct methods
.method constructor <init>(Lcom/miui/player/helper/controller/PlaylistViewController;)V
    .locals 0
    .parameter

    .prologue
    .line 166
    iput-object p1, p0, Lcom/miui/player/helper/controller/PlaylistViewController$1;->this$0:Lcom/miui/player/helper/controller/PlaylistViewController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 169
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController$1;->this$0:Lcom/miui/player/helper/controller/PlaylistViewController;

    #getter for: Lcom/miui/player/helper/controller/PlaylistViewController;->mService:Lcom/miui/player/IMediaPlaybackService;
    invoke-static {v0}, Lcom/miui/player/helper/controller/PlaylistViewController;->access$200(Lcom/miui/player/helper/controller/PlaylistViewController;)Lcom/miui/player/IMediaPlaybackService;

    move-result-object v0

    if-nez v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController$1;->this$0:Lcom/miui/player/helper/controller/PlaylistViewController;

    #getter for: Lcom/miui/player/helper/controller/PlaylistViewController;->mBrowserHelper:Lcom/miui/player/model/TrackBrowserHelper;
    invoke-static {v0}, Lcom/miui/player/helper/controller/PlaylistViewController;->access$400(Lcom/miui/player/helper/controller/PlaylistViewController;)Lcom/miui/player/model/TrackBrowserHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/helper/controller/PlaylistViewController$1;->this$0:Lcom/miui/player/helper/controller/PlaylistViewController;

    #getter for: Lcom/miui/player/helper/controller/PlaylistViewController;->mService:Lcom/miui/player/IMediaPlaybackService;
    invoke-static {v1}, Lcom/miui/player/helper/controller/PlaylistViewController;->access$200(Lcom/miui/player/helper/controller/PlaylistViewController;)Lcom/miui/player/IMediaPlaybackService;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/player/helper/controller/PlaylistViewController$1;->this$0:Lcom/miui/player/helper/controller/PlaylistViewController;

    #getter for: Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;
    invoke-static {v2}, Lcom/miui/player/helper/controller/PlaylistViewController;->access$300(Lcom/miui/player/helper/controller/PlaylistViewController;)Lcom/miui/player/model/TrackBrowserAdapter;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/miui/player/model/TrackBrowserHelper;->onReceiveNowPlaying(Lcom/miui/player/IMediaPlaybackService;Landroid/widget/SimpleCursorAdapter;Landroid/content/Intent;)V

    goto :goto_0
.end method
