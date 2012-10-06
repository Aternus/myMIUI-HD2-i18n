.class Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable$1;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable;

.field final synthetic val$lyric:Lcom/miui/player/plugin/onlinelyric/LyricContent;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable;Lcom/miui/player/plugin/onlinelyric/LyricContent;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1162
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable$1;->this$1:Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable;

    iput-object p2, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable$1;->val$lyric:Lcom/miui/player/plugin/onlinelyric/LyricContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1166
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable$1;->this$1:Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable;

    iget-object v1, v1, Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    #getter for: Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$900(Lcom/miui/player/ui/MediaPlaybackActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable$1;->this$1:Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable;

    iget-object v1, v1, Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    #getter for: Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$900(Lcom/miui/player/ui/MediaPlaybackActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1167
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable$1;->this$1:Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable;

    iget-object v1, v1, Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    #getter for: Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;
    invoke-static {v1}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$900(Lcom/miui/player/ui/MediaPlaybackActivity;)Landroid/app/ProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1168
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable$1;->this$1:Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable;

    iget-object v1, v1, Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    const/4 v2, 0x0

    #setter for: Lcom/miui/player/ui/MediaPlaybackActivity;->mDownloadFreezeDialog:Landroid/app/ProgressDialog;
    invoke-static {v1, v2}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$902(Lcom/miui/player/ui/MediaPlaybackActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 1171
    :cond_0
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable$1;->val$lyric:Lcom/miui/player/plugin/onlinelyric/LyricContent;

    if-nez v1, :cond_1

    .line 1172
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable$1;->this$1:Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable;

    iget-object v1, v1, Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    const v2, 0x7f0800c5

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1181
    :goto_0
    return-void

    .line 1177
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.player.musicservicecommand.update_meta"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1179
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "command"

    const-string v2, "lyric"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1180
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable$1;->this$1:Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable;

    iget-object v1, v1, Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    invoke-virtual {v1, v0}, Lcom/miui/player/ui/MediaPlaybackActivity;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
