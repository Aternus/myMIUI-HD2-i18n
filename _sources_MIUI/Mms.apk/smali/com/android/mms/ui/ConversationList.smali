.class public Lcom/android/mms/ui/ConversationList;
.super Landroid/app/Activity;
.source "ConversationList.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/mms/util/DraftCache$OnDraftChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;,
        Lcom/android/mms/ui/ConversationList$BatchDeleteThreadListener;,
        Lcom/android/mms/ui/ConversationList$DeleteThreadListener;,
        Lcom/android/mms/ui/ConversationList$BaseDeleteThreadListener;
    }
.end annotation


# static fields
.field private static final MMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

.field private static final SMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

.field private static mBatchDeleteProgressDialog:Landroid/app/ProgressDialog;


# instance fields
.field private final mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

.field private final mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mEmptyView:Landroid/view/View;

.field private mFinishedTimedQuery:I

.field private mHandler:Landroid/os/Handler;

.field private mList:Landroid/widget/EditableListView;

.field private mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

.field private mListViewButtonBar:Lcom/android/mms/ui/ConversationListViewButtonBar;

.field private mNeedToMarkAsSeen:Z

.field private mOnButtonBarClickListener:Landroid/widget/EditableListActionBar$OnButtonBarClickListener;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

.field private final mThreadListKeyListener:Landroid/view/View$OnKeyListener;

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "thread_id"

    .line 350
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v4, v0, v2

    sput-object v0, Lcom/android/mms/ui/ConversationList;->SMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

    .line 353
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v4, v0, v2

    sput-object v0, Lcom/android/mms/ui/ConversationList;->MMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/ConversationList;->mFinishedTimedQuery:I

    .line 167
    new-instance v0, Lcom/android/mms/ui/ConversationList$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$1;-><init>(Lcom/android/mms/ui/ConversationList;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    .line 488
    new-instance v0, Lcom/android/mms/ui/ConversationList$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$4;-><init>(Lcom/android/mms/ui/ConversationList;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 635
    new-instance v0, Lcom/android/mms/ui/ConversationList$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$7;-><init>(Lcom/android/mms/ui/ConversationList;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mThreadListKeyListener:Landroid/view/View$OnKeyListener;

    .line 815
    new-instance v0, Lcom/android/mms/ui/ConversationList$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$8;-><init>(Lcom/android/mms/ui/ConversationList;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mOnButtonBarClickListener:Landroid/widget/EditableListActionBar$OnButtonBarClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/ConversationList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->startAsyncQuery()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ConversationList;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/ConversationList;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mEmptyView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/ConversationList;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/ConversationList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mNeedToMarkAsSeen:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/android/mms/ui/ConversationList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 77
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationList;->mNeedToMarkAsSeen:Z

    return p1
.end method

.method static synthetic access$1404(Lcom/android/mms/ui/ConversationList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget v0, p0, Lcom/android/mms/ui/ConversationList;->mFinishedTimedQuery:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/mms/ui/ConversationList;->mFinishedTimedQuery:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ConversationList;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ConversationList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->markCheckedMessageLimit()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ConversationList;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationList;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/ConversationList;)Landroid/widget/EditableListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mList:Landroid/widget/EditableListView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    return-object v0
.end method

.method static synthetic access$900()Landroid/app/ProgressDialog;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/android/mms/ui/ConversationList;->mBatchDeleteProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$902(Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 77
    sput-object p0, Lcom/android/mms/ui/ConversationList;->mBatchDeleteProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method public static confirmBatchDeleteThreadDialog(Lcom/android/mms/ui/ConversationList$BaseDeleteThreadListener;IZLandroid/content/Context;)V
    .locals 10
    .parameter "listener"
    .parameter "affacted"
    .parameter "hasLockedMessages"
    .parameter "context"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 612
    const v4, 0x7f03000c

    invoke-static {p3, v4, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 613
    .local v2, contents:Landroid/view/View;
    const v4, 0x7f0d0039

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 614
    .local v3, msg:Landroid/widget/TextView;
    const v4, 0x7f090163

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {p3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    const v4, 0x7f0d003a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 618
    .local v1, checkbox:Landroid/widget/CheckBox;
    if-nez p2, :cond_0

    .line 619
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 629
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 630
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

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090069

    invoke-virtual {v4, v5, v9}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 633
    return-void

    .line 621
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_0
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ConversationList$BaseDeleteThreadListener;->setDeleteLockedMessage(Z)V

    .line 622
    new-instance v4, Lcom/android/mms/ui/ConversationList$6;

    invoke-direct {v4, p0, v1}, Lcom/android/mms/ui/ConversationList$6;-><init>(Lcom/android/mms/ui/ConversationList$BaseDeleteThreadListener;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public static confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V
    .locals 1
    .parameter "threadId"
    .parameter "handler"

    .prologue
    .line 570
    const/16 v0, 0x70a

    invoke-static {p2, p0, p1, v0}, Lcom/android/mms/data/Conversation;->startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;JI)V

    .line 571
    return-void
.end method

.method public static confirmDeleteThread(Ljava/util/HashSet;Landroid/content/AsyncQueryHandler;)V
    .locals 1
    .parameter
    .parameter "handler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/content/AsyncQueryHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 574
    .local p0, threadIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    const/16 v0, 0x70b

    invoke-static {p1, p0, v0}, Lcom/android/mms/data/Conversation;->startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;Ljava/util/HashSet;I)V

    .line 575
    return-void
.end method

.method public static confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationList$BaseDeleteThreadListener;ZZLandroid/content/Context;)V
    .locals 7
    .parameter "listener"
    .parameter "deleteAll"
    .parameter "hasLockedMessages"
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 588
    const v4, 0x7f03000c

    invoke-static {p3, v4, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 589
    .local v2, contents:Landroid/view/View;
    const v4, 0x7f0d0039

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 590
    .local v3, msg:Landroid/widget/TextView;
    if-eqz p1, :cond_0

    const v4, 0x7f090087

    :goto_0
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 592
    const v4, 0x7f0d003a

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 593
    .local v1, checkbox:Landroid/widget/CheckBox;
    if-nez p2, :cond_1

    .line 594
    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 604
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 605
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v4, 0x7f090084

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x1080027

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f09008e

    invoke-virtual {v4, v5, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f090069

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 608
    return-void

    .line 590
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #checkbox:Landroid/widget/CheckBox;
    :cond_0
    const v4, 0x7f090086

    goto :goto_0

    .line 596
    .restart local v1       #checkbox:Landroid/widget/CheckBox;
    :cond_1
    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ConversationList$BaseDeleteThreadListener;->setDeleteLockedMessage(Z)V

    .line 597
    new-instance v4, Lcom/android/mms/ui/ConversationList$5;

    invoke-direct {v4, p0, v1}, Lcom/android/mms/ui/ConversationList$5;-><init>(Lcom/android/mms/ui/ConversationList$BaseDeleteThreadListener;Landroid/widget/CheckBox;)V

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method public static createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "address"

    .prologue
    .line 474
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 475
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 476
    invoke-static {p0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 477
    const-string v1, "email"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    :goto_0
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 485
    return-object v0

    .line 479
    :cond_0
    const-string v1, "phone"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 480
    const-string v1, "phone_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private initListAdapter()V
    .locals 2

    .prologue
    .line 174
    new-instance v0, Lcom/android/mms/ui/ConversationListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ConversationListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    .line 175
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;)V

    .line 176
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mList:Landroid/widget/EditableListView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 177
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mList:Landroid/widget/EditableListView;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/EditableListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 178
    return-void
.end method

.method private varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .parameter "format"
    .parameter "args"

    .prologue
    .line 840
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 841
    .local v0, s:Ljava/lang/String;
    const-string v1, "ConversationList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    return-void
.end method

.method private markCheckedMessageLimit()V
    .locals 3

    .prologue
    .line 248
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 249
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "checked_message_limits"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 250
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 251
    return-void
.end method

.method private openThread(J)V
    .locals 1
    .parameter "threadId"

    .prologue
    .line 468
    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageRouterActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/mms/ui/ComposeMessageRouterActivity;->route(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 470
    return-void
.end method

.method private startAsyncQuery()V
    .locals 3

    .prologue
    .line 340
    const v1, 0x7f09000b

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationList;->setTitle(Ljava/lang/CharSequence;)V

    .line 341
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationList;->setProgressBarIndeterminateVisibility(Z)V

    .line 343
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    const/16 v2, 0x6a5

    invoke-static {v1, v2}, Lcom/android/mms/data/Conversation;->startQueryForAll(Landroid/content/AsyncQueryHandler;I)V

    .line 344
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->startQueryTimedThreads()V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    :goto_0
    return-void

    .line 345
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 346
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private startQueryTimedThreads()V
    .locals 9

    .prologue
    const/16 v8, 0x6a7

    const/16 v1, 0x6a6

    const/4 v2, 0x0

    const-string v5, "timed>0"

    .line 358
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->cancelOperation(I)V

    .line 359
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    invoke-virtual {v0, v8}, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->cancelOperation(I)V

    .line 360
    invoke-static {}, Lcom/android/mms/data/Conversation$TimedThreads;->clear()V

    .line 361
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/mms/ui/ConversationList;->mFinishedTimedQuery:I

    .line 368
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/ui/ConversationList;->SMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

    const-string v6, "timed>0"

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    sget-object v3, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/android/mms/ui/ConversationList;->MMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

    const-string v1, "timed>0"

    move v1, v8

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    return-void
.end method


# virtual methods
.method public addEditModeListener(Landroid/widget/EditableListView$EditModeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0, p1}, Landroid/widget/EditableListView;->addEditModeListener(Landroid/widget/EditableListView$EditModeListener;)V

    .line 165
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 324
    :goto_0
    return-void

    .line 322
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 557
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 559
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v8, 0x0

    .line 515
    iget-object v7, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v7}, Lcom/android/mms/ui/ConversationListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    .line 516
    .local v3, cursor:Landroid/database/Cursor;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    if-ltz v7, :cond_0

    .line 517
    invoke-static {p0, v3}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v2

    .line 518
    .local v2, conv:Lcom/android/mms/data/Conversation;
    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v5

    .line 519
    .local v5, threadId:J
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 544
    .end local v2           #conv:Lcom/android/mms/data/Conversation;
    .end local v5           #threadId:J
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v7

    return v7

    .line 521
    .restart local v2       #conv:Lcom/android/mms/data/Conversation;
    .restart local v5       #threadId:J
    :pswitch_0
    iget-object v7, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/ConversationList;->confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V

    goto :goto_0

    .line 525
    :pswitch_1
    invoke-direct {p0, v5, v6}, Lcom/android/mms/ui/ConversationList;->openThread(J)V

    goto :goto_0

    .line 529
    :pswitch_2
    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 530
    .local v1, contact:Lcom/android/mms/data/Contact;
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 531
    .local v4, intent:Landroid/content/Intent;
    const/high16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 532
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 536
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    .end local v4           #intent:Landroid/content/Intent;
    :pswitch_3
    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/data/Contact;

    invoke-virtual {v7}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 537
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 519
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 128
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    const/4 v1, 0x5

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationList;->requestWindowFeature(I)Z

    .line 131
    const v1, 0x7f03000a

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationList;->setContentView(I)V

    .line 133
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationList;->mEmptyView:Landroid/view/View;

    .line 134
    const v1, 0x7f0d002f

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditableListView;

    iput-object v1, p0, Lcom/android/mms/ui/ConversationList;->mList:Landroid/widget/EditableListView;

    .line 135
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mList:Landroid/widget/EditableListView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditableListView;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 136
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mList:Landroid/widget/EditableListView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mThreadListKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/widget/EditableListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 137
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v1, p0}, Landroid/widget/EditableListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 138
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v1, p0}, Landroid/widget/EditableListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 139
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mList:Landroid/widget/EditableListView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/EditableListView;->setEditable(Z)V

    .line 141
    const v1, 0x7f0d0030

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/mms/ui/ConversationListViewButtonBar;

    iput-object v1, p0, Lcom/android/mms/ui/ConversationList;->mListViewButtonBar:Lcom/android/mms/ui/ConversationListViewButtonBar;

    .line 142
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mList:Landroid/widget/EditableListView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mListViewButtonBar:Lcom/android/mms/ui/ConversationListViewButtonBar;

    invoke-virtual {v1, v2}, Landroid/widget/EditableListView;->addEditModeListener(Landroid/widget/EditableListView$EditModeListener;)V

    .line 144
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mListViewButtonBar:Lcom/android/mms/ui/ConversationListViewButtonBar;

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mListViewButtonBar:Lcom/android/mms/ui/ConversationListViewButtonBar;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mOnButtonBarClickListener:Landroid/widget/EditableListActionBar$OnButtonBarClickListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListViewButtonBar;->setOnButtonBarClickListener(Landroid/widget/EditableListActionBar$OnButtonBarClickListener;)V

    .line 148
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->initListAdapter()V

    .line 150
    const v1, 0x7f090002

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationList;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationList;->mTitle:Ljava/lang/CharSequence;

    .line 152
    new-instance v1, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;-><init>(Lcom/android/mms/ui/ConversationList;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    .line 154
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/mms/ui/ConversationList;->mHandler:Landroid/os/Handler;

    .line 155
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/ConversationList;->mPrefs:Landroid/content/SharedPreferences;

    .line 156
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mPrefs:Landroid/content/SharedPreferences;

    const-string v2, "checked_message_limits"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 158
    .local v0, checkedMessageLimits:Z
    if-eqz v0, :cond_1

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->runOneTimeStorageLimitCheckForLegacyMessages()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 307
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 308
    invoke-static {}, Lcom/android/mms/data/Contact;->stopCaching()V

    .line 309
    return-void
.end method

.method public onDraftChanged(JZ)V
    .locals 2
    .parameter "threadId"
    .parameter "hasDraft"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    new-instance v1, Lcom/android/mms/ui/ConversationList$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/mms/ui/ConversationList$3;-><init>(Lcom/android/mms/ui/ConversationList;JZ)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;->post(Ljava/lang/Runnable;)Z

    .line 336
    return-void
.end method

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
    .line 442
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v4, p3}, Landroid/widget/EditableListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/Cursor;

    .line 443
    .local v1, cursor:Landroid/database/Cursor;
    invoke-static {p0, v1}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v0

    .line 444
    .local v0, conv:Lcom/android/mms/data/Conversation;
    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    .line 447
    .local v2, tid:J
    const-string v4, "ConversationList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onListItemClick: pos="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", view="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", tid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/ConversationList;->openThread(J)V

    .line 451
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .parameter "intent"

    .prologue
    .line 256
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->startAsyncQuery()V

    .line 257
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    .line 409
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 428
    :pswitch_0
    const/4 v0, 0x1

    .line 430
    :goto_0
    return v0

    .line 411
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->onSearchRequested()Z

    .line 430
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 414
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->switchEditMode()V

    goto :goto_1

    .line 417
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_FIREWALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/ConversationList;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 422
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getParent()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getParent()Landroid/app/Activity;

    move-result-object v0

    .line 423
    :goto_2
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/mms/ui/MessagingPreferenceActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 424
    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    goto :goto_1

    :cond_0
    move-object v0, p0

    .line 422
    goto :goto_2

    .line 409
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 301
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 302
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v0}, Landroid/widget/EditableListView;->exitEditMode()V

    .line 303
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 376
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 378
    const v1, 0x104000c

    invoke-interface {p1, v3, v4, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108004f

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x73

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 382
    const/4 v1, 0x5

    const v2, 0x10403dd

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108040a

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 385
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 387
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mList:Landroid/widget/EditableListView;

    invoke-virtual {v1}, Landroid/widget/EditableListView;->isEditMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 388
    const v0, 0x7f09015f

    .line 392
    .local v0, messageId:I
    :goto_0
    const/4 v1, 0x3

    invoke-interface {p1, v3, v1, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x108003c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 395
    .end local v0           #messageId:I
    :cond_0
    const/4 v1, 0x4

    const v2, 0x7f090006

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x1080049

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 398
    return v4

    .line 390
    :cond_1
    const v0, 0x7f09015e

    .restart local v0       #messageId:I
    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 313
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 314
    invoke-static {}, Lcom/android/mms/data/Contact;->resumeCaching()V

    .line 315
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 465
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 455
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 456
    invoke-static {}, Lcom/android/mms/data/Contact;->pauseCaching()V

    .line 460
    :goto_0
    return-void

    .line 458
    :cond_0
    invoke-static {}, Lcom/android/mms/data/Contact;->resumeCaching()V

    goto :goto_0
.end method

.method public onSearchRequested()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 403
    invoke-virtual {p0, v1, v0, v1, v0}, Lcom/android/mms/ui/ConversationList;->startSearch(Ljava/lang/String;ZLandroid/os/Bundle;Z)V

    .line 404
    const/4 v0, 0x1

    return v0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 261
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 263
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xef

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 266
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/mms/util/DraftCache;->addOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V

    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mNeedToMarkAsSeen:Z

    .line 270
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->startAsyncQuery()V

    .line 285
    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v0

    if-nez v0, :cond_0

    .line 286
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 288
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 292
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 294
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/mms/util/DraftCache;->removeOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V

    .line 295
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 296
    invoke-static {}, Lcom/android/mms/data/Contact;->removeAllListener()V

    .line 297
    return-void
.end method

.method public declared-synchronized runOneTimeStorageLimitCheckForLegacyMessages()V
    .locals 2

    .prologue
    .line 187
    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/android/mms/util/Recycler;->isAutoDeleteEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->markCheckedMessageLimit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    :goto_0
    monitor-exit p0

    return-void

    .line 194
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/ConversationList$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationList$2;-><init>(Lcom/android/mms/ui/ConversationList;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
