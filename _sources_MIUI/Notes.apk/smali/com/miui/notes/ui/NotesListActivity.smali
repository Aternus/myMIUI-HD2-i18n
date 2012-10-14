.class public Lcom/miui/notes/ui/NotesListActivity;
.super Landroid/app/Activity;
.source "NotesListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/EditableListView$EditModeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/notes/ui/NotesListActivity$11;,
        Lcom/miui/notes/ui/NotesListActivity$OnListItemClickListener;,
        Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnKeyListener;,
        Lcom/miui/notes/ui/NotesListActivity$NoteListItemLongClickListener;,
        Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnTouchListener;,
        Lcom/miui/notes/ui/NotesListActivity$BackgroundQueryHandler;,
        Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;,
        Lcom/miui/notes/ui/NotesListActivity$ListEditState;
    }
.end annotation


# instance fields
.field private mAddNewNote:Landroid/widget/Button;

.field private mBackgroundQueryHandler:Lcom/miui/notes/ui/NotesListActivity$BackgroundQueryHandler;

.field private mButtonCheck:Landroid/widget/Button;

.field private mButtonDelete:Landroid/widget/ImageTextButton;

.field private mButtonMove:Landroid/widget/Button;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mCurrentFolderId:J

.field private mDeleteConfirmDialog:Landroid/app/Dialog;

.field private mDispatch:Z

.field private mDispatchY:I

.field private mDpadActionDown:Z

.field private mFolderListMenuDialog:Landroid/app/Dialog;

.field private final mFolderOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mMove:Z

.field private mNoteListDragView:Lcom/miui/notes/ui/NoteListItemDragView;

.field private mNotesListAdapter:Lcom/miui/notes/ui/NotesListAdapter;

.field private mNotesListBottomBar:Landroid/widget/EditableListActionBar;

.field private mNotesListView:Landroid/widget/EditableListView;

.field private mOnButtonBarClickListener:Landroid/widget/EditableListActionBar$OnButtonBarClickListener;

.field private mOriginY:I

.field private mScrollOffsetTop:I

.field private mScrollOffsetY:I

.field private mState:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

.field private mTargetNoteItemData:Lcom/miui/notes/ui/NoteItemData;

.field private mTitleBar:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 869
    new-instance v0, Lcom/miui/notes/ui/NotesListActivity$7;

    invoke-direct {v0, p0}, Lcom/miui/notes/ui/NotesListActivity$7;-><init>(Lcom/miui/notes/ui/NotesListActivity;)V

    iput-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mFolderOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 1160
    new-instance v0, Lcom/miui/notes/ui/NotesListActivity$10;

    invoke-direct {v0, p0}, Lcom/miui/notes/ui/NotesListActivity$10;-><init>(Lcom/miui/notes/ui/NotesListActivity;)V

    iput-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mOnButtonBarClickListener:Landroid/widget/EditableListActionBar$OnButtonBarClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/notes/ui/NotesListActivity;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/notes/ui/NotesListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mOriginY:I

    return v0
.end method

