.class Lcom/miui/notes/ui/NotesListActivity$NoteListItemLongClickListener;
.super Ljava/lang/Object;
.source "NotesListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/notes/ui/NotesListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoteListItemLongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/notes/ui/NotesListActivity;


# direct methods
.method private constructor <init>(Lcom/miui/notes/ui/NotesListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 781
    iput-object p1, p0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemLongClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/ui/NotesListActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 781
    invoke-direct {p0, p1}, Lcom/miui/notes/ui/NotesListActivity$NoteListItemLongClickListener;-><init>(Lcom/miui/notes/ui/NotesListActivity;)V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 11
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
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 785
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemLongClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mDpadActionDown:Z
    invoke-static {v1}, Lcom/miui/notes/ui/NotesListActivity;->access$2300(Lcom/miui/notes/ui/NotesListActivity;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v10

    .line 865
    :goto_0
    return v1

    .line 788
    :cond_0
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemLongClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/EditableListView;
    invoke-static {v1}, Lcom/miui/notes/ui/NotesListActivity;->access$600(Lcom/miui/notes/ui/NotesListActivity;)Landroid/widget/EditableListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemLongClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/miui/notes/ui/NotesListActivity;->access$000(Lcom/miui/notes/ui/NotesListActivity;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/notes/tool/DataUtils;->getUserFolderCount(Landroid/content/ContentResolver;)I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    move v1, v10

    .line 789
    goto :goto_0

    .line 791
    :cond_2
    sget-object v1, Lcom/miui/notes/ui/NotesListActivity$11;->$SwitchMap$com$miui$notes$ui$NotesListActivity$ListEditState:[I

    iget-object v2, p0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemLongClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mState:Lcom/miui/notes/ui/NotesListActivity$ListEditState;
    invoke-static {v2}, Lcom/miui/notes/ui/NotesListActivity;->access$800(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/notes/ui/NotesListActivity$ListEditState;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_3
    :goto_1
    move v1, v6

    .line 865
    goto :goto_0

    :pswitch_0
    move v1, v10

    .line 793
    goto :goto_0

    .line 796
    :pswitch_1
    instance-of v1, p2, Lcom/miui/notes/ui/NotesListItem;

    if-eqz v1, :cond_3

    .line 797
    iget-object v2, p0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemLongClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    move-object v0, p2

    check-cast v0, Lcom/miui/notes/ui/NotesListItem;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/miui/notes/ui/NotesListItem;->getItemData()Lcom/miui/notes/ui/NoteItemData;

    move-result-object v1

    #setter for: Lcom/miui/notes/ui/NotesListActivity;->mTargetNoteItemData:Lcom/miui/notes/ui/NoteItemData;
    invoke-static {v2, v1}, Lcom/miui/notes/ui/NotesListActivity;->access$1802(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/ui/NoteItemData;)Lcom/miui/notes/ui/NoteItemData;

    .line 801
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemLongClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mTargetNoteItemData:Lcom/miui/notes/ui/NoteItemData;
    invoke-static {v1}, Lcom/miui/notes/ui/NotesListActivity;->access$1800(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NoteItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/notes/ui/NoteItemData;->getType()I

    move-result v1

    if-nez v1, :cond_6

    .line 806
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemLongClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mState:Lcom/miui/notes/ui/NotesListActivity$ListEditState;
    invoke-static {v1}, Lcom/miui/notes/ui/NotesListActivity;->access$800(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    move-result-object v1

    sget-object v2, Lcom/miui/notes/ui/NotesListActivity$ListEditState;->SUB_FOLDER:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    if-ne v1, v2, :cond_4

    .line 807
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemLongClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    const-wide/16 v2, 0x0

    #setter for: Lcom/miui/notes/ui/NotesListActivity;->mCurrentFolderId:J
    invoke-static {v1, v2, v3}, Lcom/miui/notes/ui/NotesListActivity;->access$2402(Lcom/miui/notes/ui/NotesListActivity;J)J

    .line 808
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemLongClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    sget-object v2, Lcom/miui/notes/ui/NotesListActivity$ListEditState;->NOTE_LIST:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    #setter for: Lcom/miui/notes/ui/NotesListActivity;->mState:Lcom/miui/notes/ui/NotesListActivity$ListEditState;
    invoke-static {v1, v2}, Lcom/miui/notes/ui/NotesListActivity;->access$802(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/ui/NotesListActivity$ListEditState;)Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    .line 809
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemLongClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mTitleBar:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/miui/notes/ui/NotesListActivity;->access$900(Lcom/miui/notes/ui/NotesListActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 810
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemLongClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #calls: Lcom/miui/notes/ui/NotesListActivity;->startAsyncNotesListQuery()V
    invoke-static {v1}, Lcom/miui/notes/ui/NotesListActivity;->access$2500(Lcom/miui/notes/ui/NotesListActivity;)V

    .line 817
    :cond_4
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemLongClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    new-instance v2, Lcom/miui/notes/ui/NoteListItemDragView;

    iget-object v3, p0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemLongClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    invoke-direct {v2, v3}, Lcom/miui/notes/ui/NoteListItemDragView;-><init>(Landroid/content/Context;)V

    #setter for: Lcom/miui/notes/ui/NotesListActivity;->mNoteListDragView:Lcom/miui/notes/ui/NoteListItemDragView;
    invoke-static {v1, v2}, Lcom/miui/notes/ui/NotesListActivity;->access$2002(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/ui/NoteListItemDragView;)Lcom/miui/notes/ui/NoteListItemDragView;

    .line 818
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemLongClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNoteListDragView:Lcom/miui/notes/ui/NoteListItemDragView;
    invoke-static {v1}, Lcom/miui/notes/ui/NotesListActivity;->access$2000(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NoteListItemDragView;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemLongClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    iget-object v3, p0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemLongClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mTargetNoteItemData:Lcom/miui/notes/ui/NoteItemData;
    invoke-static {v3}, Lcom/miui/notes/ui/NotesListActivity;->access$1800(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NoteItemData;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/miui/notes/ui/NoteListItemDragView;->show(Landroid/content/Context;Lcom/miui/notes/ui/NoteItemData;II)V

    .line 825
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemLongClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/EditableListView;
    invoke-static {v1}, Lcom/miui/notes/ui/NotesListActivity;->access$600(Lcom/miui/notes/ui/NotesListActivity;)Landroid/widget/EditableListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditableListView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemLongClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/EditableListView;
    invoke-static {v2}, Lcom/miui/notes/ui/NotesListActivity;->access$600(Lcom/miui/notes/ui/NotesListActivity;)Landroid/widget/EditableListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditableListView;->getPaddingTop()I

    move-result v2

    iget-object v3, p0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemLongClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/EditableListView;
    invoke-static {v3}, Lcom/miui/notes/ui/NotesListActivity;->access$600(Lcom/miui/notes/ui/NotesListActivity;)Landroid/widget/EditableListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditableListView;->getPaddingBottom()I

    move-result v3

    add-int/2addr v2, v3

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemLongClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mAddNewNote:Landroid/widget/Button;
    invoke-static {v2}, Lcom/miui/notes/ui/NotesListActivity;->access$700(Lcom/miui/notes/ui/NotesListActivity;)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Button;->getHeight()I

    move-result v2

    sub-int v9, v1, v2

    .line 828
    .local v9, height:I
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemLongClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/miui/notes/ui/NotesListActivity;->access$000(Lcom/miui/notes/ui/NotesListActivity;)Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/notes/tool/DataUtils;->getUserFolderCount(Landroid/content/ContentResolver;)I

    move-result v1

    mul-int/lit8 v8, v1, 0x67

    .line 830
    .local v8, folderTotalLength:I
    if-ge v8, v9, :cond_5

    .line 831
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemLongClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #setter for: Lcom/miui/notes/ui/NotesListActivity;->mScrollOffsetTop:I
    invoke-static {v1, v6}, Lcom/miui/notes/ui/NotesListActivity;->access$2102(Lcom/miui/notes/ui/NotesListActivity;I)I

    .line 837
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemLongClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/EditableListView;
    invoke-static {v1}, Lcom/miui/notes/ui/NotesListActivity;->access$600(Lcom/miui/notes/ui/NotesListActivity;)Landroid/widget/EditableListView;

    move-result-object v1

    invoke-virtual {v1, v6, v6}, Landroid/widget/EditableListView;->setSelectionFromTop(II)V

    .line 845
    :goto_2
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemLongClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #setter for: Lcom/miui/notes/ui/NotesListActivity;->mScrollOffsetY:I
    invoke-static {v1, v6}, Lcom/miui/notes/ui/NotesListActivity;->access$2202(Lcom/miui/notes/ui/NotesListActivity;I)I

    .line 851
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemLongClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/miui/notes/ui/NotesListActivity;->access$000(Lcom/miui/notes/ui/NotesListActivity;)Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemLongClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mTargetNoteItemData:Lcom/miui/notes/ui/NoteItemData;
    invoke-static {v2}, Lcom/miui/notes/ui/NotesListActivity;->access$1800(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NoteItemData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/notes/ui/NoteItemData;->getId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemLongClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mTargetNoteItemData:Lcom/miui/notes/ui/NoteItemData;
    invoke-static {v4}, Lcom/miui/notes/ui/NotesListActivity;->access$1800(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NoteItemData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/notes/ui/NoteItemData;->getFolderId()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    invoke-static/range {v1 .. v7}, Lcom/miui/notes/tool/DataUtils;->moveNoteToFoler(Landroid/content/ContentResolver;JJJ)V

    move v1, v10

    .line 854
    goto/16 :goto_0

    .line 843
    :cond_5
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemLongClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    sub-int v2, v9, v8

    #setter for: Lcom/miui/notes/ui/NotesListActivity;->mScrollOffsetTop:I
    invoke-static {v1, v2}, Lcom/miui/notes/ui/NotesListActivity;->access$2102(Lcom/miui/notes/ui/NotesListActivity;I)I

    goto :goto_2

    .line 855
    .end local v8           #folderTotalLength:I
    .end local v9           #height:I
    :cond_6
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemLongClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mTargetNoteItemData:Lcom/miui/notes/ui/NoteItemData;
    invoke-static {v1}, Lcom/miui/notes/ui/NotesListActivity;->access$1800(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NoteItemData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/notes/ui/NoteItemData;->getType()I

    move-result v1

    if-ne v1, v10, :cond_3

    .line 856
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemLongClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/EditableListView;
    invoke-static {v1}, Lcom/miui/notes/ui/NotesListActivity;->access$600(Lcom/miui/notes/ui/NotesListActivity;)Landroid/widget/EditableListView;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemLongClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mFolderOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;
    invoke-static {v2}, Lcom/miui/notes/ui/NotesListActivity;->access$2600(Lcom/miui/notes/ui/NotesListActivity;)Landroid/view/View$OnCreateContextMenuListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditableListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    goto/16 :goto_1

    .line 791
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
