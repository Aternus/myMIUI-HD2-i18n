.class Lcom/miui/player/helper/controller/PlaylistViewController$PlaylistItemClickListener;
.super Ljava/lang/Object;
.source "PlaylistViewController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/controller/PlaylistViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlaylistItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/helper/controller/PlaylistViewController;


# direct methods
.method private constructor <init>(Lcom/miui/player/helper/controller/PlaylistViewController;)V
    .locals 0
    .parameter

    .prologue
    .line 176
    iput-object p1, p0, Lcom/miui/player/helper/controller/PlaylistViewController$PlaylistItemClickListener;->this$0:Lcom/miui/player/helper/controller/PlaylistViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/helper/controller/PlaylistViewController;Lcom/miui/player/helper/controller/PlaylistViewController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/miui/player/helper/controller/PlaylistViewController$PlaylistItemClickListener;-><init>(Lcom/miui/player/helper/controller/PlaylistViewController;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "iv"
    .parameter "position"
    .parameter "itemId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, lv:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController$PlaylistItemClickListener;->this$0:Lcom/miui/player/helper/controller/PlaylistViewController;

    #getter for: Lcom/miui/player/helper/controller/PlaylistViewController;->mBrowserHelper:Lcom/miui/player/model/TrackBrowserHelper;
    invoke-static {v0}, Lcom/miui/player/helper/controller/PlaylistViewController;->access$400(Lcom/miui/player/helper/controller/PlaylistViewController;)Lcom/miui/player/model/TrackBrowserHelper;

    move-result-object v0

    sget-object v1, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    invoke-virtual {v0, v1, p3}, Lcom/miui/player/model/TrackBrowserHelper;->playTrackInPosition(Lcom/miui/player/IMediaPlaybackService;I)V

    .line 181
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController$PlaylistItemClickListener;->this$0:Lcom/miui/player/helper/controller/PlaylistViewController;

    #getter for: Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;
    invoke-static {v0}, Lcom/miui/player/helper/controller/PlaylistViewController;->access$300(Lcom/miui/player/helper/controller/PlaylistViewController;)Lcom/miui/player/model/TrackBrowserAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController$PlaylistItemClickListener;->this$0:Lcom/miui/player/helper/controller/PlaylistViewController;

    #getter for: Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;
    invoke-static {v0}, Lcom/miui/player/helper/controller/PlaylistViewController;->access$300(Lcom/miui/player/helper/controller/PlaylistViewController;)Lcom/miui/player/model/TrackBrowserAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/player/model/TrackBrowserAdapter;->notifyDataSetChanged()V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController$PlaylistItemClickListener;->this$0:Lcom/miui/player/helper/controller/PlaylistViewController;

    const/4 v1, 0x1

    #setter for: Lcom/miui/player/helper/controller/PlaylistViewController;->mUserClick:Z
    invoke-static {v0, v1}, Lcom/miui/player/helper/controller/PlaylistViewController;->access$502(Lcom/miui/player/helper/controller/PlaylistViewController;Z)Z

    .line 185
    return-void
.end method
