.class public Lcom/miui/player/ui/view/BatchSelectionTrackView;
.super Landroid/widget/EditableListActionBar;
.source "BatchSelectionTrackView.java"


# static fields
.field public static final INVALID_ID:J = -0x1L


# instance fields
.field private mCheckAllButtonClickListener:Landroid/view/View$OnClickListener;

.field private mCheckNothingButtonClickListener:Landroid/view/View$OnClickListener;

.field private mDeleteText:Ljava/lang/String;

.field private mDeleteView:Landroid/widget/TextView;

.field public mMaxSelectCount:I

.field private mSelectAllView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/EditableListActionBar;-><init>(Landroid/content/Context;)V

    .line 44
    new-instance v0, Lcom/miui/player/ui/view/BatchSelectionTrackView$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/view/BatchSelectionTrackView$1;-><init>(Lcom/miui/player/ui/view/BatchSelectionTrackView;)V

    iput-object v0, p0, Lcom/miui/player/ui/view/BatchSelectionTrackView;->mCheckAllButtonClickListener:Landroid/view/View$OnClickListener;

    .line 51
    new-instance v0, Lcom/miui/player/ui/view/BatchSelectionTrackView$2;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/view/BatchSelectionTrackView$2;-><init>(Lcom/miui/player/ui/view/BatchSelectionTrackView;)V

    iput-object v0, p0, Lcom/miui/player/ui/view/BatchSelectionTrackView;->mCheckNothingButtonClickListener:Landroid/view/View$OnClickListener;

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/EditableListActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    new-instance v0, Lcom/miui/player/ui/view/BatchSelectionTrackView$1;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/view/BatchSelectionTrackView$1;-><init>(Lcom/miui/player/ui/view/BatchSelectionTrackView;)V

    iput-object v0, p0, Lcom/miui/player/ui/view/BatchSelectionTrackView;->mCheckAllButtonClickListener:Landroid/view/View$OnClickListener;

    .line 51
    new-instance v0, Lcom/miui/player/ui/view/BatchSelectionTrackView$2;

    invoke-direct {v0, p0}, Lcom/miui/player/ui/view/BatchSelectionTrackView$2;-><init>(Lcom/miui/player/ui/view/BatchSelectionTrackView;)V

    iput-object v0, p0, Lcom/miui/player/ui/view/BatchSelectionTrackView;->mCheckNothingButtonClickListener:Landroid/view/View$OnClickListener;

    .line 27
    return-void
.end method


# virtual methods
.method public checkStateChanged(Landroid/widget/EditableListView$EditableListViewCheckable;)V
    .locals 7
    .parameter "checkable"

    .prologue
    .line 60
    invoke-interface {p1}, Landroid/widget/EditableListView$EditableListViewCheckable;->getCheckedItemInIds()Ljava/util/HashSet;

    move-result-object v2

    .line 61
    .local v2, idSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    invoke-interface {p1}, Landroid/widget/EditableListView$EditableListViewCheckable;->count()I

    move-result v0

    .line 62
    .local v0, count:I
    const-wide/16 v3, -0x1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 63
    add-int/lit8 v0, v0, -0x1

    .line 65
    :cond_0
    iget-object v3, p0, Lcom/miui/player/ui/view/BatchSelectionTrackView;->mDeleteView:Landroid/widget/TextView;

    invoke-virtual {v3, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    const-string v3, "%s(%d)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/miui/player/ui/view/BatchSelectionTrackView;->mDeleteText:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 67
    .local v1, countText:Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/player/ui/view/BatchSelectionTrackView;->mDeleteView:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-interface {p1}, Landroid/widget/EditableListView$EditableListViewCheckable;->isAllChecked()Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, Lcom/miui/player/ui/view/BatchSelectionTrackView;->mMaxSelectCount:I

    if-ne v3, v0, :cond_2

    .line 70
    :cond_1
    iget-object v3, p0, Lcom/miui/player/ui/view/BatchSelectionTrackView;->mSelectAllView:Landroid/widget/TextView;

    const v4, 0x7f08009b

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 71
    iget-object v3, p0, Lcom/miui/player/ui/view/BatchSelectionTrackView;->mSelectAllView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/player/ui/view/BatchSelectionTrackView;->mCheckNothingButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 76
    :goto_0
    return-void

    .line 73
    :cond_2
    iget-object v3, p0, Lcom/miui/player/ui/view/BatchSelectionTrackView;->mSelectAllView:Landroid/widget/TextView;

    const v4, 0x7f08009a

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 74
    iget-object v3, p0, Lcom/miui/player/ui/view/BatchSelectionTrackView;->mSelectAllView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/player/ui/view/BatchSelectionTrackView;->mCheckAllButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 31
    const v0, 0x7f0c0002

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/view/BatchSelectionTrackView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/ui/view/BatchSelectionTrackView;->mDeleteView:Landroid/widget/TextView;

    .line 32
    const v0, 0x7f0c0003

    invoke-virtual {p0, v0}, Lcom/miui/player/ui/view/BatchSelectionTrackView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/player/ui/view/BatchSelectionTrackView;->mSelectAllView:Landroid/widget/TextView;

    .line 33
    iget-object v0, p0, Lcom/miui/player/ui/view/BatchSelectionTrackView;->mSelectAllView:Landroid/widget/TextView;

    const v1, 0x7f08009a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 34
    return-void
.end method

.method public setMaxSelectCount(I)V
    .locals 0
    .parameter "maxSelectCount"

    .prologue
    .line 42
    iput p1, p0, Lcom/miui/player/ui/view/BatchSelectionTrackView;->mMaxSelectCount:I

    .line 43
    return-void
.end method

.method public setOperationText(Ljava/lang/String;)V
    .locals 2
    .parameter "text"

    .prologue
    .line 37
    iput-object p1, p0, Lcom/miui/player/ui/view/BatchSelectionTrackView;->mDeleteText:Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/miui/player/ui/view/BatchSelectionTrackView;->mDeleteView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/player/ui/view/BatchSelectionTrackView;->mDeleteText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    return-void
.end method
