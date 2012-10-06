.class public Lcom/android/mms/ui/NewMessageActivity;
.super Lcom/android/mms/ui/MessageEditableActivityBase;
.source "NewMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/NewMessageActivity$QueryContactsTask;,
        Lcom/android/mms/ui/NewMessageActivity$SendIgnoreInvalidRecipientListener;,
        Lcom/android/mms/ui/NewMessageActivity$CancelSendingListener;
    }
.end annotation


# static fields
.field private static ADJUST_SPEED:F


# instance fields
.field private mAddRecipientButton:Landroid/view/View;

.field private mAddRecipientPanel:Landroid/view/View;

.field private mCommitedRecipients:Lcom/android/mms/data/ContactList;

.field private mDismissSuggestionList:Ljava/lang/Runnable;

.field private mDismissSuggestionListTimerStarted:Z

.field private mOriginalCommitedNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviousAdjustTime:J

.field private mRecentContactGrid:Lcom/android/mms/ui/StaticGridView;

.field private mRecentContactList:Landroid/view/View;

.field private mRecentContacts:Lcom/android/mms/data/ContactList;

.field private mRecipientAdapter:Lcom/android/mms/ui/RecipientsAdapter;

.field private mRecipientEditorCount:Landroid/widget/TextView;

.field private mRecipientRowHeight:I

.field private mRecipientRows:Lcom/android/mms/ui/RowLayout;

.field private mRecipientRowsScroller:Landroid/widget/ScrollView;

.field private mRecipientsEditor:Landroid/widget/EditText;

.field private mRecipientsEditorLinearLayout:Landroid/widget/LinearLayout;

.field private final mRecipientsKeyListener:Landroid/view/View$OnKeyListener;

.field private mRecipientsMaxHeight:F

.field private mRecipientsMaxHeightFinal:F

.field private mRecipientsViewer:Landroid/widget/TextView;

.field private mRecipientsViewerCount:Landroid/widget/TextView;

.field private mRecipientsViewerHead:Landroid/widget/TextView;

.field private mRecipientsViewerLinearLayout:Landroid/widget/LinearLayout;

.field private final mRecipientsWatcher:Landroid/text/TextWatcher;

