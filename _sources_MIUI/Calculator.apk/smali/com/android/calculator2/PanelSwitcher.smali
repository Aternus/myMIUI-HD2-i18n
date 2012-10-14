.class Lcom/android/calculator2/PanelSwitcher;
.super Landroid/widget/FrameLayout;
.source "PanelSwitcher.java"


# instance fields
.field private inLeft:Landroid/view/animation/TranslateAnimation;

.field private inRight:Landroid/view/animation/TranslateAnimation;

.field private mChildren:[Landroid/view/View;

.field private mCurrentView:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mPreviousMove:I

.field private mWidth:I

.field private outLeft:Landroid/view/animation/TranslateAnimation;

.field private outRight:Landroid/view/animation/TranslateAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    new-array v0, v1, [Landroid/view/View;

    iput-object v0, p0, Lcom/android/calculator2/PanelSwitcher;->mChildren:[Landroid/view/View;

    .line 48
    iput v1, p0, Lcom/android/calculator2/PanelSwitcher;->mCurrentView:I

    .line 49
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/calculator2/PanelSwitcher$1;

    invoke-direct {v1, p0}, Lcom/android/calculator2/PanelSwitcher$1;-><init>(Lcom/android/calculator2/PanelSwitcher;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/calculator2/PanelSwitcher;->mGestureDetector:Landroid/view/GestureDetector;

    .line 68
    return-void
.end method

.method private updateCurrentView()V
    .locals 3

    .prologue
    .line 76
    iget-object v1, p0, Lcom/android/calculator2/PanelSwitcher;->mChildren:[Landroid/view/View;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 77
    iget-object v1, p0, Lcom/android/calculator2/PanelSwitcher;->mChildren:[Landroid/view/View;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/android/calculator2/PanelSwitcher;->mCurrentView:I

    if-ne v0, v2, :cond_0

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 76
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 77
    :cond_0
    const/16 v2, 0x8

    goto :goto_1

    .line 79
    :cond_1
    return-void
.end method


# virtual methods
.method getCurrentIndex()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/android/calculator2/PanelSwitcher;->mCurrentView:I

    return v0
.end method

.method moveLeft()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 117
    iget v0, p0, Lcom/android/calculator2/PanelSwitcher;->mCurrentView:I

    iget-object v1, p0, Lcom/android/calculator2/PanelSwitcher;->mChildren:[Landroid/view/View;

    array-length v1, v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/android/calculator2/PanelSwitcher;->mPreviousMove:I

    if-eq v0, v2, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/calculator2/PanelSwitcher;->mChildren:[Landroid/view/View;

    iget v1, p0, Lcom/android/calculator2/PanelSwitcher;->mCurrentView:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/android/calculator2/PanelSwitcher;->mChildren:[Landroid/view/View;

    iget v1, p0, Lcom/android/calculator2/PanelSwitcher;->mCurrentView:I

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/calculator2/PanelSwitcher;->inLeft:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 120
    iget-object v0, p0, Lcom/android/calculator2/PanelSwitcher;->mChildren:[Landroid/view/View;

    iget v1, p0, Lcom/android/calculator2/PanelSwitcher;->mCurrentView:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/calculator2/PanelSwitcher;->outLeft:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 121
    iget-object v0, p0, Lcom/android/calculator2/PanelSwitcher;->mChildren:[Landroid/view/View;

    iget v1, p0, Lcom/android/calculator2/PanelSwitcher;->mCurrentView:I

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    iget v0, p0, Lcom/android/calculator2/PanelSwitcher;->mCurrentView:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/calculator2/PanelSwitcher;->mCurrentView:I

    .line 124
    iput v2, p0, Lcom/android/calculator2/PanelSwitcher;->mPreviousMove:I

    .line 126
    :cond_0
    return-void
.end method

.method moveRight()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 130
    iget v0, p0, Lcom/android/calculator2/PanelSwitcher;->mCurrentView:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/calculator2/PanelSwitcher;->mPreviousMove:I

    if-eq v0, v3, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/calculator2/PanelSwitcher;->mChildren:[Landroid/view/View;

    iget v1, p0, Lcom/android/calculator2/PanelSwitcher;->mCurrentView:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/android/calculator2/PanelSwitcher;->mChildren:[Landroid/view/View;

    iget v1, p0, Lcom/android/calculator2/PanelSwitcher;->mCurrentView:I

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/calculator2/PanelSwitcher;->inRight:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 133
    iget-object v0, p0, Lcom/android/calculator2/PanelSwitcher;->mChildren:[Landroid/view/View;

    iget v1, p0, Lcom/android/calculator2/PanelSwitcher;->mCurrentView:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/android/calculator2/PanelSwitcher;->outRight:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 134
    iget-object v0, p0, Lcom/android/calculator2/PanelSwitcher;->mChildren:[Landroid/view/View;

    iget v1, p0, Lcom/android/calculator2/PanelSwitcher;->mCurrentView:I

    aget-object v0, v0, v1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 136
    iget v0, p0, Lcom/android/calculator2/PanelSwitcher;->mCurrentView:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/android/calculator2/PanelSwitcher;->mCurrentView:I

    .line 137
    iput v3, p0, Lcom/android/calculator2/PanelSwitcher;->mPreviousMove:I

    .line 139
    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/calculator2/PanelSwitcher;->getChildCount()I

    move-result v0

    .line 97
    .local v0, count:I
    new-array v2, v0, [Landroid/view/View;

    iput-object v2, p0, Lcom/android/calculator2/PanelSwitcher;->mChildren:[Landroid/view/View;

    .line 98
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 99
    iget-object v2, p0, Lcom/android/calculator2/PanelSwitcher;->mChildren:[Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/calculator2/PanelSwitcher;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    aput-object v3, v2, v1

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    :cond_0
    invoke-direct {p0}, Lcom/android/calculator2/PanelSwitcher;->updateCurrentView()V

    .line 102
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/calculator2/PanelSwitcher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onSizeChanged(IIII)V
    .locals 5
    .parameter "w"
    .parameter "h"
    .parameter "oldW"
    .parameter "oldH"

    .prologue
    const-wide/16 v3, 0x190

    const/4 v2, 0x0

    .line 83
    iput p1, p0, Lcom/android/calculator2/PanelSwitcher;->mWidth:I

    .line 84
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/android/calculator2/PanelSwitcher;->mWidth:I

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/calculator2/PanelSwitcher;->inLeft:Landroid/view/animation/TranslateAnimation;

    .line 85
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/android/calculator2/PanelSwitcher;->mWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/calculator2/PanelSwitcher;->outLeft:Landroid/view/animation/TranslateAnimation;

    .line 86
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/android/calculator2/PanelSwitcher;->mWidth:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/calculator2/PanelSwitcher;->inRight:Landroid/view/animation/TranslateAnimation;

    .line 87
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v1, p0, Lcom/android/calculator2/PanelSwitcher;->mWidth:I

    int-to-float v1, v1

    invoke-direct {v0, v2, v1, v2, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/calculator2/PanelSwitcher;->outRight:Landroid/view/animation/TranslateAnimation;

    .line 89
    iget-object v0, p0, Lcom/android/calculator2/PanelSwitcher;->inLeft:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 90
    iget-object v0, p0, Lcom/android/calculator2/PanelSwitcher;->outLeft:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 91
    iget-object v0, p0, Lcom/android/calculator2/PanelSwitcher;->inRight:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 92
    iget-object v0, p0, Lcom/android/calculator2/PanelSwitcher;->outRight:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 93
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/calculator2/PanelSwitcher;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method setCurrentIndex(I)V
    .locals 0
    .parameter "current"

    .prologue
    .line 71
    iput p1, p0, Lcom/android/calculator2/PanelSwitcher;->mCurrentView:I

    .line 72
    invoke-direct {p0}, Lcom/android/calculator2/PanelSwitcher;->updateCurrentView()V

    .line 73
    return-void
.end method
