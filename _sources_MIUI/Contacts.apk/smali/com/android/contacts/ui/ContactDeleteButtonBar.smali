.class public Lcom/android/contacts/ui/ContactDeleteButtonBar;
.super Landroid/widget/EditableListActionBar;
.source "ContactDeleteButtonBar.java"


# instance fields
.field private mCancelButton:Landroid/widget/Button;

.field private mCancelButtonClickListener:Landroid/view/View$OnClickListener;

.field private mCheckAllButtonClickListener:Landroid/view/View$OnClickListener;

.field private mCheckButton:Landroid/widget/Button;

.field private mCheckNothingButtonClickListener:Landroid/view/View$OnClickListener;

.field private mDeleteButton:Landroid/widget/ImageTextButton;

.field private mList:Landroid/widget/EditableListView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/EditableListActionBar;-><init>(Landroid/content/Context;)V

    .line 87
    new-instance v0, Lcom/android/contacts/ui/ContactDeleteButtonBar$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/ui/ContactDeleteButtonBar$1;-><init>(Lcom/android/contacts/ui/ContactDeleteButtonBar;)V

    iput-object v0, p0, Lcom/android/contacts/ui/ContactDeleteButtonBar;->mCheckAllButtonClickListener:Landroid/view/View$OnClickListener;

    .line 94
    new-instance v0, Lcom/android/contacts/ui/ContactDeleteButtonBar$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/ui/ContactDeleteButtonBar$2;-><init>(Lcom/android/contacts/ui/ContactDeleteButtonBar;)V

    iput-object v0, p0, Lcom/android/contacts/ui/ContactDeleteButtonBar;->mCheckNothingButtonClickListener:Landroid/view/View$OnClickListener;

    .line 101
    new-instance v0, Lcom/android/contacts/ui/ContactDeleteButtonBar$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/ui/ContactDeleteButtonBar$3;-><init>(Lcom/android/contacts/ui/ContactDeleteButtonBar;)V

    iput-object v0, p0, Lcom/android/contacts/ui/ContactDeleteButtonBar;->mCancelButtonClickListener:Landroid/view/View$OnClickListener;

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

    .line 87
    new-instance v0, Lcom/android/contacts/ui/ContactDeleteButtonBar$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/ui/ContactDeleteButtonBar$1;-><init>(Lcom/android/contacts/ui/ContactDeleteButtonBar;)V

    iput-object v0, p0, Lcom/android/contacts/ui/ContactDeleteButtonBar;->mCheckAllButtonClickListener:Landroid/view/View$OnClickListener;

    .line 94
    new-instance v0, Lcom/android/contacts/ui/ContactDeleteButtonBar$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/ui/ContactDeleteButtonBar$2;-><init>(Lcom/android/contacts/ui/ContactDeleteButtonBar;)V

    iput-object v0, p0, Lcom/android/contacts/ui/ContactDeleteButtonBar;->mCheckNothingButtonClickListener:Landroid/view/View$OnClickListener;

    .line 101
    new-instance v0, Lcom/android/contacts/ui/ContactDeleteButtonBar$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/ui/ContactDeleteButtonBar$3;-><init>(Lcom/android/contacts/ui/ContactDeleteButtonBar;)V

    iput-object v0, p0, Lcom/android/contacts/ui/ContactDeleteButtonBar;->mCancelButtonClickListener:Landroid/view/View$OnClickListener;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/ui/ContactDeleteButtonBar;)Landroid/widget/EditableListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/contacts/ui/ContactDeleteButtonBar;->mList:Landroid/widget/EditableListView;

    return-object v0
.end method


# virtual methods
.method protected checkStateChanged(Landroid/widget/EditableListView$EditableListViewCheckable;)V
    .locals 2
    .parameter "checkable"

    .prologue
    .line 78
    invoke-interface {p1}, Landroid/widget/EditableListView$EditableListViewCheckable;->isAllChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/android/contacts/ui/ContactDeleteButtonBar;->mCheckButton:Landroid/widget/Button;

    const v1, 0x7f0b0197

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 80
    iget-object v0, p0, Lcom/android/contacts/ui/ContactDeleteButtonBar;->mCheckButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/contacts/ui/ContactDeleteButtonBar;->mCheckNothingButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    :goto_0
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ui/ContactDeleteButtonBar;->mCheckButton:Landroid/widget/Button;

    const v1, 0x7f0b0196

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 83
    iget-object v0, p0, Lcom/android/contacts/ui/ContactDeleteButtonBar;->mCheckButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/contacts/ui/ContactDeleteButtonBar;->mCheckAllButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 67
    const v0, 0x7f07004c

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/ContactDeleteButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageTextButton;

    iput-object v0, p0, Lcom/android/contacts/ui/ContactDeleteButtonBar;->mDeleteButton:Landroid/widget/ImageTextButton;

    .line 68
    const v0, 0x7f07004d

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/ContactDeleteButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/ui/ContactDeleteButtonBar;->mCheckButton:Landroid/widget/Button;

    .line 69
    const v0, 0x7f07004e

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/ContactDeleteButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/ui/ContactDeleteButtonBar;->mCancelButton:Landroid/widget/Button;

    .line 71
    iget-object v0, p0, Lcom/android/contacts/ui/ContactDeleteButtonBar;->mDeleteButton:Landroid/widget/ImageTextButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    iget-object v0, p0, Lcom/android/contacts/ui/ContactDeleteButtonBar;->mCheckButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/contacts/ui/ContactDeleteButtonBar;->mCheckAllButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v0, p0, Lcom/android/contacts/ui/ContactDeleteButtonBar;->mCancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/contacts/ui/ContactDeleteButtonBar;->mCancelButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method public setMode(ILandroid/widget/EditableListView;)V
    .locals 3
    .parameter "mode"
    .parameter "list"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 40
    iput-object p2, p0, Lcom/android/contacts/ui/ContactDeleteButtonBar;->mList:Landroid/widget/EditableListView;

    .line 41
    if-nez p1, :cond_0

    .line 42
    iget-object v0, p0, Lcom/android/contacts/ui/ContactDeleteButtonBar;->mCheckButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 43
    iget-object v0, p0, Lcom/android/contacts/ui/ContactDeleteButtonBar;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 48
    :goto_0
    return-void

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/ui/ContactDeleteButtonBar;->mCheckButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 46
    iget-object v0, p0, Lcom/android/contacts/ui/ContactDeleteButtonBar;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public setRemoveButtonText(II)V
    .locals 3
    .parameter "mode"
    .parameter "count"

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .local v0, builder:Ljava/lang/StringBuilder;
    if-nez p1, :cond_2

    .line 53
    invoke-virtual {p0}, Lcom/android/contacts/ui/ContactDeleteButtonBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    :cond_0
    :goto_0
    if-lez p2, :cond_1

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/ui/ContactDeleteButtonBar;->mDeleteButton:Landroid/widget/ImageTextButton;

    invoke-virtual {v1}, Landroid/widget/ImageTextButton;->getTextView()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-void

    .line 54
    :cond_2
    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 55
    :cond_3
    invoke-virtual {p0}, Lcom/android/contacts/ui/ContactDeleteButtonBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b01b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
