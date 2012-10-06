.class Lcom/miui/player/MediaPlaybackService$ClearNextBuffered;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Lcom/miui/player/helper/ShuffleTracer$OnTraceableShufferExpand;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClearNextBuffered"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/MediaPlaybackService;


# direct methods
.method private constructor <init>(Lcom/miui/player/MediaPlaybackService;)V
    .locals 0
    .parameter

    .prologue
    .line 2095
    iput-object p1, p0, Lcom/miui/player/MediaPlaybackService$ClearNextBuffered;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/MediaPlaybackService;Lcom/miui/player/MediaPlaybackService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2095
    invoke-direct {p0, p1}, Lcom/miui/player/MediaPlaybackService$ClearNextBuffered;-><init>(Lcom/miui/player/MediaPlaybackService;)V

    return-void
.end method


# virtual methods
.method public onExpand()V
    .locals 3

    .prologue
    .line 2099
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$ClearNextBuffered;->this$0:Lcom/miui/player/MediaPlaybackService;

    #getter for: Lcom/miui/player/MediaPlaybackService;->mPlayer:Lcom/miui/player/helper/AsyncMusicPlayer;
    invoke-static {v0}, Lcom/miui/player/MediaPlaybackService;->access$3000(Lcom/miui/player/MediaPlaybackService;)Lcom/miui/player/helper/AsyncMusicPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$ClearNextBuffered;->this$0:Lcom/miui/player/MediaPlaybackService;

    #getter for: Lcom/miui/player/MediaPlaybackService;->mShuffleMode:I
    invoke-static {v1}, Lcom/miui/player/MediaPlaybackService;->access$2900(Lcom/miui/player/MediaPlaybackService;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/player/MediaPlaybackService$ClearNextBuffered;->this$0:Lcom/miui/player/MediaPlaybackService;

    #getter for: Lcom/miui/player/MediaPlaybackService;->mShuffleMode:I
    invoke-static {v2}, Lcom/miui/player/MediaPlaybackService;->access$2900(Lcom/miui/player/MediaPlaybackService;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/miui/player/helper/AsyncMusicPlayer;->changeMode(II)V

    .line 2100
    return-void
.end method
