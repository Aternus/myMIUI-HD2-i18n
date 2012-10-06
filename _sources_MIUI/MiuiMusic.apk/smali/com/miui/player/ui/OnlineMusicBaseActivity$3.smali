.class Lcom/miui/player/ui/OnlineMusicBaseActivity$3;
.super Landroid/content/BroadcastReceiver;
.source "OnlineMusicBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/OnlineMusicBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/OnlineMusicBaseActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/OnlineMusicBaseActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 455
    iput-object p1, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity$3;->this$0:Lcom/miui/player/ui/OnlineMusicBaseActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 459
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 460
    .local v0, action:Ljava/lang/String;
    const-string v1, "com.miui.music.FAVORITE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 461
    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity$3;->this$0:Lcom/miui/player/ui/OnlineMusicBaseActivity;

    iget-object v1, v1, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    invoke-virtual {v1}, Lcom/miui/player/model/OnlineMusicAdapter;->notifyDataSetChanged()V

    .line 465
    :cond_0
    :goto_0
    return-void

    .line 462
    :cond_1
    const-string v1, "com.miui.music.DOWNLOAD_COMPLETE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 463
    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity$3;->this$0:Lcom/miui/player/ui/OnlineMusicBaseActivity;

    iget-object v1, v1, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    invoke-virtual {v1}, Lcom/miui/player/model/OnlineMusicAdapter;->updateDownloadStatus()V

    goto :goto_0
.end method
