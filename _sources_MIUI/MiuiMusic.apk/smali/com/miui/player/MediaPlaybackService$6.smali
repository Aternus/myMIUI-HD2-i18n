.class Lcom/miui/player/MediaPlaybackService$6;
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
    .line 929
    iput-object p1, p0, Lcom/miui/player/MediaPlaybackService$6;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v2, 0x1

    .line 933
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$6;->this$0:Lcom/miui/player/MediaPlaybackService;

    invoke-virtual {v0}, Lcom/miui/player/MediaPlaybackService;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$6;->this$0:Lcom/miui/player/MediaPlaybackService;

    #getter for: Lcom/miui/player/MediaPlaybackService;->mResumeAfterAudioFocusGain:Z
    invoke-static {v0}, Lcom/miui/player/MediaPlaybackService;->access$800(Lcom/miui/player/MediaPlaybackService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$6;->this$0:Lcom/miui/player/MediaPlaybackService;

    #getter for: Lcom/miui/player/MediaPlaybackService;->mServiceInUse:Z
    invoke-static {v0}, Lcom/miui/player/MediaPlaybackService;->access$1800(Lcom/miui/player/MediaPlaybackService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$6;->this$0:Lcom/miui/player/MediaPlaybackService;

    #getter for: Lcom/miui/player/MediaPlaybackService;->mMediaplayerHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/player/MediaPlaybackService;->access$1900(Lcom/miui/player/MediaPlaybackService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 945
    :cond_0
    :goto_0
    return-void

    .line 940
    :cond_1
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$6;->this$0:Lcom/miui/player/MediaPlaybackService;

    #calls: Lcom/miui/player/MediaPlaybackService;->saveQueue(Z)V
    invoke-static {v0, v2}, Lcom/miui/player/MediaPlaybackService;->access$2000(Lcom/miui/player/MediaPlaybackService;Z)V

    .line 941
    iget-object v0, p0, Lcom/miui/player/MediaPlaybackService$6;->this$0:Lcom/miui/player/MediaPlaybackService;

    iget-object v1, p0, Lcom/miui/player/MediaPlaybackService$6;->this$0:Lcom/miui/player/MediaPlaybackService;

    #getter for: Lcom/miui/player/MediaPlaybackService;->mServiceStartId:I
    invoke-static {v1}, Lcom/miui/player/MediaPlaybackService;->access$2100(Lcom/miui/player/MediaPlaybackService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/player/MediaPlaybackService;->stopSelf(I)V

    .line 942
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v2, v0, :cond_0

    .line 943
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0
.end method
