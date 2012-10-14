.class public Lcom/android/phone/InCallSlidingPanel;
.super Landroid/widget/FrameLayout;
.source "InCallSlidingPanel.java"

# interfaces
.implements Lcom/android/phone/InCallSlidingGestureDetector$GestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/InCallSlidingPanel$SlidingPanelAnimation;,
        Lcom/android/phone/InCallSlidingPanel$OnTriggerListener;
    }
.end annotation


# instance fields
.field private initialized:Z

.field private mAnimationStartPosition:I

.field private mAnswerButton:Landroid/widget/Button;

.field private mDispatchHandler:Landroid/os/Handler;

.field private mDisplayHeight:I

.field private mDownTriggerAnimation:Lcom/android/phone/InCallSlidingPanel$SlidingPanelAnimation;

.field private mGestureDetector:Lcom/android/phone/InCallSlidingGestureDetector;

.field private mGrabbedState:I

.field private mGuidePopupWindow:Landroid/widget/GuidePopupWindow;

.field private mIncomingCallWidgetInCall:Landroid/view/View;

.field private mIncomingCallWidgetMain:Landroid/view/View;

.field private mOnTriggerListener:Lcom/android/phone/InCallSlidingPanel$OnTriggerListener;

.field private mResetAnimation:Lcom/android/phone/InCallSlidingPanel$SlidingPanelAnimation;

.field private mSlidingBar:Landroid/view/View;

.field private mSlidingBarExtendWith:I

.field private mSlidingDownTarget:I

.field private mSlidingDownTargetView:Landroid/view/View;

.field private mSlidingGreenBar:Landroid/widget/ImageView;

.field private mSlidingGreenBarLight:Landroid/widget/ImageView;

.field private mSlidingHintAnim:Landroid/widget/ImageView;

.field private mSlidingUpTarget:I

.field private mSlidingUpTargetView:Landroid/view/View;

.field private mTempRect:Landroid/graphics/Rect;

.field private mTrackingPointerId:I

