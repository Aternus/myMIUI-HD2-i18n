.class Lcom/miui/player/ui/TrackBrowserActivity$PlaylistSelectionCallback;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Lcom/miui/player/helper/controller/BatchSelectionPlaylistController$BatchSelectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlaylistSelectionCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/TrackBrowserActivity;


# direct methods
.method private constructor <init>(Lcom/miui/player/ui/TrackBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1066
    iput-object p1, p0, Lcom/miui/player/ui/TrackBrowserActivity$PlaylistSelectionCallback;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/ui/TrackBrowserActivity;Lcom/miui/player/ui/TrackBrowserActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1066
    invoke-direct {p0, p1}, Lcom/miui/player/ui/TrackBrowserActivity$PlaylistSelectionCallback;-><init>(Lcom/miui/player/ui/TrackBrowserActivity;)V

    return-void
.end method


# virtual methods
.method public allowBatchSelect()Z
    .locals 1

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity$PlaylistSelectionCallback;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    invoke-virtual {v0}, Lcom/miui/player/ui/TrackBrowserActivity;->isPaused()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 1070
    .local p1, ret:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    iget-object v2, p0, Lcom/miui/player/ui/TrackBrowserActivity$PlaylistSelectionCallback;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    #getter for: Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/miui/player/ui/TrackBrowserActivity;->access$1000(Lcom/miui/player/ui/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v0

    .line 1071
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 1072
    const-string v2, "_id"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1073
    .local v1, idIdx:I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1074
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1073
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .line 1077
    .end local v1           #idIdx:I
    :cond_0
    return-void
.end method

.method public getTotalItemCount()I
    .locals 2

    .prologue
    .line 1081
    const/4 v0, 0x0

    .line 1082
    .local v0, ret:I
    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity$PlaylistSelectionCallback;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    #getter for: Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/miui/player/ui/TrackBrowserActivity;->access$1000(Lcom/miui/player/ui/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1083
    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity$PlaylistSelectionCallback;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    #getter for: Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/miui/player/ui/TrackBrowserActivity;->access$1000(Lcom/miui/player/ui/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1085
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
    .line 1090
    .local p2, result:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    .line 1091
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity$PlaylistSelectionCallback;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    #getter for: Lcom/miui/player/ui/TrackBrowserActivity;->mBrowserHelper:Lcom/miui/player/model/TrackBrowserHelper;
    invoke-static {v0}, Lcom/miui/player/ui/TrackBrowserActivity;->access$700(Lcom/miui/player/ui/TrackBrowserActivity;)Lcom/miui/player/model/TrackBrowserHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/ui/TrackBrowserActivity$PlaylistSelectionCallback;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    #getter for: Lcom/miui/player/ui/TrackBrowserActivity;->mPlaylist:Ljava/lang/String;
    invoke-static {v1}, Lcom/miui/player/ui/TrackBrowserActivity;->access$1200(Lcom/miui/player/ui/TrackBrowserActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/miui/player/model/TrackBrowserHelper;->removeTrackBatch(Ljava/util/Set;Ljava/lang/String;)Z

    .line 1093
    :cond_0
    return-void
.end method

.method public onStartBatchSelection()V
    .locals 0

    .prologue
    .line 1097
    return-void
.end method

.method public refreshByBatchSelection()V
    .locals 1

    .prologue
    .line 1101
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity$PlaylistSelectionCallback;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    #getter for: Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;
    invoke-static {v0}, Lcom/miui/player/ui/TrackBrowserActivity;->access$600(Lcom/miui/player/ui/TrackBrowserActivity;)Lcom/miui/player/model/TrackBrowserAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1102
    iget-object v0, p0, Lcom/miui/player/ui/TrackBrowserActivity$PlaylistSelectionCallback;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    #getter for: Lcom/miui/player/ui/TrackBrowserActivity;->mTrackAdapter:Lcom/miui/player/model/TrackBrowserAdapter;
    invoke-static {v0}, Lcom/miui/player/ui/TrackBrowserActivity;->access$600(Lcom/miui/player/ui/TrackBrowserActivity;)Lcom/miui/player/model/TrackBrowserAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/player/model/TrackBrowserAdapter;->notifyDataSetChanged()V

    .line 1104
    :cond_0
    return-void
.end method
