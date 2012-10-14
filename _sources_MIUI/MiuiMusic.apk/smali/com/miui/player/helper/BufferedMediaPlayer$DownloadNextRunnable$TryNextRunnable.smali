.class Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable$TryNextRunnable;
.super Ljava/lang/Object;
.source "BufferedMediaPlayer.java"

# interfaces
.implements Lcom/miui/player/helper/BufferedMediaPlayer$RemovableRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TryNextRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;


# direct methods
.method private constructor <init>(Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;)V
    .locals 0
    .parameter

    .prologue
    .line 1291
    iput-object p1, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable$TryNextRunnable;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;Lcom/miui/player/helper/BufferedMediaPlayer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1291
    invoke-direct {p0, p1}, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable$TryNextRunnable;-><init>(Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;)V

    return-void
.end method


# virtual methods
.method public isRemovable()Z
    .locals 1

    .prologue
    .line 1300
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable$TryNextRunnable;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;

    #getter for: Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mGotoDownload:Z
    invoke-static {v0}, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->access$2800(Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 1

    .prologue
    .line 1295
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable$TryNextRunnable;->this$0:Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;

    #calls: Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->tryToDownload()V
    invoke-static {v0}, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->access$3600(Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;)V

    .line 1296
    return-void
.end method
