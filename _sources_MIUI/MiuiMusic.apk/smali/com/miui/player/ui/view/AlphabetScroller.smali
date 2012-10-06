.class public Lcom/miui/player/ui/view/AlphabetScroller;
.super Landroid/widget/ImageButton;
.source "AlphabetScroller.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/ui/view/AlphabetScroller$OnIndexerChangedListener;,
        Lcom/miui/player/ui/view/AlphabetScroller$OnAlphaScrollScrollListener;
    }
.end annotation


# instance fields
.field private final mAlphabet:[C

.field private mAlphabetIndex:I

.field private final mAlphabetIndexBg:Landroid/widget/ImageView;

.field private mFastScroller:Landroid/widget/FastScroller;

.field private mIndexer:Landroid/widget/SectionIndexer;

.field private mList:Landroid/widget/AbsListView;

.field private final mOnIndexerChangedListener:Lcom/miui/player/ui/view/AlphabetScroller$OnIndexerChangedListener;

.field private final mOverlaySize:I

.field private final mPaddingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 150
    new-instance v1, Lcom/miui/player/ui/view/AlphabetScroller$1;

    invoke-direct {v1, p0}, Lcom/miui/player/ui/view/AlphabetScroller$1;-><init>(Lcom/miui/player/ui/view/AlphabetScroller;)V

    iput-object v1, p0, Lcom/miui/player/ui/view/AlphabetScroller;->mOnIndexerChangedListener:Lcom/miui/player/ui/view/AlphabetScroller$OnIndexerChangedListener;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 39
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f07000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/miui/player/ui/view/AlphabetScroller;->mPaddingTop:I

    .line 40
    const v1, 0x7f0800d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p0, Lcom/miui/player/ui/view/AlphabetScroller;->mAlphabet:[C

    .line 41
    const v1, 0x7f070010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/miui/player/ui/view/AlphabetScroller;->mOverlaySize:I

    .line 42
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Lcom/miui/player/ui/view/AlphabetScroller;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 43
    invoke-virtual {p0, p0}, Lcom/miui/player/ui/view/AlphabetScroller;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/miui/player/ui/view/AlphabetScroller;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/miui/player/ui/view/AlphabetScroller;->mAlphabetIndexBg:Landroid/widget/ImageView;

    .line 45
    iget-object v1, p0, Lcom/miui/player/ui/view/AlphabetScroller;->mAlphabetIndexBg:Landroid/widget/ImageView;

    const v2, 0x7f020004

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 46
    iget-object v1, p0, Lcom/miui/player/ui/view/AlphabetScroller;->mAlphabetIndexBg:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 47
    iget-object v1, p0, Lcom/miui/player/ui/view/AlphabetScroller;->mAlphabetIndexBg:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/miui/player/ui/view/AlphabetScroller;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/miui/player/ui/view/AlphabetScroller;->refreshAlphabetBgPos(I)V

    return-void
.end method

.method private getPosition(F)F
    .locals 9
    .parameter "y"

    .prologue
    const/high16 v8, -0x4080

    .line 105
    iget v5, p0, Lcom/miui/player/ui/view/AlphabetScroller;->mPaddingTop:I

    int-to-float v5, v5

    cmpg-float v5, p1, v5

    if-gez v5, :cond_0

    move v5, v8

    .line 128
    :goto_0
    return v5

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/ui/view/AlphabetScroller;->getPaddingBottom()I

    move-result v2

    .line 111
    .local v2, paddingBottom:I
    invoke-virtual {p0}, Lcom/miui/player/ui/view/AlphabetScroller;->getHeight()I

    move-result v0

    .line 112
    .local v0, h:I
    sub-int v5, v0, v2

    int-to-float v5, v5

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_1

    .line 113
    const/high16 v5, 0x3f80

    goto :goto_0

    .line 117
    :cond_1
    iget-object v5, p0, Lcom/miui/player/ui/view/AlphabetScroller;->mAlphabet:[C

    array-length v5, v5

    int-to-float v5, v5

    iget v6, p0, Lcom/miui/player/ui/view/AlphabetScroller;->mPaddingTop:I

    int-to-float v6, v6

    sub-float v6, p1, v6

    mul-float/2addr v5, v6

    sub-int v6, v0, v2

    iget v7, p0, Lcom/miui/player/ui/view/AlphabetScroller;->mPaddingTop:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v1, v5

    .line 118
    .local v1, needlePos:I
    iget-object v5, p0, Lcom/miui/player/ui/view/AlphabetScroller;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v5}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v4

    .line 119
    .local v4, sections:[Ljava/lang/Object;
    if-nez v4, :cond_2

    move v5, v8

    .line 120
    goto :goto_0

    .line 123
    :cond_2
    iget-object v5, p0, Lcom/miui/player/ui/view/AlphabetScroller;->mAlphabet:[C

    aget-char v5, v5, v1

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    .line 124
    .local v3, section:I
    if-gez v3, :cond_3

    .line 126
    neg-int v5, v3

    const/4 v6, 0x2

    sub-int v3, v5, v6

    .line 128
    :cond_3
    int-to-float v5, v3

    array-length v6, v4

    int-to-float v6, v6

    div-float/2addr v5, v6

    goto :goto_0
.end method

.method private refreshAlphabetBgPos(I)V
    .locals 8
    .parameter "firstVisibleItem"

    .prologue
    const/4 v7, 0x0

    .line 185
    iget-object v6, p0, Lcom/miui/player/ui/view/AlphabetScroller;->mAlphabetIndexBg:Landroid/widget/ImageView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/miui/player/ui/view/AlphabetScroller;->mIndexer:Landroid/widget/SectionIndexer;

    if-nez v6, :cond_1

    .line 214
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v6, p0, Lcom/miui/player/ui/view/AlphabetScroller;->mAlphabetIndexBg:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 190
    .local v4, params:Landroid/view/ViewGroup$MarginLayoutParams;
    if-eqz v4, :cond_0

    .line 194
    iget-object v6, p0, Lcom/miui/player/ui/view/AlphabetScroller;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v6, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v5

    .line 195
    .local v5, section:I
    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    .line 199
    iget-object v6, p0, Lcom/miui/player/ui/view/AlphabetScroller;->mAlphabetIndexBg:Landroid/widget/ImageView;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 200
    iget-object v6, p0, Lcom/miui/player/ui/view/AlphabetScroller;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v6}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v6

    aget-object v6, v6, v5

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 201
    .local v1, name:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 202
    invoke-virtual {v1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 203
    .local v2, needle:C
    iget-object v6, p0, Lcom/miui/player/ui/view/AlphabetScroller;->mAlphabet:[C

    invoke-static {v6, v2}, Ljava/util/Arrays;->binarySearch([CC)I

    move-result v3

    .line 205
    .local v3, newIndex:I
    iget v6, p0, Lcom/miui/player/ui/view/AlphabetScroller;->mAlphabetIndex:I

    if-eq v6, v3, :cond_0

    .line 206
    iput v3, p0, Lcom/miui/player/ui/view/AlphabetScroller;->mAlphabetIndex:I

    .line 208
    invoke-virtual {p0}, Lcom/miui/player/ui/view/AlphabetScroller;->getMeasuredHeight()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, p0, Lcom/miui/player/ui/view/AlphabetScroller;->mAlphabet:[C

    array-length v7, v7

    int-to-float v7, v7

    div-float v0, v6, v7

    .line 209
    .local v0, alphabetHeight:F
    iget v6, p0, Lcom/miui/player/ui/view/AlphabetScroller;->mAlphabetIndex:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v6, v6

    iput v6, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 210
    iget-object v6, p0, Lcom/miui/player/ui/view/AlphabetScroller;->mAlphabetIndexBg:Landroid/widget/ImageView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method


# virtual methods
.method public getIndexerChangeListener()Lcom/miui/player/ui/view/AlphabetScroller$OnIndexerChangedListener;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/miui/player/ui/view/AlphabetScroller;->mOnIndexerChangedListener:Lcom/miui/player/ui/view/AlphabetScroller$OnIndexerChangedListener;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 5

    .prologue
    const/4 v3, -0x2

    const/4 v4, 0x0

    .line 52
    invoke-super {p0}, Landroid/widget/ImageButton;->onAttachedToWindow()V

    .line 53
    invoke-virtual {p0}, Lcom/miui/player/ui/view/AlphabetScroller;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 54
    .local v0, p:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_0

    .line 55
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x35

    invoke-direct {v1, v3, v3, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 59
    .local v1, params:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v2, p0, Lcom/miui/player/ui/view/AlphabetScroller;->mAlphabetIndexBg:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 60
    iget-object v2, p0, Lcom/miui/player/ui/view/AlphabetScroller;->mAlphabetIndexBg:Landroid/widget/ImageView;

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/ImageView;->measure(II)V

    .line 63
    check-cast v0, Landroid/widget/FrameLayout;

    .end local v0           #p:Landroid/view/ViewParent;
    iget-object v2, p0, Lcom/miui/player/ui/view/AlphabetScroller;->mAlphabetIndexBg:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 65
    .end local v1           #params:Landroid/widget/FrameLayout$LayoutParams;
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 134
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 88
    iget-object v1, p0, Lcom/miui/player/ui/view/AlphabetScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/player/ui/view/AlphabetScroller;->mIndexer:Landroid/widget/SectionIndexer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/player/ui/view/AlphabetScroller;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v1, :cond_0

    .line 89
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 101
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 92
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/player/ui/view/AlphabetScroller;->getPosition(F)F

    move-result v0

    .line 93
    .local v0, position:F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/miui/player/ui/view/AlphabetScroller;->mList:Landroid/widget/AbsListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setSelection(I)V

    goto :goto_0

    .line 96
    :cond_1
    iget-object v1, p0, Lcom/miui/player/ui/view/AlphabetScroller;->mFastScroller:Landroid/widget/FastScroller;

    invoke-interface {v1, v0}, Landroid/widget/FastScroller;->scrollTo(F)V

    goto :goto_0

    .line 89
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public refreshAlphabetBgPos()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/miui/player/ui/view/AlphabetScroller;->mList:Landroid/widget/AbsListView;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/miui/player/ui/view/AlphabetScroller;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/miui/player/ui/view/AlphabetScroller;->refreshAlphabetBgPos(I)V

    .line 140
    :cond_0
    return-void
.end method

.method public setList(Landroid/widget/AbsListView;Landroid/widget/SectionIndexer;)V
    .locals 4
    .parameter "list"
    .parameter "indexer"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/miui/player/ui/view/AlphabetScroller;->mList:Landroid/widget/AbsListView;

    .line 69
    iput-object p2, p0, Lcom/miui/player/ui/view/AlphabetScroller;->mIndexer:Landroid/widget/SectionIndexer;

    .line 70
    const/4 v1, -0x1

    iput v1, p0, Lcom/miui/player/ui/view/AlphabetScroller;->mAlphabetIndex:I

    .line 72
    const/4 v0, 0x0

    .line 73
    .local v0, scroller:Landroid/widget/FastScroller;
    if-eqz p1, :cond_1

    .line 74
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFastScroller()Landroid/widget/FastScroller;

    move-result-object v0

    .line 75
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/player/ui/view/AlphabetScroller;->mFastScroller:Landroid/widget/FastScroller;

    if-eq v0, v1, :cond_0

    .line 76
    invoke-interface {v0}, Landroid/widget/FastScroller;->hideThumb()V

    .line 77
    const v1, 0x7f020025

    iget v2, p0, Lcom/miui/player/ui/view/AlphabetScroller;->mOverlaySize:I

    const/high16 v3, 0x3f00

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/FastScroller;->setOverlayDrawable(IIF)V

    .line 79
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->setVerticalScrollBarEnabled(Z)V

    .line 80
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/miui/player/ui/view/AlphabetScroller;->refreshAlphabetBgPos(I)V

    .line 83
    :cond_1
    iput-object v0, p0, Lcom/miui/player/ui/view/AlphabetScroller;->mFastScroller:Landroid/widget/FastScroller;

    .line 84
    return-void
.end method

.method public wrapScrollListener(Landroid/widget/AbsListView$OnScrollListener;)Landroid/widget/AbsListView$OnScrollListener;
    .locals 1
    .parameter "l"

    .prologue
    .line 143
    new-instance v0, Lcom/miui/player/ui/view/AlphabetScroller$OnAlphaScrollScrollListener;

    invoke-direct {v0, p0, p1}, Lcom/miui/player/ui/view/AlphabetScroller$OnAlphaScrollScrollListener;-><init>(Lcom/miui/player/ui/view/AlphabetScroller;Landroid/widget/AbsListView$OnScrollListener;)V

    return-object v0
.end method
