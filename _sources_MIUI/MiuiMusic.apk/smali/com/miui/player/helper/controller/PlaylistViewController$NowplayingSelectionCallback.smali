.class Lcom/miui/player/helper/controller/PlaylistViewController$NowplayingSelectionCallback;
.super Ljava/lang/Object;
.source "PlaylistViewController.java"

# interfaces
.implements Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/controller/PlaylistViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NowplayingSelectionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/helper/controller/PlaylistViewController;


# direct methods
.method private constructor <init>(Lcom/miui/player/helper/controller/PlaylistViewController;)V
    .locals 0
    .parameter

    .prologue
    .line 311
    iput-object p1, p0, Lcom/miui/player/helper/controller/PlaylistViewController$NowplayingSelectionCallback;->this$0:Lcom/miui/player/helper/controller/PlaylistViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/helper/controller/PlaylistViewController;Lcom/miui/player/helper/controller/PlaylistViewController$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 311
    invoke-direct {p0, p1}, Lcom/miui/player/helper/controller/PlaylistViewController$NowplayingSelectionCallback;-><init>(Lcom/miui/player/helper/controller/PlaylistViewController;)V

    return-void
.end method


# virtual methods
.method public allowBatchSelect()Z
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController$NowplayingSelectionCallback;->this$0:Lcom/miui/player/helper/controller/PlaylistViewController;

    invoke-virtual {v0}, Lcom/miui/player/helper/controller/PlaylistViewController;->isActive()Z

    move-result v0

    return v0
.end method

.method public getAllItemIds(Ljava/util/Set;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 315
    .local p1, ret:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/miui/player/helper/controller/PlaylistViewController$NowplayingSelectionCallback;->this$0:Lcom/miui/player/helper/controller/PlaylistViewController;

    #getter for: Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/miui/player/helper/controller/PlaylistViewController;->access$600(Lcom/miui/player/helper/controller/PlaylistViewController;)Landroid/database/Cursor;

    move-result-object v0

    .line 316
    .local v0, c:Landroid/database/Cursor;
    iget-object v2, p0, Lcom/miui/player/helper/controller/PlaylistViewController$NowplayingSelectionCallback;->this$0:Lcom/miui/player/helper/controller/PlaylistViewController;

    #getter for: Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/miui/player/helper/controller/PlaylistViewController;->access$600(Lcom/miui/player/helper/controller/PlaylistViewController;)Landroid/database/Cursor;

    move-result-object v2

    const-string v3, "_id"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 317
    .local v1, idx:I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 318
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 317
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 320
    :cond_0
    return-void
.end method

.method public getTotalItemCount()I
    .locals 2

    .prologue
    .line 324
    const/4 v0, 0x0

    .line 325
    .local v0, ret:I
    iget-object v1, p0, Lcom/miui/player/helper/controller/PlaylistViewController$NowplayingSelectionCallback;->this$0:Lcom/miui/player/helper/controller/PlaylistViewController;

    #getter for: Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/miui/player/helper/controller/PlaylistViewController;->access$600(Lcom/miui/player/helper/controller/PlaylistViewController;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 326
    iget-object v1, p0, Lcom/miui/player/helper/controller/PlaylistViewController$NowplayingSelectionCallback;->this$0:Lcom/miui/player/helper/controller/PlaylistViewController;

    #getter for: Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/miui/player/helper/controller/PlaylistViewController;->access$600(Lcom/miui/player/helper/controller/PlaylistViewController;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 328
    :cond_0
    return v0
.end method

.method public onEndBatchSelection(ZLjava/util/Set;)V
    .locals 2
    .parameter "confirm"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 333
    .local p2, result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    .line 334
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController$NowplayingSelectionCallback;->this$0:Lcom/miui/player/helper/controller/PlaylistViewController;

    #getter for: Lcom/miui/player/helper/controller/PlaylistViewController;->mBrowserHelper:Lcom/miui/player/model/TrackBrowserHelper;
    invoke-static {v0}, Lcom/miui/player/helper/controller/PlaylistViewController;->access$400(Lcom/miui/player/helper/controller/PlaylistViewController;)Lcom/miui/player/model/TrackBrowserHelper;

    move-result-object v0

    const-string v1, "nowplaying"

    invoke-virtual {v0, p2, v1}, Lcom/miui/player/model/TrackBrowserHelper;->removeTrackBatch(Ljava/util/Set;Ljava/lang/String;)Z

    .line 336
    :cond_0
    return-void
.end method

.method public onStartBatchSelection()V
    .locals 0

    .prologue
    .line 340
    return-void
.end method

.method public refreshByBatchSelection()V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController$NowplayingSelectionCallback;->this$0:Lcom/miui/player/helper/controller/PlaylistViewController;

    #getter for: Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;
    invoke-static {v0}, Lcom/miui/player/helper/controller/PlaylistViewController;->access$300(Lcom/miui/player/helper/controller/PlaylistViewController;)Lcom/miui/player/model/TrackBrowserAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/miui/player/helper/controller/PlaylistViewController$NowplayingSelectionCallback;->this$0:Lcom/miui/player/helper/controller/PlaylistViewController;

    #getter for: Lcom/miui/player/helper/controller/PlaylistViewController;->mNowPlayingAdapter:Lcom/miui/player/model/TrackBrowserAdapter;
    invoke-static {v0}, Lcom/miui/player/helper/controller/PlaylistViewController;->access$300(Lcom/miui/player/helper/controller/PlaylistViewController;)Lcom/miui/player/model/TrackBrowserAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/player/model/TrackBrowserAdapter;->notifyDataSetChanged()V

    .line 347
    :cond_0
    return-void
.end method
