.class Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnKeyListener;
.super Ljava/lang/Object;
.source "NotesListActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/notes/ui/NotesListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NoteListItemOnKeyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/notes/ui/NotesListActivity;


# direct methods
.method private constructor <init>(Lcom/miui/notes/ui/NotesListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 924
    iput-object p1, p0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnKeyListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/ui/NotesListActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 924
    invoke-direct {p0, p1}, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnKeyListener;-><init>(Lcom/miui/notes/ui/NotesListActivity;)V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v1, 0x17

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 927
    if-ne p2, v1, :cond_0

    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnKeyListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mMove:Z
    invoke-static {v0}, Lcom/miui/notes/ui/NotesListActivity;->access$1900(Lcom/miui/notes/ui/NotesListActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 933
    :goto_0
    return v0

    .line 932
    :cond_0
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnKeyListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    if-ne p2, v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v3

    :goto_1
    #setter for: Lcom/miui/notes/ui/NotesListActivity;->mDpadActionDown:Z
    invoke-static {v0, v1}, Lcom/miui/notes/ui/NotesListActivity;->access$2302(Lcom/miui/notes/ui/NotesListActivity;Z)Z

    move v0, v2

    .line 933
    goto :goto_0

    :cond_1
    move v1, v2

    .line 932
    goto :goto_1
.end method
