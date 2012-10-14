.class public Lcom/miui/antispam/firewall/DeleteBar;
.super Landroid/widget/EditableListActionBar;
.source "DeleteBar.java"


# instance fields
.field private mCheckAllButtonClickListener:Landroid/view/View$OnClickListener;

.field private mCheckButton:Landroid/widget/Button;

.field private mDeleteButton:Landroid/widget/ImageTextButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 17
    invoke-direct {p0, p1}, Landroid/widget/EditableListActionBar;-><init>(Landroid/content/Context;)V

    .line 42
    new-instance v0, Lcom/miui/antispam/firewall/DeleteBar$1;

    invoke-direct {v0, p0}, Lcom/miui/antispam/firewall/DeleteBar$1;-><init>(Lcom/miui/antispam/firewall/DeleteBar;)V

    iput-object v0, p0, Lcom/miui/antispam/firewall/DeleteBar;->mCheckAllButtonClickListener:Landroid/view/View$OnClickListener;

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/EditableListActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v0, Lcom/miui/antispam/firewall/DeleteBar$1;

    invoke-direct {v0, p0}, Lcom/miui/antispam/firewall/DeleteBar$1;-><init>(Lcom/miui/antispam/firewall/DeleteBar;)V

    iput-object v0, p0, Lcom/miui/antispam/firewall/DeleteBar;->mCheckAllButtonClickListener:Landroid/view/View$OnClickListener;

    .line 22
    return-void
.end method


# virtual methods
.method protected checkStateChanged(Landroid/widget/EditableListView$EditableListViewCheckable;)V
    .locals 2
    .parameter "checkable"

    .prologue
    .line 35
    invoke-interface {p1}, Landroid/widget/EditableListView$EditableListViewCheckable;->isAllChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/miui/antispam/firewall/DeleteBar;->mCheckButton:Landroid/widget/Button;

    const v1, 0x7f07006f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 40
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/miui/antispam/firewall/DeleteBar;->mCheckButton:Landroid/widget/Button;

    const v1, 0x7f07006e

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 26
    const v0, 0x7f09000c

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/DeleteBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageTextButton;

    iput-object v0, p0, Lcom/miui/antispam/firewall/DeleteBar;->mDeleteButton:Landroid/widget/ImageTextButton;

    .line 27
    const v0, 0x7f09000d

    invoke-virtual {p0, v0}, Lcom/miui/antispam/firewall/DeleteBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/antispam/firewall/DeleteBar;->mCheckButton:Landroid/widget/Button;

    .line 29
    iget-object v0, p0, Lcom/miui/antispam/firewall/DeleteBar;->mDeleteButton:Landroid/widget/ImageTextButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageTextButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    iget-object v0, p0, Lcom/miui/antispam/firewall/DeleteBar;->mCheckButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/miui/antispam/firewall/DeleteBar;->mCheckAllButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    return-void
.end method
