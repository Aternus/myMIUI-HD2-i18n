.class Lcom/miui/notes/ui/NotesListActivity$7;
.super Ljava/lang/Object;
.source "NotesListActivity.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


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
    .line 869
    iput-object p1, p0, Lcom/miui/notes/ui/NotesListActivity$7;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v2, 0x0

    .line 871
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity$7;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mTargetNoteItemData:Lcom/miui/notes/ui/NoteItemData;
    invoke-static {v0}, Lcom/miui/notes/ui/NotesListActivity;->access$1800(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NoteItemData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 872
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity$7;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mTargetNoteItemData:Lcom/miui/notes/ui/NoteItemData;
    invoke-static {v0}, Lcom/miui/notes/ui/NotesListActivity;->access$1800(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NoteItemData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/notes/ui/NoteItemData;->getSnippet()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 873
    const/4 v0, 0x1

    const v1, 0x7f080025

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 874
    const v0, 0x7f080026

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 875
    const/4 v0, 0x2

    const v1, 0x7f080027

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 877
    :cond_0
    return-void
.end method
