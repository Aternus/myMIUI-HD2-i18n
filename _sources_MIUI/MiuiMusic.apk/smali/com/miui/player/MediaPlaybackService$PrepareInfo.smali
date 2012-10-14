.class Lcom/miui/player/MediaPlaybackService$PrepareInfo;
.super Ljava/lang/Object;
.source "MediaPlaybackService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/MediaPlaybackService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrepareInfo"
.end annotation


# instance fields
.field public final isFirst:Z

.field public final nextAudioId:J

.field final synthetic this$0:Lcom/miui/player/MediaPlaybackService;

.field public final trackName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/player/MediaPlaybackService;ZJLjava/lang/String;)V
    .locals 0
    .parameter
    .parameter "isFirstA"
    .parameter "nextAudioIdA"
    .parameter "trackNameA"

    .prologue
    .line 1540
    iput-object p1, p0, Lcom/miui/player/MediaPlaybackService$PrepareInfo;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1541
    iput-boolean p2, p0, Lcom/miui/player/MediaPlaybackService$PrepareInfo;->isFirst:Z

    .line 1542
    iput-wide p3, p0, Lcom/miui/player/MediaPlaybackService$PrepareInfo;->nextAudioId:J

    .line 1543
    iput-object p5, p0, Lcom/miui/player/MediaPlaybackService$PrepareInfo;->trackName:Ljava/lang/String;

    .line 1544
    return-void
.end method
