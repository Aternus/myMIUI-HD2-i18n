.class Lcom/miui/player/helper/AsyncMusicPlayer$ErrorMessage;
.super Ljava/lang/Object;
.source "AsyncMusicPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/AsyncMusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ErrorMessage"
.end annotation


# instance fields
.field private final extra:I

.field private final mp:Landroid/media/MediaPlayer;

.field final synthetic this$0:Lcom/miui/player/helper/AsyncMusicPlayer;

.field private final what:I


# direct methods
.method public constructor <init>(Lcom/miui/player/helper/AsyncMusicPlayer;Landroid/media/MediaPlayer;II)V
    .locals 0
    .parameter
    .parameter "mpA"
    .parameter "whatA"
    .parameter "extraA"

    .prologue
    .line 459
    iput-object p1, p0, Lcom/miui/player/helper/AsyncMusicPlayer$ErrorMessage;->this$0:Lcom/miui/player/helper/AsyncMusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 460
    iput-object p2, p0, Lcom/miui/player/helper/AsyncMusicPlayer$ErrorMessage;->mp:Landroid/media/MediaPlayer;

    .line 461
    iput p3, p0, Lcom/miui/player/helper/AsyncMusicPlayer$ErrorMessage;->what:I

    .line 462
    iput p4, p0, Lcom/miui/player/helper/AsyncMusicPlayer$ErrorMessage;->extra:I

    .line 463
    return-void
.end method

.method static synthetic access$1100(Lcom/miui/player/helper/AsyncMusicPlayer$ErrorMessage;)Landroid/media/MediaPlayer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 452
    iget-object v0, p0, Lcom/miui/player/helper/AsyncMusicPlayer$ErrorMessage;->mp:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/player/helper/AsyncMusicPlayer$ErrorMessage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 452
    iget v0, p0, Lcom/miui/player/helper/AsyncMusicPlayer$ErrorMessage;->what:I

    return v0
.end method

.method static synthetic access$1300(Lcom/miui/player/helper/AsyncMusicPlayer$ErrorMessage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 452
    iget v0, p0, Lcom/miui/player/helper/AsyncMusicPlayer$ErrorMessage;->extra:I

    return v0
.end method