.field private mSuggestionList:Landroid/widget/ListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    const/high16 v0, 0x3f00

    sput v0, Lcom/android/mms/ui/NewMessageActivity;->ADJUST_SPEED:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;-><init>()V

    .line 95
    new-instance v0, Lcom/android/mms/data/ContactList;

    invoke-direct {v0}, Lcom/android/mms/data/ContactList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;

    .line 96
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mOriginalCommitedNumbers:Ljava/util/ArrayList;

    .line 215
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mDismissSuggestionListTimerStarted:Z

    .line 216
    new-instance v0, Lcom/android/mms/ui/NewMessageActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/NewMessageActivity$3;-><init>(Lcom/android/mms/ui/NewMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mDismissSuggestionList:Ljava/lang/Runnable;

    .line 584
    new-instance v0, Lcom/android/mms/ui/NewMessageActivity$13;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/NewMessageActivity$13;-><init>(Lcom/android/mms/ui/NewMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsKeyListener:Landroid/view/View$OnKeyListener;

    .line 812
    new-instance v0, Lcom/android/mms/ui/NewMessageActivity$16;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/NewMessageActivity$16;-><init>(Lcom/android/mms/ui/NewMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsWatcher:Landroid/text/TextWatcher;

    .line 924
    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/NewMessageActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mAddRecipientButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/mms/ui/NewMessageActivity;)Lcom/android/mms/ui/RecipientsAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientAdapter:Lcom/android/mms/ui/RecipientsAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/NewMessageActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/mms/ui/NewMessageActivity;->commitRecipient(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/NewMessageActivity;)Lcom/android/mms/data/ContactList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecentContacts:Lcom/android/mms/data/ContactList;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/NewMessageActivity;)Lcom/android/mms/ui/StaticGridView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecentContactGrid:Lcom/android/mms/ui/StaticGridView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/NewMessageActivity;Lcom/android/mms/data/Contact;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/mms/ui/NewMessageActivity;->commitRecipient(Lcom/android/mms/data/Contact;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/NewMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->updateRecipientsViewerText()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/NewMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->updateRecentContactListVisibility()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/NewMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->commitEditingRecipient()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/NewMessageActivity;)Lcom/android/mms/data/ContactList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/NewMessageActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    invoke-direct {p0, p1}, Lcom/android/mms/ui/NewMessageActivity;->removeRecipient(I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/NewMessageActivity;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mOriginalCommitedNumbers:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/NewMessageActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mDismissSuggestionListTimerStarted:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/NewMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->syncNumbersToWorkingMessage()V

    return-void
.end method

.method static synthetic access$202(Lcom/android/mms/ui/NewMessageActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 61
    iput-boolean p1, p0, Lcom/android/mms/ui/NewMessageActivity;->mDismissSuggestionListTimerStarted:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/NewMessageActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mSuggestionList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/mms/ui/NewMessageActivity;Lcom/android/mms/data/Contact;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/NewMessageActivity;->commitRecipient(Lcom/android/mms/data/Contact;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/NewMessageActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsViewerLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/NewMessageActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsEditorLinearLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/NewMessageActivity;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsEditor:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/NewMessageActivity;)Lcom/android/mms/ui/RowLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRows:Lcom/android/mms/ui/RowLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/NewMessageActivity;)Landroid/widget/ScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRowsScroller:Landroid/widget/ScrollView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/NewMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->resetDismissSuggestionListTimer()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/ui/NewMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->cancelDismissSuggestionListTimer()V

    return-void
.end method

.method private cancelDismissSuggestionListTimer()V
    .locals 2

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mDismissSuggestionListTimerStarted:Z

    if-eqz v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mDismissSuggestionList:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 235
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mDismissSuggestionListTimerStarted:Z

    .line 237
    :cond_0
    return-void
.end method

.method private commitEditingRecipient()V
    .locals 3

    .prologue
    .line 733
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 734
    .local v0, text:Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 735
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsEditor:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 736
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/mms/ui/NewMessageActivity;->commitRecipient(Ljava/lang/String;)V

    .line 738
    :cond_0
    return-void
.end method

.method private commitRecipient(Lcom/android/mms/data/Contact;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 700
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/mms/ui/NewMessageActivity;->commitRecipient(Lcom/android/mms/data/Contact;Ljava/lang/String;)V

    .line 701
    return-void
.end method

.method private commitRecipient(Lcom/android/mms/data/Contact;Ljava/lang/String;)V
    .locals 7
    .parameter "c"
    .parameter "origNumber"

    .prologue
    const/4 v6, -0x2

    .line 604
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v2, p1}, Lcom/android/mms/data/ContactList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 692
    :cond_0
    :goto_0
    return-void

    .line 608
    :cond_1
    const/4 v0, 0x0

    .line 609
    .local v0, needUpdateSendButton:Z
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 610
    const/4 v0, 0x1

    .line 613
    :cond_2
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity;->mOriginalCommitedNumbers:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 614
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v2, p1}, Lcom/android/mms/data/ContactList;->add(Ljava/lang/Object;)Z

    .line 615
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->syncNumbersToWorkingMessage()V

    .line 617
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030047

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 618
    .local v1, tv:Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 619
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 623
    :goto_1
    new-instance v2, Lcom/android/mms/ui/NewMessageActivity$14;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/mms/ui/NewMessageActivity$14;-><init>(Lcom/android/mms/ui/NewMessageActivity;Lcom/android/mms/data/Contact;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 636
    new-instance v2, Lcom/android/mms/ui/NewMessageActivity$15;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/mms/ui/NewMessageActivity$15;-><init>(Lcom/android/mms/ui/NewMessageActivity;Ljava/lang/String;Lcom/android/mms/data/Contact;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 682
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRows:Lcom/android/mms/ui/RowLayout;

    iget-object v3, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRows:Lcom/android/mms/ui/RowLayout;

    invoke-virtual {v3}, Lcom/android/mms/ui/RowLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    new-instance v4, Lcom/android/mms/ui/RowLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Lcom/android/mms/ui/RowLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/mms/ui/RowLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 687
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsEditor:Landroid/widget/EditText;

    const-string v3, " "

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 689
    if-eqz v0, :cond_0

    .line 690
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageActivity;->updateSendButtonState()V

    goto :goto_0

    .line 621
    :cond_3
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private commitRecipient(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 704
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/mms/ui/NewMessageActivity;->commitRecipient(Lcom/android/mms/data/Contact;Ljava/lang/String;)V

    .line 705
    return-void
.end method

.method private getCommitedRecipientName(I)Ljava/lang/String;
    .locals 2
    .parameter "i"

    .prologue
    .line 439
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v1, p1}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 440
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 441
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    .line 443
    .end local p0
    :goto_0
    return-object v1

    .restart local p0
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mOriginalCommitedNumbers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v1, p0

    goto :goto_0
.end method

.method private getRecipientNumbers()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 741
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mOriginalCommitedNumbers:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 742
    .local v0, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->hasUncommitedRecipient()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 743
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsEditor:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 745
    :cond_0
    return-object v0
.end method

.method private hasUncommitedRecipient()Z
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsEditor:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initRecipientsEditor()V
    .locals 2

    .prologue
    .line 414
    const v0, 0x7f0d00b1

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsEditor:Landroid/widget/EditText;

    .line 415
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 416
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsEditor:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 417
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsEditor:Landroid/widget/EditText;

    new-instance v1, Lcom/android/mms/ui/NewMessageActivity$11;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/NewMessageActivity$11;-><init>(Lcom/android/mms/ui/NewMessageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 436
    return-void
.end method

.method private initUserGuild()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 154
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 156
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "guide_add_recipients"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mAddRecipientButton:Landroid/view/View;

    new-instance v2, Lcom/android/mms/ui/NewMessageActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/NewMessageActivity$1;-><init>(Lcom/android/mms/ui/NewMessageActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 173
    :cond_0
    const-string v1, "guide_add_attachments"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 174
    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    new-instance v2, Lcom/android/mms/ui/NewMessageActivity$2;

    invoke-direct {v2, p0, v0}, Lcom/android/mms/ui/NewMessageActivity$2;-><init>(Lcom/android/mms/ui/NewMessageActivity;Landroid/content/SharedPreferences;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnSoftInputStateChangeListener(Landroid/widget/TextView$OnSoftInputStateChangeListener;)V

    .line 199
    :cond_1
    return-void
.end method

.method private isValidAddress(Ljava/lang/String;)Z
    .locals 1
    .parameter "number"

    .prologue
    .line 749
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    invoke-static {p1}, Lcom/android/mms/ui/MessageUtils;->isValidMmsAddress(Ljava/lang/String;)Z

    move-result v0

    .line 760
    :goto_0
    return v0

    :cond_0
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isWellFormedSmsAddress(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeAllRecipients()V
    .locals 3

    .prologue
    .line 719
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRows:Lcom/android/mms/ui/RowLayout;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v2}, Lcom/android/mms/data/ContactList;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/RowLayout;->removeViews(II)V

    .line 720
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->clear()V

    .line 721
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mOriginalCommitedNumbers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 722
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsEditor:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 723
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsEditor:Landroid/widget/EditText;

    const v1, 0x7f09002f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 724
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->syncNumbersToWorkingMessage()V

    .line 725
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageActivity;->updateSendButtonState()V

    .line 726
    return-void
.end method

.method private removeRecipient(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 708
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0, p1}, Lcom/android/mms/data/ContactList;->remove(I)Ljava/lang/Object;

    .line 709
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mOriginalCommitedNumbers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 710
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->syncNumbersToWorkingMessage()V

    .line 711
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRows:Lcom/android/mms/ui/RowLayout;

    invoke-virtual {v0, p1}, Lcom/android/mms/ui/RowLayout;->removeViewAt(I)V

    .line 712
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsEditor:Landroid/widget/EditText;

    const v1, 0x7f09002f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(I)V

    .line 714
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageActivity;->updateSendButtonState()V

    .line 716
    :cond_0
    return-void
.end method

.method private resetDismissSuggestionListTimer()V
    .locals 4

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mDismissSuggestionListTimerStarted:Z

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mDismissSuggestionList:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mDismissSuggestionList:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mDismissSuggestionListTimerStarted:Z

    .line 230
    return-void
.end method

.method private syncNumbersToWorkingMessage()V
    .locals 3

    .prologue
    .line 695
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->getRecipientNumbers()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->setWorkingRecipients(Ljava/util/List;)V

    .line 696
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageActivity;->containsEmail()Z

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->setHasEmail(ZZ)V

    .line 697
    return-void
.end method

.method private updateRecentContactListVisibility()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 481
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageActivity;->recipientCount()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecentContacts:Lcom/android/mms/data/ContactList;

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 482
    :cond_0
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecentContactList:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 483
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAllowAnimation:Z

    if-eqz v1, :cond_1

    .line 484
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 485
    .local v0, a:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecentContactList:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 487
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecentContactList:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 498
    :cond_2
    :goto_0
    return-void

    .line 490
    :cond_3
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecentContactList:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 491
    iget-boolean v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mAllowAnimation:Z

    if-eqz v1, :cond_4

    .line 492
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x7f04

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 493
    .restart local v0       #a:Landroid/view/animation/Animation;
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecentContactList:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 495
    .end local v0           #a:Landroid/view/animation/Animation;
    :cond_4
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecentContactList:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateRecipientRows()V
    .locals 4

    .prologue
    .line 474
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRows:Lcom/android/mms/ui/RowLayout;

    invoke-virtual {v2}, Lcom/android/mms/ui/RowLayout;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_0

    .line 475
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRows:Lcom/android/mms/ui/RowLayout;

    invoke-virtual {v2, v0}, Lcom/android/mms/ui/RowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 476
    .local v1, tv:Landroid/widget/TextView;
    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v2, v0}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 478
    .end local v1           #tv:Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private updateRecipientsViewerText()V
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v8, 0x0

    const-string v7, ""

    .line 448
    iget-object v3, p0, Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    .line 449
    .local v0, count:I
    if-nez v0, :cond_0

    .line 450
    iget-object v3, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsViewerHead:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090083

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 451
    iget-object v3, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsViewer:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v3, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsViewerCount:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    :goto_0
    return-void

    .line 454
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {p0, v8}, Lcom/android/mms/ui/NewMessageActivity;->getCommitedRecipientName(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 455
    .local v2, s:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 456
    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    invoke-direct {p0, v1}, Lcom/android/mms/ui/NewMessageActivity;->getCommitedRecipientName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 459
    :cond_1
    iget-object v3, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsViewerHead:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900b2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    iget-object v3, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsViewer:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 463
    if-le v0, v6, :cond_2

    .line 464
    iget-object v3, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsViewerCount:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 465
    iget-object v3, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsViewerCount:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090103

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 468
    :cond_2
    iget-object v3, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsViewerCount:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private writeContactNumbers()V
    .locals 3

    .prologue
    .line 379
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v1, v0}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    iget-object v2, p0, Lcom/android/mms/ui/NewMessageActivity;->mOriginalCommitedNumbers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/mms/data/Contact;->setNumber(Ljava/lang/String;)V

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    :cond_0
    return-void
.end method


# virtual methods
.method public containsEmail()Z
    .locals 4

    .prologue
    .line 803
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->getRecipientNumbers()Ljava/util/ArrayList;

    move-result-object v2

    .line 804
    .local v2, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 805
    .local v1, number:Ljava/lang/String;
    invoke-static {v1}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 806
    const/4 v3, 0x1

    .line 809
    .end local v1           #number:Ljava/lang/String;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public formatInvalidNumbers()Ljava/lang/String;
    .locals 5

    .prologue
    .line 789
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 790
    .local v3, sb:Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->getRecipientNumbers()Ljava/util/ArrayList;

    move-result-object v2

    .line 791
    .local v2, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 792
    .local v1, number:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/mms/ui/NewMessageActivity;->isValidAddress(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 793
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_1

    .line 794
    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 796
    :cond_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 799
    .end local v1           #number:Ljava/lang/String;
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method protected getContentViewResId()I
    .locals 1

    .prologue
    .line 409
    const v0, 0x7f03003b

    return v0
.end method

.method public hasInvalidRecipient()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 775
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->getRecipientNumbers()Ljava/util/ArrayList;

    move-result-object v2

    .line 776
    .local v2, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 777
    .local v1, number:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/mms/ui/NewMessageActivity;->isValidAddress(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 778
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    move v3, v4

    .line 785
    .end local v1           #number:Ljava/lang/String;
    :goto_0
    return v3

    .line 780
    .restart local v1       #number:Ljava/lang/String;
    :cond_1
    invoke-static {v1}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v4

    .line 781
    goto :goto_0

    .line 785
    .end local v1           #number:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public hasValidRecipient()Z
    .locals 4

    .prologue
    .line 765
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->getRecipientNumbers()Ljava/util/ArrayList;

    move-result-object v2

    .line 766
    .local v2, numbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 767
    .local v1, number:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/mms/ui/NewMessageActivity;->isValidAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 768
    const/4 v3, 0x1

    .line 771
    .end local v1           #number:Ljava/lang/String;
    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method initRecentList()V
    .locals 2

    .prologue
    .line 316
    new-instance v0, Lcom/android/mms/data/ContactList;

    invoke-direct {v0}, Lcom/android/mms/data/ContactList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecentContacts:Lcom/android/mms/data/ContactList;

    .line 317
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecentContactGrid:Lcom/android/mms/ui/StaticGridView;

    invoke-virtual {v0}, Lcom/android/mms/ui/StaticGridView;->removeAllViews()V

    .line 318
    new-instance v0, Lcom/android/mms/ui/NewMessageActivity$10;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/NewMessageActivity$10;-><init>(Lcom/android/mms/ui/NewMessageActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/NewMessageActivity$10;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 369
    return-void
.end method

.method protected initResourceRefs()V
    .locals 2

    .prologue
    .line 244
    invoke-super {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->initResourceRefs()V

    .line 246
    const v0, 0x7f0d00b3

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mAddRecipientButton:Landroid/view/View;

    .line 247
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mAddRecipientButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    const v0, 0x7f0d00ae

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsEditorLinearLayout:Landroid/widget/LinearLayout;

    .line 249
    const v0, 0x7f0d00af

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRowsScroller:Landroid/widget/ScrollView;

    .line 250
    const v0, 0x7f0d00b0

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/RowLayout;

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRows:Lcom/android/mms/ui/RowLayout;

    .line 251
    const v0, 0x7f0d00b5

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsViewerLinearLayout:Landroid/widget/LinearLayout;

    .line 252
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsViewerLinearLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/mms/ui/NewMessageActivity$4;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/NewMessageActivity$4;-><init>(Lcom/android/mms/ui/NewMessageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRows:Lcom/android/mms/ui/RowLayout;

    new-instance v1, Lcom/android/mms/ui/NewMessageActivity$5;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/NewMessageActivity$5;-><init>(Lcom/android/mms/ui/NewMessageActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RowLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRows:Lcom/android/mms/ui/RowLayout;

    new-instance v1, Lcom/android/mms/ui/NewMessageActivity$6;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/NewMessageActivity$6;-><init>(Lcom/android/mms/ui/NewMessageActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RowLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 277
    const v0, 0x7f0d00b4

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientEditorCount:Landroid/widget/TextView;

    .line 278
    const v0, 0x7f0d00b6

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsViewerHead:Landroid/widget/TextView;

    .line 279
    const v0, 0x7f0d00b7

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsViewer:Landroid/widget/TextView;

    .line 280
    const v0, 0x7f0d00b8

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsViewerCount:Landroid/widget/TextView;

    .line 281
    const v0, 0x7f0d00b9

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mSuggestionList:Landroid/widget/ListView;

    .line 282
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mSuggestionList:Landroid/widget/ListView;

    new-instance v1, Lcom/android/mms/ui/NewMessageActivity$7;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/NewMessageActivity$7;-><init>(Lcom/android/mms/ui/NewMessageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 291
    new-instance v0, Lcom/android/mms/ui/RecipientsAdapter;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/RecipientsAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientAdapter:Lcom/android/mms/ui/RecipientsAdapter;

    .line 292
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientAdapter:Lcom/android/mms/ui/RecipientsAdapter;

    new-instance v1, Lcom/android/mms/ui/NewMessageActivity$8;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/NewMessageActivity$8;-><init>(Lcom/android/mms/ui/NewMessageActivity;)V

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RecipientsAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 301
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mSuggestionList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientAdapter:Lcom/android/mms/ui/RecipientsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 302
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mSuggestionList:Landroid/widget/ListView;

    new-instance v1, Lcom/android/mms/ui/NewMessageActivity$9;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/NewMessageActivity$9;-><init>(Lcom/android/mms/ui/NewMessageActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 310
    const v0, 0x7f0d00b2

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mAddRecipientPanel:Landroid/view/View;

    .line 311
    const v0, 0x7f0d00ba

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecentContactList:Landroid/view/View;

    .line 312
    const v0, 0x7f0d00bb

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewMessageActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/mms/ui/StaticGridView;

    iput-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecentContactGrid:Lcom/android/mms/ui/StaticGridView;

    .line 313
    return-void
.end method

.method public isPreparedForSending()Z
    .locals 2

    .prologue
    .line 858
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageActivity;->recipientCount()I

    move-result v0

    .line 859
    .local v0, recipientCount:I
    if-lez v0, :cond_1

    invoke-static {}, Lcom/android/mms/MmsConfig;->getRecipientLimit()I

    move-result v1

    if-gt v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mWorkingMessage:Lcom/android/mms/data/WorkingMessage;

    invoke-virtual {v1}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 905
    invoke-super {p0, p1, p2, p3}, Lcom/android/mms/ui/MessageEditableActivityBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 906
    packed-switch p1, :pswitch_data_0

    .line 922
    :cond_0
    :goto_0
    return-void

    .line 908
    :pswitch_0
    if-eqz p3, :cond_0

    .line 910
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->removeAllRecipients()V

    .line 911
    const-string v0, "numbers"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 913
    if-eqz v0, :cond_0

    .line 914
    new-instance v1, Lcom/android/mms/ui/NewMessageActivity$QueryContactsTask;

    invoke-direct {v1, p0, p0}, Lcom/android/mms/ui/NewMessageActivity$QueryContactsTask;-><init>(Lcom/android/mms/ui/NewMessageActivity;Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Lcom/android/mms/ui/NewMessageActivity$QueryContactsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 906
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 970
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1003
    invoke-super {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->onClick(Landroid/view/View;)V

    .line 1006
    :goto_0
    return-void

    .line 972
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    const-string v0, "android.intent.action.PICK"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 973
    const-string v0, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 975
    iget-object v0, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mSharedPrefs:Landroid/content/SharedPreferences;

    const-string v2, "pref_key_filter_phone"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 977
    const-string v0, "data2"

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 980
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->commitEditingRecipient()V

    .line 981
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    new-array v2, v0, [Ljava/lang/String;

    .line 982
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    move v4, v5

    .line 984
    :goto_1
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 985
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mOriginalCommitedNumbers:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v4

    .line 986
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 987
    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 988
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0, v4}, Lcom/android/mms/data/ContactList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    .line 984
    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 990
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mOriginalCommitedNumbers:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v4

    goto :goto_2

    .line 994
    :cond_2
    if-eqz v2, :cond_3

    array-length v0, v2

    if-eqz v0, :cond_3

    .line 995
    const-string v0, "numbers"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 996
    const-string v0, "names"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 999
    :cond_3
    const-string v0, "android.intent.extra.PACKAGES"

    const-string v2, "com.android.mms"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1000
    invoke-virtual {p0, v1, v5}, Lcom/android/mms/ui/NewMessageActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 970
    :pswitch_data_0
    .packed-switch 0x7f0d00b3
        :pswitch_0
    .end packed-switch
.end method

.method protected onContactsUpdated()V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->updateRecipientsViewerText()V

    .line 204
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->updateRecipientRows()V

    .line 205
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v9, -0x1

    const/4 v8, 0x0

    .line 113
    invoke-super {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->onCreate(Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 116
    .local v2, intent:Landroid/content/Intent;
    const-string v7, "thread_id"

    invoke-virtual {v2, v7, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    .line 118
    .local v4, threadId:J
    cmp-long v7, v4, v9

    if-nez v7, :cond_1

    .line 119
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 120
    .local v6, uri:Landroid/net/Uri;
    if-nez v6, :cond_0

    .line 121
    invoke-static {p0}, Lcom/android/mms/data/Conversation;->createNew(Landroid/content/Context;)Lcom/android/mms/data/Conversation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    .line 129
    .end local v6           #uri:Landroid/net/Uri;
    :goto_0
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->initRecipientsEditor()V

    .line 130
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageActivity;->initialize()V

    .line 132
    iget-object v7, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v7}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    .line 133
    .local v3, recipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 134
    .local v0, c:Lcom/android/mms/data/Contact;
    invoke-direct {p0, v0}, Lcom/android/mms/ui/NewMessageActivity;->commitRecipient(Lcom/android/mms/data/Contact;)V

    goto :goto_1

    .line 123
    .end local v0           #c:Lcom/android/mms/data/Contact;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #recipients:Lcom/android/mms/data/ContactList;
    .restart local v6       #uri:Landroid/net/Uri;
    :cond_0
    invoke-static {p0, v6, v8}, Lcom/android/mms/data/Conversation;->createNew(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/mms/data/Conversation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    goto :goto_0

    .line 126
    .end local v6           #uri:Landroid/net/Uri;
    :cond_1
    invoke-static {p0, v4, v5, v8}, Lcom/android/mms/data/Conversation;->createNew(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v7

    iput-object v7, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mConversation:Lcom/android/mms/data/Conversation;

    goto :goto_0

    .line 137
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #recipients:Lcom/android/mms/data/ContactList;
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a001d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRowHeight:I

    .line 138
    iget v7, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRowHeight:I

    mul-int/lit8 v7, v7, 0x3

    int-to-float v7, v7

    iput v7, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsMaxHeightFinal:F

    iput v7, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsMaxHeight:F

    .line 139
    iget-object v7, p0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsEditor:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->requestFocus()Z

    .line 140
    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_3

    .line 141
    iget-object v7, p0, Lcom/android/mms/ui/MessageEditableActivityBase;->mTextEditor:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->requestFocus()Z

    .line 145
    :goto_2
    return-void

    .line 143
    :cond_3
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->initUserGuild()V

    goto :goto_2
.end method

.method public onMessageSent()V
    .locals 1

    .prologue
    .line 1010
    invoke-super {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->onMessageSent()V

    .line 1011
    new-instance v0, Lcom/android/mms/ui/NewMessageActivity$17;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/NewMessageActivity$17;-><init>(Lcom/android/mms/ui/NewMessageActivity;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/NewMessageActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1027
    return-void
.end method

.method public onPreMeasure(Lcom/android/mms/ui/SizeAwareLinearLayout;II)V
    .locals 24
    .parameter "view"
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 502
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/NewMessageActivity;->updateRecentContactListVisibility()V

    .line 503
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    .line 506
    .local v17, width:I
    const/16 v18, 0x320

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 507
    const/4 v5, 0x3

    .line 508
    .local v5, columnCount:I
    const/16 v6, 0x96

    .line 513
    .local v6, columnWidth:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecentContactGrid:Lcom/android/mms/ui/StaticGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecentContacts:Lcom/android/mms/data/ContactList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/ContactList;->size()I

    move-result v19

    add-int v19, v19, v5

    const/16 v20, 0x1

    sub-int v19, v19, v20

    div-int v19, v19, v5

    const/16 v20, 0x38

    move-object/from16 v0, v18

    move/from16 v1, v19

    move v2, v5

    move v3, v6

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/mms/ui/StaticGridView;->set(IIII)V

    .line 517
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecentContactGrid:Lcom/android/mms/ui/StaticGridView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/StaticGridView;->getChildCount()I

    move-result v18

    move v0, v10

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecentContactGrid:Lcom/android/mms/ui/StaticGridView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v10

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/StaticGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v18

    const v19, 0x7f0d00cf

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    .line 519
    .local v9, divider:Landroid/view/View;
    rem-int v18, v10, v5

    if-nez v18, :cond_1

    .line 520
    const/16 v18, 0x4

    move-object v0, v9

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 517
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 510
    .end local v5           #columnCount:I
    .end local v6           #columnWidth:I
    .end local v9           #divider:Landroid/view/View;
    .end local v10           #i:I
    :cond_0
    const/4 v5, 0x6

    .line 511
    .restart local v5       #columnCount:I
    const/16 v6, 0x78

    .restart local v6       #columnWidth:I
    goto :goto_0

    .line 522
    .restart local v9       #divider:Landroid/view/View;
    .restart local v10       #i:I
    :cond_1
    const/16 v18, 0x0

    move-object v0, v9

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 525
    .end local v9           #divider:Landroid/view/View;
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientAdapter:Lcom/android/mms/ui/RecipientsAdapter;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/RecipientsAdapter;->getCount()I

    move-result v18

    if-lez v18, :cond_5

    .line 526
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRowHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsMaxHeightFinal:F

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mSuggestionList:Landroid/widget/ListView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->setVisibility(I)V

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mBottomPanel:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    .line 535
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsEditorLinearLayout:Landroid/widget/LinearLayout;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/NewMessageActivity;->isVisible(Landroid/view/View;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientEditorCount:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientEditorCount:Landroid/widget/TextView;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/NewMessageActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v19

    const v20, 0x7f090104

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/NewMessageActivity;->recipientCount()I

    move-result v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    aput-object v23, v21, v22

    invoke-virtual/range {v19 .. v21}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mContactPanel:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, p2

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->measure(II)V

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRows:Lcom/android/mms/ui/RowLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/RowLayout;->getMeasuredHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsMaxHeight:F

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v12

    .line 543
    .local v12, recipientsHeightF:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRows:Lcom/android/mms/ui/RowLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/RowLayout;->getMeasuredHeight()I

    move-result v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsMaxHeightFinal:F

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v13

    .line 544
    .local v13, recipientsHeightFinalF:F
    sub-float v18, v12, v13

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    const v19, 0x3dcccccd

    cmpg-float v18, v18, v19

    if-gez v18, :cond_6

    .line 545
    const-wide/16 v18, 0x0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/NewMessageActivity;->mPreviousAdjustTime:J

    .line 546
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsMaxHeightFinal:F

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsMaxHeight:F

    .line 570
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRows:Lcom/android/mms/ui/RowLayout;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/mms/ui/RowLayout;->getMeasuredHeight()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsMaxHeight:F

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v11

    .line 571
    .local v11, recipientsHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRowsScroller:Landroid/widget/ScrollView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v18, v0

    move/from16 v0, v18

    move v1, v11

    if-eq v0, v1, :cond_3

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRowsScroller:Landroid/widget/ScrollView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move v0, v11

    move-object/from16 v1, v18

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRowsScroller:Landroid/widget/ScrollView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->scrollTo(II)V

    .line 576
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mAddRecipientPanel:Landroid/view/View;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    move v0, v11

    move/from16 v1, v18

    if-ge v0, v1, :cond_4

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientEditorCount:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    .line 581
    .end local v11           #recipientsHeight:I
    .end local v12           #recipientsHeightF:F
    .end local v13           #recipientsHeightFinalF:F
    :cond_4
    invoke-super/range {p0 .. p3}, Lcom/android/mms/ui/MessageEditableActivityBase;->onPreMeasure(Lcom/android/mms/ui/SizeAwareLinearLayout;II)V

    .line 582
    return-void

    .line 530
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientRowHeight:I

    move/from16 v18, v0

    mul-int/lit8 v18, v18, 0x3

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsMaxHeightFinal:F

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mSuggestionList:Landroid/widget/ListView;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ListView;->setVisibility(I)V

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mBottomPanel:Landroid/view/View;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 548
    .restart local v12       #recipientsHeightF:F
    .restart local v13       #recipientsHeightFinalF:F
    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mPreviousAdjustTime:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-nez v18, :cond_7

    .line 549
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/NewMessageActivity;->mPreviousAdjustTime:J

    .line 562
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MessageEditableActivityBase;->mHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/mms/ui/NewMessageActivity$12;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/NewMessageActivity$12;-><init>(Lcom/android/mms/ui/NewMessageActivity;)V

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_4

    .line 551
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 552
    .local v15, time:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mPreviousAdjustTime:J

    move-wide/from16 v18, v0

    sub-long v18, v15, v18

    move-wide/from16 v0, v18

    long-to-float v0, v0

    move/from16 v18, v0

    sget v19, Lcom/android/mms/ui/NewMessageActivity;->ADJUST_SPEED:F

    mul-float v14, v18, v19

    .line 553
    .local v14, step:F
    move-wide v0, v15

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/mms/ui/NewMessageActivity;->mPreviousAdjustTime:J

    .line 554
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsMaxHeightFinal:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsMaxHeight:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 555
    .local v8, dist:F
    invoke-static {v14, v8}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 556
    .local v7, delta:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsMaxHeight:F

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsMaxHeightFinal:F

    move/from16 v19, v0

    cmpg-float v18, v18, v19

    if-gez v18, :cond_8

    .line 557
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsMaxHeight:F

    move/from16 v18, v0

    add-float v18, v18, v7

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsMaxHeight:F

    goto :goto_5

    .line 559
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsMaxHeight:F

    move/from16 v18, v0

    sub-float v18, v18, v7

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/mms/ui/NewMessageActivity;->mRecipientsMaxHeight:F

    goto :goto_5
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 149
    invoke-super {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->onStart()V

    .line 150
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageActivity;->initRecentList()V

    .line 151
    return-void
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 209
    invoke-super {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->onUserInteraction()V

    .line 210
    iget-boolean v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mDismissSuggestionListTimerStarted:Z

    if-eqz v0, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->resetDismissSuggestionListTimer()V

    .line 213
    :cond_0
    return-void
.end method

.method protected postExit()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 386
    invoke-super {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->postExit()V

    .line 387
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "exit_animation_in"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 388
    .local v0, in:I
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "exit_animation_out"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 389
    .local v1, out:I
    if-eq v0, v4, :cond_0

    if-eq v1, v4, :cond_0

    .line 390
    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/NewMessageActivity;->overridePendingTransition(II)V

    .line 392
    :cond_0
    return-void
.end method

.method protected recipientCount()I
    .locals 1

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->hasUncommitedRecipient()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 403
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/NewMessageActivity;->mCommitedRecipients:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->size()I

    move-result v0

    goto :goto_0
.end method

.method protected saveDraft()V
    .locals 0

    .prologue
    .line 373
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->commitEditingRecipient()V

    .line 374
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->writeContactNumbers()V

    .line 375
    invoke-super {p0}, Lcom/android/mms/ui/MessageEditableActivityBase;->saveDraft()V

    .line 376
    return-void
.end method

.method public sendMessage()V
    .locals 6

    .prologue
    const v5, 0x1080027

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 865
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->commitEditingRecipient()V

    .line 866
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageActivity;->hasInvalidRecipient()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 867
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageActivity;->hasValidRecipient()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    const v0, 0x7f090048

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageActivity;->formatInvalidNumbers()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/ui/NewMessageActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 869
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09004a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09006e

    new-instance v2, Lcom/android/mms/ui/NewMessageActivity$SendIgnoreInvalidRecipientListener;

    invoke-direct {v2, p0, v4}, Lcom/android/mms/ui/NewMessageActivity$SendIgnoreInvalidRecipientListener;-><init>(Lcom/android/mms/ui/NewMessageActivity;Lcom/android/mms/ui/NewMessageActivity$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090069

    new-instance v2, Lcom/android/mms/ui/NewMessageActivity$CancelSendingListener;

    invoke-direct {v2, p0, v4}, Lcom/android/mms/ui/NewMessageActivity$CancelSendingListener;-><init>(Lcom/android/mms/ui/NewMessageActivity;Lcom/android/mms/ui/NewMessageActivity$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 882
    :goto_0
    return-void

    .line 874
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09004b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f09004c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090068

    new-instance v2, Lcom/android/mms/ui/NewMessageActivity$CancelSendingListener;

    invoke-direct {v2, p0, v4}, Lcom/android/mms/ui/NewMessageActivity$CancelSendingListener;-><init>(Lcom/android/mms/ui/NewMessageActivity;Lcom/android/mms/ui/NewMessageActivity$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 879
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->writeContactNumbers()V

    .line 880
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/NewMessageActivity;->checkAndSendMessage(Z)V

    goto :goto_0
.end method

.method public startNicknamePicker(Z)V
    .locals 0
    .parameter "clickByUser"

    .prologue
    .line 395
    invoke-direct {p0}, Lcom/android/mms/ui/NewMessageActivity;->commitEditingRecipient()V

    .line 396
    invoke-super {p0, p1}, Lcom/android/mms/ui/MessageEditableActivityBase;->startNicknamePicker(Z)V

    .line 397
    return-void
.end method

.method protected willDiscardDraft()Z
    .locals 1

    .prologue
    .line 899
    invoke-virtual {p0}, Lcom/android/mms/ui/NewMessageActivity;->hasValidRecipient()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
