.class Lcom/miui/player/ui/MediaPlaybackActivity$RunnableAfterOpen;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunnableAfterOpen"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/MediaPlaybackActivity;


# direct methods
.method private constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1396
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$RunnableAfterOpen;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity;Lcom/miui/player/ui/MediaPlaybackActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1396
    invoke-direct {p0, p1}, Lcom/miui/player/ui/MediaPlaybackActivity$RunnableAfterOpen;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$RunnableAfterOpen;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    const/4 v1, 0x1

    #setter for: Lcom/miui/player/ui/MediaPlaybackActivity;->mStartRefresh:Z
    invoke-static {v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$1602(Lcom/miui/player/ui/MediaPlaybackActivity;Z)Z

    .line 1401
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$RunnableAfterOpen;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    #getter for: Lcom/miui/player/ui/MediaPlaybackActivity;->mMainView:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$1700(Lcom/miui/player/ui/MediaPlaybackActivity;)Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setDrawingCacheEnabled(Z)V

    .line 1402
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$RunnableAfterOpen;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    #getter for: Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackChangedWhileSliding:Z
    invoke-static {v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$1800(Lcom/miui/player/ui/MediaPlaybackActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$RunnableAfterOpen;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    #getter for: Lcom/miui/player/ui/MediaPlaybackActivity;->mTrackChangedWhilePaused:Z
    invoke-static {v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$1900(Lcom/miui/player/ui/MediaPlaybackActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1403
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$RunnableAfterOpen;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    const/4 v1, 0x3

    #calls: Lcom/miui/player/ui/MediaPlaybackActivity;->updateTrackInfo(I)V
    invoke-static {v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$600(Lcom/miui/player/ui/MediaPlaybackActivity;I)V

    .line 1407
    :goto_0
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$RunnableAfterOpen;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$RunnableAfterOpen;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    #calls: Lcom/miui/player/ui/MediaPlaybackActivity;->refreshNow()J
    invoke-static {v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$700(Lcom/miui/player/ui/MediaPlaybackActivity;)J

    move-result-wide v1

    #calls: Lcom/miui/player/ui/MediaPlaybackActivity;->queueNextRefresh(J)V
    invoke-static {v0, v1, v2}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$800(Lcom/miui/player/ui/MediaPlaybackActivity;J)V

    .line 1408
    return-void

    .line 1405
    :cond_1
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$RunnableAfterOpen;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    const/4 v1, 0x5

    #calls: Lcom/miui/player/ui/MediaPlaybackActivity;->updateTrackInfo(I)V
    invoke-static {v0, v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$600(Lcom/miui/player/ui/MediaPlaybackActivity;I)V

    goto :goto_0
.end method
