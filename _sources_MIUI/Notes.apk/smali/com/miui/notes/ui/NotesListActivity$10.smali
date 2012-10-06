.class Lcom/miui/notes/ui/NotesListActivity$10;
.super Ljava/lang/Object;
.source "NotesListActivity.java"

# interfaces
.implements Landroid/widget/EditableListActionBar$OnButtonBarClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/notes/ui/NotesListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/notes/ui/NotesListActivity;


# direct methods
.method constructor <init>(Lcom/miui/notes/ui/NotesListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1160
    iput-object p1, p0, Lcom/miui/notes/ui/NotesListActivity$10;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/widget/EditableListView$EditableListViewCheckable;)V
    .locals 6
    .parameter "v"
    .parameter "checkable"

    .prologue
    .line 1164
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1192
    :goto_0
    return-void

    .line 1166
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$10;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1167
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$10;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    const v2, 0x7f080031

    invoke-virtual {v1, v2}, Lcom/miui/notes/ui/NotesListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1168
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 1169
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$10;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    const v2, 0x7f080032

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miui/notes/ui/NotesListActivity$10;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListAdapter:Lcom/miui/notes/ui/NotesListAdapter;
    invoke-static {v5}, Lcom/miui/notes/ui/NotesListActivity;->access$1300(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NotesListAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/miui/notes/ui/NotesListAdapter;->getCheckedItemsCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/miui/notes/ui/NotesListActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1171
    const v1, 0x104000a

    new-instance v2, Lcom/miui/notes/ui/NotesListActivity$10$1;

    invoke-direct {v2, p0}, Lcom/miui/notes/ui/NotesListActivity$10$1;-><init>(Lcom/miui/notes/ui/NotesListActivity$10;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1178
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1179
    sget-object v1, Landroid/app/AlertDialog$Indicator;->Delete:Landroid/app/AlertDialog$Indicator;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIndicator(Landroid/app/AlertDialog$Indicator;)Landroid/app/AlertDialog$Builder;

    .line 1180
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$10;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    #setter for: Lcom/miui/notes/ui/NotesListActivity;->mDeleteConfirmDialog:Landroid/app/Dialog;
    invoke-static {v1, v2}, Lcom/miui/notes/ui/NotesListActivity;->access$3202(Lcom/miui/notes/ui/NotesListActivity;Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_0

    .line 1183
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :pswitch_1
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$10;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #calls: Lcom/miui/notes/ui/NotesListActivity;->startQueryDestinationFolders()V
    invoke-static {v1}, Lcom/miui/notes/ui/NotesListActivity;->access$3300(Lcom/miui/notes/ui/NotesListActivity;)V

    goto :goto_0

    .line 1186
    :pswitch_2
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$10;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #calls: Lcom/miui/notes/ui/NotesListActivity;->toggleCheckButton()V
    invoke-static {v1}, Lcom/miui/notes/ui/NotesListActivity;->access$3400(Lcom/miui/notes/ui/NotesListActivity;)V

    .line 1187
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity$10;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #calls: Lcom/miui/notes/ui/NotesListActivity;->toggleEditButton()V
    invoke-static {v1}, Lcom/miui/notes/ui/NotesListActivity;->access$2800(Lcom/miui/notes/ui/NotesListActivity;)V

    goto :goto_0

    .line 1164
    :pswitch_data_0
    .packed-switch 0x7f0b0034
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
