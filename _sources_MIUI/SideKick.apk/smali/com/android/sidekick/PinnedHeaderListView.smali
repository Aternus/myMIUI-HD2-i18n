.class public Lcom/android/sidekick/PinnedHeaderListView;
.super Landroid/widget/ListView;
.source "PinnedHeaderListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/sidekick/PinnedHeaderListView$PinnedHeaderAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/sidekick/PinnedHeaderListView$PinnedHeaderAdapter;

.field private mHeaderViewVisible:Z

.field private mPinnedHeaderView:Landroid/view/View;

.field private mPinnedHeaderViewHeight:I

.field private mPinnedHeaderViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 84
    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 88
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    return-void
.end method


# virtual methods
.method public configureHeaderView(I)V
    .locals 11
    .parameter "position"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 133
    iget-object v6, p0, Lcom/android/sidekick/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;

    if-nez v6, :cond_0

    .line 176
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v6, p0, Lcom/android/sidekick/PinnedHeaderListView;->mAdapter:Lcom/android/sidekick/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {v6, p1}, Lcom/android/sidekick/PinnedHeaderListView$PinnedHeaderAdapter;->getPinnedHeaderState(I)I

    move-result v4

    .line 138
    .local v4, state:I
    invoke-virtual {p0, v9}, Lcom/android/sidekick/PinnedHeaderListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 139
    .local v2, firstView:Landroid/view/View;
    packed-switch v4, :pswitch_data_0

    .line 175
    :goto_1
    iget-object v6, p0, Lcom/android/sidekick/PinnedHeaderListView;->mAdapter:Lcom/android/sidekick/PinnedHeaderListView$PinnedHeaderAdapter;

    invoke-interface {v6, v2, p1, v4}, Lcom/android/sidekick/PinnedHeaderListView$PinnedHeaderAdapter;->configureItem(Landroid/view/View;II)V

    goto :goto_0

    .line 141
    :pswitch_0
    iput-boolean v9, p0, Lcom/android/sidekick/PinnedHeaderListView;->mHeaderViewVisible:Z

    goto :goto_1

    .line 146
    :pswitch_1
    iget-object v6, p0, Lcom/android/sidekick/PinnedHeaderListView;->mAdapter:Lcom/android/sidekick/PinnedHeaderListView$PinnedHeaderAdapter;

    iget-object v7, p0, Lcom/android/sidekick/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;

    const/16 v8, 0xff

    invoke-interface {v6, v7, p1, v8}, Lcom/android/sidekick/PinnedHeaderListView$PinnedHeaderAdapter;->configurePinnedHeader(Landroid/view/View;II)V

    .line 147
    iget-object v6, p0, Lcom/android/sidekick/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    if-eqz v6, :cond_1

    .line 148
    iget-object v6, p0, Lcom/android/sidekick/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;

    iget v7, p0, Lcom/android/sidekick/PinnedHeaderListView;->mPinnedHeaderViewWidth:I

    iget v8, p0, Lcom/android/sidekick/PinnedHeaderListView;->mPinnedHeaderViewHeight:I

    invoke-virtual {v6, v9, v9, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 150
    :cond_1
    iput-boolean v10, p0, Lcom/android/sidekick/PinnedHeaderListView;->mHeaderViewVisible:Z

    goto :goto_1

    .line 155
    :pswitch_2
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 157
    .local v1, bottom:I
    iget-object v6, p0, Lcom/android/sidekick/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 160
    .local v3, headerHeight:I
    if-ge v1, v3, :cond_3

    .line 161
    sub-int v5, v1, v3

    .line 162
    .local v5, y:I
    add-int v6, v3, v5

    mul-int/lit16 v6, v6, 0xff

    div-int v0, v6, v3

    .line 167
    .local v0, alpha:I
    :goto_2
    iget-object v6, p0, Lcom/android/sidekick/PinnedHeaderListView;->mAdapter:Lcom/android/sidekick/PinnedHeaderListView$PinnedHeaderAdapter;

    iget-object v7, p0, Lcom/android/sidekick/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;

    invoke-interface {v6, v7, p1, v0}, Lcom/android/sidekick/PinnedHeaderListView$PinnedHeaderAdapter;->configurePinnedHeader(Landroid/view/View;II)V

    .line 168
    iget-object v6, p0, Lcom/android/sidekick/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    if-eq v6, v5, :cond_2

    .line 169
    iget-object v6, p0, Lcom/android/sidekick/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;

    iget v7, p0, Lcom/android/sidekick/PinnedHeaderListView;->mPinnedHeaderViewWidth:I

    iget v8, p0, Lcom/android/sidekick/PinnedHeaderListView;->mPinnedHeaderViewHeight:I

    add-int/2addr v8, v5

    invoke-virtual {v6, v9, v5, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 171
    :cond_2
    iput-boolean v10, p0, Lcom/android/sidekick/PinnedHeaderListView;->mHeaderViewVisible:Z

    goto :goto_1

    .line 164
    .end local v0           #alpha:I
    .end local v5           #y:I
    :cond_3
    const/4 v5, 0x0

    .line 165
    .restart local v5       #y:I
    const/16 v0, 0xff

    .restart local v0       #alpha:I
    goto :goto_2

    .line 139
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .parameter "canvas"

    .prologue
    .line 180
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 181
    iget-boolean v0, p0, Lcom/android/sidekick/PinnedHeaderListView;->mHeaderViewVisible:Z

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/sidekick/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/sidekick/PinnedHeaderListView;->getDrawingTime()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/sidekick/PinnedHeaderListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 184
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v3, 0x0

    .line 125
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 126
    iget-object v0, p0, Lcom/android/sidekick/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/sidekick/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;

    iget v1, p0, Lcom/android/sidekick/PinnedHeaderListView;->mPinnedHeaderViewWidth:I

    iget v2, p0, Lcom/android/sidekick/PinnedHeaderListView;->mPinnedHeaderViewHeight:I

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 128
    invoke-virtual {p0}, Lcom/android/sidekick/PinnedHeaderListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/sidekick/PinnedHeaderListView;->configureHeaderView(I)V

    .line 130
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 115
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->onMeasure(II)V

    .line 116
    iget-object v0, p0, Lcom/android/sidekick/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/android/sidekick/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/sidekick/PinnedHeaderListView;->measureChild(Landroid/view/View;II)V

    .line 118
    iget-object v0, p0, Lcom/android/sidekick/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/android/sidekick/PinnedHeaderListView;->mPinnedHeaderViewWidth:I

    .line 119
    iget-object v0, p0, Lcom/android/sidekick/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/sidekick/PinnedHeaderListView;->mPinnedHeaderViewHeight:I

    .line 121
    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 30
    check-cast p1, Landroid/widget/ListAdapter;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/sidekick/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0
    .parameter "adapter"

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 110
    check-cast p1, Lcom/android/sidekick/PinnedHeaderListView$PinnedHeaderAdapter;

    .end local p1
    iput-object p1, p0, Lcom/android/sidekick/PinnedHeaderListView;->mAdapter:Lcom/android/sidekick/PinnedHeaderListView$PinnedHeaderAdapter;

    .line 111
    return-void
.end method

.method public setPinnedHeaderView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/sidekick/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;

    .line 101
    iget-object v0, p0, Lcom/android/sidekick/PinnedHeaderListView;->mPinnedHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/sidekick/PinnedHeaderListView;->setFadingEdgeLength(I)V

    .line 104
    :cond_0
    invoke-virtual {p0}, Lcom/android/sidekick/PinnedHeaderListView;->requestLayout()V

    .line 105
    return-void
.end method
