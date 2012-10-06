.class Lcom/miui/player/ui/TrackBrowserActivity$OnListItemClick;
.super Ljava/lang/Object;
.source "TrackBrowserActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/TrackBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnListItemClick"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/TrackBrowserActivity;


# direct methods
.method private constructor <init>(Lcom/miui/player/ui/TrackBrowserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 618
    iput-object p1, p0, Lcom/miui/player/ui/TrackBrowserActivity$OnListItemClick;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/player/ui/TrackBrowserActivity;Lcom/miui/player/ui/TrackBrowserActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 618
    invoke-direct {p0, p1}, Lcom/miui/player/ui/TrackBrowserActivity$OnListItemClick;-><init>(Lcom/miui/player/ui/TrackBrowserActivity;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 623
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x0

    .line 624
    .local v1, shuffle:Z
    iget-object v2, p0, Lcom/miui/player/ui/TrackBrowserActivity$OnListItemClick;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    #getter for: Lcom/miui/player/ui/TrackBrowserActivity;->mAddTrackHeader:Landroid/view/View;
    invoke-static {v2}, Lcom/miui/player/ui/TrackBrowserActivity;->access$800(Lcom/miui/player/ui/TrackBrowserActivity;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 625
    if-nez p3, :cond_1

    .line 626
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.miui.music.pickersongs"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 627
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "playlist"

    iget-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity$OnListItemClick;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    #getter for: Lcom/miui/player/ui/TrackBrowserActivity;->mCurrentPlaylistId:I
    invoke-static {v3}, Lcom/miui/player/ui/TrackBrowserActivity;->access$900(Lcom/miui/player/ui/TrackBrowserActivity;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 628
    iget-object v2, p0, Lcom/miui/player/ui/TrackBrowserActivity$OnListItemClick;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    const/16 v3, 0x1b

    invoke-virtual {v2, v0, v3}, Lcom/miui/player/ui/TrackBrowserActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 648
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 630
    :cond_1
    const/4 v2, 0x1

    if-ne p3, v2, :cond_2

    .line 631
    const/4 v1, 0x1

    .line 637
    :cond_2
    :goto_1
    if-eqz v1, :cond_4

    .line 638
    iget-object v2, p0, Lcom/miui/player/ui/TrackBrowserActivity$OnListItemClick;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    #getter for: Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v2}, Lcom/miui/player/ui/TrackBrowserActivity;->access$1000(Lcom/miui/player/ui/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 639
    iget-object v2, p0, Lcom/miui/player/ui/TrackBrowserActivity$OnListItemClick;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    iget-object v3, p0, Lcom/miui/player/ui/TrackBrowserActivity$OnListItemClick;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    #getter for: Lcom/miui/player/ui/TrackBrowserActivity;->mTrackCursor:Landroid/database/Cursor;
    invoke-static {v3}, Lcom/miui/player/ui/TrackBrowserActivity;->access$1000(Lcom/miui/player/ui/TrackBrowserActivity;)Landroid/database/Cursor;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miui/player/MusicUtils;->shuffleAll(Landroid/content/Context;Landroid/database/Cursor;)V

    goto :goto_0

    .line 633
    :cond_3
    if-nez p3, :cond_2

    .line 634
    const/4 v1, 0x1

    goto :goto_1

    .line 644
    :cond_4
    iget-object v2, p0, Lcom/miui/player/ui/TrackBrowserActivity$OnListItemClick;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    #getter for: Lcom/miui/player/ui/TrackBrowserActivity;->mList:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/miui/player/ui/TrackBrowserActivity;->access$1100(Lcom/miui/player/ui/TrackBrowserActivity;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr p3, v2

    .line 645
    if-ltz p3, :cond_0

    .line 646
    iget-object v2, p0, Lcom/miui/player/ui/TrackBrowserActivity$OnListItemClick;->this$0:Lcom/miui/player/ui/TrackBrowserActivity;

    #getter for: Lcom/miui/player/ui/TrackBrowserActivity;->mBrowserHelper:Lcom/miui/player/model/TrackBrowserHelper;
    invoke-static {v2}, Lcom/miui/player/ui/TrackBrowserActivity;->access$700(Lcom/miui/player/ui/TrackBrowserActivity;)Lcom/miui/player/model/TrackBrowserHelper;

    move-result-object v2

    sget-object v3, Lcom/miui/player/MusicUtils;->sService:Lcom/miui/player/IMediaPlaybackService;

    invoke-virtual {v2, v3, p3}, Lcom/miui/player/model/TrackBrowserHelper;->playTrackInPosition(Lcom/miui/player/IMediaPlaybackService;I)V

    goto :goto_0
.end method
