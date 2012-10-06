.class Lcom/miui/player/ui/AlbumBrowserActivity$AlbumArtTask;
.super Ljava/lang/Object;
.source "AlbumBrowserActivity.java"

# interfaces
.implements Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumArtTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/AlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlbumArtTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/AlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/miui/player/ui/AlbumBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 508
    iput-object p1, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumArtTask;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadUpdate(Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;)Z
    .locals 7
    .parameter "albumInfo"

    .prologue
    .line 511
    if-eqz p1, :cond_0

    .line 512
    new-instance v0, Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;

    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumArtTask;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity;

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->albumName:Ljava/lang/String;

    iget-object v6, p1, Lcom/miui/player/helper/AlbumArtTaskWrap$AlbumSongInfoWrapper;->artistName:Ljava/lang/String;

    invoke-direct/range {v0 .. v6}, Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;-><init>(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    .local v0, info:Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;
    invoke-static {v0}, Lcom/miui/player/model/AlbumBrowserAdapter;->removeCacheAlbum(Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;)Z

    .line 515
    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumArtTask;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity;

    #getter for: Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumBrowserAdapter;
    invoke-static {v1}, Lcom/miui/player/ui/AlbumBrowserActivity;->access$300(Lcom/miui/player/ui/AlbumBrowserActivity;)Lcom/miui/player/model/AlbumBrowserAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumArtTask;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity;

    invoke-virtual {v1}, Lcom/miui/player/ui/AlbumBrowserActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 516
    iget-object v1, p0, Lcom/miui/player/ui/AlbumBrowserActivity$AlbumArtTask;->this$0:Lcom/miui/player/ui/AlbumBrowserActivity;

    #getter for: Lcom/miui/player/ui/AlbumBrowserActivity;->mAdapter:Lcom/miui/player/model/AlbumBrowserAdapter;
    invoke-static {v1}, Lcom/miui/player/ui/AlbumBrowserActivity;->access$300(Lcom/miui/player/ui/AlbumBrowserActivity;)Lcom/miui/player/model/AlbumBrowserAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/player/model/AlbumBrowserAdapter;->notifyDataSetChanged()V

    .line 519
    .end local v0           #info:Lcom/miui/player/model/AlbumBrowserAdapter$AlbumDrawableInfo;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method
