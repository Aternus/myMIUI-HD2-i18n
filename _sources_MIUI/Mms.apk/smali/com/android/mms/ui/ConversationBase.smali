.class public abstract Lcom/android/mms/ui/ConversationBase;
.super Lcom/android/mms/ui/MessageEditableActivityBase;
.source "ConversationBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;,
        Lcom/android/mms/ui/ConversationBase$DeleteMessageListener;,
        Lcom/android/mms/ui/ConversationBase$MsgListMenuClickListener;,
        Lcom/android/mms/ui/ConversationBase$PduBodyCache;,
        Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;
    }
.end annotation


# static fields
.field private static final SAVE_ATTACHMENT_DIRECTORY:Ljava/lang/String;

.field private static mBatchDeleteProgressDialog:Landroid/app/ProgressDialog;


# instance fields
.field private mBackPressed:Z

.field protected mBackgroundQueryHandler:Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;

.field private mBatchDeleteTaskCount:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

.field private mEditModeListener:Landroid/widget/EditableListView$EditModeListener;

.field private mInResetMessageAnimation:Z

.field private mInitTargetMessageId:J

.field private final mMessageListItemHandler:Landroid/os/Handler;

.field private mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

.field private final mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

.field protected mMsgListView:Lcom/android/mms/ui/MessageListView;

.field protected mMsgListViewButtonBar:Lcom/android/mms/ui/MessageListViewButtonBar;

.field private mNeedExitEditMode:Z

.field private mNewMessageCount:I

.field private mOldTimeToSend:J

.field private mOnButtonBarClickListener:Landroid/widget/EditableListActionBar$OnButtonBarClickListener;

.field private mPendingChangeCursor:Landroid/database/Cursor;

.field private mPossiblePendingNotification:Z

.field private mSentMessage:Z

