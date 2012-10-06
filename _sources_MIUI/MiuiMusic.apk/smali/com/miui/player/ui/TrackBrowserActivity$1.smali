.class Lcom/miui/player/ui/TrackBrowserActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "TrackBrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/TrackBrowserActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/TrackBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 547
    iput-object p1, p0, Lcom/miui/player/ui/TrackBrowserActivity$1;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 550
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 551
    .local v0, action:Ljava/lang/String;
    const-string v2, "other"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 552
    .local v1, other:Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/player/ui/TrackBrowserActivity$1;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    invoke-virtual {v2}, Lcom/miui/player/ui/TrackBrowserActivity;->isPaused()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.miui.player.metachanged"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "meta_changed_track"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 560
    :cond_0
    :goto_0
    return-void

    .line 557
    :cond_1
    iget-object v2, p0, Lcom/miui/player/ui/TrackBrowserActivity$1;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    #getter for: Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;
    invoke-static {v2}, Lcom/miui/player/ui/TrackBrowserActivity;->access$600(Lcom/miui/player/ui/TrackBrowserActivity;)Lcom/miui/player/model/TrackBrowserAdapter;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 558
    iget-object v2, p0, Lcom/miui/player/ui/TrackBrowserActivity$1;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    #getter for: Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;
    invoke-static {v2}, Lcom/miui/player/ui/TrackBrowserActivity;->access$600(Lcom/miui/player/ui/TrackBrowserActivity;)Lcom/miui/player/model/TrackBrowserAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/player/model/TrackBrowserAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
