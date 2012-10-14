.class Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "AgendaWindowAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/AgendaWindowAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AgendaWindowAdapter;


# direct methods
.method public constructor <init>(Lcom/android/calendar/AgendaWindowAdapter;Landroid/content/ContentResolver;)V
    .locals 0
    .parameter
    .parameter "cr"

    .prologue
    .line 660
    iput-object p1, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    .line 661
    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 662
    return-void
.end method

.method private processNewCursor(Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;Landroid/database/Cursor;)I
    .locals 7
    .parameter "data"
    .parameter "cursor"

    .prologue
    .line 818
    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/calendar/AgendaWindowAdapter;->access$100(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v5

    monitor-enter v5

    .line 820
    :try_start_0
    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    iget v6, p1, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->queryType:I

    #calls: Lcom/android/calendar/AgendaWindowAdapter;->pruneAdapterInfo(I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    invoke-static {v4, v6}, Lcom/android/calendar/AgendaWindowAdapter;->access$1500(Lcom/android/calendar/AgendaWindowAdapter;I)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v1

    .line 821
    .local v1, info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    const/4 v3, 0x0

    .line 822
    .local v3, listPositionOffset:I
    if-nez v1, :cond_1

    .line 823
    new-instance v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .end local v1           #info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/calendar/AgendaWindowAdapter;->access$1600(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;-><init>(Landroid/content/Context;)V

    .line 832
    .restart local v1       #info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    :goto_0
    iget v4, p1, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    iput v4, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    .line 833
    iget v4, p1, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    iput v4, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    .line 834
    iput-object p2, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->cursor:Landroid/database/Cursor;

    .line 835
    iget-object v4, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    invoke-virtual {v4, v1}, Lcom/android/calendar/AgendaByDayAdapter;->changeCursor(Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;)V

    .line 836
    iget-object v4, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcom/android/calendar/AgendaByDayAdapter;

    invoke-virtual {v4}, Lcom/android/calendar/AgendaByDayAdapter;->getCount()I

    move-result v4

    iput v4, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    .line 839
    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/calendar/AgendaWindowAdapter;->access$100(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget v6, p1, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/calendar/AgendaWindowAdapter;->access$100(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    iget v4, v4, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    if-gt v6, v4, :cond_2

    .line 841
    :cond_0
    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/calendar/AgendaWindowAdapter;->access$100(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 842
    iget v4, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    add-int/2addr v3, v4

    .line 853
    :goto_1
    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    const/4 v6, 0x0

    #setter for: Lcom/android/calendar/AgendaWindowAdapter;->mRowCount:I
    invoke-static {v4, v6}, Lcom/android/calendar/AgendaWindowAdapter;->access$1702(Lcom/android/calendar/AgendaWindowAdapter;I)I

    .line 854
    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/calendar/AgendaWindowAdapter;->access$100(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 855
    .local v2, info3:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mRowCount:I
    invoke-static {v4}, Lcom/android/calendar/AgendaWindowAdapter;->access$1700(Lcom/android/calendar/AgendaWindowAdapter;)I

    move-result v4

    iput v4, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    .line 856
    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    iget v6, v2, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    invoke-static {v4, v6}, Lcom/android/calendar/AgendaWindowAdapter;->access$1712(Lcom/android/calendar/AgendaWindowAdapter;I)I

    goto :goto_2

    .line 861
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .end local v2           #info3:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .end local v3           #listPositionOffset:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 828
    .restart local v1       #info:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .restart local v3       #listPositionOffset:I
    :cond_1
    :try_start_1
    iget v4, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->size:I

    neg-int v3, v4

    goto :goto_0

    .line 849
    :cond_2
    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static {v4}, Lcom/android/calendar/AgendaWindowAdapter;->access$100(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_1

    .line 858
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_3
    iget-object v4, p0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    const/4 v6, 0x0

    #setter for: Lcom/android/calendar/AgendaWindowAdapter;->mLastUsedInfo:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    invoke-static {v4, v6}, Lcom/android/calendar/AgendaWindowAdapter;->access$1802(Lcom/android/calendar/AgendaWindowAdapter;Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;)Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 860
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v3
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 21
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 666
    move-object/from16 v0, p2

    check-cast v0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;

    move-object v4, v0

    .line 674
    .local v4, data:Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mShuttingDown:Z
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$000(Lcom/android/calendar/AgendaWindowAdapter;)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 675
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    .line 809
    .end local p1
    :goto_0
    return-void

    .line 680
    .restart local p1
    :cond_0
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 681
    .local v3, cursorSize:I
    if-gtz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$100(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_1

    move-object v0, v4

    iget v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->queryType:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 682
    :cond_1
    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->processNewCursor(Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;Landroid/database/Cursor;)I

    move-result v10

    .line 683
    .local v10, listPositionOffset:I
    move-object v0, v4

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    move-object/from16 v17, v0

    if-nez v17, :cond_7

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->notifyDataSetChanged()V

    .line 685
    if-eqz v10, :cond_2

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/AgendaListView;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$200(Lcom/android/calendar/AgendaWindowAdapter;)Lcom/android/calendar/AgendaListView;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/android/calendar/AgendaListView;->shiftSelection(I)V

    .line 705
    .end local v10           #listPositionOffset:I
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mDoneSettingUpHeaderFooter:Z
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$400(Lcom/android/calendar/AgendaWindowAdapter;)Z

    move-result v17

    if-nez v17, :cond_3

    .line 706
    new-instance v7, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler$1;

    move-object v0, v7

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler$1;-><init>(Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;)V

    .line 714
    .local v7, headerFooterOnClickListener:Landroid/view/View$OnClickListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mHeaderView:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$500(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/widget/TextView;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mFooterView:Landroid/widget/TextView;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$700(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/widget/TextView;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/AgendaListView;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$200(Lcom/android/calendar/AgendaWindowAdapter;)Lcom/android/calendar/AgendaListView;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mFooterView:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/calendar/AgendaWindowAdapter;->access$700(Lcom/android/calendar/AgendaWindowAdapter;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/calendar/AgendaListView;->addFooterView(Landroid/view/View;)V

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    #setter for: Lcom/android/calendar/AgendaWindowAdapter;->mDoneSettingUpHeaderFooter:Z
    invoke-static/range {v17 .. v18}, Lcom/android/calendar/AgendaWindowAdapter;->access$402(Lcom/android/calendar/AgendaWindowAdapter;Z)Z

    .line 719
    .end local v7           #headerFooterOnClickListener:Landroid/view/View$OnClickListener;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$800(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v17

    monitor-enter v17

    .line 720
    const/4 v15, -0x1

    .line 721
    .local v15, totalAgendaRangeStart:I
    const/4 v14, -0x1

    .line 723
    .local v14, totalAgendaRangeEnd:I
    if-eqz v3, :cond_a

    .line 725
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static/range {v18 .. v18}, Lcom/android/calendar/AgendaWindowAdapter;->access$800(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;

    .line 729
    .local v16, x:Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    #setter for: Lcom/android/calendar/AgendaWindowAdapter;->mEmptyCursorCount:I
    invoke-static/range {v18 .. v19}, Lcom/android/calendar/AgendaWindowAdapter;->access$902(Lcom/android/calendar/AgendaWindowAdapter;I)I

    .line 730
    move-object v0, v4

    iget v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->queryType:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_9

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/calendar/AgendaWindowAdapter;->access$1008(Lcom/android/calendar/AgendaWindowAdapter;)I

    .line 736
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static/range {v18 .. v18}, Lcom/android/calendar/AgendaWindowAdapter;->access$100(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    move v15, v0

    .line 737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static/range {v18 .. v18}, Lcom/android/calendar/AgendaWindowAdapter;->access$100(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move v14, v0

    .line 786
    .end local v16           #x:Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v15

    move v2, v14

    #calls: Lcom/android/calendar/AgendaWindowAdapter;->updateHeaderFooter(II)V
    invoke-static {v0, v1, v2}, Lcom/android/calendar/AgendaWindowAdapter;->access$1200(Lcom/android/calendar/AgendaWindowAdapter;II)V

    .line 789
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static/range {v18 .. v18}, Lcom/android/calendar/AgendaWindowAdapter;->access$800(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 790
    .local v8, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;>;"
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_6

    .line 791
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;

    .line 792
    .local v12, queryData:Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    move-object v0, v12

    iget v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    move/from16 v19, v0

    move-object v0, v12

    iget v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    move/from16 v20, v0

    #calls: Lcom/android/calendar/AgendaWindowAdapter;->isInRange(II)Z
    invoke-static/range {v18 .. v20}, Lcom/android/calendar/AgendaWindowAdapter;->access$1300(Lcom/android/calendar/AgendaWindowAdapter;II)Z

    move-result v18

    if-nez v18, :cond_e

    .line 795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object v1, v12

    #calls: Lcom/android/calendar/AgendaWindowAdapter;->doQuery(Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;)V
    invoke-static {v0, v1}, Lcom/android/calendar/AgendaWindowAdapter;->access$1400(Lcom/android/calendar/AgendaWindowAdapter;Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;)V

    .line 803
    .end local v12           #queryData:Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;
    :cond_6
    monitor-exit v17

    goto/16 :goto_0

    .end local v8           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;>;"
    :catchall_0
    move-exception v18

    monitor-exit v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v18

    .line 689
    .end local v14           #totalAgendaRangeEnd:I
    .end local v15           #totalAgendaRangeStart:I
    .restart local v10       #listPositionOffset:I
    .restart local p1
    :cond_7
    iget-object v6, v4, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->goToTime:Landroid/text/format/Time;

    .line 690
    .local v6, goToTime:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->notifyDataSetChanged()V

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v6

    #calls: Lcom/android/calendar/AgendaWindowAdapter;->findDayPositionNearestTime(Landroid/text/format/Time;)I
    invoke-static {v0, v1}, Lcom/android/calendar/AgendaWindowAdapter;->access$300(Lcom/android/calendar/AgendaWindowAdapter;Landroid/text/format/Time;)I

    move-result v11

    .line 692
    .local v11, newPosition:I
    if-ltz v11, :cond_2

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v17, v0

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mAgendaListView:Lcom/android/calendar/AgendaListView;
    invoke-static/range {v17 .. v17}, Lcom/android/calendar/AgendaWindowAdapter;->access$200(Lcom/android/calendar/AgendaWindowAdapter;)Lcom/android/calendar/AgendaListView;

    move-result-object v17

    add-int/lit8 v18, v11, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/calendar/AgendaListView;->setSelection(I)V

    goto/16 :goto_1

    .line 701
    .end local v6           #goToTime:Landroid/text/format/Time;
    .end local v10           #listPositionOffset:I
    .end local v11           #newPosition:I
    :cond_8
    invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 732
    .restart local v14       #totalAgendaRangeEnd:I
    .restart local v15       #totalAgendaRangeStart:I
    .restart local v16       #x:Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;
    :cond_9
    :try_start_1
    move-object v0, v4

    iget v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->queryType:I

    move/from16 v18, v0

    if-nez v18, :cond_4

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/calendar/AgendaWindowAdapter;->access$1108(Lcom/android/calendar/AgendaWindowAdapter;)I

    goto/16 :goto_2

    .line 739
    .end local v16           #x:Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static/range {v18 .. v18}, Lcom/android/calendar/AgendaWindowAdapter;->access$800(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/ConcurrentLinkedQueue;->peek()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;

    .line 742
    .local v13, querySpec:Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static/range {v18 .. v18}, Lcom/android/calendar/AgendaWindowAdapter;->access$100(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v18

    if-nez v18, :cond_d

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static/range {v18 .. v18}, Lcom/android/calendar/AgendaWindowAdapter;->access$100(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 744
    .local v5, first:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mAdapterInfos:Ljava/util/LinkedList;
    invoke-static/range {v18 .. v18}, Lcom/android/calendar/AgendaWindowAdapter;->access$100(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/LinkedList;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;

    .line 746
    .local v9, last:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    move-object v0, v5

    iget v0, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    move/from16 v18, v0

    const/16 v19, 0x1

    sub-int v18, v18, v19

    move-object v0, v13

    iget v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_b

    move-object v0, v13

    iget v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    move/from16 v18, v0

    move-object v0, v5

    iget v0, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_b

    .line 747
    move-object v0, v13

    iget v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object v1, v5

    iput v0, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    .line 750
    :cond_b
    move-object v0, v13

    iget v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    move/from16 v18, v0

    move-object v0, v9

    iget v0, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move/from16 v19, v0

    add-int/lit8 v19, v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_c

    move-object v0, v9

    iget v0, v0, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    move/from16 v18, v0

    move-object v0, v13

    iget v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    move/from16 v19, v0

    move/from16 v0, v18

    move/from16 v1, v19

    if-ge v0, v1, :cond_c

    .line 751
    move-object v0, v13

    iget v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    move/from16 v18, v0

    move/from16 v0, v18

    move-object v1, v9

    iput v0, v1, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    .line 754
    :cond_c
    iget v15, v5, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->start:I

    .line 755
    iget v14, v9, Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;->end:I

    .line 763
    .end local v5           #first:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    .end local v9           #last:Lcom/android/calendar/AgendaWindowAdapter$DayAdapterInfo;
    :goto_5
    move-object v0, v13

    iget v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->queryType:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 780
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/calendar/AgendaWindowAdapter;->access$904(Lcom/android/calendar/AgendaWindowAdapter;)I

    move-result v18

    if-lez v18, :cond_5

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QueryHandler;->this$0:Lcom/android/calendar/AgendaWindowAdapter;

    move-object/from16 v18, v0

    #getter for: Lcom/android/calendar/AgendaWindowAdapter;->mQueryQueue:Ljava/util/concurrent/ConcurrentLinkedQueue;
    invoke-static/range {v18 .. v18}, Lcom/android/calendar/AgendaWindowAdapter;->access$800(Lcom/android/calendar/AgendaWindowAdapter;)Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    goto/16 :goto_3

    .line 757
    :cond_d
    iget v15, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    .line 758
    iget v14, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    goto :goto_5

    .line 765
    :pswitch_0
    iget v15, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    .line 766
    move-object v0, v13

    iget v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    move/from16 v18, v0

    const/16 v19, 0x3c

    sub-int v18, v18, v19

    move/from16 v0, v18

    move-object v1, v13

    iput v0, v1, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    goto :goto_6

    .line 769
    :pswitch_1
    iget v14, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    .line 770
    move-object v0, v13

    iget v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x3c

    move/from16 v0, v18

    move-object v1, v13

    iput v0, v1, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    goto :goto_6

    .line 773
    :pswitch_2
    iget v15, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    .line 774
    iget v14, v13, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    .line 775
    move-object v0, v13

    iget v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    move/from16 v18, v0

    const/16 v19, 0x1e

    sub-int v18, v18, v19

    move/from16 v0, v18

    move-object v1, v13

    iput v0, v1, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->start:I

    .line 776
    move-object v0, v13

    iget v0, v0, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1e

    move/from16 v0, v18

    move-object v1, v13

    iput v0, v1, Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;->end:I

    goto :goto_6

    .line 799
    .end local v13           #querySpec:Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;
    .end local p1
    .restart local v8       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;>;"
    .restart local v12       #queryData:Lcom/android/calendar/AgendaWindowAdapter$QuerySpec;
    :cond_e
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_4

    .line 763
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
