.class Lcom/miui/notes/ui/NotesListActivity$OnListItemClickListener;
.super Ljava/lang/Object;
.source "NotesListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/notes/ui/NotesListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnListItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/notes/ui/NotesListActivity;


# direct methods
.method private constructor <init>(Lcom/miui/notes/ui/NotesListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1093
    iput-object p1, p0, Lcom/miui/notes/ui/NotesListActivity$OnListItemClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/ui/NotesListActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1093
    invoke-direct {p0, p1}, Lcom/miui/notes/ui/NotesListActivity$OnListItemClickListener;-><init>(Lcom/miui/notes/ui/NotesListActivity;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v5, 0x1

    const-string v6, "NotesListActivity"

    .line 1097
    instance-of v3, p2, Lcom/miui/notes/ui/NotesListItem;

    if-eqz v3, :cond_0

    .line 1098
    move-object v0, p2

    check-cast v0, Lcom/miui/notes/ui/NotesListItem;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/miui/notes/ui/NotesListItem;->getItemData()Lcom/miui/notes/ui/NoteItemData;

    move-result-object v2

    .line 1099
    .local v2, item:Lcom/miui/notes/ui/NoteItemData;
    iget-object v3, p0, Lcom/miui/notes/ui/NotesListActivity$OnListItemClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/EditableListView;
    invoke-static {v3}, Lcom/miui/notes/ui/NotesListActivity;->access$600(Lcom/miui/notes/ui/NotesListActivity;)Landroid/widget/EditableListView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1100
    invoke-virtual {v2}, Lcom/miui/notes/ui/NoteItemData;->getType()I

    move-result v3

    if-nez v3, :cond_0

    .line 1101
    iget-object v3, p0, Lcom/miui/notes/ui/NotesListActivity$OnListItemClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListAdapter:Lcom/miui/notes/ui/NotesListAdapter;
    invoke-static {v3}, Lcom/miui/notes/ui/NotesListActivity;->access$1300(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NotesListAdapter;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/miui/notes/ui/NotesListAdapter;->isCheckedItem(I)Z

    move-result v3

    if-nez v3, :cond_1

    move v1, v5

    .line 1102
    .local v1, checked:Z
    :goto_0
    iget-object v3, p0, Lcom/miui/notes/ui/NotesListActivity$OnListItemClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListAdapter:Lcom/miui/notes/ui/NotesListAdapter;
    invoke-static {v3}, Lcom/miui/notes/ui/NotesListActivity;->access$1300(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NotesListAdapter;

    move-result-object v3

    invoke-virtual {v3, p3, v1}, Lcom/miui/notes/ui/NotesListAdapter;->setCheckedItem(IZ)V

    .line 1103
    const v3, 0x1020001

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 1104
    iget-object v3, p0, Lcom/miui/notes/ui/NotesListActivity$OnListItemClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #calls: Lcom/miui/notes/ui/NotesListActivity;->toggleEditButton()V
    invoke-static {v3}, Lcom/miui/notes/ui/NotesListActivity;->access$2800(Lcom/miui/notes/ui/NotesListActivity;)V

    .line 1131
    .end local v1           #checked:Z
    .end local v2           #item:Lcom/miui/notes/ui/NoteItemData;
    :cond_0
    :goto_1
    return-void

    .line 1101
    .restart local v2       #item:Lcom/miui/notes/ui/NoteItemData;
    :cond_1
    const/4 v3, 0x0

    move v1, v3

    goto :goto_0

    .line 1108
    :cond_2
    sget-object v3, Lcom/miui/notes/ui/NotesListActivity$11;->$SwitchMap$com$miui$notes$ui$NotesListActivity$ListEditState:[I

    iget-object v4, p0, Lcom/miui/notes/ui/NotesListActivity$OnListItemClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mState:Lcom/miui/notes/ui/NotesListActivity$ListEditState;
    invoke-static {v4}, Lcom/miui/notes/ui/NotesListActivity;->access$800(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/miui/notes/ui/NotesListActivity$ListEditState;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 1121
    :pswitch_0
    invoke-virtual {v2}, Lcom/miui/notes/ui/NoteItemData;->getType()I

    move-result v3

    if-nez v3, :cond_6

    .line 1122
    iget-object v3, p0, Lcom/miui/notes/ui/NotesListActivity$OnListItemClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #calls: Lcom/miui/notes/ui/NotesListActivity;->openNode(Lcom/miui/notes/ui/NoteItemData;)V
    invoke-static {v3, v2}, Lcom/miui/notes/ui/NotesListActivity;->access$3000(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/ui/NoteItemData;)V

    goto :goto_1

    .line 1110
    :pswitch_1
    invoke-virtual {v2}, Lcom/miui/notes/ui/NoteItemData;->getType()I

    move-result v3

    if-eq v3, v5, :cond_3

    invoke-virtual {v2}, Lcom/miui/notes/ui/NoteItemData;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 1112
    :cond_3
    iget-object v3, p0, Lcom/miui/notes/ui/NotesListActivity$OnListItemClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #calls: Lcom/miui/notes/ui/NotesListActivity;->openFolder(Lcom/miui/notes/ui/NoteItemData;)V
    invoke-static {v3, v2}, Lcom/miui/notes/ui/NotesListActivity;->access$2900(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/ui/NoteItemData;)V

    goto :goto_1

    .line 1113
    :cond_4
    invoke-virtual {v2}, Lcom/miui/notes/ui/NoteItemData;->getType()I

    move-result v3

    if-nez v3, :cond_5

    .line 1114
    iget-object v3, p0, Lcom/miui/notes/ui/NotesListActivity$OnListItemClickListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #calls: Lcom/miui/notes/ui/NotesListActivity;->openNode(Lcom/miui/notes/ui/NoteItemData;)V
    invoke-static {v3, v2}, Lcom/miui/notes/ui/NotesListActivity;->access$3000(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/ui/NoteItemData;)V

    goto :goto_1

    .line 1116
    :cond_5
    const-string v3, "NotesListActivity"

    const-string v3, "Wrong note type in NOTE_LIST"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1124
    :cond_6
    const-string v3, "NotesListActivity"

    const-string v3, "Wrong note type in SUB_FOLDER"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1108
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