.field private wasSoftKeyboardEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 118
    sget-object v0, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    sput-object v0, Lcom/android/mms/ui/ConversationBase;->SAVE_ATTACHMENT_DIRECTORY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;-><init>()V

    .line 138
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationBase;->mBackPressed:Z

    .line 325
    new-instance v0, Lcom/android/mms/ui/ConversationBase$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationBase$3;-><init>(Lcom/android/mms/ui/ConversationBase;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mEditModeListener:Landroid/widget/EditableListView$EditModeListener;

    .line 347
    new-instance v0, Lcom/android/mms/ui/ConversationBase$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationBase$4;-><init>(Lcom/android/mms/ui/ConversationBase;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mOnButtonBarClickListener:Landroid/widget/EditableListActionBar$OnButtonBarClickListener;

    .line 500
    new-instance v0, Lcom/android/mms/ui/ConversationBase$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationBase$5;-><init>(Lcom/android/mms/ui/ConversationBase;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 1247
    new-instance v0, Lcom/android/mms/ui/ConversationBase$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationBase$9;-><init>(Lcom/android/mms/ui/ConversationBase;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMessageListItemHandler:Landroid/os/Handler;

    .line 1312
    new-instance v0, Lcom/android/mms/ui/ConversationBase$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationBase$10;-><init>(Lcom/android/mms/ui/ConversationBase;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    .line 1427
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mPendingChangeCursor:Landroid/database/Cursor;

    .line 1624
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationBase;->mInResetMessageAnimation:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/ui/ConversationBase;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationBase;->wasSoftKeyboardEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ConversationBase;)Lcom/android/mms/ui/MessageListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/ConversationBase;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationBase;->editMessageItem(Lcom/android/mms/ui/MessageItem;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/ConversationBase;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationBase;->copyToClipboard(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/ConversationBase;Landroid/content/DialogInterface$OnClickListener;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ConversationBase;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;ZZ)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/ConversationBase;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationBase;->copyMedia(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/android/mms/ui/ConversationBase;->SAVE_ATTACHMENT_DIRECTORY:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/ConversationBase;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationBase;->copyToDrmProvider(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/ConversationBase;JZ)I
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ConversationBase;->getDrmMimeSavedStringRsrc(JZ)I

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/ConversationBase;Lcom/android/mms/ui/MessageItem;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationBase;->lockMessage(Lcom/android/mms/ui/MessageItem;Z)V

    return-void
.end method

.method static synthetic access$1802(Lcom/android/mms/ui/ConversationBase;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationBase;->mSentMessage:Z

    return p1
.end method

.method static synthetic access$1902(Lcom/android/mms/ui/ConversationBase;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationBase;->mPossiblePendingNotification:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ConversationBase;Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/ConversationBase;->confirmBatchDeleteDialog(Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;IZ)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/ConversationBase;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationBase;->requestChangeCursor(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ConversationBase;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/mms/ui/ConversationBase;->mBatchDeleteTaskCount:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/mms/ui/ConversationBase;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/android/mms/ui/ConversationBase;->mBatchDeleteTaskCount:I

    return p1
.end method

.method static synthetic access$308(Lcom/android/mms/ui/ConversationBase;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/mms/ui/ConversationBase;->mBatchDeleteTaskCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/mms/ui/ConversationBase;->mBatchDeleteTaskCount:I

    return v0
.end method

.method static synthetic access$310(Lcom/android/mms/ui/ConversationBase;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/android/mms/ui/ConversationBase;->mBatchDeleteTaskCount:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    iput v1, p0, Lcom/android/mms/ui/ConversationBase;->mBatchDeleteTaskCount:I

    return v0
.end method

.method static synthetic access$400()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/android/mms/ui/ConversationBase;->mBatchDeleteProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$402(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    sput-object p0, Lcom/android/mms/ui/ConversationBase;->mBatchDeleteProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/mms/ui/ConversationBase;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationBase;->mNeedExitEditMode:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ConversationBase;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationBase;->haveSomethingToCopyToSDCard(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ConversationBase;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationBase;->haveSomethingToCopyToDrmProvider(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ConversationBase;J)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationBase;->getDrmMimeMenuStringRsrc(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/ConversationBase;Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/ConversationBase;->getMessageItem(Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    return-object v0
.end method

.method public static cancelFailedToDeliverNotification(Landroid/content/Intent;Landroid/content/Context;)Z
    .locals 1
    .parameter "intent"
    .parameter "context"

    .prologue
    .line 228
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->isFailedToDeliver(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    const/16 v0, 0x315

    invoke-static {p1, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 232
    const/4 v0, 0x1

    .line 234
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private changeCursor(Landroid/database/Cursor;)V
    .locals 12
    .parameter "cursor"

    .prologue
    const-wide/16 v10, -0x1

    const/4 v9, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1439
    const/4 v3, -0x1

    .line 1441
    .local v3, newSelectionPos:I
    iget-wide v5, p0, Lcom/android/mms/ui/ConversationBase;->mInitTargetMessageId:J

    cmp-long v5, v5, v10

    if-eqz v5, :cond_2

    .line 1442
    invoke-interface {p1, v9}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1443
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1444
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1445
    .local v1, msgId:J
    iget-wide v5, p0, Lcom/android/mms/ui/ConversationBase;->mInitTargetMessageId:J

    cmp-long v5, v1, v5

    if-nez v5, :cond_0

    .line 1446
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result v3

    .line 1450
    .end local v1           #msgId:J
    :cond_1
    iput-wide v10, p0, Lcom/android/mms/ui/ConversationBase;->mInitTargetMessageId:J

    .line 1454
    :cond_2
    iget-object v5, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v5

    if-nez v5, :cond_7

    move v4, v7

    .line 1455
    .local v4, wasEmpty:Z
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    iget-object v6, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v6

    sub-int v0, v5, v6

    .line 1457
    .local v0, addedItem:I
    iget-object v5, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5, p1}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1460
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->isReadOnly()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1461
    if-eq v3, v9, :cond_8

    .line 1462
    iget-object v5, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v6, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageListView;->getHeaderViewsCount()I

    move-result v6

    add-int/2addr v6, v3

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/MessageListView;->setSelection(I)V

    .line 1479
    :cond_3
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lcom/android/mms/ui/ConversationBase;->mSentMessage:Z

    if-nez v5, :cond_4

    .line 1480
    iget-object v5, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 1481
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->finish()V

    .line 1484
    :cond_4
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_5

    .line 1485
    iput-boolean v8, p0, Lcom/android/mms/ui/ConversationBase;->mSentMessage:Z

    .line 1490
    :cond_5
    iget-object v5, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->requestFocus()Z

    .line 1492
    iget-object v5, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v5, v8}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 1494
    iget-boolean v5, p0, Lcom/android/mms/ui/ConversationBase;->mNeedExitEditMode:Z

    if-eqz v5, :cond_6

    .line 1495
    iget-object v5, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListView;->exitEditMode()V

    .line 1496
    iput-boolean v8, p0, Lcom/android/mms/ui/ConversationBase;->mNeedExitEditMode:Z

    .line 1498
    :cond_6
    return-void

    .end local v0           #addedItem:I
    .end local v4           #wasEmpty:Z
    :cond_7
    move v4, v8

    .line 1454
    goto :goto_0

    .line 1463
    .restart local v0       #addedItem:I
    .restart local v4       #wasEmpty:Z
    :cond_8
    iget v5, p0, Lcom/android/mms/ui/ConversationBase;->mNewMessageCount:I

    if-lez v5, :cond_9

    .line 1464
    iget v5, p0, Lcom/android/mms/ui/ConversationBase;->mNewMessageCount:I

    invoke-direct {p0, v5}, Lcom/android/mms/ui/ConversationBase;->showAddMessageAnimation(I)V

    .line 1465
    iput v8, p0, Lcom/android/mms/ui/ConversationBase;->mNewMessageCount:I

    goto :goto_1

    .line 1466
    :cond_9
    if-eqz v4, :cond_a

    .line 1467
    iget-object v5, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v6

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageListView;->getHeaderViewsCount()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Lcom/android/mms/ui/MessageListView;->setSelection(I)V

    goto :goto_1

    .line 1468
    :cond_a
    if-lez v0, :cond_3

    .line 1469
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationBase;->showAddMessageAnimation(I)V

    goto :goto_1
.end method

.method private checkPendingNotification()V
    .locals 1

    .prologue
    .line 1306
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationBase;->mPossiblePendingNotification:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1307
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->markAsReadAsync()V

    .line 1308
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationBase;->mPossiblePendingNotification:Z

    .line 1310
    :cond_0
    return-void
.end method

.method private confirmBatchDeleteDialog(Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;IZ)V
    .locals 10
    .parameter "listener"
    .parameter "affacted"
    .parameter "hasLockedMessages"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 922
    const v4, 0x7f03000c

    invoke-static {p0, v4, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 923
    .local v2, contents:Landroid/view/View;
    const v4, 0x7f0d0039

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 924
    .local v3, msg:Landroid/widget/TextView;
    const v4, 0x7f090162

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/android/mms/ui/ConversationBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 925
    const v4, 0x7f0d003a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 926
    .local v1, checkbox:Landroid/widget/CheckBox;
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->isGroup()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 927
    :cond_0
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 937
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 938
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f090084

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f09008e

    invoke-virtual {v4, v5, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090069

    invoke-virtual {v4, v5, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 941
    return-void

    .line 929
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_1
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {p1, v4}, Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;->setDeleteLockedMessage(Z)V

    .line 930
    new-instance v4, Lcom/android/mms/ui/ConversationBase$7;

    invoke-direct {v4, p0, p1, v1}, Lcom/android/mms/ui/ConversationBase$7;-><init>(Lcom/android/mms/ui/ConversationBase;Lcom/android/mms/ui/ConversationBase$BatchDeleteListener;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "listener"
    .parameter "title"
    .parameter "message"

    .prologue
    .line 910
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 911
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 912
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 913
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 914
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 915
    const v1, 0x7f09008e

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 916
    const v1, 0x7f090069

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 917
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 918
    return-void
.end method

.method private confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;ZZ)V
    .locals 4
    .parameter "listener"
    .parameter "locked"
    .parameter "isGroup"

    .prologue
    const v3, 0x7f090084

    .line 896
    if-eqz p2, :cond_0

    const v2, 0x7f090085

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 898
    .local v1, title:Ljava/lang/String;
    const-string v0, ""

    .line 899
    .local v0, message:Ljava/lang/String;
    if-eqz p3, :cond_1

    .line 900
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationBase;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 901
    const v2, 0x7f090088

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 906
    :goto_1
    invoke-direct {p0, p1, v1, v0}, Lcom/android/mms/ui/ConversationBase;->confirmDeleteDialog(Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    return-void

    .end local v0           #message:Ljava/lang/String;
    .end local v1           #title:Ljava/lang/String;
    :cond_0
    move v2, v3

    .line 896
    goto :goto_0

    .line 903
    .restart local v0       #message:Ljava/lang/String;
    .restart local v1       #title:Ljava/lang/String;
    :cond_1
    if-eqz p2, :cond_2

    const v2, 0x7f09008a

    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const v2, 0x7f090089

    goto :goto_2
.end method

.method private copyMedia(J)Z
    .locals 7
    .parameter "msgId"

    .prologue
    .line 1059
    const/4 v4, 0x1

    .line 1060
    .local v4, result:Z
    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/mms/ui/ConversationBase$PduBodyCache;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .line 1062
    .local v0, body:Lcom/google/android/mms/pdu/PduBody;
    if-nez v0, :cond_0

    .line 1063
    const/4 v6, 0x0

    .line 1076
    :goto_0
    return v6

    .line 1066
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v3

    .line 1067
    .local v3, partNum:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 1068
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v2

    .line 1069
    .local v2, part:Lcom/google/android/mms/pdu/PduPart;
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 1071
    .local v5, type:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 1073
    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v2, v6}, Lcom/android/mms/ui/ConversationBase;->copyPart(Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)Z

    move-result v6

    and-int/2addr v4, v6

    .line 1067
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v5           #type:Ljava/lang/String;
    :cond_3
    move v6, v4

    .line 1076
    goto :goto_0
.end method

.method private copyPart(Lcom/google/android/mms/pdu/PduPart;Ljava/lang/String;)Z
    .locals 10
    .parameter
    .parameter

    .prologue
    .line 1080
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v1

    .line 1082
    const/4 v2, 0x0

    .line 1083
    const/4 v3, 0x0

    .line 1085
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/ui/ConversationBase;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v4, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_9

    move-result-object v2

    .line 1086
    :try_start_1
    instance-of v1, v2, Ljava/io/FileInputStream;

    if-eqz v1, :cond_d

    .line 1087
    move-object v0, v2

    check-cast v0, Ljava/io/FileInputStream;

    move-object v1, v0

    .line 1089
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v4

    .line 1090
    if-nez v4, :cond_0

    .line 1091
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v4

    .line 1093
    :cond_0
    if-nez v4, :cond_1

    .line 1094
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v4

    .line 1098
    :cond_1
    if-nez v4, :cond_4

    move-object v4, p2

    .line 1107
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/mms/ui/ConversationBase;->SAVE_ATTACHMENT_DIRECTORY:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1111
    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_5

    .line 1112
    new-instance v6, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/String;-><init>([B)V

    .line 1113
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v9, v6

    move-object v6, v4

    move-object v4, v9

    .line 1119
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, v4}, Lcom/android/mms/ui/ConversationBase;->getUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    .line 1122
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    .line 1123
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_6

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_6

    .line 1124
    const-string v1, "ConversationBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[MMS] copyPart: mkdirs for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 1125
    const/4 v1, 0x0

    .line 1146
    if-eqz v2, :cond_2

    .line 1148
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1155
    :cond_2
    if-eqz v3, :cond_3

    .line 1157
    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1165
    :cond_3
    :goto_2
    return v1

    .line 1102
    :cond_4
    :try_start_4
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    .line 1103
    const-string v4, "[?|*]"

    const-string v6, "_"

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 1115
    :cond_5
    add-int/lit8 v7, v6, 0x1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1116
    const/4 v8, 0x0

    invoke-virtual {v4, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a

    move-result-object v4

    move-object v6, v4

    move-object v4, v7

    goto :goto_1

    .line 1149
    :catch_0
    move-exception v1

    .line 1151
    const-string v2, "ConversationBase"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1152
    const/4 v1, 0x0

    goto :goto_2

    .line 1158
    :catch_1
    move-exception v1

    .line 1160
    const-string v2, "ConversationBase"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1161
    const/4 v1, 0x0

    goto :goto_2

    .line 1128
    :cond_6
    :try_start_5
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a

    .line 1130
    const/16 v3, 0x1f40

    :try_start_6
    new-array v3, v3, [B

    .line 1132
    :goto_3
    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_8

    .line 1133
    const/4 v7, 0x0

    invoke-virtual {v5, v3, v7, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    .line 1141
    :catch_2
    move-exception v1

    move-object v3, v2

    move-object v2, v5

    .line 1143
    :goto_4
    :try_start_7
    const-string v4, "ConversationBase"

    const-string v5, "IOException caught while opening or reading stream"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1144
    const/4 v1, 0x0

    .line 1146
    if-eqz v3, :cond_7

    .line 1148
    :try_start_8
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .line 1155
    :cond_7
    if-eqz v2, :cond_3

    .line 1157
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_2

    .line 1158
    :catch_3
    move-exception v1

    .line 1160
    const-string v2, "ConversationBase"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1161
    const/4 v1, 0x0

    goto :goto_2

    .line 1138
    :cond_8
    :try_start_a
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationBase;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    move-object v1, v5

    .line 1146
    :goto_5
    if-eqz v2, :cond_9

    .line 1148
    :try_start_b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 1155
    :cond_9
    if-eqz v1, :cond_a

    .line 1157
    :try_start_c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 1165
    :cond_a
    const/4 v1, 0x1

    goto/16 :goto_2

    .line 1149
    :catch_4
    move-exception v1

    .line 1151
    const-string v2, "ConversationBase"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1152
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 1158
    :catch_5
    move-exception v1

    .line 1160
    const-string v2, "ConversationBase"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1161
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 1149
    :catch_6
    move-exception v1

    .line 1151
    const-string v2, "ConversationBase"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1152
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 1146
    :catchall_0
    move-exception v1

    move-object v9, v3

    move-object v3, v2

    move-object v2, v9

    :goto_6
    if-eqz v3, :cond_b

    .line 1148
    :try_start_d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 1155
    :cond_b
    if-eqz v2, :cond_c

    .line 1157
    :try_start_e
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    .line 1161
    :cond_c
    throw v1

    .line 1149
    :catch_7
    move-exception v1

    .line 1151
    const-string v2, "ConversationBase"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1152
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 1158
    :catch_8
    move-exception v1

    .line 1160
    const-string v2, "ConversationBase"

    const-string v3, "IOException caught while closing stream"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1161
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 1146
    :catchall_1
    move-exception v1

    move-object v9, v3

    move-object v3, v2

    move-object v2, v9

    goto :goto_6

    :catchall_2
    move-exception v1

    move-object v3, v2

    move-object v2, v5

    goto :goto_6

    :catchall_3
    move-exception v1

    goto :goto_6

    .line 1141
    :catch_9
    move-exception v1

    move-object v9, v3

    move-object v3, v2

    move-object v2, v9

    goto/16 :goto_4

    :catch_a
    move-exception v1

    move-object v9, v3

    move-object v3, v2

    move-object v2, v9

    goto/16 :goto_4

    :cond_d
    move-object v1, v3

    goto :goto_5
.end method

.method private copyPartToDrmProvider(Lcom/google/android/mms/pdu/PduPart;)Z
    .locals 11
    .parameter

    .prologue
    const/4 v7, 0x0

    const-string v9, "IOException caught while closing stream"

    const-string v8, "ConversationBase"

    .line 1004
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v3

    .line 1006
    const/4 v1, 0x0

    .line 1008
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationBase;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v2

    .line 1009
    :try_start_1
    instance-of v1, v2, Ljava/io/FileInputStream;

    if-eqz v1, :cond_3

    .line 1010
    move-object v0, v2

    check-cast v0, Ljava/io/FileInputStream;

    move-object v1, v0

    .line 1013
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getName()[B

    move-result-object v4

    .line 1014
    if-nez v4, :cond_0

    .line 1015
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getFilename()[B

    move-result-object v4

    .line 1017
    :cond_0
    if-nez v4, :cond_1

    .line 1018
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getContentLocation()[B

    move-result-object v4

    .line 1023
    :cond_1
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>([B)V

    .line 1025
    const-string v4, "."

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_7

    .line 1026
    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1030
    :goto_0
    iget-object v5, p0, Lcom/android/mms/ui/ConversationBase;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v5, v1, v4}, Landroid/provider/DrmStore;->addDrmFile(Landroid/content/ContentResolver;Ljava/io/FileInputStream;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1031
    if-nez v1, :cond_3

    .line 1032
    const-string v1, "ConversationBase"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to add file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to DrmProvider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .line 1041
    if-eqz v2, :cond_2

    .line 1043
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    move v1, v7

    .line 1051
    :goto_1
    return v1

    .line 1044
    :catch_0
    move-exception v1

    .line 1046
    const-string v2, "ConversationBase"

    const-string v2, "IOException caught while closing stream"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v7

    .line 1047
    goto :goto_1

    .line 1041
    :cond_3
    if-eqz v2, :cond_4

    .line 1043
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1051
    :cond_4
    const/4 v1, 0x1

    goto :goto_1

    .line 1044
    :catch_1
    move-exception v1

    .line 1046
    const-string v2, "ConversationBase"

    const-string v2, "IOException caught while closing stream"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v7

    .line 1047
    goto :goto_1

    .line 1036
    :catch_2
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    .line 1038
    :goto_2
    :try_start_4
    const-string v3, "ConversationBase"

    const-string v4, "IOException caught while opening or reading stream"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1041
    if-eqz v2, :cond_5

    .line 1043
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    move v1, v7

    .line 1047
    goto :goto_1

    .line 1044
    :catch_3
    move-exception v1

    .line 1046
    const-string v2, "ConversationBase"

    const-string v2, "IOException caught while closing stream"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v7

    .line 1047
    goto :goto_1

    .line 1041
    :catchall_0
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    :goto_3
    if-eqz v2, :cond_6

    .line 1043
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 1047
    :cond_6
    throw v1

    .line 1044
    :catch_4
    move-exception v1

    .line 1046
    const-string v2, "ConversationBase"

    const-string v2, "IOException caught while closing stream"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v7

    .line 1047
    goto :goto_1

    .line 1041
    :catchall_1
    move-exception v1

    goto :goto_3

    .line 1036
    :catch_5
    move-exception v1

    goto :goto_2

    :cond_7
    move-object v4, v5

    goto :goto_0
.end method

.method private copyToClipboard(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 998
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationBase;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/ClipboardManager;

    .line 1000
    invoke-virtual {p0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 1001
    return-void
.end method

.method private copyToDrmProvider(J)Z
    .locals 7
    .parameter "msgId"

    .prologue
    .line 956
    const/4 v4, 0x1

    .line 957
    .local v4, result:Z
    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/mms/ui/ConversationBase$PduBodyCache;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .line 959
    .local v0, body:Lcom/google/android/mms/pdu/PduBody;
    if-nez v0, :cond_0

    .line 960
    const/4 v6, 0x0

    .line 974
    :goto_0
    return v6

    .line 963
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v3

    .line 964
    .local v3, partNum:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 965
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v2

    .line 966
    .local v2, part:Lcom/google/android/mms/pdu/PduPart;
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 968
    .local v5, type:Ljava/lang/String;
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 971
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ConversationBase;->copyPartToDrmProvider(Lcom/google/android/mms/pdu/PduPart;)Z

    move-result v6

    and-int/2addr v4, v6

    .line 964
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v5           #type:Ljava/lang/String;
    :cond_2
    move v6, v4

    .line 974
    goto :goto_0
.end method

.method private editMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 2
    .parameter "msgItem"

    .prologue
    .line 1178
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1179
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationBase;->editSmsMessageItem(Lcom/android/mms/ui/MessageItem;)V

    .line 1183
    :goto_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isFailedMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 1186
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->updateSendButtonState()V

    .line 1187
    return-void

    .line 1181
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationBase;->editMmsMessageItem(Lcom/android/mms/ui/MessageItem;)V

    goto :goto_0
.end method

.method private editMmsMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 3
    .parameter "msgItem"

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->discard()V

    .line 1215
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getMessageUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/data/WorkingMessage;->load(Lcom/android/mms/data/WorkingMessage$MessageStatusListener;Landroid/net/Uri;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    .line 1216
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 1218
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAttachmentView:Lcom/android/mms/ui/AttachmentView;

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/AttachmentView;->update(Lcom/android/mms/data/WorkingMessage;)V

    .line 1219
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->drawTopPanel()V

    .line 1224
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getSubject()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 1226
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1227
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationBase;->showSubjectEditor(Z)V

    .line 1229
    :cond_0
    return-void
.end method

.method private editSmsMessageItem(Lcom/android/mms/ui/MessageItem;)V
    .locals 5
    .parameter "msgItem"

    .prologue
    const/4 v4, 0x0

    .line 1197
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    monitor-enter v1

    .line 1198
    :try_start_0
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_0

    .line 1199
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 1201
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1203
    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 1204
    .local v0, uri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {p0, v1, v0, v4, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1207
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 1208
    return-void

    .line 1201
    .end local v0           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private getDrmMimeMenuStringRsrc(J)I
    .locals 2
    .parameter "msgId"

    .prologue
    .line 629
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationBase;->getDrmMimeType(J)Ljava/lang/String;

    move-result-object v0

    .line 630
    .local v0, mimeType:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationBase;->isAudioMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 631
    const v1, 0x7f0900e6

    .line 633
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDrmMimeSavedStringRsrc(JZ)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 944
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationBase;->getDrmMimeType(J)Ljava/lang/String;

    move-result-object v0

    .line 945
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationBase;->isAudioMimeType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 946
    if-eqz p3, :cond_0

    const v0, 0x7f0900e7

    .line 948
    :goto_0
    return v0

    .line 946
    :cond_0
    const v0, 0x7f0900e8

    goto :goto_0

    .line 948
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDrmMimeType(J)Ljava/lang/String;
    .locals 7
    .parameter "msgId"

    .prologue
    const/4 v6, 0x0

    .line 676
    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v5, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/mms/ui/ConversationBase$PduBodyCache;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .line 678
    .local v0, body:Lcom/google/android/mms/pdu/PduBody;
    if-nez v0, :cond_0

    move-object v5, v6

    .line 691
    :goto_0
    return-object v5

    .line 682
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v3

    .line 683
    .local v3, partNum:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 684
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v2

    .line 685
    .local v2, part:Lcom/google/android/mms/pdu/PduPart;
    new-instance v4, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    .line 687
    .local v4, type:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/mms/ContentType;->isDrmType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 688
    invoke-direct {p0, v2}, Lcom/android/mms/ui/ConversationBase;->mimeTypeOfDrmPart(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 683
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v4           #type:Ljava/lang/String;
    :cond_2
    move-object v5, v6

    .line 691
    goto :goto_0
.end method

.method private getMessageDate(Landroid/net/Uri;)J
    .locals 9
    .parameter "uri"

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 259
    if-eqz p1, :cond_1

    .line 260
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mContentResolver:Landroid/content/ContentResolver;

    new-array v3, v8, [Ljava/lang/String;

    const-string v0, "date"

    aput-object v0, v3, v2

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 262
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 264
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ne v0, v8, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    .line 268
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 272
    .end local v7           #cursor:Landroid/database/Cursor;
    :goto_0
    return-wide v0

    .line 268
    .restart local v7       #cursor:Landroid/database/Cursor;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 272
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0

    .line 268
    .restart local v7       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getMessageItem(Ljava/lang/String;JZ)Lcom/android/mms/ui/MessageItem;
    .locals 2
    .parameter "type"
    .parameter "msgId"
    .parameter "createFromCursorIfNotInCache"

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz p4, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getUniqueDestination(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 6
    .parameter
    .parameter

    .prologue
    const-string v4, "."

    .line 1169
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1171
    const/4 v1, 0x2

    move v5, v1

    move-object v1, v0

    move v0, v5

    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1172
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1174
    :cond_0
    return-object v1
.end method

.method private haveSomethingToCopyToDrmProvider(J)Z
    .locals 2
    .parameter "msgId"

    .prologue
    .line 700
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationBase;->getDrmMimeType(J)Ljava/lang/String;

    move-result-object v0

    .line 701
    .local v0, mimeType:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationBase;->isAudioMimeType(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private haveSomethingToCopyToSDCard(J)Z
    .locals 9
    .parameter "msgId"

    .prologue
    .line 709
    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/mms/ui/ConversationBase$PduBodyCache;->getPduBody(Landroid/content/Context;Landroid/net/Uri;)Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .line 711
    .local v0, body:Lcom/google/android/mms/pdu/PduBody;
    if-nez v0, :cond_0

    .line 712
    const/4 v6, 0x0

    .line 731
    :goto_0
    return v6

    .line 715
    :cond_0
    const/4 v4, 0x0

    .line 716
    .local v4, result:Z
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v3

    .line 717
    .local v3, partNum:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_3

    .line 718
    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v2

    .line 719
    .local v2, part:Lcom/google/android/mms/pdu/PduPart;
    new-instance v5, Ljava/lang/String;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    .line 721
    .local v5, type:Ljava/lang/String;
    const-string v6, "Mms:app"

    const/4 v7, 0x2

    invoke-static {v6, v7}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 722
    const-string v6, "ConversationBase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CMA] haveSomethingToCopyToSDCard: part["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] contentType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    :cond_1
    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isVideoType(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-static {v5}, Lcom/google/android/mms/ContentType;->isAudioType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 727
    :cond_2
    const/4 v4, 0x1

    .end local v2           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v5           #type:Ljava/lang/String;
    :cond_3
    move v6, v4

    .line 731
    goto :goto_0

    .line 717
    .restart local v2       #part:Lcom/google/android/mms/pdu/PduPart;
    .restart local v5       #type:Ljava/lang/String;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private isAudioMimeType(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 625
    if-eqz p1, :cond_0

    const-string v0, "audio/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lockMessage(Lcom/android/mms/ui/MessageItem;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 979
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isSms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 980
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 984
    :goto_0
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getMsgId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 986
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 987
    const-string v2, "locked"

    if-eqz p2, :cond_1

    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 989
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/ui/ConversationBase$8;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/mms/ui/ConversationBase$8;-><init>(Lcom/android/mms/ui/ConversationBase;Landroid/net/Uri;Landroid/content/ContentValues;)V

    const-string v0, "lockMessage"

    invoke-direct {v2, v3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 995
    return-void

    .line 982
    :cond_0
    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 987
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private mimeTypeOfDrmPart(Lcom/google/android/mms/pdu/PduPart;)Ljava/lang/String;
    .locals 11
    .parameter "part"

    .prologue
    const-string v10, "IOException caught while closing stream"

    const-string v9, "ConversationBase"

    .line 637
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/PduPart;->getDataUri()Landroid/net/Uri;

    move-result-object v6

    .line 638
    .local v6, uri:Landroid/net/Uri;
    const/4 v4, 0x0

    .line 640
    .local v4, input:Ljava/io/InputStream;
    :try_start_0
    iget-object v7, p0, Lcom/android/mms/ui/ConversationBase;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v7, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 641
    instance-of v7, v4, Ljava/io/FileInputStream;

    if-eqz v7, :cond_1

    .line 642
    move-object v0, v4

    check-cast v0, Ljava/io/FileInputStream;

    move-object v3, v0

    .line 644
    .local v3, fin:Ljava/io/FileInputStream;
    new-instance v1, Landroid/drm/mobile1/DrmRawContent;

    invoke-virtual {v3}, Ljava/io/FileInputStream;->available()I

    move-result v7

    const-string v8, "application/vnd.oma.drm.message"

    invoke-direct {v1, v3, v7, v8}, Landroid/drm/mobile1/DrmRawContent;-><init>(Ljava/io/InputStream;ILjava/lang/String;)V

    .line 646
    .local v1, content:Landroid/drm/mobile1/DrmRawContent;
    invoke-virtual {v1}, Landroid/drm/mobile1/DrmRawContent;->getContentType()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/drm/mobile1/DrmException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v5

    .line 655
    .local v5, mimeType:Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 657
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    move-object v7, v5

    .line 664
    .end local v1           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v3           #fin:Ljava/io/FileInputStream;
    .end local v5           #mimeType:Ljava/lang/String;
    :goto_1
    return-object v7

    .line 658
    .restart local v1       #content:Landroid/drm/mobile1/DrmRawContent;
    .restart local v3       #fin:Ljava/io/FileInputStream;
    .restart local v5       #mimeType:Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 660
    .local v2, e:Ljava/io/IOException;
    const-string v7, "ConversationBase"

    const-string v7, "IOException caught while closing stream"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 655
    .end local v1           #content:Landroid/drm/mobile1/DrmRawContent;
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fin:Ljava/io/FileInputStream;
    .end local v5           #mimeType:Ljava/lang/String;
    :cond_1
    if-eqz v4, :cond_2

    .line 657
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 664
    :cond_2
    :goto_2
    const/4 v7, 0x0

    goto :goto_1

    .line 658
    :catch_1
    move-exception v2

    .line 660
    .restart local v2       #e:Ljava/io/IOException;
    const-string v7, "ConversationBase"

    const-string v7, "IOException caught while closing stream"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 649
    .end local v2           #e:Ljava/io/IOException;
    :catch_2
    move-exception v7

    move-object v2, v7

    .line 651
    .restart local v2       #e:Ljava/io/IOException;
    :try_start_3
    const-string v7, "ConversationBase"

    const-string v8, "IOException caught while opening or reading stream"

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 655
    if-eqz v4, :cond_2

    .line 657
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    .line 658
    :catch_3
    move-exception v2

    .line 660
    const-string v7, "ConversationBase"

    const-string v7, "IOException caught while closing stream"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 652
    .end local v2           #e:Ljava/io/IOException;
    :catch_4
    move-exception v7

    move-object v2, v7

    .line 653
    .local v2, e:Landroid/drm/mobile1/DrmException;
    :try_start_5
    const-string v7, "ConversationBase"

    const-string v8, "DrmException caught "

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 655
    if-eqz v4, :cond_2

    .line 657
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_2

    .line 658
    :catch_5
    move-exception v2

    .line 660
    .local v2, e:Ljava/io/IOException;
    const-string v7, "ConversationBase"

    const-string v7, "IOException caught while closing stream"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 655
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    if-eqz v4, :cond_3

    .line 657
    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 661
    :cond_3
    :goto_3
    throw v7

    .line 658
    :catch_6
    move-exception v2

    .line 660
    .restart local v2       #e:Ljava/io/IOException;
    const-string v8, "ConversationBase"

    const-string v8, "IOException caught while closing stream"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private requestChangeCursor(Landroid/database/Cursor;)V
    .locals 1
    .parameter "cursor"

    .prologue
    .line 1431
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationBase;->mInResetMessageAnimation:Z

    if-eqz v0, :cond_0

    .line 1432
    iput-object p1, p0, Lcom/android/mms/ui/ConversationBase;->mPendingChangeCursor:Landroid/database/Cursor;

    .line 1436
    :goto_0
    return-void

    .line 1434
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationBase;->changeCursor(Landroid/database/Cursor;)V

    goto :goto_0
.end method

.method private setTimeToSend(J)V
    .locals 7
    .parameter "timeToSend"

    .prologue
    .line 1641
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/mms/ui/ConversationBase;->mOldTimeToSend:J

    move-object v0, p0

    move-wide v5, p1

    invoke-static/range {v0 .. v6}, Lcom/android/mms/ui/MessageUtils;->setMessageSendTime(Landroid/content/Context;JJJ)V

    .line 1643
    invoke-static {p0}, Lcom/android/mms/transaction/TimedMessageReceiver;->scheduleNextTimedMsg(Landroid/content/Context;)V

    .line 1644
    return-void
.end method

.method private showAddMessageAnimation(I)V
    .locals 14
    .parameter

    .prologue
    .line 1509
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int v2, v0, v1

    .line 1510
    if-gez v2, :cond_1

    .line 1622
    :cond_0
    :goto_0
    return-void

    .line 1514
    :cond_1
    sub-int v1, v2, p1

    .line 1515
    const/4 v0, -0x1

    if-lt v1, v0, :cond_0

    .line 1519
    const-string v0, "ConversationBase"

    const-string v3, "lastPosAfterAdd = %d lastPosBeforeAdd = %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1520
    const v0, 0x7f0d0091

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationBase;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1521
    const v0, 0x7f0d0092

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationBase;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    .line 1522
    const v0, 0x7f0d0093

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1524
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1525
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1527
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v4

    .line 1530
    const/4 v5, 0x0

    .line 1531
    add-int/lit8 v6, v1, 0x1

    move v13, v6

    move v6, v5

    move v5, v13

    :goto_1
    if-gt v5, v2, :cond_2

    .line 1532
    iget-object v7, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v7, v5}, Lcom/android/mms/ui/MessageListAdapter;->getItemViewType(I)I

    .line 1533
    iget-object v7, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v7, v5, v8, v9}, Lcom/android/mms/ui/MessageListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 1534
    const/high16 v8, 0x4000

    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 1537
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v6, v8

    .line 1538
    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1531
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1540
    :cond_2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iput v6, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1541
    const-string v5, "ConversationBase"

    const-string v7, "newMessagesHeight=%d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    iget-object v5, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_4

    iget-object v5, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListView;->getLastVisiblePosition()I

    move-result v5

    if-ne v5, v1, :cond_4

    .line 1547
    iget-object v5, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v7, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageListView;->getChildCount()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v5, v7}, Lcom/android/mms/ui/MessageListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    .line 1551
    :goto_2
    iget-object v7, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v7}, Lcom/android/mms/ui/MessageListView;->getHeight()I

    move-result v7

    sub-int/2addr v7, v6

    .line 1552
    const-string v8, "ConversationBase"

    const-string v9, "oldMsgInitialBottom = %d oldMsgFinalBottom = %d"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    const/4 v8, 0x0

    .line 1557
    :goto_3
    if-ltz v1, :cond_5

    sub-int v9, v7, v8

    if-gez v9, :cond_3

    sub-int v9, v5, v8

    if-ltz v9, :cond_5

    .line 1559
    :cond_3
    iget-object v9, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v9, v1}, Lcom/android/mms/ui/MessageListAdapter;->getItemViewType(I)I

    .line 1560
    iget-object v9, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v9, v1, v10, v11}, Lcom/android/mms/ui/MessageListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 1561
    const/4 v10, 0x0

    invoke-virtual {p1, v9, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 1562
    const/high16 v10, 0x4000

    invoke-static {v4, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Landroid/view/View;->measure(II)V

    .line 1565
    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    .line 1566
    add-int/lit8 v1, v1, -0x1

    .line 1567
    goto :goto_3

    .line 1549
    :cond_4
    iget-object v5, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v5}, Lcom/android/mms/ui/MessageListView;->getHeight()I

    move-result v5

    goto :goto_2

    .line 1568
    :cond_5
    sub-int v1, v7, v8

    if-ltz v1, :cond_9

    move v4, v8

    .line 1571
    :goto_4
    sub-int v1, v5, v8

    if-ltz v1, :cond_6

    move v5, v8

    .line 1576
    :cond_6
    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v1}, Lcom/android/mms/ui/MessageListView;->getHeight()I

    move-result v1

    add-int/2addr v6, v4

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 1580
    const-string v1, "ConversationBase"

    const-string v7, "newMsgInitialTop = %d newMsgFinalTop = %d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1582
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    sub-int v7, v4, v8

    iput v7, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 1583
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v8, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 1584
    const-string v1, "ConversationBase"

    const-string v7, "totalOldMsgHeight=%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v9, v10

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1587
    new-instance v1, Landroid/view/animation/AnimationSet;

    const/4 v7, 0x0

    invoke-direct {v1, v7}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 1588
    new-instance v7, Landroid/view/animation/TranslateAnimation;

    const/4 v8, 0x0

    const/4 v9, 0x0

    sub-int/2addr v6, v4

    int-to-float v6, v6

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v6, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1589
    iget-boolean v6, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAllowAnimation:Z

    if-eqz v6, :cond_7

    const-wide/16 v8, 0x12c

    :goto_5
    invoke-virtual {v7, v8, v9}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1590
    new-instance v6, Landroid/view/animation/AlphaAnimation;

    const/4 v8, 0x0

    const/high16 v9, 0x3f80

    invoke-direct {v6, v8, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1591
    iget-boolean v8, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAllowAnimation:Z

    if-eqz v8, :cond_8

    const-wide/16 v8, 0x12c

    :goto_6
    invoke-virtual {v6, v8, v9}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 1592
    invoke-virtual {v1, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1593
    invoke-virtual {v1, v6}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1594
    new-instance v6, Lcom/android/mms/ui/ConversationBase$11;

    invoke-direct {v6, p0, v3, v2, v4}, Lcom/android/mms/ui/ConversationBase$11;-><init>(Lcom/android/mms/ui/ConversationBase;Landroid/view/View;II)V

    invoke-virtual {v1, v6}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1613
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1616
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    sub-int v4, v5, v4

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-direct {v0, v1, v2, v4, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1617
    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 1618
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1620
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1621
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    goto/16 :goto_0

    .line 1589
    :cond_7
    const-wide/16 v8, 0x0

    goto :goto_5

    .line 1591
    :cond_8
    const-wide/16 v8, 0x0

    goto :goto_6

    :cond_9
    move v4, v7

    goto/16 :goto_4
.end method

.method private updateSendFailedNotification()V
    .locals 5

    .prologue
    .line 610
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 611
    .local v0, threadId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 622
    :goto_0
    return-void

    .line 616
    :cond_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/ui/ConversationBase$6;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/mms/ui/ConversationBase$6;-><init>(Lcom/android/mms/ui/ConversationBase;J)V

    const-string v4, "updateSendFailedNotification"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method protected getRecipients()Lcom/android/mms/data/ContactList;
    .locals 1

    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    return-object v0
.end method

.method protected initMessageList()V
    .locals 14

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_0

    .line 482
    :goto_0
    return-void

    .line 451
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "highlight"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 452
    .local v11, highlightString:Ljava/lang/String;
    if-nez v11, :cond_1

    const/4 v0, 0x0

    move-object v5, v0

    .line 456
    .local v5, highlight:Ljava/util/regex/Pattern;
    :goto_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 457
    .local v13, sp:Landroid/content/SharedPreferences;
    invoke-static {p0, v13}, Lcom/android/mms/ui/MessageUtils;->getConversationStyle(Landroid/content/Context;Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v6

    .line 458
    .local v6, itemStyle:Ljava/lang/String;
    invoke-static {v13, v6}, Lcom/android/mms/ui/MessageUtils;->getConversationGroupByTime(Landroid/content/SharedPreferences;Ljava/lang/String;)Z

    move-result v7

    .line 459
    .local v7, groupBytime:Z
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->getPrefNotificationEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v13, v0}, Lcom/android/mms/ui/MessageUtils;->getDeliverReportMode(Landroid/content/SharedPreferences;Z)I

    move-result v8

    .line 462
    .local v8, deliverReportMode:I
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->isGroup()Z

    move-result v9

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->isReadOnly()Z

    move-result v10

    move-object v1, p0

    invoke-direct/range {v0 .. v10}, Lcom/android/mms/ui/MessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/EditableListView;ZLjava/util/regex/Pattern;Ljava/lang/String;ZIZZ)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    .line 464
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setOnDataSetChangedListener(Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;)V

    .line 465
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mMessageListItemHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setMsgListItemHandler(Landroid/os/Handler;)V

    .line 467
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03002d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    .line 468
    .local v12, paddingView:Landroid/view/View;
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v12}, Lcom/android/mms/ui/MessageListView;->addHeaderView(Landroid/view/View;)V

    .line 469
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 470
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setEditable(Z)V

    .line 471
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setItemsCanFocus(Z)V

    .line 472
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setVisibility(I)V

    .line 473
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 474
    sget-object v0, Lcom/android/mms/ui/MessageListItem$Style;->list:Lcom/android/mms/ui/MessageListItem$Style;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListItem$Style;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 475
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mHistoryView:Landroid/view/View;

    const v1, 0x7f0200ac

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 476
    const v0, 0x7f0d0094

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 452
    .end local v5           #highlight:Ljava/util/regex/Pattern;
    .end local v6           #itemStyle:Ljava/lang/String;
    .end local v7           #groupBytime:Z
    .end local v8           #deliverReportMode:I
    .end local v12           #paddingView:Landroid/view/View;
    .end local v13           #sp:Landroid/content/SharedPreferences;
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v11}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    move-object v5, v0

    goto/16 :goto_1

    .line 478
    .restart local v5       #highlight:Ljava/util/regex/Pattern;
    .restart local v6       #itemStyle:Ljava/lang/String;
    .restart local v7       #groupBytime:Z
    .restart local v8       #deliverReportMode:I
    .restart local v12       #paddingView:Landroid/view/View;
    .restart local v13       #sp:Landroid/content/SharedPreferences;
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mHistoryView:Landroid/view/View;

    const v1, 0x7f0200aa

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 479
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    const v1, 0x7f020083

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setSelector(I)V

    .line 480
    const v0, 0x7f0d0094

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method protected initResourceRefs()V
    .locals 2

    .prologue
    .line 301
    invoke-super {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->initResourceRefs()V

    .line 302
    const v0, 0x7f0d0090

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageListView;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    .line 303
    const v0, 0x7f0d0030

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/MessageListViewButtonBar;

    iput-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListViewButtonBar:Lcom/android/mms/ui/MessageListViewButtonBar;

    .line 305
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListViewButtonBar:Lcom/android/mms/ui/MessageListViewButtonBar;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->addEditModeListener(Landroid/widget/EditableListView$EditModeListener;)V

    .line 306
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mEditModeListener:Landroid/widget/EditableListView$EditModeListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->addEditModeListener(Landroid/widget/EditableListView$EditModeListener;)V

    .line 307
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    new-instance v1, Lcom/android/mms/ui/ConversationBase$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationBase$2;-><init>(Lcom/android/mms/ui/ConversationBase;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 320
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListViewButtonBar:Lcom/android/mms/ui/MessageListViewButtonBar;

    if-eqz v0, :cond_0

    .line 321
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListViewButtonBar:Lcom/android/mms/ui/MessageListViewButtonBar;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationBase;->mOnButtonBarClickListener:Landroid/widget/EditableListActionBar$OnButtonBarClickListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListViewButtonBar;->setOnButtonBarClickListener(Landroid/widget/EditableListActionBar$OnButtonBarClickListener;)V

    .line 323
    :cond_0
    return-void
.end method

.method protected initialize(J)V
    .locals 6
    .parameter "threadId"

    .prologue
    const/4 v4, 0x0

    const-string v5, "intent_extra_data_key"

    .line 205
    invoke-static {p0, p1, p2, v4}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    .line 207
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/mms/ui/ConversationBase;->cancelFailedToDeliverNotification(Landroid/content/Intent;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 210
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/mms/ui/ConversationBase;->getMessageDate(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/ConversationBase;->undeliveredMessageDialog(J)V

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 215
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "select_id"

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/mms/ui/ConversationBase;->mInitTargetMessageId:J

    .line 216
    const-string v1, "intent_extra_data_key"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 217
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "intent_extra_data_key"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/mms/ui/ConversationBase;->mInitTargetMessageId:J

    .line 220
    :cond_1
    const-string v1, "new_message_count"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/mms/ui/ConversationBase;->mNewMessageCount:I

    .line 221
    const-string v1, "was_soft_keyboard_on"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationBase;->wasSoftKeyboardEnabled:Z

    .line 223
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->initMessageList()V

    .line 224
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->initialize()V

    .line 225
    return-void
.end method

.method protected isGroup()Z
    .locals 1

    .prologue
    .line 489
    const/4 v0, 0x0

    return v0
.end method

.method public isPreparedForSending()Z
    .locals 1

    .prologue
    .line 1501
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected isReadOnly()Z
    .locals 1

    .prologue
    .line 497
    const/4 v0, 0x0

    return v0
.end method

.method public loadMessageContent()V
    .locals 2

    .prologue
    .line 281
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationBase;->wasSoftKeyboardEnabled:Z

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/ConversationBase$1;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationBase$1;-><init>(Lcom/android/mms/ui/ConversationBase;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 295
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationBase;->updateSendFailedNotification()V

    .line 296
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->drawBottomPanel()V

    .line 297
    return-void

    .line 293
    :cond_0
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->startMsgListQuery()V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const-wide/16 v4, -0x1

    .line 1649
    const/4 v2, 0x5

    if-ne p1, v2, :cond_1

    .line 1650
    iget-object v2, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTimedMsgIndicator:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 1651
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1652
    sget-object v2, Lcom/android/mms/ui/DateTimePickerActivity;->FIELD_TIME:Ljava/lang/String;

    invoke-virtual {p3, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1653
    .local v0, time:J
    cmp-long v2, v0, v4

    if-eqz v2, :cond_0

    .line 1654
    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ConversationBase;->setTimeToSend(J)V

    .line 1660
    .end local v0           #time:J
    :cond_0
    :goto_0
    return-void

    .line 1658
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageEditableActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->exitEditMode()V

    .line 188
    :goto_0
    return-void

    .line 185
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationBase;->mBackPressed:Z

    .line 186
    invoke-super {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->onBackPressed()V

    goto :goto_0
.end method

.method protected onContactsUpdated()V
    .locals 1

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationBase;->updateTitle(Lcom/android/mms/data/ContactList;)V

    .line 168
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 146
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationBase;->mNeedExitEditMode:Z

    .line 147
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ConversationBase;->mContentResolver:Landroid/content/ContentResolver;

    .line 148
    new-instance v2, Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;

    iget-object v3, p0, Lcom/android/mms/ui/ConversationBase;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;-><init>(Lcom/android/mms/ui/ConversationBase;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/android/mms/ui/ConversationBase;->mBackgroundQueryHandler:Lcom/android/mms/ui/ConversationBase$BackgroundQueryHandler;

    .line 149
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "thread_id"

    const-wide/16 v4, -0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 150
    .local v0, threadId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->finish()V

    .line 156
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ConversationBase;->initialize(J)V

    goto :goto_0
.end method

.method public onMessageSent()V
    .locals 1

    .prologue
    .line 1337
    invoke-super {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->onMessageSent()V

    .line 1340
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1341
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->startMsgListQuery()V

    .line 1343
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 192
    invoke-super {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->onNewIntent(Landroid/content/Intent;)V

    .line 194
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 196
    const/high16 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 197
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/ConversationBase;->startActivity(Landroid/content/Intent;)V

    .line 198
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->finish()V

    .line 199
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 1379
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    .line 1380
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->switchEditMode()V

    .line 1381
    const/4 v0, 0x1

    .line 1383
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter

    .prologue
    const v1, 0x7f020069

    const/4 v2, 0x0

    .line 1347
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 1349
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1350
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->isSubjectEditorVisible()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1351
    const v0, 0x7f090032

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1359
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1361
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1362
    const v0, 0x7f09015f

    .line 1366
    :goto_1
    const/16 v1, 0x16

    invoke-interface {p1, v2, v1, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1370
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSignature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->isWorthSaving(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1371
    const/4 v0, 0x2

    const v1, 0x7f090033

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080038

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1374
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 1354
    :cond_3
    const v0, 0x7f090167

    invoke-interface {p1, v2, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 1364
    :cond_4
    const v0, 0x7f09015e

    goto :goto_1
.end method

.method protected onResetMessageAnimationEnd()V
    .locals 1

    .prologue
    .line 1633
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationBase;->mInResetMessageAnimation:Z

    .line 1634
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mPendingChangeCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 1635
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mPendingChangeCursor:Landroid/database/Cursor;

    invoke-direct {p0, v0}, Lcom/android/mms/ui/ConversationBase;->changeCursor(Landroid/database/Cursor;)V

    .line 1636
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mPendingChangeCursor:Landroid/database/Cursor;

    .line 1638
    :cond_0
    return-void
.end method

.method protected onResetMessageAnimationStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1627
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setCorrectTooHighAndTooLow(Z)V

    .line 1628
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListView;->setAllowTranscriptOnResize(Z)V

    .line 1629
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationBase;->mInResetMessageAnimation:Z

    .line 1630
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 160
    invoke-super {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->onStart()V

    .line 161
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->loadMessageContent()V

    .line 162
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationBase;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationBase;->updateTitle(Lcom/android/mms/data/ContactList;)V

    .line 163
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 172
    invoke-super {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->onStop()V

    .line 173
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationBase;->mBackPressed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 175
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationBase;->mBackPressed:Z

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationBase;->mMsgListView:Lcom/android/mms/ui/MessageListView;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListView;->exitEditMode()V

    .line 178
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 1294
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationBase;->checkPendingNotification()V

    .line 1295
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 1299
    if-eqz p1, :cond_0

    .line 1300
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationBase;->checkPendingNotification()V

    .line 1302
    :cond_0
    invoke-super {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->onWindowFocusChanged(Z)V

    .line 1303
    return-void
.end method

.method public sendMessage()V
    .locals 1

    .prologue
    .line 1327
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationBase;->checkAndSendMessage(Z)V

    .line 1328
    return-void
.end method

.method protected setSendTimeForSpecifiedMessage(Lcom/android/mms/ui/MessageItem;)V
    .locals 4
    .parameter

    .prologue
    .line 1663
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->isTimed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1676
    :goto_0
    return-void

    .line 1667
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTimedMsgIndicator:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 1668
    invoke-virtual {p1}, Lcom/android/mms/ui/MessageItem;->getDate()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/ui/ConversationBase;->mOldTimeToSend:J

    .line 1670
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1671
    sget-object v1, Lcom/android/mms/ui/DateTimePickerActivity;->CONTENT_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1672
    sget-object v1, Lcom/android/mms/ui/DateTimePickerActivity;->FIELD_TIME:Ljava/lang/String;

    iget-wide v2, p0, Lcom/android/mms/ui/ConversationBase;->mOldTimeToSend:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1673
    sget-object v1, Lcom/android/mms/ui/DateTimePickerActivity;->FIELD_TITLE:Ljava/lang/String;

    const v2, 0x7f090180

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/ConversationBase;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1675
    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/ConversationBase;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method protected abstract startMsgListQuery()V
.end method

.method undeliveredMessageDialog(J)V
    .locals 8
    .parameter "date"

    .prologue
    const/4 v7, 0x1

    .line 239
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030049

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 242
    .local v1, dialog:Landroid/widget/LinearLayout;
    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-ltz v3, :cond_0

    .line 243
    const v3, 0x7f090016

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/MessageUtils;->getPreciseTimeStamp(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {p0, v3, v4}, Lcom/android/mms/ui/ConversationBase;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 250
    .local v0, body:Ljava/lang/String;
    :goto_0
    const v3, 0x7f0d00d3

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    new-instance v2, Landroid/widget/Toast;

    invoke-direct {v2, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 253
    .local v2, undeliveredDialog:Landroid/widget/Toast;
    invoke-virtual {v2, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 254
    invoke-virtual {v2, v7}, Landroid/widget/Toast;->setDuration(I)V

    .line 255
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 256
    return-void

    .line 247
    .end local v0           #body:Ljava/lang/String;
    .end local v2           #undeliveredDialog:Landroid/widget/Toast;
    :cond_0
    const v3, 0x7f090017

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/ConversationBase;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #body:Ljava/lang/String;
    goto :goto_0
.end method

.method protected abstract updateMessageCount(I)V
.end method

.method protected abstract updateTitle(Lcom/android/mms/data/ContactList;)V
.end method

.method protected willDiscardDraft()Z
    .locals 1

    .prologue
    .line 1332
    const/4 v0, 0x0

    return v0
.end method
