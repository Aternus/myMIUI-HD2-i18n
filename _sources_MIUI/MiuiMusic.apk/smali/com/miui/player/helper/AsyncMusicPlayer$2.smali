.class Lcom/miui/player/helper/AsyncMusicPlayer$2;
.super Ljava/lang/Object;
.source "AsyncMusicPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/AsyncMusicPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/helper/AsyncMusicPlayer;


# direct methods
.method constructor <init>(Lcom/miui/player/helper/AsyncMusicPlayer;)V
    .locals 0
    .parameter

    .prologue
    .line 441
    iput-object p1, p0, Lcom/miui/player/helper/AsyncMusicPlayer$2;->this$0:Lcom/miui/player/helper/AsyncMusicPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3
    .parameter "mp"

    .prologue
    .line 445
    iget-object v1, p0, Lcom/miui/player/helper/AsyncMusicPlayer$2;->this$0:Lcom/miui/player/helper/AsyncMusicPlayer;

    #getter for: Lcom/miui/player/helper/AsyncMusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/player/helper/AsyncMusicPlayer;->access$1600(Lcom/miui/player/helper/AsyncMusicPlayer;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 446
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 447
    iget-object v1, p0, Lcom/miui/player/helper/AsyncMusicPlayer$2;->this$0:Lcom/miui/player/helper/AsyncMusicPlayer;

    #getter for: Lcom/miui/player/helper/AsyncMusicPlayer;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/player/helper/AsyncMusicPlayer;->access$1600(Lcom/miui/player/helper/AsyncMusicPlayer;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 448
    return-void
.end method
