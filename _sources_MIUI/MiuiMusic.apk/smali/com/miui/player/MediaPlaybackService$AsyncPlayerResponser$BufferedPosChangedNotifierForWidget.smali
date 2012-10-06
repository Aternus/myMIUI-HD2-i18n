.class Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser$BufferedPosChangedNotifierForWidget;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"

# interfaces
.implements Lcom/miui/player/helper/BufferedMediaPlayer$OnBufferedPositionChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BufferedPosChangedNotifierForWidget"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;


# direct methods
.method private constructor <init>(Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;)V
    .locals 0
    .parameter

    .prologue
    .line 2486
    iput-object p1, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser$BufferedPosChangedNotifierForWidget;->this$1:Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;Lcom/miui/player/MediaPlaybackService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2486
    invoke-direct {p0, p1}, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser$BufferedPosChangedNotifierForWidget;-><init>(Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;)V

    return-void
.end method


# virtual methods
.method public onBufferedPositionChanged(F)V
    .locals 2
    .parameter "bufferedPer"

    .prologue
    .line 2491
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser$BufferedPosChangedNotifierForWidget;->this$1:Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;

    iget-object v0, v0, Lcom/miui/player/MediaPlaybackService$AsyncPlayerResponser;->this$0:Lcom/miui/player/MediaPlaybackService;

    const-string v1, "com.miui.player.refreshprogress"

    #calls: Lcom/miui/player/MediaPlaybackService;->notifyChange(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/miui/player/MediaPlaybackService;->access$600(Lcom/miui/player/MediaPlaybackService;Ljava/lang/String;)V

    .line 2492
    return-void
.end method
