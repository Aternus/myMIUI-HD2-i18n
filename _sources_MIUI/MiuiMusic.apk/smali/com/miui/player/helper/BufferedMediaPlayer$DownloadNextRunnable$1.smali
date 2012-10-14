.class Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable$1;
.super Lcom/miui/player/helper/NetworkUtils$HttpGetSyncRunnable;
.source "BufferedMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;


# direct methods
.method constructor <init>(Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;)V
    .locals 0
    .parameter

    .prologue
    .line 1166
    iput-object p1, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable$1;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;

    invoke-direct {p0}, Lcom/miui/player/helper/NetworkUtils$HttpGetSyncRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1170
    invoke-virtual {p0}, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable$1;->getResult()Ljava/lang/Object;

    move-result-object v2

    .line 1171
    .local v2, result:Ljava/lang/Object;
    instance-of v3, v2, Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 1172
    move-object v0, v2

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0

    .line 1173
    .local v1, candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable$1;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mGotoDownload:Z
    invoke-static {v3}, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->access$2800(Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1174
    iget-object v3, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable$1;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mNextInfo:Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;
    invoke-static {v3}, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->access$2900(Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;)Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;

    move-result-object v3

    iput-object v1, v3, Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;->mCandidateUrls:Ljava/util/ArrayList;

    .line 1175
    iget-object v3, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable$1;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mRunnableList:Lcom/miui/player/helper/BufferedMediaPlayer$RunnableList;
    invoke-static {v3}, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->access$3100(Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;)Lcom/miui/player/helper/BufferedMediaPlayer$RunnableList;

    move-result-object v3

    const-string v4, "com.miui.player.helper.BufferedMediaPlayer"

    new-instance v5, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable$TryNextRunnable;

    iget-object v6, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable$1;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable$TryNextRunnable;-><init>(Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;Lcom/miui/player/helper/BufferedMediaPlayer$1;)V

    const-wide/16 v6, 0x0

    invoke-interface {v3, v4, v5, v6, v7}, Lcom/miui/player/helper/BufferedMediaPlayer$RunnableList;->add(Ljava/lang/String;Lcom/miui/player/helper/BufferedMediaPlayer$RemovableRunnable;J)V

    .line 1178
    .end local v1           #candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method
