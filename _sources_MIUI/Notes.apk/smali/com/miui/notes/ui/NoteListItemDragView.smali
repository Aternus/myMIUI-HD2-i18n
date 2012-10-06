.class public Lcom/miui/notes/ui/NoteListItemDragView;
.super Lcom/miui/notes/ui/NotesListItem;
.source "NoteListItemDragView.java"


# instance fields
.field private mHeight:I

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowsManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/miui/notes/ui/NotesListItem;-><init>(Landroid/content/Context;)V

    .line 14
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/miui/notes/ui/NoteListItemDragView;->mWindowsManager:Landroid/view/WindowManager;

    .line 15
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/miui/notes/ui/NoteListItemDragView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 16
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/miui/notes/ui/NoteListItemDragView;->mWindowsManager:Landroid/view/WindowManager;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 36
    return-void
.end method

.method public setPosition(II)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miui/notes/ui/NoteListItemDragView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x0

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 40
    iget-object v0, p0, Lcom/miui/notes/ui/NoteListItemDragView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/miui/notes/ui/NoteListItemDragView;->mHeight:I

    sub-int v1, p2, v1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 41
    iget-object v0, p0, Lcom/miui/notes/ui/NoteListItemDragView;->mWindowsManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/notes/ui/NoteListItemDragView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    return-void
.end method

.method public show(Landroid/content/Context;Lcom/miui/notes/ui/NoteItemData;II)V
    .locals 2
    .parameter "context"
    .parameter "item"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 19
    iput p4, p0, Lcom/miui/notes/ui/NoteListItemDragView;->mHeight:I

    .line 20
    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/notes/ui/NoteListItemDragView;->bind(Landroid/content/Context;Lcom/miui/notes/ui/NoteItemData;Z)V

    .line 21
    iget-object v0, p0, Lcom/miui/notes/ui/NoteListItemDragView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 22
    iget-object v0, p0, Lcom/miui/notes/ui/NoteListItemDragView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 23
    iget-object v0, p0, Lcom/miui/notes/ui/NoteListItemDragView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput p3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 24
    iget-object v0, p0, Lcom/miui/notes/ui/NoteListItemDragView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/miui/notes/ui/NoteListItemDragView;->mHeight:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 25
    iget-object v0, p0, Lcom/miui/notes/ui/NoteListItemDragView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x30

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 26
    iget-object v0, p0, Lcom/miui/notes/ui/NoteListItemDragView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x98

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 29
    iget-object v0, p0, Lcom/miui/notes/ui/NoteListItemDragView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x3f4ccccd

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 30
    iget-object v0, p0, Lcom/miui/notes/ui/NoteListItemDragView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 31
    iget-object v0, p0, Lcom/miui/notes/ui/NoteListItemDragView;->mWindowsManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/miui/notes/ui/NoteListItemDragView;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    return-void
.end method
