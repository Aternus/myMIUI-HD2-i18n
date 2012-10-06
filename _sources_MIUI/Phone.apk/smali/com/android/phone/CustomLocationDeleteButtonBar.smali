.class public Lcom/android/phone/CustomLocationDeleteButtonBar;
.super Landroid/widget/EditableListActionBar;
.source "CustomLocationDeleteButtonBar.java"


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
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/EditableListActionBar;-><init>(Landroid/content/Context;)V

    .line 46
    new-instance v0, Lcom/android/phone/CustomLocationDeleteButtonBar$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CustomLocationDeleteButtonBar$1;-><init>(Lcom/android/phone/CustomLocationDeleteButtonBar;)V

    iput-object v0, p0, Lcom/android/phone/CustomLocationDeleteButtonBar;->mCheckAllButtonClickListener:Landroid/view/View$OnClickListener;

    .line 53
    new-instance v0, Lcom/android/phone/CustomLocationDeleteButtonBar$2;

    invoke-direct {v0, p0}, Lcom/android/phone/CustomLocationDeleteButtonBar$2;-><init>(Lcom/android/phone/CustomLocationDeleteButtonBar;)V

    iput-object v0, p0, Lcom/android/phone/CustomLocationDeleteButtonBar;->mCheckNothingButtonClickListener:Landroid/view/View$OnClickListener;

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/EditableListActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    new-instance v0, Lcom/android/phone/CustomLocationDeleteButtonBar$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CustomLocationDeleteButtonBar$1;-><init>(Lcom/android/phone/CustomLocationDeleteButtonBar;)V

    iput-object v0, p0, Lcom/android/phone/CustomLocationDeleteButtonBar;->mCheckAllButtonClickListener:Landroid/view/View$OnClickListener;

    .line 53
    new-instance v0, Lcom/android/phone/CustomLocationDeleteButtonBar$2;

    invoke-direct {v0, p0}, Lcom/android/phone/CustomLocationDeleteButtonBar$2;-><init>(Lcom/android/phone/CustomLocationDeleteButtonBar;)V

    iput-object v0, p0, Lcom/android/phone/CustomLocationDeleteButtonBar;->mCheckNothingButtonClickListener:Landroid/view/View$OnClickListener;

    .line 20
    return-void
.end method


# virtual methods
.method protected checkStateChanged(Landroid/widget/EditableListView$EditableListViewCheckable;)V
    .locals 2
    .parameter "checkable"

    .prologue
    .line 37
    invoke-interface {p1}, Landroid/widget/EditableListView$EditableListViewCheckable;->isAllChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/android/phone/CustomLocationDeleteButtonBar;->mCheckButton:Landroid/widget/Button;

    const v1, 0x7f0c027c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 39
    iget-object v0, p0, Lcom/android/phone/CustomLocationDeleteButtonBar;->mCheckButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/CustomLocationDeleteButtonBar;->mCheckNothingButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    :goto_0
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CustomLocationDeleteButtonBar;->mCheckButton:Landroid/widget/Button;

    const v1, 0x7f0c027b

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 42
    iget-object v0, p0, Lcom/android/phone/CustomLocationDeleteButtonBar;->mCheckButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/CustomLocationDeleteButtonBar;->mCheckAllButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 28
    const v0, 0x7f07003f

    invoke-virtual {p0, v0}, Lcom/android/phone/CustomLocationDeleteButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageTextButton;

    iput-object v0, p0, Lcom/android/phone/CustomLocationDeleteButtonBar;->mDeleteButton:Landroid/widget/ImageTextButton;

    .line 29
    const v0, 0x7f070040

    invoke-virtual {p0, v0}, Lcom/android/phone/CustomLocationDeleteButtonBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/CustomLocationDeleteButtonBar;->mCheckButton:Landroid/widget/Button;

    .line 31
    iget-object v0, p0, Lcom/android/phone/CustomLocationDeleteButtonBar;->mDeleteButton:Landroid/widget/ImageTextButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    iget-object v0, p0, Lcom/android/phone/CustomLocationDeleteButtonBar;->mCheckButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/CustomLocationDeleteButtonBar;->mCheckAllButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    return-void
.end method
