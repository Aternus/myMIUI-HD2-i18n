.class Lcom/miui/player/helper/BufferedMediaPlayer$1;
.super Ljava/lang/Object;
.source "BufferedMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/player/helper/BufferedMediaPlayer;->runOnDownloadCompleted(Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

.field final synthetic val$appointName:Ljava/lang/String;

.field final synthetic val$details:Ljava/lang/String;

.field final synthetic val$id:Ljava/lang/String;

.field final synthetic val$l:Lcom/miui/player/helper/BufferedMediaPlayer$OnDownloadCompletedListener;


# direct methods
.method constructor <init>(Lcom/miui/player/helper/BufferedMediaPlayer;Lcom/miui/player/helper/BufferedMediaPlayer$OnDownloadCompletedListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 777
    iput-object p1, p0, Lcom/miui/player/helper/BufferedMediaPlayer$1;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    iput-object p2, p0, Lcom/miui/player/helper/BufferedMediaPlayer$1;->val$l:Lcom/miui/player/helper/BufferedMediaPlayer$OnDownloadCompletedListener;

    iput-object p3, p0, Lcom/miui/player/helper/BufferedMediaPlayer$1;->val$id:Ljava/lang/String;

    iput-object p4, p0, Lcom/miui/player/helper/BufferedMediaPlayer$1;->val$appointName:Ljava/lang/String;

    iput-object p5, p0, Lcom/miui/player/helper/BufferedMediaPlayer$1;->val$details:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 781
    iget-object v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer$1;->val$l:Lcom/miui/player/helper/BufferedMediaPlayer$OnDownloadCompletedListener;

    if-eqz v1, :cond_0

    .line 782
    iget-object v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer$1;->val$l:Lcom/miui/player/helper/BufferedMediaPlayer$OnDownloadCompletedListener;

    iget-object v2, p0, Lcom/miui/player/helper/BufferedMediaPlayer$1;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$200(Lcom/miui/player/helper/BufferedMediaPlayer;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/player/helper/BufferedMediaPlayer$1;->val$id:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/player/helper/BufferedMediaPlayer$1;->val$appointName:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/player/helper/BufferedMediaPlayer$1;->val$details:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/miui/player/helper/BufferedMediaPlayer$OnDownloadCompletedListener;->onDownloadCompleted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.music.DOWNLOAD_COMPLETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 786
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer$1;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$200(Lcom/miui/player/helper/BufferedMediaPlayer;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 787
    return-void
.end method
