.class Lcom/miui/notes/ui/NotesListActivity$10$1;
.super Ljava/lang/Object;
.source "NotesListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/notes/ui/NotesListActivity$10;->onClick(Landroid/view/View;Landroid/widget/EditableListView$EditableListViewCheckable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/notes/ui/NotesListActivity$10;


# direct methods
.method constructor <init>(Lcom/miui/notes/ui/NotesListActivity$10;)V
    .locals 0
    .parameter

    .prologue
    .line 1172
    iput-object p1, p0, Lcom/miui/notes/ui/NotesListActivity$10$1;->this$1:Lcom/miui/notes/ui/NotesListActivity$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 1175
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity$10$1;->this$1:Lcom/miui/notes/ui/NotesListActivity$10;

    iget-object v0, v0, Lcom/miui/notes/ui/NotesListActivity$10;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #calls: Lcom/miui/notes/ui/NotesListActivity;->batchDelete()V
    invoke-static {v0}, Lcom/miui/notes/ui/NotesListActivity;->access$3100(Lcom/miui/notes/ui/NotesListActivity;)V

    .line 1176
    return-void
.end method
