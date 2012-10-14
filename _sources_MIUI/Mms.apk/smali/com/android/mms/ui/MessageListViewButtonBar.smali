.class public Lcom/android/mms/ui/MessageListViewButtonBar;
.super Landroid/widget/EditableListActionBar;
.source "MessageListViewButtonBar.java"


# instance fields
.field private mCheckAllButtonClickListener:Landroid/view/View$OnClickListener;

.field private mCheckButton:Landroid/widget/Button;

.field private mCheckNothingButtonClickListener:Landroid/view/View$OnClickListener;

.field private mDeleteButton:Landroid/widget/ImageTextButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/EditableListActionBar;-><init>(Landroid/content/Context;)V

    .line 17
    new-instance v0, Lcom/android/mms/ui/MessageListViewButtonBar$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListViewButtonBar$1;-><init>(Lcom/android/mms/ui/MessageListViewButtonBar;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListViewButtonBar;->mCheckAllButtonClickListener:Landroid/view/View$OnClickListener;

    .line 24
    new-instance v0, Lcom/android/mms/ui/MessageListViewButtonBar$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListViewButtonBar$2;-><init>(Lcom/android/mms/ui/MessageListViewButtonBar;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListViewButtonBar;->mCheckNothingButtonClickListener:Landroid/view/View$OnClickListener;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/EditableListActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    new-instance v0, Lcom/android/mms/ui/MessageListViewButtonBar$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListViewButtonBar$1;-><init>(Lcom/android/mms/ui/MessageListViewButtonBar;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListViewButtonBar;->mCheckAllButtonClickListener:Landroid/view/View$OnClickListener;

    .line 24
    new-instance v0, Lcom/android/mms/ui/MessageListViewButtonBar$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessageListViewButtonBar$2;-><init>(Lcom/android/mms/ui/MessageListViewButtonBar;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessageListViewButtonBar;->mCheckNothingButtonClickListener:Landroid/view/View$OnClickListener;

    .line 37
    return-void
.end method


# virtual methods
.method public checkStateChanged(Landroid/widget/EditableListView$EditableListViewCheckable;)V
    .locals 2
    .parameter "checkable"

    .prologue
    .line 50
    invoke-interface {p1}, Landroid/widget/EditableListView$EditableListViewCheckable;->isAllChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/android/mms/ui/MessageListViewButtonBar;->mCheckButton:Landroid/widget/Button;

    const v1, 0x7f090161

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 52
    iget-object v0, p0, Lcom/android/mms/ui/MessageListViewButtonBar;->mCheckButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListViewButtonBar;->mCheckNothingButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    :goto_0
    invoke-interface {p1}, Landroid/widget/EditableListView$EditableListViewCheckable;->count()I

    move-result v0

    if-nez v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/android/mms/ui/MessageListViewButtonBar;->mDeleteButton:Landroid/widget/ImageTextButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageTextButton;->setEnabled(Z)V

    .line 63
    :cond_0
    :goto_1
    return-void

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/MessageListViewButtonBar;->mCheckButton:Landroid/widget/Button;

    const v1, 0x7f090160

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 55
    iget-object v0, p0, Lcom/android/mms/ui/MessageListViewButtonBar;->mCheckButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListViewButtonBar;->mCheckAllButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 60
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/MessageListViewButtonBar;->mDeleteButton:Landroid/widget/ImageTextButton;

    invoke-virtual {v0}, Landroid/widget/ImageTextButton;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/android/mms/ui/MessageListViewButtonBar;->mDeleteButton:Landroid/widget/ImageTextButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageTextButton;->setEnabled(Z)V

    goto :goto_1
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 41
    const v0, 0x7f0d0031

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListViewButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageTextButton;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListViewButtonBar;->mDeleteButton:Landroid/widget/ImageTextButton;

    .line 42
    const v0, 0x7f0d0032

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessageListViewButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/mms/ui/MessageListViewButtonBar;->mCheckButton:Landroid/widget/Button;

    .line 44
    iget-object v0, p0, Lcom/android/mms/ui/MessageListViewButtonBar;->mDeleteButton:Landroid/widget/ImageTextButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v0, p0, Lcom/android/mms/ui/MessageListViewButtonBar;->mCheckButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/mms/ui/MessageListViewButtonBar;->mCheckAllButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    return-void
.end method
