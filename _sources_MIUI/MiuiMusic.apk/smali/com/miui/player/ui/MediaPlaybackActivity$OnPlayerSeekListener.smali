.class Lcom/miui/player/ui/MediaPlaybackActivity$OnPlayerSeekListener;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Lcom/miui/player/helper/controller/TimeIndicatorController$OnProgressSeekListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnPlayerSeekListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/MediaPlaybackActivity;


# direct methods
.method private constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1560
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnPlayerSeekListener;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity;Lcom/miui/player/ui/MediaPlaybackActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1560
    invoke-direct {p0, p1}, Lcom/miui/player/ui/MediaPlaybackActivity$OnPlayerSeekListener;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    return-void
.end method


# virtual methods
.method public seek(II)V
    .locals 7
    .parameter "progress"
    .parameter "max"

    .prologue
    .line 1564
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnPlayerSeekListener;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    #getter for: Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;
    invoke-static {v2}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$2100(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/IMediaPlaybackService;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1566
    :try_start_0
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnPlayerSeekListener;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    #getter for: Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;
    invoke-static {v2}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$2100(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/IMediaPlaybackService;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/player/IMediaPlaybackService;->duration()J

    move-result-wide v0

    .line 1567
    .local v0, duration:J
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnPlayerSeekListener;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    #getter for: Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;
    invoke-static {v2}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$2100(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/IMediaPlaybackService;

    move-result-object v2

    int-to-long v3, p1

    mul-long/2addr v3, v0

    int-to-long v5, p2

    div-long/2addr v3, v5

    invoke-interface {v2, v3, v4}, Lcom/miui/player/IMediaPlaybackService;->seek(J)J

    .line 1568
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnPlayerSeekListener;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    #getter for: Lcom/miui/player/ui/MediaPlaybackActivity;->mIsLyricProgressModify:Z
    invoke-static {v2}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$2200(Lcom/miui/player/ui/MediaPlaybackActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1569
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnPlayerSeekListener;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    #getter for: Lcom/miui/player/ui/MediaPlaybackActivity;->mLyricController:Lcom/miui/player/helper/controller/LyricViewController;
    invoke-static {v2}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$2800(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/helper/controller/LyricViewController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/player/helper/controller/LyricViewController;->resetLyricHeaderOffset()V

    .line 1573
    :cond_0
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnPlayerSeekListener;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    #getter for: Lcom/miui/player/ui/MediaPlaybackActivity;->mService:Lcom/miui/player/IMediaPlaybackService;
    invoke-static {v2}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$2100(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/IMediaPlaybackService;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/player/IMediaPlaybackService;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1574
    iget-object v2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnPlayerSeekListener;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-static {}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$2900()[I

    move-result-object v3

    iget-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity$OnPlayerSeekListener;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    #getter for: Lcom/miui/player/ui/MediaPlaybackActivity;->mActiveIndexer:I
    invoke-static {v4}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$3000(Lcom/miui/player/ui/MediaPlaybackActivity;)I

    move-result v4

    aget v3, v3, v4

    int-to-long v3, v3

    #calls: Lcom/miui/player/ui/MediaPlaybackActivity;->queueNextRefresh(J)V
    invoke-static {v2, v3, v4}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$800(Lcom/miui/player/ui/MediaPlaybackActivity;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1579
    .end local v0           #duration:J
    :cond_1
    :goto_0
    return-void

    .line 1576
    :catch_0
    move-exception v2

    goto :goto_0
.end method
