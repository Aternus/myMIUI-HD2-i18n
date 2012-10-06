.class Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;
.super Landroid/os/Handler;
.source "MediaPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreparedHandler"
.end annotation


# instance fields
.field mEnabled:Z

.field final synthetic this$0:Lcom/miui/player/ui/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;->mEnabled:Z

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    .line 205
    iget-boolean v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;->mEnabled:Z

    if-nez v0, :cond_1

    .line 206
    iput-boolean v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;->mEnabled:Z

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 209
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    const/4 v1, 0x4

    #calls: Lcom/miui/player/ui/MediaPlaybackActivity;->updateTrackInfo(I)V
    invoke-static {v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$600(Lcom/miui/player/ui/MediaPlaybackActivity;I)V

    .line 212
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$PreparedHandler;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    #calls: Lcom/miui/player/ui/MediaPlaybackActivity;->refreshNow()J
    invoke-static {v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$700(Lcom/miui/player/ui/MediaPlaybackActivity;)J

    move-result-wide v1

    #calls: Lcom/miui/player/ui/MediaPlaybackActivity;->queueNextRefresh(J)V
    invoke-static {v0, v1, v2}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$800(Lcom/miui/player/ui/MediaPlaybackActivity;J)V

    goto :goto_0
.end method