.method static synthetic access$1002(Lcom/miui/notes/ui/NotesListActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/miui/notes/ui/NotesListActivity;->mOriginY:I

    return p1
.end method

.method static synthetic access$1100(Lcom/miui/notes/ui/NotesListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mDispatchY:I

    return v0
.end method

.method static synthetic access$1102(Lcom/miui/notes/ui/NotesListActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/miui/notes/ui/NotesListActivity;->mDispatchY:I

    return p1
.end method

.method static synthetic access$1112(Lcom/miui/notes/ui/NotesListActivity;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iget v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mDispatchY:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mDispatchY:I

    return v0
.end method

.method static synthetic access$1200(Lcom/miui/notes/ui/NotesListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mDispatch:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/miui/notes/ui/NotesListActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/miui/notes/ui/NotesListActivity;->mDispatch:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NotesListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListAdapter:Lcom/miui/notes/ui/NotesListAdapter;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/notes/ui/NotesListActivity;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/miui/notes/ui/NotesListActivity;->showFolderListMenu(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/notes/ui/NotesListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListActivity;->isSyncMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/miui/notes/ui/NotesListActivity;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/miui/notes/ui/NotesListActivity;->updateWidget(II)V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/notes/ui/NotesListActivity;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/miui/notes/ui/NotesListActivity;->hideSoftInput(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NoteItemData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mTargetNoteItemData:Lcom/miui/notes/ui/NoteItemData;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/ui/NoteItemData;)Lcom/miui/notes/ui/NoteItemData;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/miui/notes/ui/NotesListActivity;->mTargetNoteItemData:Lcom/miui/notes/ui/NoteItemData;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/miui/notes/ui/NotesListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mMove:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/miui/notes/ui/NotesListActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/miui/notes/ui/NotesListActivity;->mMove:Z

    return p1
.end method

.method static synthetic access$2000(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NoteListItemDragView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNoteListDragView:Lcom/miui/notes/ui/NoteListItemDragView;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/ui/NoteListItemDragView;)Lcom/miui/notes/ui/NoteListItemDragView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/miui/notes/ui/NotesListActivity;->mNoteListDragView:Lcom/miui/notes/ui/NoteListItemDragView;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/miui/notes/ui/NotesListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mScrollOffsetTop:I

    return v0
.end method

.method static synthetic access$2102(Lcom/miui/notes/ui/NotesListActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/miui/notes/ui/NotesListActivity;->mScrollOffsetTop:I

    return p1
.end method

.method static synthetic access$2200(Lcom/miui/notes/ui/NotesListActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mScrollOffsetY:I

    return v0
.end method

.method static synthetic access$2202(Lcom/miui/notes/ui/NotesListActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/miui/notes/ui/NotesListActivity;->mScrollOffsetY:I

    return p1
.end method

.method static synthetic access$2212(Lcom/miui/notes/ui/NotesListActivity;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iget v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mScrollOffsetY:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mScrollOffsetY:I

    return v0
.end method

.method static synthetic access$2300(Lcom/miui/notes/ui/NotesListActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mDpadActionDown:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/miui/notes/ui/NotesListActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-boolean p1, p0, Lcom/miui/notes/ui/NotesListActivity;->mDpadActionDown:Z

    return p1
.end method

.method static synthetic access$2402(Lcom/miui/notes/ui/NotesListActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-wide p1, p0, Lcom/miui/notes/ui/NotesListActivity;->mCurrentFolderId:J

    return-wide p1
.end method

.method static synthetic access$2500(Lcom/miui/notes/ui/NotesListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListActivity;->startAsyncNotesListQuery()V

    return-void
.end method

.method static synthetic access$2600(Lcom/miui/notes/ui/NotesListActivity;)Landroid/view/View$OnCreateContextMenuListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mFolderOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/miui/notes/ui/NotesListActivity;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/miui/notes/ui/NotesListActivity;->deleteFolder(J)V

    return-void
.end method

.method static synthetic access$2800(Lcom/miui/notes/ui/NotesListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListActivity;->toggleEditButton()V

    return-void
.end method

.method static synthetic access$2900(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/ui/NoteItemData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/miui/notes/ui/NotesListActivity;->openFolder(Lcom/miui/notes/ui/NoteItemData;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/ui/NoteItemData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    invoke-direct {p0, p1}, Lcom/miui/notes/ui/NotesListActivity;->openNode(Lcom/miui/notes/ui/NoteItemData;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/miui/notes/ui/NotesListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListActivity;->batchDelete()V

    return-void
.end method

.method static synthetic access$3202(Lcom/miui/notes/ui/NotesListActivity;Landroid/app/Dialog;)Landroid/app/Dialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/miui/notes/ui/NotesListActivity;->mDeleteConfirmDialog:Landroid/app/Dialog;

    return-object p1
.end method

.method static synthetic access$3300(Lcom/miui/notes/ui/NotesListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListActivity;->startQueryDestinationFolders()V

    return-void
.end method

.method static synthetic access$3400(Lcom/miui/notes/ui/NotesListActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListActivity;->toggleCheckButton()V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/notes/ui/NotesListActivity;)Landroid/widget/EditableListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/EditableListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/notes/ui/NotesListActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mAddNewNote:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/notes/ui/NotesListActivity;)Lcom/miui/notes/ui/NotesListActivity$ListEditState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mState:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    return-object v0
.end method

.method static synthetic access$802(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/ui/NotesListActivity$ListEditState;)Lcom/miui/notes/ui/NotesListActivity$ListEditState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput-object p1, p0, Lcom/miui/notes/ui/NotesListActivity;->mState:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    return-object p1
.end method

.method static synthetic access$900(Lcom/miui/notes/ui/NotesListActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mTitleBar:Landroid/widget/TextView;

    return-object v0
.end method

.method private batchDelete()V
    .locals 2

    .prologue
    .line 442
    new-instance v0, Lcom/miui/notes/ui/NotesListActivity$3;

    invoke-direct {v0, p0}, Lcom/miui/notes/ui/NotesListActivity$3;-><init>(Lcom/miui/notes/ui/NotesListActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/notes/ui/NotesListActivity$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 476
    return-void
.end method

.method private createNewNote()V
    .locals 4

    .prologue
    .line 435
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/notes/ui/NoteEditActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 436
    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    const-string v1, "com.miui.notes.folder_id"

    iget-wide v2, p0, Lcom/miui/notes/ui/NotesListActivity;->mCurrentFolderId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 438
    const/16 v1, 0x67

    invoke-virtual {p0, v0, v1}, Lcom/miui/notes/ui/NotesListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 439
    return-void
.end method

.method private deleteFolder(J)V
    .locals 7
    .parameter "folderId"

    .prologue
    .line 479
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-nez v4, :cond_1

    .line 480
    const-string v4, "NotesListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wrong folder id, should not happen "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_0
    return-void

    .line 484
    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 485
    .local v1, ids:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 486
    iget-object v4, p0, Lcom/miui/notes/ui/NotesListActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v4, p1, p2}, Lcom/miui/notes/tool/DataUtils;->getFolderNoteWidget(Landroid/content/ContentResolver;J)Ljava/util/HashSet;

    move-result-object v3

    .line 488
    .local v3, widgets:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;>;"
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListActivity;->isSyncMode()Z

    move-result v4

    if-nez v4, :cond_3

    .line 490
    iget-object v4, p0, Lcom/miui/notes/ui/NotesListActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v1}, Lcom/miui/notes/tool/DataUtils;->batchDeleteNotes(Landroid/content/ContentResolver;Ljava/util/HashSet;)Z

    .line 495
    :goto_0
    if-eqz v3, :cond_0

    .line 496
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;

    .line 497
    .local v2, widget:Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;
    iget v4, v2, Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;->widgetId:I

    if-eqz v4, :cond_2

    iget v4, v2, Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;->widgetType:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    .line 499
    iget v4, v2, Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;->widgetId:I

    iget v5, v2, Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;->widgetType:I

    invoke-direct {p0, v4, v5}, Lcom/miui/notes/ui/NotesListActivity;->updateWidget(II)V

    goto :goto_1

    .line 493
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #widget:Lcom/miui/notes/ui/NotesListAdapter$AppWidgetAttribute;
    :cond_3
    iget-object v4, p0, Lcom/miui/notes/ui/NotesListActivity;->mContentResolver:Landroid/content/ContentResolver;

    const-wide/16 v5, -0x3

    invoke-static {v4, v1, v5, v6}, Lcom/miui/notes/tool/DataUtils;->batchMoveToFolder(Landroid/content/ContentResolver;Ljava/util/HashSet;J)Z

    goto :goto_0
.end method

.method private exportNoteToText()V
    .locals 3

    .prologue
    .line 1011
    invoke-static {p0}, Lcom/miui/notes/tool/BackupUtils;->getInstance(Landroid/content/Context;)Lcom/miui/notes/tool/BackupUtils;

    move-result-object v0

    .line 1012
    .local v0, backup:Lcom/miui/notes/tool/BackupUtils;
    new-instance v1, Lcom/miui/notes/ui/NotesListActivity$9;

    invoke-direct {v1, p0, v0}, Lcom/miui/notes/ui/NotesListActivity$9;-><init>(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/tool/BackupUtils;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/miui/notes/ui/NotesListActivity$9;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1053
    return-void
.end method

.method private hideSoftInput(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 548
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/miui/notes/ui/NotesListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 549
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 550
    return-void
.end method

.method private initResources()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 274
    invoke-virtual {p0}, Lcom/miui/notes/ui/NotesListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 275
    new-instance v0, Lcom/miui/notes/ui/NotesListActivity$BackgroundQueryHandler;

    invoke-virtual {p0}, Lcom/miui/notes/ui/NotesListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/notes/ui/NotesListActivity$BackgroundQueryHandler;-><init>(Lcom/miui/notes/ui/NotesListActivity;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mBackgroundQueryHandler:Lcom/miui/notes/ui/NotesListActivity$BackgroundQueryHandler;

    .line 276
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mCurrentFolderId:J

    .line 277
    const v0, 0x7f0b0031

    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/NotesListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditableListView;

    iput-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/EditableListView;

    .line 278
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/EditableListView;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030006

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v4}, Landroid/widget/EditableListView;->addFooterView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 280
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/EditableListView;

    new-instance v1, Lcom/miui/notes/ui/NotesListActivity$OnListItemClickListener;

    invoke-direct {v1, p0, v3}, Lcom/miui/notes/ui/NotesListActivity$OnListItemClickListener;-><init>(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/ui/NotesListActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 281
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/EditableListView;

    new-instance v1, Lcom/miui/notes/ui/NotesListActivity$NoteListItemLongClickListener;

    invoke-direct {v1, p0, v3}, Lcom/miui/notes/ui/NotesListActivity$NoteListItemLongClickListener;-><init>(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/ui/NotesListActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 282
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/EditableListView;

    new-instance v1, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnTouchListener;

    invoke-direct {v1, p0, v3}, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnTouchListener;-><init>(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/ui/NotesListActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 283
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/EditableListView;

    new-instance v1, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnKeyListener;

    invoke-direct {v1, p0, v3}, Lcom/miui/notes/ui/NotesListActivity$NoteListItemOnKeyListener;-><init>(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/ui/NotesListActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 284
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/EditableListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setEditable(Z)V

    .line 285
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/EditableListView;

    invoke-virtual {v0, p0}, Landroid/widget/EditableListView;->addEditModeListener(Landroid/widget/EditableListView$EditModeListener;)V

    .line 286
    const v0, 0x7f0b0033

    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/NotesListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditableListActionBar;

    iput-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListBottomBar:Landroid/widget/EditableListActionBar;

    .line 287
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/EditableListView;

    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListBottomBar:Landroid/widget/EditableListActionBar;

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->addEditModeListener(Landroid/widget/EditableListView$EditModeListener;)V

    .line 288
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListBottomBar:Landroid/widget/EditableListActionBar;

    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity;->mOnButtonBarClickListener:Landroid/widget/EditableListActionBar$OnButtonBarClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditableListActionBar;->setOnButtonBarClickListener(Landroid/widget/EditableListActionBar$OnButtonBarClickListener;)V

    .line 289
    const v0, 0x7f0b0034

    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/NotesListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageTextButton;

    iput-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mButtonDelete:Landroid/widget/ImageTextButton;

    .line 290
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mButtonDelete:Landroid/widget/ImageTextButton;

    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListBottomBar:Landroid/widget/EditableListActionBar;

    invoke-virtual {v0, v1}, Landroid/widget/ImageTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    const v0, 0x7f0b0035

    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/NotesListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mButtonMove:Landroid/widget/Button;

    .line 292
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mButtonMove:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListBottomBar:Landroid/widget/EditableListActionBar;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    const v0, 0x7f0b0036

    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/NotesListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mButtonCheck:Landroid/widget/Button;

    .line 294
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mButtonCheck:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListBottomBar:Landroid/widget/EditableListActionBar;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    new-instance v0, Lcom/miui/notes/ui/NotesListAdapter;

    invoke-direct {v0, p0}, Lcom/miui/notes/ui/NotesListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListAdapter:Lcom/miui/notes/ui/NotesListAdapter;

    .line 296
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/EditableListView;

    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListAdapter:Lcom/miui/notes/ui/NotesListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 297
    const v0, 0x7f0b0032

    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/NotesListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mAddNewNote:Landroid/widget/Button;

    .line 298
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mAddNewNote:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mAddNewNote:Landroid/widget/Button;

    new-instance v1, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;

    invoke-direct {v1, p0, v3}, Lcom/miui/notes/ui/NotesListActivity$NewNoteOnTouchListener;-><init>(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/ui/NotesListActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 300
    iput-boolean v4, p0, Lcom/miui/notes/ui/NotesListActivity;->mDispatch:Z

    .line 301
    iput v4, p0, Lcom/miui/notes/ui/NotesListActivity;->mDispatchY:I

    .line 302
    iput v4, p0, Lcom/miui/notes/ui/NotesListActivity;->mOriginY:I

    .line 303
    iput v4, p0, Lcom/miui/notes/ui/NotesListActivity;->mScrollOffsetTop:I

    .line 304
    const v0, 0x7f0b0030

    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/NotesListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mTitleBar:Landroid/widget/TextView;

    .line 305
    sget-object v0, Lcom/miui/notes/ui/NotesListActivity$ListEditState;->NOTE_LIST:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    iput-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mState:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    .line 306
    return-void
.end method

.method private isSyncMode()Z
    .locals 1

    .prologue
    .line 1056
    invoke-static {p0}, Lcom/miui/notes/ui/NotesPreferenceActivity;->getSyncAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private openFolder(Lcom/miui/notes/ui/NoteItemData;)V
    .locals 4
    .parameter "data"

    .prologue
    const-wide/16 v2, -0x2

    .line 513
    invoke-virtual {p1}, Lcom/miui/notes/ui/NoteItemData;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mCurrentFolderId:J

    .line 514
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListActivity;->startAsyncNotesListQuery()V

    .line 515
    invoke-virtual {p1}, Lcom/miui/notes/ui/NoteItemData;->getId()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 516
    sget-object v0, Lcom/miui/notes/ui/NotesListActivity$ListEditState;->CALL_RECORD_FOLDER:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    iput-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mState:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    .line 517
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mAddNewNote:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 521
    :goto_0
    invoke-virtual {p1}, Lcom/miui/notes/ui/NoteItemData;->getId()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 522
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mTitleBar:Landroid/widget/TextView;

    const v1, 0x7f08005e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 526
    :goto_1
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mTitleBar:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 527
    return-void

    .line 519
    :cond_0
    sget-object v0, Lcom/miui/notes/ui/NotesListActivity$ListEditState;->SUB_FOLDER:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    iput-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mState:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    goto :goto_0

    .line 524
    :cond_1
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mTitleBar:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/miui/notes/ui/NoteItemData;->getSnippet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private openNode(Lcom/miui/notes/ui/NoteItemData;)V
    .locals 4
    .parameter

    .prologue
    .line 506
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/miui/notes/ui/NoteEditActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 507
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    const-string v1, "android.intent.extra.UID"

    invoke-virtual {p1}, Lcom/miui/notes/ui/NoteItemData;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 509
    const/16 v1, 0x66

    invoke-virtual {p0, v0, v1}, Lcom/miui/notes/ui/NotesListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 510
    return-void
.end method

.method private restoreDirtyData()V
    .locals 2

    .prologue
    .line 192
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/miui/notes/ui/NotesListActivity$1;

    invoke-direct {v1, p0}, Lcom/miui/notes/ui/NotesListActivity$1;-><init>(Lcom/miui/notes/ui/NotesListActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 219
    return-void
.end method

.method private setAppInfoFromRawRes()V
    .locals 15

    .prologue
    .line 222
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v14

    .line 223
    .local v14, sp:Landroid/content/SharedPreferences;
    const-string v0, "com.miui.notes.introduction"

    const/4 v1, 0x0

    invoke-interface {v14, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 224
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .local v13, sb:Ljava/lang/StringBuilder;
    const/4 v9, 0x0

    .line 227
    .local v9, in:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lcom/miui/notes/ui/NotesListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v9

    .line 228
    if-eqz v9, :cond_1

    .line 229
    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 230
    .local v10, isr:Ljava/io/InputStreamReader;
    new-instance v6, Ljava/io/BufferedReader;

    invoke-direct {v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 231
    .local v6, br:Ljava/io/BufferedReader;
    const/16 v0, 0x400

    new-array v7, v0, [C

    .line 232
    .local v7, buf:[C
    const/4 v11, 0x0

    .line 233
    .local v11, len:I
    :goto_0
    invoke-virtual {v6, v7}, Ljava/io/BufferedReader;->read([C)I

    move-result v11

    if-lez v11, :cond_2

    .line 234
    const/4 v0, 0x0

    invoke-virtual {v13, v7, v0, v11}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 240
    .end local v6           #br:Ljava/io/BufferedReader;
    .end local v7           #buf:[C
    .end local v10           #isr:Ljava/io/InputStreamReader;
    .end local v11           #len:I
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 241
    .local v8, e:Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 244
    if-eqz v9, :cond_0

    .line 246
    :try_start_2
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 265
    .end local v8           #e:Ljava/io/IOException;
    .end local v9           #in:Ljava/io/InputStream;
    .end local v13           #sb:Ljava/lang/StringBuilder;
    :cond_0
    :goto_1
    return-void

    .line 237
    .restart local v9       #in:Ljava/io/InputStream;
    .restart local v13       #sb:Ljava/lang/StringBuilder;
    :cond_1
    :try_start_3
    const-string v0, "NotesListActivity"

    const-string v1, "Read introduction file error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 244
    if-eqz v9, :cond_0

    .line 246
    :try_start_4
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 247
    :catch_1
    move-exception v8

    .line 249
    .restart local v8       #e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 244
    .end local v8           #e:Ljava/io/IOException;
    .restart local v6       #br:Ljava/io/BufferedReader;
    .restart local v7       #buf:[C
    .restart local v10       #isr:Ljava/io/InputStreamReader;
    .restart local v11       #len:I
    :cond_2
    if-eqz v9, :cond_3

    .line 246
    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 254
    :cond_3
    :goto_2
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x4

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/miui/notes/model/WorkingNote;->createEmptyNote(Landroid/content/Context;JIII)Lcom/miui/notes/model/WorkingNote;

    move-result-object v12

    .line 257
    .local v12, note:Lcom/miui/notes/model/WorkingNote;
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/miui/notes/model/WorkingNote;->setWorkingText(Ljava/lang/String;)V

    .line 258
    invoke-virtual {v12}, Lcom/miui/notes/model/WorkingNote;->saveNote()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 259
    invoke-interface {v14}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.miui.notes.introduction"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1

    .line 247
    .end local v12           #note:Lcom/miui/notes/model/WorkingNote;
    :catch_2
    move-exception v8

    .line 249
    .restart local v8       #e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 247
    .end local v6           #br:Ljava/io/BufferedReader;
    .end local v7           #buf:[C
    .end local v10           #isr:Ljava/io/InputStreamReader;
    .end local v11           #len:I
    :catch_3
    move-exception v8

    .line 249
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 244
    .end local v8           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v0

    if-eqz v9, :cond_4

    .line 246
    :try_start_6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 250
    :cond_4
    :goto_3
    throw v0

    .line 247
    :catch_4
    move-exception v8

    .line 249
    .restart local v8       #e:Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 261
    .end local v8           #e:Ljava/io/IOException;
    .restart local v6       #br:Ljava/io/BufferedReader;
    .restart local v7       #buf:[C
    .restart local v10       #isr:Ljava/io/InputStreamReader;
    .restart local v11       #len:I
    .restart local v12       #note:Lcom/miui/notes/model/WorkingNote;
    :cond_5
    const-string v0, "NotesListActivity"

    const-string v1, "Save introduction note error"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private showCreateOrModifyFolderDialog(Z)V
    .locals 8
    .parameter "create"

    .prologue
    const/4 v7, 0x0

    .line 553
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 554
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f030004

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 555
    .local v4, view:Landroid/view/View;
    const v5, 0x7f0b000b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 556
    .local v2, etName:Landroid/widget/EditText;
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListActivity;->showSoftInput()V

    .line 557
    if-nez p1, :cond_2

    .line 558
    iget-object v5, p0, Lcom/miui/notes/ui/NotesListActivity;->mTargetNoteItemData:Lcom/miui/notes/ui/NoteItemData;

    if-eqz v5, :cond_1

    .line 559
    iget-object v5, p0, Lcom/miui/notes/ui/NotesListActivity;->mTargetNoteItemData:Lcom/miui/notes/ui/NoteItemData;

    invoke-virtual {v5}, Lcom/miui/notes/ui/NoteItemData;->getSnippet()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 560
    const v5, 0x7f080027

    invoke-virtual {p0, v5}, Lcom/miui/notes/ui/NotesListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 570
    :goto_0
    const v5, 0x104000a

    invoke-virtual {v0, v5, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 571
    const/high16 v5, 0x104

    new-instance v6, Lcom/miui/notes/ui/NotesListActivity$4;

    invoke-direct {v6, p0, v2}, Lcom/miui/notes/ui/NotesListActivity$4;-><init>(Lcom/miui/notes/ui/NotesListActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 578
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 579
    .local v1, dialog:Landroid/app/Dialog;
    const v5, 0x1020019

    invoke-virtual {v1, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 580
    .local v3, positive:Landroid/widget/Button;
    new-instance v5, Lcom/miui/notes/ui/NotesListActivity$5;

    invoke-direct {v5, p0, v2, p1, v1}, Lcom/miui/notes/ui/NotesListActivity$5;-><init>(Lcom/miui/notes/ui/NotesListActivity;Landroid/widget/EditText;ZLandroid/app/Dialog;)V

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 612
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 613
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 618
    :cond_0
    new-instance v5, Lcom/miui/notes/ui/NotesListActivity$6;

    invoke-direct {v5, p0, v2, v3}, Lcom/miui/notes/ui/NotesListActivity$6;-><init>(Lcom/miui/notes/ui/NotesListActivity;Landroid/widget/EditText;Landroid/widget/Button;)V

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 640
    .end local v1           #dialog:Landroid/app/Dialog;
    .end local v3           #positive:Landroid/widget/Button;
    :goto_1
    return-void

    .line 562
    :cond_1
    const-string v5, "NotesListActivity"

    const-string v6, "The long click data item is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 566
    :cond_2
    const-string v5, ""

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 567
    const v5, 0x7f080016

    invoke-virtual {p0, v5}, Lcom/miui/notes/ui/NotesListActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private showFolderListMenu(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    .line 410
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 411
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f08002d

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 412
    new-instance v0, Lcom/miui/notes/ui/FoldersListAdapter;

    invoke-direct {v0, p0, p1}, Lcom/miui/notes/ui/FoldersListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 413
    .local v0, adapter:Lcom/miui/notes/ui/FoldersListAdapter;
    new-instance v2, Lcom/miui/notes/ui/NotesListActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/miui/notes/ui/NotesListActivity$2;-><init>(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/ui/FoldersListAdapter;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 429
    const/16 v2, 0x50

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setGravity(I)Landroid/app/AlertDialog$Builder;

    .line 430
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setContextMenuMode(Z)Landroid/app/AlertDialog$Builder;

    .line 431
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/notes/ui/NotesListActivity;->mFolderListMenuDialog:Landroid/app/Dialog;

    .line 432
    return-void
.end method

.method private showSoftInput()V
    .locals 3

    .prologue
    .line 541
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/miui/notes/ui/NotesListActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 542
    .local v0, inputMethodManager:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 543
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 545
    :cond_0
    return-void
.end method

.method private startAsyncNotesListQuery()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 371
    iget-wide v2, p0, Lcom/miui/notes/ui/NotesListActivity;->mCurrentFolderId:J

    const-wide/16 v6, 0x0

    cmp-long v0, v2, v6

    if-nez v0, :cond_0

    const-string v0, "(type<>2 AND parent_id=?) OR (_id=-2 AND notes_count>0)"

    move-object v5, v0

    .line 373
    .local v5, selection:Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mBackgroundQueryHandler:Lcom/miui/notes/ui/NotesListActivity$BackgroundQueryHandler;

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    sget-object v4, Lcom/miui/notes/ui/NoteItemData;->PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    iget-wide v7, p0, Lcom/miui/notes/ui/NotesListActivity;->mCurrentFolderId:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v7, "type DESC,modified_date DESC"

    invoke-virtual/range {v0 .. v7}, Lcom/miui/notes/ui/NotesListActivity$BackgroundQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    return-void

    .line 371
    .end local v5           #selection:Ljava/lang/String;
    :cond_0
    const-string v0, "parent_id=?"

    move-object v5, v0

    goto :goto_0
.end method

.method private startPreferenceActivity()V
    .locals 3

    .prologue
    .line 1060
    invoke-virtual {p0}, Lcom/miui/notes/ui/NotesListActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/notes/ui/NotesListActivity;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 1061
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/miui/notes/ui/NotesPreferenceActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1062
    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    .line 1063
    return-void

    :cond_0
    move-object v0, p0

    .line 1060
    goto :goto_0
.end method

.method private startQueryDestinationFolders()V
    .locals 10

    .prologue
    const/4 v8, 0x0

    const/4 v1, 0x1

    .line 1196
    const-string v0, "type=? AND parent_id<>? AND _id<>?"

    .line 1197
    iget-object v2, p0, Lcom/miui/notes/ui/NotesListActivity;->mState:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    sget-object v3, Lcom/miui/notes/ui/NotesListActivity$ListEditState;->NOTE_LIST:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    if-ne v2, v3, :cond_0

    move-object v5, v0

    .line 1200
    :goto_0
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mBackgroundQueryHandler:Lcom/miui/notes/ui/NotesListActivity$BackgroundQueryHandler;

    const/4 v2, 0x0

    sget-object v3, Landroid/provider/Notes;->CONTENT_NOTE_URI:Landroid/net/Uri;

    sget-object v4, Lcom/miui/notes/ui/FoldersListAdapter;->PROJECTION:[Ljava/lang/String;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    const/4 v7, -0x3

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v7, 0x2

    iget-wide v8, p0, Lcom/miui/notes/ui/NotesListActivity;->mCurrentFolderId:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const-string v7, "modified_date DESC"

    invoke-virtual/range {v0 .. v7}, Lcom/miui/notes/ui/NotesListActivity$BackgroundQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    return-void

    .line 1197
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") OR ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_id"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v5, v0

    goto :goto_0
.end method

.method private toggleCheckButton()V
    .locals 2

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListAdapter:Lcom/miui/notes/ui/NotesListAdapter;

    invoke-virtual {v0}, Lcom/miui/notes/ui/NotesListAdapter;->isAllChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListAdapter:Lcom/miui/notes/ui/NotesListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/notes/ui/NotesListAdapter;->checkAll(Z)V

    .line 1071
    :goto_0
    return-void

    .line 1069
    :cond_0
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListAdapter:Lcom/miui/notes/ui/NotesListAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/miui/notes/ui/NotesListAdapter;->checkAll(Z)V

    goto :goto_0
.end method

.method private toggleEditButton()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1074
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListAdapter:Lcom/miui/notes/ui/NotesListAdapter;

    invoke-virtual {v0}, Lcom/miui/notes/ui/NotesListAdapter;->getCheckedItemsCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1075
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mButtonDelete:Landroid/widget/ImageTextButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageTextButton;->setEnabled(Z)V

    .line 1076
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mButtonDelete:Landroid/widget/ImageTextButton;

    invoke-virtual {v0}, Landroid/widget/ImageTextButton;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1077
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/miui/notes/tool/DataUtils;->getUserFolderCount(Landroid/content/ContentResolver;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1078
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mButtonMove:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1086
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListAdapter:Lcom/miui/notes/ui/NotesListAdapter;

    invoke-virtual {v0}, Lcom/miui/notes/ui/NotesListAdapter;->isAllChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1087
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mButtonCheck:Landroid/widget/Button;

    const v1, 0x7f08005c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 1091
    :goto_1
    return-void

    .line 1081
    :cond_1
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mButtonDelete:Landroid/widget/ImageTextButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageTextButton;->setEnabled(Z)V

    .line 1082
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mButtonDelete:Landroid/widget/ImageTextButton;

    invoke-virtual {v0}, Landroid/widget/ImageTextButton;->getTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 1083
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mButtonMove:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    .line 1089
    :cond_2
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mButtonCheck:Landroid/widget/Button;

    const v1, 0x7f08005b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_1
.end method

.method private updateWidget(II)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 671
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.appwidget.action.APPWIDGET_UPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 672
    if-nez p2, :cond_0

    .line 673
    const-class v1, Lcom/miui/notes/widget/NoteWidgetProvider_2x;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 681
    :goto_0
    const-string v1, "appWidgetIds"

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 685
    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/NotesListActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 686
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/miui/notes/ui/NotesListActivity;->setResult(ILandroid/content/Intent;)V

    .line 687
    :goto_1
    return-void

    .line 674
    :cond_0
    if-ne p2, v2, :cond_1

    .line 675
    const-class v1, Lcom/miui/notes/widget/NoteWidgetProvider_4x;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    goto :goto_0

    .line 677
    :cond_1
    const-string v0, "NotesListActivity"

    const-string v1, "Unspported widget type"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 178
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    const/16 v0, 0x67

    if-ne p1, v0, :cond_1

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListAdapter:Lcom/miui/notes/ui/NotesListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/miui/notes/ui/NotesListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 184
    :goto_0
    return-void

    .line 182
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/16 v2, 0x8

    .line 644
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 668
    :goto_0
    return-void

    .line 648
    :cond_0
    sget-object v0, Lcom/miui/notes/ui/NotesListActivity$11;->$SwitchMap$com$miui$notes$ui$NotesListActivity$ListEditState:[I

    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity;->mState:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    invoke-virtual {v1}, Lcom/miui/notes/ui/NotesListActivity$ListEditState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 650
    :pswitch_0
    iput-wide v3, p0, Lcom/miui/notes/ui/NotesListActivity;->mCurrentFolderId:J

    .line 651
    sget-object v0, Lcom/miui/notes/ui/NotesListActivity$ListEditState;->NOTE_LIST:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    iput-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mState:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    .line 652
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListActivity;->startAsyncNotesListQuery()V

    .line 653
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mTitleBar:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 656
    :pswitch_1
    iput-wide v3, p0, Lcom/miui/notes/ui/NotesListActivity;->mCurrentFolderId:J

    .line 657
    sget-object v0, Lcom/miui/notes/ui/NotesListActivity$ListEditState;->NOTE_LIST:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    iput-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mState:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    .line 658
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mAddNewNote:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 659
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mTitleBar:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 660
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListActivity;->startAsyncNotesListQuery()V

    goto :goto_0

    .line 663
    :pswitch_2
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 648
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onCheckStateChanged(Landroid/widget/EditableListView$EditableListViewCheckable;)V
    .locals 0
    .parameter "checkable"

    .prologue
    .line 1217
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 531
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 538
    :goto_0
    return-void

    .line 533
    :pswitch_0
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListActivity;->createNewNote()V

    goto :goto_0

    .line 531
    :pswitch_data_0
    .packed-switch 0x7f0b0032
        :pswitch_0
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x0

    .line 890
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity;->mTargetNoteItemData:Lcom/miui/notes/ui/NoteItemData;

    if-nez v1, :cond_0

    .line 891
    const-string v1, "NotesListActivity"

    const-string v2, "The long click data item is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 921
    :goto_0
    return v1

    .line 894
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 921
    :goto_1
    const/4 v1, 0x1

    goto :goto_0

    .line 896
    :pswitch_0
    iget-object v1, p0, Lcom/miui/notes/ui/NotesListActivity;->mTargetNoteItemData:Lcom/miui/notes/ui/NoteItemData;

    invoke-direct {p0, v1}, Lcom/miui/notes/ui/NotesListActivity;->openFolder(Lcom/miui/notes/ui/NoteItemData;)V

    goto :goto_1

    .line 899
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 900
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f080031

    invoke-virtual {p0, v1}, Lcom/miui/notes/ui/NotesListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 901
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 902
    const v1, 0x7f080030

    invoke-virtual {p0, v1}, Lcom/miui/notes/ui/NotesListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 903
    const v1, 0x104000a

    new-instance v2, Lcom/miui/notes/ui/NotesListActivity$8;

    invoke-direct {v2, p0}, Lcom/miui/notes/ui/NotesListActivity$8;-><init>(Lcom/miui/notes/ui/NotesListActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 910
    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 911
    sget-object v1, Landroid/app/AlertDialog$Indicator;->Delete:Landroid/app/AlertDialog$Indicator;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIndicator(Landroid/app/AlertDialog$Indicator;)Landroid/app/AlertDialog$Builder;

    .line 912
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_1

    .line 915
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :pswitch_2
    invoke-direct {p0, v3}, Lcom/miui/notes/ui/NotesListActivity;->showCreateOrModifyFolderDialog(Z)V

    goto :goto_1

    .line 894
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onContextMenuClosed(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 882
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mTargetNoteItemData:Lcom/miui/notes/ui/NoteItemData;

    invoke-virtual {v0}, Lcom/miui/notes/ui/NoteItemData;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/EditableListView;

    if-eqz v0, :cond_0

    .line 883
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/EditableListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 885
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextMenuClosed(Landroid/view/Menu;)V

    .line 886
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 166
    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/miui/notes/ui/NotesListActivity;->setContentView(I)V

    .line 167
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListActivity;->initResources()V

    .line 168
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListActivity;->restoreDirtyData()V

    .line 173
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListActivity;->setAppInfoFromRawRes()V

    .line 174
    return-void
.end method

.method public onEnterEditMode()V
    .locals 5

    .prologue
    const v4, 0x7f0b0035

    const/16 v3, 0x8

    .line 1137
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/EditableListView;

    new-instance v1, Lcom/miui/notes/ui/NotesListActivity$OnListItemClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/notes/ui/NotesListActivity$OnListItemClickListener;-><init>(Lcom/miui/notes/ui/NotesListActivity;Lcom/miui/notes/ui/NotesListActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1138
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mAddNewNote:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1139
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mState:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    sget-object v1, Lcom/miui/notes/ui/NotesListActivity$ListEditState;->CALL_RECORD_FOLDER:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    if-ne v0, v1, :cond_0

    .line 1140
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListBottomBar:Landroid/widget/EditableListActionBar;

    invoke-virtual {v0, v4}, Landroid/widget/EditableListActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1144
    :goto_0
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListActivity;->toggleEditButton()V

    .line 1145
    return-void

    .line 1142
    :cond_0
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListBottomBar:Landroid/widget/EditableListActionBar;

    invoke-virtual {v0, v4}, Landroid/widget/EditableListActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public onExitEditMode()V
    .locals 2

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mAddNewNote:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 1150
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListAdapter:Lcom/miui/notes/ui/NotesListAdapter;

    invoke-virtual {v0}, Lcom/miui/notes/ui/NotesListAdapter;->clearAll()V

    .line 1151
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mDeleteConfirmDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mDeleteConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1152
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mDeleteConfirmDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1155
    :cond_0
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mFolderListMenuDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mFolderListMenuDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1156
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mFolderListMenuDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1158
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 963
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 1001
    :goto_0
    return v2

    .line 965
    :sswitch_0
    invoke-direct {p0, v2}, Lcom/miui/notes/ui/NotesListActivity;->showCreateOrModifyFolderDialog(Z)V

    goto :goto_0

    .line 969
    :sswitch_1
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListActivity;->exportNoteToText()V

    goto :goto_0

    .line 973
    :sswitch_2
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListActivity;->isSyncMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 974
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const v1, 0x7f080018

    invoke-virtual {p0, v1}, Lcom/miui/notes/ui/NotesListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 975
    invoke-static {p0}, Lcom/miui/notes/gtask/remote/GTaskSyncService;->startSync(Landroid/app/Activity;)V

    goto :goto_0

    .line 977
    :cond_0
    invoke-static {p0}, Lcom/miui/notes/gtask/remote/GTaskSyncService;->cancelSync(Landroid/content/Context;)V

    goto :goto_0

    .line 980
    :cond_1
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListActivity;->startPreferenceActivity()V

    goto :goto_0

    .line 985
    :sswitch_3
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListActivity;->startPreferenceActivity()V

    goto :goto_0

    .line 989
    :sswitch_4
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListActivity;->createNewNote()V

    goto :goto_0

    .line 993
    :sswitch_5
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->enterEditMode()V

    goto :goto_0

    .line 996
    :sswitch_6
    invoke-virtual {p0}, Lcom/miui/notes/ui/NotesListActivity;->onSearchRequested()Z

    goto :goto_0

    .line 963
    :sswitch_data_0
    .sparse-switch
        0x7f0b0009 -> :sswitch_5
        0x7f0b000a -> :sswitch_6
        0x7f0b002b -> :sswitch_4
        0x7f0b0037 -> :sswitch_0
        0x7f0b0038 -> :sswitch_1
        0x7f0b0039 -> :sswitch_2
        0x7f0b003a -> :sswitch_3
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter

    .prologue
    const v2, 0x7f0b0035

    const/4 v1, 0x0

    .line 939
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 958
    :goto_0
    return v0

    .line 943
    :cond_0
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 944
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListBottomBar:Landroid/widget/EditableListActionBar;

    invoke-virtual {v0, v2}, Landroid/widget/EditableListActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 945
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mState:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    sget-object v1, Lcom/miui/notes/ui/NotesListActivity$ListEditState;->NOTE_LIST:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    if-ne v0, v1, :cond_2

    .line 946
    invoke-virtual {p0}, Lcom/miui/notes/ui/NotesListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f03000c

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 948
    const v0, 0x7f0b0039

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-static {}, Lcom/miui/notes/gtask/remote/GTaskSyncService;->isSyncing()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f080019

    :goto_1
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 958
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 948
    :cond_1
    const v1, 0x7f080018

    goto :goto_1

    .line 950
    :cond_2
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mState:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    sget-object v1, Lcom/miui/notes/ui/NotesListActivity$ListEditState;->SUB_FOLDER:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    if-ne v0, v1, :cond_3

    .line 951
    invoke-virtual {p0}, Lcom/miui/notes/ui/NotesListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f030010

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    goto :goto_2

    .line 952
    :cond_3
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mState:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    sget-object v1, Lcom/miui/notes/ui/NotesListActivity$ListEditState;->CALL_RECORD_FOLDER:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    if-ne v0, v1, :cond_4

    .line 953
    invoke-virtual {p0}, Lcom/miui/notes/ui/NotesListActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f030003

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 954
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListBottomBar:Landroid/widget/EditableListActionBar;

    invoke-virtual {v0, v2}, Landroid/widget/EditableListActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 956
    :cond_4
    const-string v0, "NotesListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/notes/ui/NotesListActivity;->mState:Lcom/miui/notes/ui/NotesListActivity$ListEditState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1006
    invoke-virtual {p0, v1, v0, v1, v0}, Lcom/miui/notes/ui/NotesListActivity;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 1007
    const/4 v0, 0x1

    return v0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 269
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 270
    invoke-direct {p0}, Lcom/miui/notes/ui/NotesListActivity;->startAsyncNotesListQuery()V

    .line 271
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 381
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 382
    iget-object v0, p0, Lcom/miui/notes/ui/NotesListActivity;->mNotesListView:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 383
    return-void
.end method
