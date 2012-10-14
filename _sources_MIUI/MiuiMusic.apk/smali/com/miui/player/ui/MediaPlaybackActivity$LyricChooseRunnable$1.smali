.class Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable$1;
.super Ljava/lang/Object;
.source "MediaPlaybackActivity.java"

# interfaces
.implements Lcom/miui/player/ui/SingleChoiceDialog$ICheckedCommond;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;)V
    .locals 0
    .parameter

    .prologue
    .line 1116
    iput-object p1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable$1;->this$1:Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public excute([Ljava/lang/CharSequence;I)V
    .locals 6
    .parameter "items"
    .parameter "which"

    .prologue
    .line 1120
    if-ltz p2, :cond_0

    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable$1;->this$1:Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;

    #getter for: Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;->mInfoList:Ljava/util/List;
    invoke-static {v1}, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;->access$1100(Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p2, v1, :cond_1

    .line 1130
    :cond_0
    :goto_0
    return-void

    .line 1123
    :cond_1
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable$1;->this$1:Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;

    iget-object v1, v1, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    const v2, 0x7f0800c4

    #calls: Lcom/miui/player/ui/MediaPlaybackActivity;->showDownloadDialog(I)Z
    invoke-static {v1, v2}, Lcom/miui/player/ui/MediaPlaybackActivity;->access$1200(Lcom/miui/player/ui/MediaPlaybackActivity;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1127
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable$1;->this$1:Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;

    #getter for: Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;->mInfoList:Ljava/util/List;
    invoke-static {v1}, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;->access$1100(Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;

    .line 1128
    .local v0, item:Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;
    iget-object v1, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable$1;->this$1:Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;

    #getter for: Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;->mProvider:Lcom/miui/player/plugin/onlinelyric/LyricProvider;
    invoke-static {v1}, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;->access$1300(Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;)Lcom/miui/player/plugin/onlinelyric/LyricProvider;

    move-result-object v1

    new-instance v2, Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable;

    iget-object v3, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable$1;->this$1:Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;

    iget-object v3, v3, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;->this$0:Lcom/miui/player/ui/MediaPlaybackActivity;

    iget-object v4, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable$1;->this$1:Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;

    #getter for: Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;->mTrackName:Ljava/lang/String;
    invoke-static {v4}, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;->access$1400(Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable$1;->this$1:Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;

    #getter for: Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;->mArtistName:Ljava/lang/String;
    invoke-static {v5}, Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;->access$1500(Lcom/miui/player/ui/MediaPlaybackActivity$LyricChooseRunnable;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/miui/player/ui/MediaPlaybackActivity$LyricSaveRunnable;-><init>(Lcom/miui/player/ui/MediaPlaybackActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1, v0, v2}, Lcom/miui/player/helper/LyricDownloader;->download(Lcom/miui/player/plugin/onlinelyric/LyricProvider;Lcom/miui/player/plugin/onlinelyric/LyricItemInfo;Lcom/miui/player/helper/LyricDownloader$LyricAsyncCallback;)Z

    goto :goto_0
.end method
