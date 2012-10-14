.class public Lcom/android/contacts/ui/CallRecordDeleteButtonBar;
.super Landroid/widget/EditableListActionBar;
.source "CallRecordDeleteButtonBar.java"


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
    new-instance v0, Lcom/android/contacts/ui/CallRecordDeleteButtonBar$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/ui/CallRecordDeleteButtonBar$1;-><init>(Lcom/android/contacts/ui/CallRecordDeleteButtonBar;)V

    iput-object v0, p0, Lcom/android/contacts/ui/CallRecordDeleteButtonBar;->mCheckAllButtonClickListener:Landroid/view/View$OnClickListener;

    .line 24
    new-instance v0, Lcom/android/contacts/ui/CallRecordDeleteButtonBar$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/ui/CallRecordDeleteButtonBar$2;-><init>(Lcom/android/contacts/ui/CallRecordDeleteButtonBar;)V

    iput-object v0, p0, Lcom/android/contacts/ui/CallRecordDeleteButtonBar;->mCheckNothingButtonClickListener:Landroid/view/View$OnClickListener;

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
    new-instance v0, Lcom/android/contacts/ui/CallRecordDeleteButtonBar$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/ui/CallRecordDeleteButtonBar$1;-><init>(Lcom/android/contacts/ui/CallRecordDeleteButtonBar;)V

    iput-object v0, p0, Lcom/android/contacts/ui/CallRecordDeleteButtonBar;->mCheckAllButtonClickListener:Landroid/view/View$OnClickListener;

    .line 24
    new-instance v0, Lcom/android/contacts/ui/CallRecordDeleteButtonBar$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/ui/CallRecordDeleteButtonBar$2;-><init>(Lcom/android/contacts/ui/CallRecordDeleteButtonBar;)V

    iput-object v0, p0, Lcom/android/contacts/ui/CallRecordDeleteButtonBar;->mCheckNothingButtonClickListener:Landroid/view/View$OnClickListener;

    .line 37
    return-void
.end method


# virtual methods
.method protected checkStateChanged(Landroid/widget/EditableListView$EditableListViewCheckable;)V
    .locals 2
    .parameter "checkable"

    .prologue
    .line 50
    invoke-interface {p1}, Landroid/widget/EditableListView$EditableListViewCheckable;->isAllChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/android/contacts/ui/CallRecordDeleteButtonBar;->mCheckButton:Landroid/widget/Button;

    const v1, 0x7f0b0197

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 52
    iget-object v0, p0, Lcom/android/contacts/ui/CallRecordDeleteButtonBar;->mCheckButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/contacts/ui/CallRecordDeleteButtonBar;->mCheckNothingButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    :goto_0
    return-void

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ui/CallRecordDeleteButtonBar;->mCheckButton:Landroid/widget/Button;

    const v1, 0x7f0b0196

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 55
    iget-object v0, p0, Lcom/android/contacts/ui/CallRecordDeleteButtonBar;->mCheckButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/contacts/ui/CallRecordDeleteButtonBar;->mCheckAllButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 41
    const v0, 0x7f07004c

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/CallRecordDeleteButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageTextButton;

    iput-object v0, p0, Lcom/android/contacts/ui/CallRecordDeleteButtonBar;->mDeleteButton:Landroid/widget/ImageTextButton;

    .line 42
    const v0, 0x7f07004d

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/CallRecordDeleteButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/ui/CallRecordDeleteButtonBar;->mCheckButton:Landroid/widget/Button;

    .line 44
    iget-object v0, p0, Lcom/android/contacts/ui/CallRecordDeleteButtonBar;->mDeleteButton:Landroid/widget/ImageTextButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    iget-object v0, p0, Lcom/android/contacts/ui/CallRecordDeleteButtonBar;->mCheckButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/contacts/ui/CallRecordDeleteButtonBar;->mCheckAllButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    return-void
.end method
