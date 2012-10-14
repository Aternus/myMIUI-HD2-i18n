.class final Lcom/miui/player/ui/RingtonePicker$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "RingtonePicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/ui/RingtonePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/player/ui/RingtonePicker;


# direct methods
.method public constructor <init>(Lcom/miui/player/ui/RingtonePicker;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    .line 406
    iput-object p1, p0, Lcom/miui/player/ui/RingtonePicker$QueryHandler;->this$0:Lcom/miui/player/ui/RingtonePicker;

    .line 407
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 408
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v2, 0x0

    .line 412
    iget-object v0, p0, Lcom/miui/player/ui/RingtonePicker$QueryHandler;->this$0:Lcom/miui/player/ui/RingtonePicker;

    invoke-virtual {v0}, Lcom/miui/player/ui/RingtonePicker;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 415
    iget-object v0, p0, Lcom/miui/player/ui/RingtonePicker$QueryHandler;->this$0:Lcom/miui/player/ui/RingtonePicker;

    iget-object v0, v0, Lcom/miui/player/ui/RingtonePicker;->mAdapter:Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;

    invoke-virtual {v0, v2}, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->setLoading(Z)V

    .line 416
    iget-object v0, p0, Lcom/miui/player/ui/RingtonePicker$QueryHandler;->this$0:Lcom/miui/player/ui/RingtonePicker;

    iget-object v0, v0, Lcom/miui/player/ui/RingtonePicker;->mAdapter:Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;

    invoke-virtual {v0, p3}, Lcom/miui/player/ui/RingtonePicker$TrackListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 417
    iget-object v0, p0, Lcom/miui/player/ui/RingtonePicker$QueryHandler;->this$0:Lcom/miui/player/ui/RingtonePicker;

    invoke-virtual {v0, v2}, Lcom/miui/player/ui/RingtonePicker;->setProgressBarIndeterminateVisibility(Z)V

    .line 421
    iget-object v0, p0, Lcom/miui/player/ui/RingtonePicker$QueryHandler;->this$0:Lcom/miui/player/ui/RingtonePicker;

    iget-object v0, v0, Lcom/miui/player/ui/RingtonePicker;->mListState:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 422
    iget-object v0, p0, Lcom/miui/player/ui/RingtonePicker$QueryHandler;->this$0:Lcom/miui/player/ui/RingtonePicker;

    invoke-virtual {v0}, Lcom/miui/player/ui/RingtonePicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/player/ui/RingtonePicker$QueryHandler;->this$0:Lcom/miui/player/ui/RingtonePicker;

    iget-object v1, v1, Lcom/miui/player/ui/RingtonePicker;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 423
    iget-object v0, p0, Lcom/miui/player/ui/RingtonePicker$QueryHandler;->this$0:Lcom/miui/player/ui/RingtonePicker;

    iget-boolean v0, v0, Lcom/miui/player/ui/RingtonePicker;->mListHasFocus:Z

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/miui/player/ui/RingtonePicker$QueryHandler;->this$0:Lcom/miui/player/ui/RingtonePicker;

    invoke-virtual {v0}, Lcom/miui/player/ui/RingtonePicker;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->requestFocus()Z

    .line 426
    :cond_0
    iget-object v0, p0, Lcom/miui/player/ui/RingtonePicker$QueryHandler;->this$0:Lcom/miui/player/ui/RingtonePicker;

    iput-boolean v2, v0, Lcom/miui/player/ui/RingtonePicker;->mListHasFocus:Z

    .line 427
    iget-object v0, p0, Lcom/miui/player/ui/RingtonePicker$QueryHandler;->this$0:Lcom/miui/player/ui/RingtonePicker;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/miui/player/ui/RingtonePicker;->mListState:Landroid/os/Parcelable;

    .line 432
    :cond_1
    :goto_0
    return-void

    .line 430
    :cond_2
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method
