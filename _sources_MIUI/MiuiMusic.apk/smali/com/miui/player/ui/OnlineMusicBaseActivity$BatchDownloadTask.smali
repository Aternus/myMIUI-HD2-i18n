.class Lcom/miui/player/ui/OnlineMusicBaseActivity$BatchDownloadTask;
.super Landroid/os/AsyncTask;
.source "OnlineMusicBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/OnlineMusicBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatchDownloadTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mProvider:Ljava/lang/String;

.field private final mSongItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miui/player/ui/OnlineMusicBaseActivity;


# direct methods
.method public constructor <init>(Lcom/miui/player/ui/OnlineMusicBaseActivity;Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "context"
    .parameter
    .parameter "provider"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 563
    .local p3, songItemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;>;"
    iput-object p1, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity$BatchDownloadTask;->this$0:Lcom/miui/player/ui/OnlineMusicBaseActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 564
    iput-object p3, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity$BatchDownloadTask;->mSongItemList:Ljava/util/ArrayList;

    .line 565
    iput-object p2, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity$BatchDownloadTask;->mContext:Landroid/content/Context;

    .line 566
    iput-object p4, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity$BatchDownloadTask;->mProvider:Ljava/lang/String;

    .line 567
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 558
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/OnlineMusicBaseActivity$BatchDownloadTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 5
    .parameter "params"

    .prologue
    .line 571
    iget-object v3, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity$BatchDownloadTask;->mSongItemList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;

    .line 572
    .local v2, songItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    iget-object v3, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity$BatchDownloadTask;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity$BatchDownloadTask;->mProvider:Ljava/lang/String;

    invoke-static {v3, v2, v4}, Lcom/miui/player/helper/OnlineMusicProxy;->getSongInfo(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;Ljava/lang/String;)Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;

    move-result-object v0

    .line 575
    .local v0, description:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;
    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;->SongCandidates:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;->SongCandidates:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 577
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v3}, Lcom/miui/player/ui/OnlineMusicBaseActivity$BatchDownloadTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_0

    .line 580
    .end local v0           #description:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;
    .end local v2           #songItem:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongList$SongItem;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method protected varargs onProgressUpdate([Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;)V
    .locals 3
    .parameter "values"

    .prologue
    const/4 v2, 0x0

    .line 585
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 586
    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    aget-object v1, p1, v2

    if-eqz v1, :cond_0

    .line 587
    aget-object v0, p1, v2

    .line 588
    .local v0, item:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity$BatchDownloadTask;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/miui/player/helper/OnlinePlayHelper;->download(Landroid/content/Context;Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 589
    iget-object v1, p0, Lcom/miui/player/ui/OnlineMusicBaseActivity$BatchDownloadTask;->this$0:Lcom/miui/player/ui/OnlineMusicBaseActivity;

    iget-object v1, v1, Lcom/miui/player/ui/OnlineMusicBaseActivity;->mAdapter:Lcom/miui/player/model/OnlineMusicAdapter;

    invoke-virtual {v1}, Lcom/miui/player/model/OnlineMusicAdapter;->updateDownloadStatus()V

    .line 592
    .end local v0           #item:Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;
    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 558
    check-cast p1, [Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/miui/player/ui/OnlineMusicBaseActivity$BatchDownloadTask;->onProgressUpdate([Lcom/miui/player/plugin/onlinemusic/MusicInfoSongItemDescription;)V

    return-void
.end method
