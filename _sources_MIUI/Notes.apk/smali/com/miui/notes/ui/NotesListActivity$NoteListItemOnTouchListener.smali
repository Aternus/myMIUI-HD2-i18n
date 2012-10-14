.class Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnTouchListener;
.super Ljava/lang/Object;
.source "NotesListActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/notes/ui/NotesListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoteListItemOnTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/notes/ui/NotesListActivity;


# direct methods
.method private constructor <init>(Lcom/miui/notes/ui/NotesListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 689
    iput-object p1, p0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/ui/NotesListActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 689
    invoke-direct {p0, p1}, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnTouchListener;-><init>(Lcom/miui/notes/ui/NotesListActivity;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 26
    .parameter "v"
    .parameter "event"

    .prologue
    .line 693
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 777
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 695
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    move-object v3, v0

    const/4 v4, 0x0

    #setter for: Lcom/miui/notes/ui/NotesListActivity;->mMove:Z
    invoke-static {v3, v4}, Lcom/miui/notes/ui/NotesListActivity;->access$1902(Lcom/miui/notes/ui/NotesListActivity;Z)Z

    .line 696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    move-object v3, v0

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNoteListDragView:Lcom/miui/notes/ui/NoteListItemDragView;
    invoke-static {v3}, Lcom/miui/notes/ui/NotesListActivity;->access$2000(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NoteListItemDragView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    move-object v3, v0

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mTargetNoteItemData:Lcom/miui/notes/ui/NoteItemData;
    invoke-static {v3}, Lcom/miui/notes/ui/NotesListActivity;->access$1800(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NoteItemData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/notes/ui/NoteItemData;->getFolderId()J

    move-result-wide v8

    .line 698
    .local v8, destinationFolder:J
    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/ListView;

    move-object/from16 v21, v0

    .line 699
    .local v21, lv:Landroid/widget/ListView;
    invoke-virtual/range {v21 .. v21}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v23

    .line 700
    .local v23, start:I
    invoke-virtual/range {v21 .. v21}, Landroid/widget/ListView;->getChildCount()I

    move-result v3

    invoke-virtual/range {v21 .. v21}, Landroid/widget/ListView;->getFooterViewsCount()I

    move-result v4

    sub-int v19, v3, v4

    .line 701
    .local v19, end:I
    move/from16 v20, v23

    .local v20, i:I
    :goto_1
    move/from16 v0, v20

    move/from16 v1, v19

    if-gt v0, v1, :cond_1

    .line 707
    move/from16 v0, v20

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    move-object v3, v0

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mTargetNoteItemData:Lcom/miui/notes/ui/NoteItemData;
    invoke-static {v3}, Lcom/miui/notes/ui/NotesListActivity;->access$1800(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NoteItemData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/notes/ui/NoteItemData;->getFolderId()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 709
    const-wide/16 v8, 0x0

    .line 731
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    move-object v3, v0

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/miui/notes/ui/NotesListActivity;->access$000(Lcom/miui/notes/ui/NotesListActivity;)Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    move-object v4, v0

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mTargetNoteItemData:Lcom/miui/notes/ui/NoteItemData;
    invoke-static {v4}, Lcom/miui/notes/ui/NotesListActivity;->access$1800(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NoteItemData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/notes/ui/NoteItemData;->getId()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    move-object v6, v0

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mTargetNoteItemData:Lcom/miui/notes/ui/NoteItemData;
    invoke-static {v6}, Lcom/miui/notes/ui/NotesListActivity;->access$1800(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NoteItemData;

    move-result-object v6

    invoke-virtual {v6}, Lcom/miui/notes/ui/NoteItemData;->getFolderId()J

    move-result-wide v6

    invoke-static/range {v3 .. v9}, Lcom/miui/notes/tool/DataUtils;->moveNoteToFoler(Landroid/content/ContentResolver;JJJ)V

    .line 733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    move-object v3, v0

    sget-object v4, Lcom/miui/notes/ui/NotesListActivity$ListEditState;->NOTE_LIST:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    #setter for: Lcom/miui/notes/ui/NotesListActivity;->mState:Lcom/miui/notes/ui/NotesListActivity$ListEditState;
    invoke-static {v3, v4}, Lcom/miui/notes/ui/NotesListActivity;->access$802(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/ui/NotesListActivity$ListEditState;)Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    move-object v3, v0

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNoteListDragView:Lcom/miui/notes/ui/NoteListItemDragView;
    invoke-static {v3}, Lcom/miui/notes/ui/NotesListActivity;->access$2000(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NoteListItemDragView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/notes/ui/NoteListItemDragView;->hide()V

    .line 735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    move-object v3, v0

    const/4 v4, 0x0

    #setter for: Lcom/miui/notes/ui/NotesListActivity;->mNoteListDragView:Lcom/miui/notes/ui/NoteListItemDragView;
    invoke-static {v3, v4}, Lcom/miui/notes/ui/NotesListActivity;->access$2002(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/ui/NoteListItemDragView;)Lcom/miui/notes/ui/NoteListItemDragView;

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    move-object v3, v0

    const/4 v4, 0x0

    #setter for: Lcom/miui/notes/ui/NotesListActivity;->mTargetNoteItemData:Lcom/miui/notes/ui/NoteItemData;
    invoke-static {v3, v4}, Lcom/miui/notes/ui/NotesListActivity;->access$1802(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/ui/NoteItemData;)Lcom/miui/notes/ui/NoteItemData;

    goto/16 :goto_0

    .line 719
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    move-object v3, v0

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/EditableListView;
    invoke-static {v3}, Lcom/miui/notes/ui/NotesListActivity;->access$600(Lcom/miui/notes/ui/NotesListActivity;)Landroid/widget/EditableListView;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/miui/notes/ui/NotesListItem;

    invoke-virtual {v3}, Lcom/miui/notes/ui/NotesListItem;->getItemData()Lcom/miui/notes/ui/NoteItemData;

    move-result-object v17

    .line 721
    .local v17, data:Lcom/miui/notes/ui/NoteItemData;
    invoke-virtual/range {v17 .. v17}, Lcom/miui/notes/ui/NoteItemData;->getType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 722
    new-instance v22, Landroid/graphics/Rect;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Rect;-><init>()V

    .line 723
    .local v22, rect:Landroid/graphics/Rect;
    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/ListView;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 724
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    move-object v5, v0

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/EditableListView;
    invoke-static {v5}, Lcom/miui/notes/ui/NotesListActivity;->access$600(Lcom/miui/notes/ui/NotesListActivity;)Landroid/widget/EditableListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditableListView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    move-object/from16 v0, v22

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 726
    invoke-virtual/range {v17 .. v17}, Lcom/miui/notes/ui/NoteItemData;->getId()J

    move-result-wide v8

    .line 727
    goto/16 :goto_2

    .line 701
    .end local v22           #rect:Landroid/graphics/Rect;
    :cond_3
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 741
    .end local v8           #destinationFolder:J
    .end local v17           #data:Lcom/miui/notes/ui/NoteItemData;
    .end local v19           #end:I
    .end local v20           #i:I
    .end local v21           #lv:Landroid/widget/ListView;
    .end local v23           #start:I
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    move-object v3, v0

    const/4 v4, 0x0

    #setter for: Lcom/miui/notes/ui/NotesListActivity;->mMove:Z
    invoke-static {v3, v4}, Lcom/miui/notes/ui/NotesListActivity;->access$1902(Lcom/miui/notes/ui/NotesListActivity;Z)Z

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    move-object v3, v0

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNoteListDragView:Lcom/miui/notes/ui/NoteListItemDragView;
    invoke-static {v3}, Lcom/miui/notes/ui/NotesListActivity;->access$2000(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NoteListItemDragView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    move-object v3, v0

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/miui/notes/ui/NotesListActivity;->access$000(Lcom/miui/notes/ui/NotesListActivity;)Landroid/content/ContentResolver;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    move-object v3, v0

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mTargetNoteItemData:Lcom/miui/notes/ui/NoteItemData;
    invoke-static {v3}, Lcom/miui/notes/ui/NotesListActivity;->access$1800(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NoteItemData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/notes/ui/NoteItemData;->getId()J

    move-result-wide v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    move-object v3, v0

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mTargetNoteItemData:Lcom/miui/notes/ui/NoteItemData;
    invoke-static {v3}, Lcom/miui/notes/ui/NotesListActivity;->access$1800(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NoteItemData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/notes/ui/NoteItemData;->getFolderId()J

    move-result-wide v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    move-object v3, v0

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mTargetNoteItemData:Lcom/miui/notes/ui/NoteItemData;
    invoke-static {v3}, Lcom/miui/notes/ui/NotesListActivity;->access$1800(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NoteItemData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/notes/ui/NoteItemData;->getFolderId()J

    move-result-wide v15

    invoke-static/range {v10 .. v16}, Lcom/miui/notes/tool/DataUtils;->moveNoteToFoler(Landroid/content/ContentResolver;JJJ)V

    .line 746
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    move-object v3, v0

    sget-object v4, Lcom/miui/notes/ui/NotesListActivity$ListEditState;->NOTE_LIST:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    #setter for: Lcom/miui/notes/ui/NotesListActivity;->mState:Lcom/miui/notes/ui/NotesListActivity$ListEditState;
    invoke-static {v3, v4}, Lcom/miui/notes/ui/NotesListActivity;->access$802(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/ui/NotesListActivity$ListEditState;)Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    move-object v3, v0

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNoteListDragView:Lcom/miui/notes/ui/NoteListItemDragView;
    invoke-static {v3}, Lcom/miui/notes/ui/NotesListActivity;->access$2000(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NoteListItemDragView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/miui/notes/ui/NoteListItemDragView;->hide()V

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    move-object v3, v0

    const/4 v4, 0x0

    #setter for: Lcom/miui/notes/ui/NotesListActivity;->mNoteListDragView:Lcom/miui/notes/ui/NoteListItemDragView;
    invoke-static {v3, v4}, Lcom/miui/notes/ui/NotesListActivity;->access$2002(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/ui/NoteListItemDragView;)Lcom/miui/notes/ui/NoteListItemDragView;

    .line 749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    move-object v3, v0

    const/4 v4, 0x0

    #setter for: Lcom/miui/notes/ui/NotesListActivity;->mTargetNoteItemData:Lcom/miui/notes/ui/NoteItemData;
    invoke-static {v3, v4}, Lcom/miui/notes/ui/NotesListActivity;->access$1802(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/ui/NoteItemData;)Lcom/miui/notes/ui/NoteItemData;

    goto/16 :goto_0

    .line 754
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    move-object v3, v0

    const/4 v4, 0x1

    #setter for: Lcom/miui/notes/ui/NotesListActivity;->mMove:Z
    invoke-static {v3, v4}, Lcom/miui/notes/ui/NotesListActivity;->access$1902(Lcom/miui/notes/ui/NotesListActivity;Z)Z

    .line 755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    move-object v3, v0

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNoteListDragView:Lcom/miui/notes/ui/NoteListItemDragView;
    invoke-static {v3}, Lcom/miui/notes/ui/NotesListActivity;->access$2000(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NoteListItemDragView;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 756
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    move v0, v3

    float-to-int v0, v0

    move/from16 v24, v0

    .line 757
    .local v24, x:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    move v0, v3

    float-to-int v0, v0

    move/from16 v25, v0

    .line 758
    .local v25, y:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    move-object v3, v0

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNoteListDragView:Lcom/miui/notes/ui/NoteListItemDragView;
    invoke-static {v3}, Lcom/miui/notes/ui/NotesListActivity;->access$2000(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NoteListItemDragView;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/miui/notes/ui/NoteListItemDragView;->setPosition(II)V

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    move-object v3, v0

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mScrollOffsetTop:I
    invoke-static {v3}, Lcom/miui/notes/ui/NotesListActivity;->access$2100(Lcom/miui/notes/ui/NotesListActivity;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 760
    new-instance v18, Landroid/util/DisplayMetrics;

    invoke-direct/range {v18 .. v18}, Landroid/util/DisplayMetrics;-><init>()V

    .line 761
    .local v18, displayMetrics:Landroid/util/DisplayMetrics;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/miui/notes/ui/NotesListActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    move-object v3, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move v4, v0

    div-int/lit8 v4, v4, 0x2

    sub-int v4, v4, v25

    div-int/lit8 v4, v4, 0x1e

    invoke-static {v3, v4}, Lcom/miui/notes/ui/NotesListActivity;->access$2212(Lcom/miui/notes/ui/NotesListActivity;I)I

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    move-object v3, v0

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mScrollOffsetY:I
    invoke-static {v3}, Lcom/miui/notes/ui/NotesListActivity;->access$2200(Lcom/miui/notes/ui/NotesListActivity;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    move-object v4, v0

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mScrollOffsetTop:I
    invoke-static {v4}, Lcom/miui/notes/ui/NotesListActivity;->access$2100(Lcom/miui/notes/ui/NotesListActivity;)I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    move-object v4, v0

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mScrollOffsetTop:I
    invoke-static {v4}, Lcom/miui/notes/ui/NotesListActivity;->access$2100(Lcom/miui/notes/ui/NotesListActivity;)I

    move-result v4

    #setter for: Lcom/miui/notes/ui/NotesListActivity;->mScrollOffsetY:I
    invoke-static {v3, v4}, Lcom/miui/notes/ui/NotesListActivity;->access$2202(Lcom/miui/notes/ui/NotesListActivity;I)I

    .line 766
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    move-object v3, v0

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mScrollOffsetY:I
    invoke-static {v3}, Lcom/miui/notes/ui/NotesListActivity;->access$2200(Lcom/miui/notes/ui/NotesListActivity;)I

    move-result v3

    if-lez v3, :cond_5

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    move-object v3, v0

    const/4 v4, 0x0

    #setter for: Lcom/miui/notes/ui/NotesListActivity;->mScrollOffsetY:I
    invoke-static {v3, v4}, Lcom/miui/notes/ui/NotesListActivity;->access$2202(Lcom/miui/notes/ui/NotesListActivity;I)I

    .line 769
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    move-object v3, v0

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/EditableListView;
    invoke-static {v3}, Lcom/miui/notes/ui/NotesListActivity;->access$600(Lcom/miui/notes/ui/NotesListActivity;)Landroid/widget/EditableListView;

    move-result-object v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    move-object v5, v0

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mScrollOffsetY:I
    invoke-static {v5}, Lcom/miui/notes/ui/NotesListActivity;->access$2200(Lcom/miui/notes/ui/NotesListActivity;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/widget/EditableListView;->setSelectionFromTop(II)V

    goto/16 :goto_0

    .line 693
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