.field private mUpTriggerAnimation:Lcom/android/phone/InCallSlidingPanel$SlidingPanelAnimation;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 178
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/InCallSlidingPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 179
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 185
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    iput v2, p0, Lcom/android/phone/InCallSlidingPanel;->mGrabbedState:I

    .line 85
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/InCallSlidingPanel;->mTrackingPointerId:I

    .line 86
    iput-boolean v2, p0, Lcom/android/phone/InCallSlidingPanel;->initialized:Z

    .line 94
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mTempRect:Landroid/graphics/Rect;

    .line 96
    iput v2, p0, Lcom/android/phone/InCallSlidingPanel;->mAnimationStartPosition:I

    .line 643
    new-instance v0, Lcom/android/phone/InCallSlidingPanel$5;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallSlidingPanel$5;-><init>(Lcom/android/phone/InCallSlidingPanel;)V

    iput-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mDispatchHandler:Landroid/os/Handler;

    .line 187
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/android/phone/InCallSlidingPanel;->mDisplayHeight:I

    .line 189
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/InCallSlidingPanel;->mSlidingBarExtendWith:I

    .line 191
    new-instance v0, Lcom/android/phone/InCallSlidingPanel$SlidingPanelAnimation;

    invoke-direct {v0, p0, p0, v2}, Lcom/android/phone/InCallSlidingPanel$SlidingPanelAnimation;-><init>(Lcom/android/phone/InCallSlidingPanel;Lcom/android/phone/InCallSlidingPanel;I)V

    iput-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mResetAnimation:Lcom/android/phone/InCallSlidingPanel$SlidingPanelAnimation;

    .line 192
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mResetAnimation:Lcom/android/phone/InCallSlidingPanel$SlidingPanelAnimation;

    new-instance v1, Lcom/android/phone/InCallSlidingPanel$1;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallSlidingPanel$1;-><init>(Lcom/android/phone/InCallSlidingPanel;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallSlidingPanel$SlidingPanelAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 213
    new-instance v0, Lcom/android/phone/InCallSlidingPanel$SlidingPanelAnimation;

    invoke-direct {v0, p0, p0, v3}, Lcom/android/phone/InCallSlidingPanel$SlidingPanelAnimation;-><init>(Lcom/android/phone/InCallSlidingPanel;Lcom/android/phone/InCallSlidingPanel;I)V

    iput-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mUpTriggerAnimation:Lcom/android/phone/InCallSlidingPanel$SlidingPanelAnimation;

    .line 214
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mUpTriggerAnimation:Lcom/android/phone/InCallSlidingPanel$SlidingPanelAnimation;

    new-instance v1, Lcom/android/phone/InCallSlidingPanel$2;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallSlidingPanel$2;-><init>(Lcom/android/phone/InCallSlidingPanel;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallSlidingPanel$SlidingPanelAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 234
    new-instance v0, Lcom/android/phone/InCallSlidingPanel$SlidingPanelAnimation;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p0, v1}, Lcom/android/phone/InCallSlidingPanel$SlidingPanelAnimation;-><init>(Lcom/android/phone/InCallSlidingPanel;Lcom/android/phone/InCallSlidingPanel;I)V

    iput-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mDownTriggerAnimation:Lcom/android/phone/InCallSlidingPanel$SlidingPanelAnimation;

    .line 235
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mDownTriggerAnimation:Lcom/android/phone/InCallSlidingPanel$SlidingPanelAnimation;

    new-instance v1, Lcom/android/phone/InCallSlidingPanel$3;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallSlidingPanel$3;-><init>(Lcom/android/phone/InCallSlidingPanel;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallSlidingPanel$SlidingPanelAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 254
    new-instance v0, Lcom/android/phone/InCallSlidingGestureDetector;

    invoke-virtual {p0}, Lcom/android/phone/InCallSlidingPanel;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/phone/InCallSlidingGestureDetector;-><init>(Landroid/content/Context;Lcom/android/phone/InCallSlidingGestureDetector$GestureListener;)V

    iput-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mGestureDetector:Lcom/android/phone/InCallSlidingGestureDetector;

    .line 255
    iput-boolean v3, p0, Lcom/android/phone/InCallSlidingPanel;->initialized:Z

    .line 256
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/InCallSlidingPanel;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/phone/InCallSlidingPanel;->getTargetBottomMargin(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/InCallSlidingPanel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/phone/InCallSlidingPanel;->getCurrentBottomMargin()I

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/InCallSlidingPanel;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/phone/InCallSlidingPanel;->dispatchTriggerEvent(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/InCallSlidingPanel;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mSlidingGreenBar:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/InCallSlidingPanel;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mSlidingDownTargetView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/InCallSlidingPanel;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/android/phone/InCallSlidingPanel;->setBottomMargin(I)V

    return-void
.end method

.method static synthetic access$502(Lcom/android/phone/InCallSlidingPanel;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/android/phone/InCallSlidingPanel;->mAnimationStartPosition:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/phone/InCallSlidingPanel;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mSlidingHintAnim:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/InCallSlidingPanel;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mSlidingGreenBarLight:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/InCallSlidingPanel;)Landroid/widget/GuidePopupWindow;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mGuidePopupWindow:Landroid/widget/GuidePopupWindow;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/phone/InCallSlidingPanel;Landroid/widget/GuidePopupWindow;)Landroid/widget/GuidePopupWindow;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/phone/InCallSlidingPanel;->mGuidePopupWindow:Landroid/widget/GuidePopupWindow;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/phone/InCallSlidingPanel;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private dispatchTriggerEvent(I)V
    .locals 2
    .parameter "whichHandle"

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mOnTriggerListener:Lcom/android/phone/InCallSlidingPanel$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 425
    const-string v0, "InCallSlidingPanel"

    const-string v1, "dispatchTriggerEvent: calling onTrigger() of listener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mOnTriggerListener:Lcom/android/phone/InCallSlidingPanel$OnTriggerListener;

    invoke-interface {v0, p0, p1}, Lcom/android/phone/InCallSlidingPanel$OnTriggerListener;->onTrigger(Landroid/view/View;I)V

    .line 428
    :cond_0
    return-void
.end method

.method private getCurrentBottomMargin()I
    .locals 1

    .prologue
    .line 347
    iget-object p0, p0, Lcom/android/phone/InCallSlidingPanel;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .end local p0
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return v0
.end method

.method private getStartBottomMargin()I
    .locals 1

    .prologue
    .line 339
    iget v0, p0, Lcom/android/phone/InCallSlidingPanel;->mAnimationStartPosition:I

    invoke-direct {p0, v0}, Lcom/android/phone/InCallSlidingPanel;->getTargetBottomMargin(I)I

    move-result v0

    return v0
.end method

.method private getTargetBottomMargin(I)I
    .locals 2
    .parameter "mode"

    .prologue
    .line 323
    packed-switch p1, :pswitch_data_0

    .line 330
    const/16 v0, 0x108

    invoke-virtual {p0}, Lcom/android/phone/InCallSlidingPanel;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    .line 325
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 327
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/phone/InCallSlidingPanel;->getHeight()I

    move-result v0

    neg-int v0, v0

    goto :goto_0

    .line 323
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private hitDownThreshold()Z
    .locals 3

    .prologue
    .line 366
    invoke-virtual {p0}, Lcom/android/phone/InCallSlidingPanel;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/InCallSlidingPanel;->mSlidingBar:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/phone/InCallSlidingPanel;->mSlidingDownTarget:I

    const/16 v2, 0x28

    sub-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hitUpThreshold()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 374
    iget v0, p0, Lcom/android/phone/InCallSlidingPanel;->mAnimationStartPosition:I

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/InCallSlidingPanel;->getTop()I

    move-result v0

    iget v1, p0, Lcom/android/phone/InCallSlidingPanel;->mSlidingUpTarget:I

    add-int/lit8 v1, v1, 0x78

    if-gt v0, v1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallSlidingPanel;->getTop()I

    move-result v0

    iget v1, p0, Lcom/android/phone/InCallSlidingPanel;->mSlidingUpTarget:I

    add-int/lit8 v1, v1, 0x28

    if-gt v0, v1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method private movePanel(I)V
    .locals 3
    .parameter "deltaY"

    .prologue
    const/4 v2, 0x4

    .line 384
    invoke-direct {p0}, Lcom/android/phone/InCallSlidingPanel;->getCurrentBottomMargin()I

    move-result v1

    sub-int v0, v1, p1

    .line 385
    .local v0, bottomMargin:I
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallSlidingPanel;->getTargetBottomMargin(I)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 386
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/phone/InCallSlidingPanel;->getTargetBottomMargin(I)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 387
    invoke-direct {p0, v0}, Lcom/android/phone/InCallSlidingPanel;->setBottomMargin(I)V

    .line 390
    const/4 v1, 0x3

    if-le p1, v1, :cond_1

    .line 391
    iget-object v1, p0, Lcom/android/phone/InCallSlidingPanel;->mSlidingDownTargetView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 397
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 392
    .restart local p0
    :cond_1
    const/4 v1, -0x3

    if-ge p1, v1, :cond_0

    .line 393
    iget-object v1, p0, Lcom/android/phone/InCallSlidingPanel;->mSlidingDownTargetView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 394
    iget-object v1, p0, Lcom/android/phone/InCallSlidingPanel;->mSlidingHintAnim:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 395
    iget-object v1, p0, Lcom/android/phone/InCallSlidingPanel;->mSlidingHintAnim:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0
.end method

.method private setBottomMargin(I)V
    .locals 1
    .parameter "bottomMargin"

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 357
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallSlidingPanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 358
    invoke-virtual {p0}, Lcom/android/phone/InCallSlidingPanel;->requestLayout()V

    .line 359
    return-void
.end method

.method private setGrabbedState(I)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 435
    iget v0, p0, Lcom/android/phone/InCallSlidingPanel;->mGrabbedState:I

    if-eq p1, v0, :cond_0

    .line 436
    iput p1, p0, Lcom/android/phone/InCallSlidingPanel;->mGrabbedState:I

    .line 437
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mOnTriggerListener:Lcom/android/phone/InCallSlidingPanel$OnTriggerListener;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mOnTriggerListener:Lcom/android/phone/InCallSlidingPanel$OnTriggerListener;

    iget v1, p0, Lcom/android/phone/InCallSlidingPanel;->mGrabbedState:I

    invoke-interface {v0, p0, v1}, Lcom/android/phone/InCallSlidingPanel$OnTriggerListener;->onGrabbedStateChange(Landroid/view/View;I)V

    .line 441
    :cond_0
    return-void
.end method

.method private startAnimation(IF)V
    .locals 9
    .parameter "mode"
    .parameter "velocity"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 444
    const/4 v5, -0x1

    iput v5, p0, Lcom/android/phone/InCallSlidingPanel;->mTrackingPointerId:I

    .line 445
    invoke-direct {p0, v8}, Lcom/android/phone/InCallSlidingPanel;->setGrabbedState(I)V

    .line 446
    const/4 v0, 0x0

    .line 447
    .local v0, ani:Lcom/android/phone/InCallSlidingPanel$SlidingPanelAnimation;
    packed-switch p1, :pswitch_data_0

    .line 456
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mResetAnimation:Lcom/android/phone/InCallSlidingPanel$SlidingPanelAnimation;

    .line 459
    :goto_0
    invoke-virtual {v0}, Lcom/android/phone/InCallSlidingPanel$SlidingPanelAnimation;->reset()V

    .line 460
    invoke-direct {p0, p1}, Lcom/android/phone/InCallSlidingPanel;->getTargetBottomMargin(I)I

    move-result v5

    invoke-direct {p0}, Lcom/android/phone/InCallSlidingPanel;->getCurrentBottomMargin()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 461
    .local v1, distance:I
    const/high16 v5, 0x44fa

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result p2

    .line 462
    mul-int/lit16 v5, v1, 0x3e8

    int-to-float v5, v5

    div-float/2addr v5, p2

    float-to-long v2, v5

    .line 463
    .local v2, duration:J
    invoke-virtual {v0, v2, v3}, Lcom/android/phone/InCallSlidingPanel$SlidingPanelAnimation;->setDuration(J)V

    .line 464
    invoke-virtual {p0}, Lcom/android/phone/InCallSlidingPanel;->clearAnimation()V

    .line 465
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallSlidingPanel;->startAnimation(Landroid/view/animation/Animation;)V

    .line 467
    const/4 v5, 0x2

    if-ne p1, v5, :cond_0

    .line 468
    iget-object v5, p0, Lcom/android/phone/InCallSlidingPanel;->mDispatchHandler:Landroid/os/Handler;

    invoke-virtual {v5, v7, v8, v7}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    .line 470
    .local v4, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/phone/InCallSlidingPanel;->mDispatchHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 472
    .end local v4           #msg:Landroid/os/Message;
    :cond_0
    return-void

    .line 449
    .end local v1           #distance:I
    .end local v2           #duration:J
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mDownTriggerAnimation:Lcom/android/phone/InCallSlidingPanel$SlidingPanelAnimation;

    .line 450
    goto :goto_0

    .line 452
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mUpTriggerAnimation:Lcom/android/phone/InCallSlidingPanel$SlidingPanelAnimation;

    .line 453
    goto :goto_0

    .line 447
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized vibrate(J)V
    .locals 2
    .parameter "duration"

    .prologue
    .line 403
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 404
    invoke-virtual {p0}, Lcom/android/phone/InCallSlidingPanel;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mVibrator:Landroid/os/Vibrator;

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    monitor-exit p0

    return-void

    .line 403
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public onCancel(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "eDown"
    .parameter "eUp"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 629
    iget v0, p0, Lcom/android/phone/InCallSlidingPanel;->mTrackingPointerId:I

    if-ltz v0, :cond_1

    .line 631
    invoke-direct {p0}, Lcom/android/phone/InCallSlidingPanel;->hitUpThreshold()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    invoke-direct {p0, v3, v1}, Lcom/android/phone/InCallSlidingPanel;->startAnimation(IF)V

    :goto_0
    move v0, v3

    .line 638
    :goto_1
    return v0

    .line 634
    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/android/phone/InCallSlidingPanel;->startAnimation(IF)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 638
    goto :goto_1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "e"

    .prologue
    const/4 v2, 0x0

    .line 559
    const-wide/16 v0, 0x1e

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallSlidingPanel;->vibrate(J)V

    .line 560
    invoke-direct {p0, v2}, Lcom/android/phone/InCallSlidingPanel;->setGrabbedState(I)V

    .line 563
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mSlidingDownTargetView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 564
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mSlidingGreenBar:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 565
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mSlidingGreenBarLight:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 566
    const/4 v0, 0x1

    return v0
.end method

.method public onFinishInflate()V
    .locals 1

    .prologue
    .line 260
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 261
    const v0, 0x7f070080

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallSlidingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mIncomingCallWidgetInCall:Landroid/view/View;

    .line 262
    const v0, 0x7f070083

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallSlidingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mIncomingCallWidgetMain:Landroid/view/View;

    .line 264
    const v0, 0x7f070081

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallSlidingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mAnswerButton:Landroid/widget/Button;

    .line 266
    const v0, 0x7f070084

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallSlidingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mSlidingGreenBar:Landroid/widget/ImageView;

    .line 267
    const v0, 0x7f070085

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallSlidingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mSlidingGreenBarLight:Landroid/widget/ImageView;

    .line 268
    const v0, 0x7f070086

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallSlidingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mSlidingHintAnim:Landroid/widget/ImageView;

    .line 270
    const v0, 0x7f070087

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallSlidingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mSlidingBar:Landroid/view/View;

    .line 271
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .parameter "eDown"
    .parameter "eUp"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v6, 0x1

    const/high16 v5, 0x4396

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 572
    iget v1, p0, Lcom/android/phone/InCallSlidingPanel;->mTrackingPointerId:I

    invoke-virtual {p2, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 573
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/InCallSlidingPanel;->onCancel(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v1

    .line 598
    :goto_0
    return v1

    .line 576
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InCallSlidingPanel;->getCurrentBottomMargin()I

    move-result v0

    .line 577
    .local v0, currentBottomMargin:I
    invoke-direct {p0, v3}, Lcom/android/phone/InCallSlidingPanel;->getTargetBottomMargin(I)I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 579
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v5

    if-lez v1, :cond_1

    .line 580
    cmpg-float v1, p4, v4

    if-gez v1, :cond_3

    .line 582
    invoke-direct {p0, v6, p4}, Lcom/android/phone/InCallSlidingPanel;->startAnimation(IF)V

    .line 589
    :cond_1
    :goto_1
    invoke-direct {p0, v3}, Lcom/android/phone/InCallSlidingPanel;->getTargetBottomMargin(I)I

    move-result v1

    if-gt v0, v1, :cond_2

    .line 591
    cmpl-float v1, p4, v4

    if-lez v1, :cond_2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v5

    if-lez v1, :cond_2

    .line 593
    const-wide/16 v1, 0x28

    invoke-direct {p0, v1, v2}, Lcom/android/phone/InCallSlidingPanel;->vibrate(J)V

    .line 594
    const-string v1, "InCallSlidingPanel"

    const-string v2, "user trying to accept the call by flinging the panel"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    const/4 v1, 0x2

    invoke-direct {p0, v1, p4}, Lcom/android/phone/InCallSlidingPanel;->startAnimation(IF)V

    :cond_2
    move v1, v6

    .line 598
    goto :goto_0

    .line 585
    :cond_3
    invoke-direct {p0, v3, p4}, Lcom/android/phone/InCallSlidingPanel;->startAnimation(IF)V

    goto :goto_1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 288
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mIncomingCallWidgetMain:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 309
    :goto_0
    return v0

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "incoming_call_displayed"

    invoke-interface {v0, v1, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mGuidePopupWindow:Landroid/widget/GuidePopupWindow;

    .line 296
    iget v0, p0, Lcom/android/phone/InCallSlidingPanel;->mTrackingPointerId:I

    if-ltz v0, :cond_1

    move v0, v4

    .line 297
    goto :goto_0

    .line 298
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_2

    .line 299
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mSlidingBar:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/InCallSlidingPanel;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 301
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/phone/InCallSlidingPanel;->mSlidingBarExtendWith:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 302
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mTempRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/android/phone/InCallSlidingPanel;->mSlidingBarExtendWith:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 303
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 304
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/InCallSlidingPanel;->mTrackingPointerId:I

    move v0, v4

    .line 305
    goto :goto_0

    :cond_2
    move v0, v3

    .line 309
    goto :goto_0
.end method

.method public onMove(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6
    .parameter "eDown"
    .parameter "eMove"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v5, 0x1

    .line 604
    iget v3, p0, Lcom/android/phone/InCallSlidingPanel;->mTrackingPointerId:I

    const/4 v4, 0x0

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 605
    invoke-virtual {p0, p1, p2}, Lcom/android/phone/InCallSlidingPanel;->onCancel(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v3

    .line 624
    :goto_0
    return v3

    .line 609
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    sub-float/2addr v3, v4

    float-to-int v0, v3

    .line 610
    .local v0, deltaY:I
    invoke-direct {p0}, Lcom/android/phone/InCallSlidingPanel;->hitDownThreshold()Z

    move-result v1

    .line 611
    .local v1, hitDown:Z
    invoke-direct {p0}, Lcom/android/phone/InCallSlidingPanel;->hitUpThreshold()Z

    move-result v2

    .line 612
    .local v2, hitUp:Z
    if-eqz v1, :cond_5

    .line 614
    const-wide/16 v3, 0x28

    invoke-direct {p0, v3, v4}, Lcom/android/phone/InCallSlidingPanel;->vibrate(J)V

    .line 615
    const-string v3, "InCallSlidingPanel"

    const-string v4, "user trying to accept the call by moving the panel to target"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    const/4 v3, 0x2

    invoke-direct {p0, v3, p4}, Lcom/android/phone/InCallSlidingPanel;->startAnimation(IF)V

    .line 621
    :cond_1
    :goto_1
    if-lez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    if-gez v0, :cond_4

    if-nez v2, :cond_4

    .line 622
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/phone/InCallSlidingPanel;->movePanel(I)V

    :cond_4
    move v3, v5

    .line 624
    goto :goto_0

    .line 617
    :cond_5
    const/4 v3, -0x3

    if-ge v0, v3, :cond_1

    if-eqz v2, :cond_1

    .line 619
    invoke-direct {p0, v5, p4}, Lcom/android/phone/InCallSlidingPanel;->startAnimation(IF)V

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 314
    iget v0, p0, Lcom/android/phone/InCallSlidingPanel;->mTrackingPointerId:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mGestureDetector:Lcom/android/phone/InCallSlidingGestureDetector;

    invoke-virtual {v0, p1}, Lcom/android/phone/InCallSlidingGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 537
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 538
    if-ne p1, p0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/InCallSlidingPanel;->initialized:Z

    if-eqz v0, :cond_0

    .line 539
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v0, :cond_0

    .line 540
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/InCallSlidingPanel;->mAnimationStartPosition:I

    .line 541
    invoke-direct {p0}, Lcom/android/phone/InCallSlidingPanel;->getStartBottomMargin()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallSlidingPanel;->setBottomMargin(I)V

    .line 545
    :cond_0
    if-eqz p2, :cond_2

    .line 546
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mGuidePopupWindow:Landroid/widget/GuidePopupWindow;

    if-eqz v0, :cond_1

    .line 547
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mGuidePopupWindow:Landroid/widget/GuidePopupWindow;

    invoke-virtual {v0}, Landroid/widget/GuidePopupWindow;->dismiss()V

    .line 548
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mGuidePopupWindow:Landroid/widget/GuidePopupWindow;

    .line 550
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mSlidingHintAnim:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 551
    iget-object v0, p0, Lcom/android/phone/InCallSlidingPanel;->mSlidingHintAnim:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 554
    :cond_2
    return-void
.end method

.method public reset(Lcom/android/internal/telephony/CallManager;)V
    .locals 8
    .parameter "cm"

    .prologue
    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x0

    const-string v7, "InCallSlidingPanel"

    .line 475
    iget-object v1, p0, Lcom/android/phone/InCallSlidingPanel;->mSlidingDownTargetView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 477
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 479
    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/phone/InCallSlidingPanel;->setVisibility(I)V

    .line 480
    iget-object v1, p0, Lcom/android/phone/InCallSlidingPanel;->mSlidingHintAnim:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 533
    :goto_0
    return-void

    .line 485
    .restart local p0
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallSlidingPanel;->setVisibility(I)V

    .line 486
    iget v1, p0, Lcom/android/phone/InCallSlidingPanel;->mAnimationStartPosition:I

    if-eq v1, v6, :cond_5

    .line 487
    iput v3, p0, Lcom/android/phone/InCallSlidingPanel;->mAnimationStartPosition:I

    .line 488
    const/16 v1, 0x108

    iget-object v2, p0, Lcom/android/phone/InCallSlidingPanel;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/phone/InCallSlidingPanel;->setBottomMargin(I)V

    .line 489
    iget-object v1, p0, Lcom/android/phone/InCallSlidingPanel;->mSlidingGreenBarLight:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 494
    :goto_1
    const/4 v0, 0x0

    .line 495
    .local v0, currentCalls:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_2

    .line 496
    add-int/lit8 v0, v0, 0x1

    .line 498
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_3

    .line 499
    add-int/lit8 v0, v0, 0x1

    .line 502
    :cond_3
    if-nez v0, :cond_6

    .line 503
    const-string v1, "InCallSlidingPanel"

    const-string v1, "show incoming call widget for single call mode."

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    iget-object v1, p0, Lcom/android/phone/InCallSlidingPanel;->mIncomingCallWidgetMain:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 505
    iget-object v1, p0, Lcom/android/phone/InCallSlidingPanel;->mIncomingCallWidgetInCall:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 506
    iget-object v1, p0, Lcom/android/phone/InCallSlidingPanel;->mSlidingGreenBar:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 508
    iget-object v1, p0, Lcom/android/phone/InCallSlidingPanel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "incoming_call_displayed"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_4

    .line 509
    iget-object v1, p0, Lcom/android/phone/InCallSlidingPanel;->mGuidePopupWindow:Landroid/widget/GuidePopupWindow;

    if-nez v1, :cond_4

    .line 510
    iget-object v1, p0, Lcom/android/phone/InCallSlidingPanel;->mSlidingGreenBar:Landroid/widget/ImageView;

    new-instance v2, Lcom/android/phone/InCallSlidingPanel$4;

    invoke-direct {v2, p0}, Lcom/android/phone/InCallSlidingPanel$4;-><init>(Lcom/android/phone/InCallSlidingPanel;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 524
    :cond_4
    iget-object v1, p0, Lcom/android/phone/InCallSlidingPanel;->mSlidingHintAnim:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 525
    iget-object v1, p0, Lcom/android/phone/InCallSlidingPanel;->mSlidingHintAnim:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 491
    .end local v0           #currentCalls:I
    .restart local p0
    :cond_5
    iget-object v1, p0, Lcom/android/phone/InCallSlidingPanel;->mSlidingGreenBarLight:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 527
    .restart local v0       #currentCalls:I
    :cond_6
    const-string v1, "InCallSlidingPanel"

    const-string v1, "show incoming call widget for in call mode."

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v1, p0, Lcom/android/phone/InCallSlidingPanel;->mIncomingCallWidgetMain:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 529
    iget-object v1, p0, Lcom/android/phone/InCallSlidingPanel;->mIncomingCallWidgetInCall:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 530
    iget-object v1, p0, Lcom/android/phone/InCallSlidingPanel;->mAnswerButton:Landroid/widget/Button;

    if-ne v0, v6, :cond_7

    const v2, 0x7f0c0193

    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 531
    iget-object v1, p0, Lcom/android/phone/InCallSlidingPanel;->mSlidingHintAnim:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto/16 :goto_0

    .line 530
    .restart local p0
    :cond_7
    const v2, 0x7f0c0194

    goto :goto_2
.end method

.method public setOnTriggerListener(Lcom/android/phone/InCallSlidingPanel$OnTriggerListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 416
    iput-object p1, p0, Lcom/android/phone/InCallSlidingPanel;->mOnTriggerListener:Lcom/android/phone/InCallSlidingPanel$OnTriggerListener;

    .line 417
    return-void
.end method

.method public setSlidingTarget(Landroid/view/View;Landroid/view/View;)V
    .locals 4
    .parameter "downTarget"
    .parameter "upTarget"

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/phone/InCallSlidingPanel;->mSlidingDownTargetView:Landroid/view/View;

    .line 275
    iput-object p2, p0, Lcom/android/phone/InCallSlidingPanel;->mSlidingUpTargetView:Landroid/view/View;

    .line 277
    invoke-virtual {p0}, Lcom/android/phone/InCallSlidingPanel;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 278
    .local v0, statusBarHeight:I
    iget v1, p0, Lcom/android/phone/InCallSlidingPanel;->mDisplayHeight:I

    sub-int v2, v1, v0

    iget-object v1, p0, Lcom/android/phone/InCallSlidingPanel;->mSlidingDownTargetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int v1, v2, v1

    iput v1, p0, Lcom/android/phone/InCallSlidingPanel;->mSlidingDownTarget:I

    .line 279
    iget-object v1, p0, Lcom/android/phone/InCallSlidingPanel;->mSlidingUpTargetView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/phone/InCallSlidingPanel;->mSlidingUpTarget:I

    .line 281
    iget-object v1, p0, Lcom/android/phone/InCallSlidingPanel;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    iget v2, p0, Lcom/android/phone/InCallSlidingPanel;->mDisplayHeight:I

    iget v3, p0, Lcom/android/phone/InCallSlidingPanel;->mSlidingUpTarget:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 282
    iget-object v1, p0, Lcom/android/phone/InCallSlidingPanel;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallSlidingPanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    invoke-virtual {p0}, Lcom/android/phone/InCallSlidingPanel;->requestLayout()V

    .line 284
    return-void
.end method
