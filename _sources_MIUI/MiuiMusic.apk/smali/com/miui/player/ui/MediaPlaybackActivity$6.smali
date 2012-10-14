.class Lcom/miui/player/ui/MediaPlaybackActivity$6;
.super Landroid/content/BroadcastReceiver;
.source "MediaPlaybackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/MediaPlaybackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/MediaPlaybackActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1598
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$6;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 1602
    const-string v0, "com.miui.music.FAVORITE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1603
    iget-object v0, p0, Lcom/miui/player/ui/MediaPlaybackActivity$6;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    #getter for: Lcom/miui/player/ui/MediaPlaybackActivity;->mPlaylistController:Lcom/miui/player/helper/controller/PlaylistViewController;
    invoke-static {v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$2600(Lcom/miui/player/ui/MediaPlaybackActivity;)Lcom/miui/player/helper/controller/PlaylistViewController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/player/helper/controller/PlaylistViewController;->updateViews()V

    .line 1605
    :cond_0
    return-void
.end method
