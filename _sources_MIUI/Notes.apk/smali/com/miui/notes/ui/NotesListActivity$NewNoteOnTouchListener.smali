.class Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;
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
    name = "NewNoteOnTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/notes/ui/NotesListActivity;


# direct methods
.method private constructor <init>(Lcom/miui/notes/ui/NotesListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 308
    iput-object p1, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/ui/NotesListActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 308
    invoke-direct {p0, p1}, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;-><init>(Lcom/miui/notes/ui/NotesListActivity;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "v"
    .parameter "event"

    .prologue
    .line 312
    iget-object v6, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/EditableListView;
    invoke-static {v6}, Lcom/miui/notes/ui/NotesListActivity;->access$600(Lcom/miui/notes/ui/NotesListActivity;)Landroid/widget/EditableListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 313
    const/4 v6, 0x0

    .line 365
    :goto_0
    return v6

    .line 315
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 357
    :pswitch_0
    iget-object v6, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mDispatch:Z
    invoke-static {v6}, Lcom/miui/notes/ui/NotesListActivity;->access$1200(Lcom/miui/notes/ui/NotesListActivity;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 358
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mDispatchY:I
    invoke-static {v7}, Lcom/miui/notes/ui/NotesListActivity;->access$1100(Lcom/miui/notes/ui/NotesListActivity;)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p2, v6, v7}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 359
    iget-object v6, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    const/4 v7, 0x0

    #setter for: Lcom/miui/notes/ui/NotesListActivity;->mDispatch:Z
    invoke-static {v6, v7}, Lcom/miui/notes/ui/NotesListActivity;->access$1202(Lcom/miui/notes/ui/NotesListActivity;Z)Z

    .line 360
    iget-object v6, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/EditableListView;
    invoke-static {v6}, Lcom/miui/notes/ui/NotesListActivity;->access$600(Lcom/miui/notes/ui/NotesListActivity;)Landroid/widget/EditableListView;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/widget/EditableListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_0

    .line 317
    :pswitch_1
    iget-object v6, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    invoke-virtual {v6}, Lcom/miui/notes/ui/NotesListActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v6

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 318
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v3

    .line 319
    .local v3, screenHeight:I
    iget-object v6, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mAddNewNote:Landroid/widget/Button;
    invoke-static {v6}, Lcom/miui/notes/ui/NotesListActivity;->access$700(Lcom/miui/notes/ui/NotesListActivity;)Landroid/widget/Button;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Button;->getHeight()I

    move-result v2

    .line 320
    .local v2, newNoteViewHeight:I
    sub-int v4, v3, v2

    .line 321
    .local v4, start:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    add-int v1, v4, v6

    .line 325
    .local v1, eventY:I
    iget-object v6, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mState:Lcom/miui/notes/ui/NotesListActivity$ListEditState;
    invoke-static {v6}, Lcom/miui/notes/ui/NotesListActivity;->access$800(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    move-result-object v6

    sget-object v7, Lcom/miui/notes/ui/NotesListActivity$ListEditState;->SUB_FOLDER:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    if-ne v6, v7, :cond_1

    .line 326
    iget-object v6, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mTitleBar:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/miui/notes/ui/NotesListActivity;->access$900(Lcom/miui/notes/ui/NotesListActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    sub-int/2addr v1, v6

    .line 327
    iget-object v6, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mTitleBar:Landroid/widget/TextView;
    invoke-static {v6}, Lcom/miui/notes/ui/NotesListActivity;->access$900(Lcom/miui/notes/ui/NotesListActivity;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getHeight()I

    move-result v6

    sub-int/2addr v4, v6

    .line 334
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-double v8, v8

    const-wide v10, -0x404147ae147ae148L

    mul-double/2addr v8, v10

    const-wide v10, 0x4057800000000000L

    add-double/2addr v8, v10

    cmpg-double v6, v6, v8

    if-gez v6, :cond_2

    .line 335
    iget-object v6, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/EditableListView;
    invoke-static {v6}, Lcom/miui/notes/ui/NotesListActivity;->access$600(Lcom/miui/notes/ui/NotesListActivity;)Landroid/widget/EditableListView;

    move-result-object v6

    iget-object v7, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/EditableListView;
    invoke-static {v7}, Lcom/miui/notes/ui/NotesListActivity;->access$600(Lcom/miui/notes/ui/NotesListActivity;)Landroid/widget/EditableListView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditableListView;->getChildCount()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    iget-object v8, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/EditableListView;
    invoke-static {v8}, Lcom/miui/notes/ui/NotesListActivity;->access$600(Lcom/miui/notes/ui/NotesListActivity;)Landroid/widget/EditableListView;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditableListView;->getFooterViewsCount()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/EditableListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 337
    .local v5, view:Landroid/view/View;
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v6

    if-le v6, v4, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v6

    add-int/lit8 v7, v4, 0x5e

    if-ge v6, v7, :cond_2

    .line 339
    iget-object v6, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    #setter for: Lcom/miui/notes/ui/NotesListActivity;->mOriginY:I
    invoke-static {v6, v7}, Lcom/miui/notes/ui/NotesListActivity;->access$1002(Lcom/miui/notes/ui/NotesListActivity;I)I

    .line 340
    iget-object v6, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #setter for: Lcom/miui/notes/ui/NotesListActivity;->mDispatchY:I
    invoke-static {v6, v1}, Lcom/miui/notes/ui/NotesListActivity;->access$1102(Lcom/miui/notes/ui/NotesListActivity;I)I

    .line 341
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mDispatchY:I
    invoke-static {v7}, Lcom/miui/notes/ui/NotesListActivity;->access$1100(Lcom/miui/notes/ui/NotesListActivity;)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p2, v6, v7}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 342
    iget-object v6, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    const/4 v7, 0x1

    #setter for: Lcom/miui/notes/ui/NotesListActivity;->mDispatch:Z
    invoke-static {v6, v7}, Lcom/miui/notes/ui/NotesListActivity;->access$1202(Lcom/miui/notes/ui/NotesListActivity;Z)Z

    .line 343
    iget-object v6, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/EditableListView;
    invoke-static {v6}, Lcom/miui/notes/ui/NotesListActivity;->access$600(Lcom/miui/notes/ui/NotesListActivity;)Landroid/widget/EditableListView;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/widget/EditableListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto/16 :goto_0

    .line 349
    .end local v0           #display:Landroid/view/Display;
    .end local v1           #eventY:I
    .end local v2           #newNoteViewHeight:I
    .end local v3           #screenHeight:I
    .end local v4           #start:I
    .end local v5           #view:Landroid/view/View;
    :pswitch_2
    iget-object v6, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mDispatch:Z
    invoke-static {v6}, Lcom/miui/notes/ui/NotesListActivity;->access$1200(Lcom/miui/notes/ui/NotesListActivity;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 350
    iget-object v6, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mOriginY:I
    invoke-static {v8}, Lcom/miui/notes/ui/NotesListActivity;->access$1000(Lcom/miui/notes/ui/NotesListActivity;)I

    move-result v8

    sub-int/2addr v7, v8

    invoke-static {v6, v7}, Lcom/miui/notes/ui/NotesListActivity;->access$1112(Lcom/miui/notes/ui/NotesListActivity;I)I

    .line 351
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget-object v7, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mDispatchY:I
    invoke-static {v7}, Lcom/miui/notes/ui/NotesListActivity;->access$1100(Lcom/miui/notes/ui/NotesListActivity;)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p2, v6, v7}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 352
    iget-object v6, p0, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;->this$0:Lcom/miui/notes/ui/NotesListActivity;

    #getter for: Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/EditableListView;
    invoke-static {v6}, Lcom/miui/notes/ui/NotesListActivity;->access$600(Lcom/miui/notes/ui/NotesListActivity;)Landroid/widget/EditableListView;

    move-result-object v6

    invoke-virtual {v6, p2}, Landroid/widget/EditableListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto/16 :goto_0

    .line 365
    :cond_2
    const/4 v6, 0x0

    goto/16 :goto_0

    .line 315
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
