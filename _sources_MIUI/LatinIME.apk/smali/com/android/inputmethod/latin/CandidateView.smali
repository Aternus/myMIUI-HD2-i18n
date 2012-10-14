.class public Lcom/android/inputmethod/latin/CandidateView;
.super Landroid/view/View;
.source "CandidateView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/CandidateView$CandidateStripGestureListener;
    }
.end annotation


# static fields
.field private static final MAX_SUGGESTIONS:I = 0x20

.field private static final OUT_OF_BOUNDS_WORD_INDEX:I = -0x1

.field private static final OUT_OF_BOUNDS_X_COORD:I = -0x1

.field private static final SCROLL_PIXELS:I = 0x14

.field private static final X_GAP:I = 0xa


# instance fields
.field private mAddToDictionaryHint:Ljava/lang/CharSequence;

.field private mBgPadding:Landroid/graphics/Rect;

.field private final mColorNormal:I

.field private final mColorOther:I

.field private final mColorRecommended:I

.field private mCurrentWordIndex:I

.field private final mDescent:I

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mHaveMinimalSuggestion:Z

.field private final mMinTouchableWidth:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mPopupPreviewX:I

.field private mPopupPreviewY:I

.field private final mPreviewPopup:Landroid/widget/PopupWindow;

.field private final mPreviewText:Landroid/widget/TextView;

.field private mScrolled:Z

.field private mSelectedIndex:I

.field private mSelectedString:Ljava/lang/CharSequence;

.field private final mSelectionHighlight:Landroid/graphics/drawable/Drawable;

.field private mService:Lcom/android/inputmethod/latin/LatinIME;

.field private mShowingAddToDictionary:Z

.field private mShowingCompletions:Z

.field private final mSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetScrollX:I

.field private mTotalWidth:I

.field private mTouchX:I

.field private mTypedWordValid:Z

.field private final mWordWidth:[I

.field private final mWordX:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v6, 0x0

    const/16 v3, 0x20

    const/4 v4, -0x2

    const/4 v5, 0x0

    .line 97
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    .line 51
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/inputmethod/latin/CandidateView;->mTouchX:I

    .line 67
    new-array v2, v3, [I

    iput-object v2, p0, Lcom/android/inputmethod/latin/CandidateView;->mWordWidth:[I

    .line 68
    new-array v2, v3, [I

    iput-object v2, p0, Lcom/android/inputmethod/latin/CandidateView;->mWordX:[I

    .line 98
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    .line 101
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 104
    .local v0, inflate:Landroid/view/LayoutInflater;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 105
    .local v1, res:Landroid/content/res/Resources;
    new-instance v2, Landroid/widget/PopupWindow;

    invoke-direct {v2, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    .line 106
    const v2, 0x7f030001

    invoke-virtual {v0, v2, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewText:Landroid/widget/TextView;

    .line 107
    iget-object v2, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v4, v4}, Landroid/widget/PopupWindow;->setWindowLayoutMode(II)V

    .line 108
    iget-object v2, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 109
    iget-object v2, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    iget-object v2, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    const v3, 0x7f0e0001

    invoke-virtual {v2, v3}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 111
    const/high16 v2, 0x7f09

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/latin/CandidateView;->mColorNormal:I

    .line 112
    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/latin/CandidateView;->mColorRecommended:I

    .line 113
    const v2, 0x7f090002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/inputmethod/latin/CandidateView;->mColorOther:I

    .line 114
    const v2, 0x7f02003b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/latin/CandidateView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 115
    const v2, 0x7f0c0091

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/inputmethod/latin/CandidateView;->mAddToDictionaryHint:Ljava/lang/CharSequence;

    .line 117
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/inputmethod/latin/CandidateView;->mPaint:Landroid/graphics/Paint;

    .line 118
    iget-object v2, p0, Lcom/android/inputmethod/latin/CandidateView;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mColorNormal:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    iget-object v2, p0, Lcom/android/inputmethod/latin/CandidateView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 120
    iget-object v2, p0, Lcom/android/inputmethod/latin/CandidateView;->mPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 121
    iget-object v2, p0, Lcom/android/inputmethod/latin/CandidateView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 122
    iget-object v2, p0, Lcom/android/inputmethod/latin/CandidateView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 123
    iget-object v2, p0, Lcom/android/inputmethod/latin/CandidateView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/inputmethod/latin/CandidateView;->mDescent:I

    .line 124
    const v2, 0x7f0b0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lcom/android/inputmethod/latin/CandidateView;->mMinTouchableWidth:I

    .line 126
    new-instance v2, Landroid/view/GestureDetector;

    new-instance v3, Lcom/android/inputmethod/latin/CandidateView$CandidateStripGestureListener;

    iget v4, p0, Lcom/android/inputmethod/latin/CandidateView;->mMinTouchableWidth:I

    invoke-direct {v3, p0, v4}, Lcom/android/inputmethod/latin/CandidateView$CandidateStripGestureListener;-><init>(Lcom/android/inputmethod/latin/CandidateView;I)V

    invoke-direct {v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/android/inputmethod/latin/CandidateView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 128
    invoke-virtual {p0, v5}, Lcom/android/inputmethod/latin/CandidateView;->setWillNotDraw(Z)V

    .line 129
    invoke-virtual {p0, v5}, Lcom/android/inputmethod/latin/CandidateView;->setHorizontalScrollBarEnabled(Z)V

    .line 130
    invoke-virtual {p0, v5}, Lcom/android/inputmethod/latin/CandidateView;->setVerticalScrollBarEnabled(Z)V

    .line 131
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->getScrollY()I

    move-result v2

    invoke-virtual {p0, v5, v2}, Lcom/android/inputmethod/latin/CandidateView;->scrollTo(II)V

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/android/inputmethod/latin/CandidateView;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/inputmethod/latin/CandidateView;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mWordWidth:[I

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/inputmethod/latin/CandidateView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/inputmethod/latin/CandidateView;->longPressFirstWord()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/inputmethod/latin/CandidateView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mScrolled:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/inputmethod/latin/CandidateView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/CandidateView;->mScrolled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/inputmethod/latin/CandidateView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mTotalWidth:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/inputmethod/latin/CandidateView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    iput p1, p0, Lcom/android/inputmethod/latin/CandidateView;->mTargetScrollX:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/inputmethod/latin/CandidateView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/android/inputmethod/latin/CandidateView;->hidePreview()V

    return-void
.end method

.method private hidePreview()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 433
    iput v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mTouchX:I

    .line 434
    iput v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mCurrentWordIndex:I

    .line 435
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 436
    return-void
.end method

.method private longPressFirstWord()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 475
    iget-object v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 476
    .local v0, word:Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 477
    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mService:Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/inputmethod/latin/LatinIME;->addWordToDictionary(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0056

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v1}, Lcom/android/inputmethod/latin/CandidateView;->showPreview(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private scrollToTarget()V
    .locals 2

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->getScrollX()I

    move-result v0

    .line 294
    .local v0, scrollX:I
    iget v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mTargetScrollX:I

    if-le v1, v0, :cond_1

    .line 295
    add-int/lit8 v0, v0, 0x14

    .line 296
    iget v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mTargetScrollX:I

    if-lt v0, v1, :cond_0

    .line 297
    iget v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mTargetScrollX:I

    .line 298
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/inputmethod/latin/CandidateView;->scrollTo(II)V

    .line 299
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->requestLayout()V

    .line 313
    :goto_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->invalidate()V

    .line 314
    return-void

    .line 301
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/inputmethod/latin/CandidateView;->scrollTo(II)V

    goto :goto_0

    .line 304
    :cond_1
    add-int/lit8 v0, v0, -0x14

    .line 305
    iget v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mTargetScrollX:I

    if-gt v0, v1, :cond_2

    .line 306
    iget v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mTargetScrollX:I

    .line 307
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/inputmethod/latin/CandidateView;->scrollTo(II)V

    .line 308
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->requestLayout()V

    goto :goto_0

    .line 310
    :cond_2
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->getScrollY()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/inputmethod/latin/CandidateView;->scrollTo(II)V

    goto :goto_0
.end method

.method private showPreview(ILjava/lang/String;)V
    .locals 11
    .parameter "wordIndex"
    .parameter "altText"

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 439
    iget v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mCurrentWordIndex:I

    .line 440
    .local v1, oldWordIndex:I
    iput p1, p0, Lcom/android/inputmethod/latin/CandidateView;->mCurrentWordIndex:I

    .line 442
    iget v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mCurrentWordIndex:I

    if-ne v1, v6, :cond_0

    if-eqz p2, :cond_1

    .line 443
    :cond_0
    const/4 v6, -0x1

    if-ne p1, v6, :cond_2

    .line 444
    invoke-direct {p0}, Lcom/android/inputmethod/latin/CandidateView;->hidePreview()V

    .line 472
    :cond_1
    :goto_0
    return-void

    .line 446
    :cond_2
    if-eqz p2, :cond_3

    move-object v4, p2

    .line 447
    .local v4, word:Ljava/lang/CharSequence;
    :goto_1
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 448
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Landroid/widget/TextView;->measure(II)V

    .line 450
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPaint:Landroid/graphics/Paint;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v7

    invoke-virtual {v6, v4, v10, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v6

    const/high16 v7, 0x41a0

    add-float/2addr v6, v7

    float-to-int v5, v6

    .line 451
    .local v5, wordWidth:I
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v6

    add-int/2addr v6, v5

    iget-object v7, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v7

    add-int v3, v6, v7

    .line 453
    .local v3, popupWidth:I
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    .line 455
    .local v2, popupHeight:I
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mWordX:[I

    aget v6, v6, p1

    iget-object v7, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->getScrollX()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/inputmethod/latin/CandidateView;->mWordWidth:[I

    aget v7, v7, p1

    sub-int/2addr v7, v5

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    iput v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPopupPreviewX:I

    .line 457
    neg-int v6, v2

    iput v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPopupPreviewY:I

    .line 458
    const/4 v6, 0x2

    new-array v0, v6, [I

    .line 459
    .local v0, offsetInWindow:[I
    invoke-virtual {p0, v0}, Lcom/android/inputmethod/latin/CandidateView;->getLocationInWindow([I)V

    .line 460
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 461
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget v7, p0, Lcom/android/inputmethod/latin/CandidateView;->mPopupPreviewX:I

    iget v8, p0, Lcom/android/inputmethod/latin/CandidateView;->mPopupPreviewY:I

    aget v9, v0, v9

    add-int/2addr v8, v9

    invoke-virtual {v6, v7, v8, v3, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    .line 469
    :goto_2
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewText:Landroid/widget/TextView;

    invoke-virtual {v6, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 446
    .end local v0           #offsetInWindow:[I
    .end local v2           #popupHeight:I
    .end local v3           #popupWidth:I
    .end local v4           #word:Ljava/lang/CharSequence;
    .end local v5           #wordWidth:I
    :cond_3
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/CharSequence;

    move-object v4, v6

    goto :goto_1

    .line 464
    .restart local v0       #offsetInWindow:[I
    .restart local v2       #popupHeight:I
    .restart local v3       #popupWidth:I
    .restart local v4       #word:Ljava/lang/CharSequence;
    .restart local v5       #wordWidth:I
    :cond_4
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 465
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    invoke-virtual {v6, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 466
    iget-object v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mPreviewPopup:Landroid/widget/PopupWindow;

    iget v7, p0, Lcom/android/inputmethod/latin/CandidateView;->mPopupPreviewX:I

    iget v8, p0, Lcom/android/inputmethod/latin/CandidateView;->mPopupPreviewY:I

    aget v9, v0, v9

    add-int/2addr v8, v9

    invoke-virtual {v6, p0, v10, v7, v8}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_2
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 363
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 364
    iput v2, p0, Lcom/android/inputmethod/latin/CandidateView;->mTouchX:I

    .line 365
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    .line 366
    iput v2, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedIndex:I

    .line 367
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mShowingAddToDictionary:Z

    .line 368
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->invalidate()V

    .line 369
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mWordWidth:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 370
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mWordX:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 371
    return-void
.end method

.method public computeHorizontalScrollRange()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mTotalWidth:I

    return v0
.end method

.method public dismissAddToDictionaryHint()Z
    .locals 1

    .prologue
    .line 351
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mShowingAddToDictionary:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 353
    :goto_0
    return v0

    .line 352
    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->clear()V

    .line 353
    const/4 v0, 0x1

    goto :goto_0
.end method

.method getSuggestions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isShowingAddToDictionaryHint()Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/CandidateView;->mShowingAddToDictionary:Z

    return v0
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 484
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 485
    invoke-direct {p0}, Lcom/android/inputmethod/latin/CandidateView;->hidePreview()V

    .line 486
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 26
    .parameter "canvas"

    .prologue
    .line 208
    if-eqz p1, :cond_0

    .line 209
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 211
    :cond_0
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/latin/CandidateView;->mTotalWidth:I

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/CandidateView;->getHeight()I

    move-result v15

    .line 214
    .local v15, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/CandidateView;->mBgPadding:Landroid/graphics/Rect;

    move-object v5, v0

    if-nez v5, :cond_2

    .line 215
    new-instance v5, Landroid/graphics/Rect;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct {v5, v6, v7, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/CandidateView;->mBgPadding:Landroid/graphics/Rect;

    .line 216
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/CandidateView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 217
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/CandidateView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/CandidateView;->mBgPadding:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 219
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/CandidateView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/CandidateView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object v8, v0

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/CandidateView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object v9, v0

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 223
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 224
    .local v13, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/CandidateView;->mBgPadding:Landroid/graphics/Rect;

    move-object v12, v0

    .line 225
    .local v12, bgPadding:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/CandidateView;->mPaint:Landroid/graphics/Paint;

    move-object v11, v0

    .line 226
    .local v11, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/CandidateView;->mTouchX:I

    move/from16 v21, v0

    .line 227
    .local v21, touchX:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/CandidateView;->getScrollX()I

    move-result v17

    .line 228
    .local v17, scrollX:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/CandidateView;->mScrolled:Z

    move/from16 v18, v0

    .line 229
    .local v18, scrolled:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/CandidateView;->mTypedWordValid:Z

    move/from16 v22, v0

    .line 230
    .local v22, typedWordValid:Z
    int-to-float v5, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/CandidateView;->mPaint:Landroid/graphics/Paint;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Paint;->getTextSize()F

    move-result v6

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/CandidateView;->mDescent:I

    move v6, v0

    int-to-float v6, v6

    sub-float/2addr v5, v6

    float-to-int v5, v5

    div-int/lit8 v25, v5, 0x2

    .line 232
    .local v25, y:I
    const/4 v14, 0x0

    .line 234
    .local v14, existsAutoCompletion:Z
    const/16 v24, 0x0

    .line 235
    .local v24, x:I
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move/from16 v0, v16

    move v1, v13

    if-ge v0, v1, :cond_f

    .line 236
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/CharSequence;

    .line 237
    .local v19, suggestion:Ljava/lang/CharSequence;
    if-nez v19, :cond_3

    .line 235
    :goto_1
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 238
    :cond_3
    invoke-interface/range {v19 .. v19}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 240
    .local v8, wordLength:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/CandidateView;->mColorNormal:I

    move v5, v0

    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 241
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/CandidateView;->mHaveMinimalSuggestion:Z

    move v5, v0

    if-eqz v5, :cond_d

    const/4 v5, 0x1

    move/from16 v0, v16

    move v1, v5

    if-ne v0, v1, :cond_4

    if-eqz v22, :cond_5

    :cond_4
    if-nez v16, :cond_d

    if-eqz v22, :cond_d

    .line 243
    :cond_5
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 244
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/CandidateView;->mColorRecommended:I

    move v5, v0

    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    const/4 v14, 0x1

    .line 252
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/CandidateView;->mWordWidth:[I

    move-object v5, v0

    aget v23, v5, v16

    .local v23, wordWidth:I
    if-nez v23, :cond_7

    .line 253
    const/4 v5, 0x0

    move-object v0, v11

    move-object/from16 v1, v19

    move v2, v5

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v20

    .line 254
    .local v20, textWidth:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/CandidateView;->mMinTouchableWidth:I

    move v5, v0

    move/from16 v0, v20

    float-to-int v0, v0

    move v6, v0

    add-int/lit8 v6, v6, 0x14

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/CandidateView;->mWordWidth:[I

    move-object v5, v0

    aput v23, v5, v16

    .line 258
    .end local v20           #textWidth:F
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/CandidateView;->mWordX:[I

    move-object v5, v0

    aput v24, v5, v16

    .line 260
    const/4 v5, -0x1

    move/from16 v0, v21

    move v1, v5

    if-eq v0, v1, :cond_9

    if-nez v18, :cond_9

    add-int v5, v21, v17

    move v0, v5

    move/from16 v1, v24

    if-lt v0, v1, :cond_9

    add-int v5, v21, v17

    add-int v6, v24, v23

    if-ge v5, v6, :cond_9

    .line 262
    if-eqz p1, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/CandidateView;->mShowingAddToDictionary:Z

    move v5, v0

    if-nez v5, :cond_8

    .line 263
    move/from16 v0, v24

    int-to-float v0, v0

    move v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/CandidateView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    const/4 v6, 0x0

    iget v7, v12, Landroid/graphics/Rect;->top:I

    move-object v0, v5

    move v1, v6

    move v2, v7

    move/from16 v3, v23

    move v4, v15

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/CandidateView;->mSelectionHighlight:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 266
    move/from16 v0, v24

    neg-int v0, v0

    move v5, v0

    int-to-float v5, v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 268
    :cond_8
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    .line 269
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/latin/CandidateView;->mSelectedIndex:I

    .line 272
    :cond_9
    if-eqz p1, :cond_c

    .line 273
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    div-int/lit8 v5, v23, 0x2

    add-int v5, v5, v24

    int-to-float v9, v5

    move/from16 v0, v25

    int-to-float v0, v0

    move v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 274
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/CandidateView;->mColorOther:I

    move v5, v0

    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 275
    add-int v5, v24, v23

    int-to-float v5, v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 277
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/CandidateView;->mShowingAddToDictionary:Z

    move v5, v0

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    move/from16 v0, v16

    move v1, v5

    if-eq v0, v1, :cond_b

    .line 278
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/CandidateView;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 280
    :cond_b
    move/from16 v0, v24

    neg-int v0, v0

    move v5, v0

    sub-int v5, v5, v23

    int-to-float v5, v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 282
    :cond_c
    sget-object v5, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 283
    add-int v24, v24, v23

    goto/16 :goto_1

    .line 246
    .end local v23           #wordWidth:I
    :cond_d
    if-nez v16, :cond_e

    const/4 v5, 0x1

    if-ne v8, v5, :cond_6

    const/4 v5, 0x1

    if-le v13, v5, :cond_6

    .line 249
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/CandidateView;->mColorOther:I

    move v5, v0

    invoke-virtual {v11, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_2

    .line 285
    .end local v8           #wordLength:I
    .end local v19           #suggestion:Ljava/lang/CharSequence;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/CandidateView;->mService:Lcom/android/inputmethod/latin/LatinIME;

    move-object v5, v0

    invoke-virtual {v5, v14}, Lcom/android/inputmethod/latin/LatinIME;->onAutoCompletionStateChanged(Z)V

    .line 286
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/inputmethod/latin/CandidateView;->mTotalWidth:I

    .line 287
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/CandidateView;->mTargetScrollX:I

    move v5, v0

    move v0, v5

    move/from16 v1, v17

    if-eq v0, v1, :cond_10

    .line 288
    invoke-direct/range {p0 .. p0}, Lcom/android/inputmethod/latin/CandidateView;->scrollToTarget()V

    .line 290
    :cond_10
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "me"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 376
    iget-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v7

    .line 429
    :goto_0
    return v3

    .line 380
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 381
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .line 382
    .local v1, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 383
    .local v2, y:I
    iput v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mTouchX:I

    .line 385
    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    move v3, v7

    .line 429
    goto :goto_0

    .line 387
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->invalidate()V

    goto :goto_1

    .line 390
    :pswitch_1
    if-gtz v2, :cond_1

    .line 392
    iget-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 395
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mShowingCompletions:Z

    if-nez v3, :cond_2

    .line 398
    iget-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Lcom/android/inputmethod/latin/TextEntryState;->acceptedSuggestion(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 401
    :cond_2
    iget-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mService:Lcom/android/inputmethod/latin/LatinIME;

    iget v4, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedIndex:I

    iget-object v5, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, v5}, Lcom/android/inputmethod/latin/LatinIME;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    .line 402
    iput-object v8, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    .line 403
    iput v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedIndex:I

    goto :goto_1

    .line 408
    :pswitch_2
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mScrolled:Z

    if-nez v3, :cond_3

    .line 409
    iget-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    .line 410
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mShowingAddToDictionary:Z

    if-eqz v3, :cond_4

    .line 411
    invoke-direct {p0}, Lcom/android/inputmethod/latin/CandidateView;->longPressFirstWord()V

    .line 412
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->clear()V

    .line 422
    :cond_3
    :goto_2
    iput-object v8, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    .line 423
    iput v6, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedIndex:I

    .line 424
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->requestLayout()V

    .line 425
    invoke-direct {p0}, Lcom/android/inputmethod/latin/CandidateView;->hidePreview()V

    .line 426
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->invalidate()V

    goto :goto_1

    .line 414
    :cond_4
    iget-boolean v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mShowingCompletions:Z

    if-nez v3, :cond_5

    .line 415
    iget-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    invoke-static {v3, v4}, Lcom/android/inputmethod/latin/TextEntryState;->acceptedSuggestion(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 418
    :cond_5
    iget-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mService:Lcom/android/inputmethod/latin/LatinIME;

    iget v4, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedIndex:I

    iget-object v5, p0, Lcom/android/inputmethod/latin/CandidateView;->mSelectedString:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4, v5}, Lcom/android/inputmethod/latin/LatinIME;->pickSuggestionManually(ILjava/lang/CharSequence;)V

    goto :goto_2

    .line 385
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setService(Lcom/android/inputmethod/latin/LatinIME;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 194
    iput-object p1, p0, Lcom/android/inputmethod/latin/CandidateView;->mService:Lcom/android/inputmethod/latin/LatinIME;

    .line 195
    return-void
.end method

.method public setSuggestions(Ljava/util/List;ZZZ)V
    .locals 6
    .parameter
    .parameter "completions"
    .parameter "typedWordValid"
    .parameter "haveMinimalSuggestion"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;ZZZ)V"
        }
    .end annotation

    .prologue
    .local p1, suggestions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v5, 0x0

    .line 318
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->clear()V

    .line 319
    if-eqz p1, :cond_1

    .line 320
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x20

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 321
    .local v1, insertCount:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    .line 322
    .local v2, suggestion:Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/inputmethod/latin/CandidateView;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_0

    .line 327
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #insertCount:I
    .end local v2           #suggestion:Ljava/lang/CharSequence;
    :cond_1
    iput-boolean p2, p0, Lcom/android/inputmethod/latin/CandidateView;->mShowingCompletions:Z

    .line 328
    iput-boolean p3, p0, Lcom/android/inputmethod/latin/CandidateView;->mTypedWordValid:Z

    .line 329
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->getScrollY()I

    move-result v3

    invoke-virtual {p0, v5, v3}, Lcom/android/inputmethod/latin/CandidateView;->scrollTo(II)V

    .line 330
    iput v5, p0, Lcom/android/inputmethod/latin/CandidateView;->mTargetScrollX:I

    .line 331
    iput-boolean p4, p0, Lcom/android/inputmethod/latin/CandidateView;->mHaveMinimalSuggestion:Z

    .line 333
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/inputmethod/latin/CandidateView;->onDraw(Landroid/graphics/Canvas;)V

    .line 334
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->invalidate()V

    .line 335
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/CandidateView;->requestLayout()V

    .line 336
    return-void
.end method

.method public showAddToDictionaryHint(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "word"

    .prologue
    const/4 v2, 0x0

    .line 343
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 344
    .local v0, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    iget-object v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mAddToDictionaryHint:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    invoke-virtual {p0, v0, v2, v2, v2}, Lcom/android/inputmethod/latin/CandidateView;->setSuggestions(Ljava/util/List;ZZZ)V

    .line 347
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/inputmethod/latin/CandidateView;->mShowingAddToDictionary:Z

    .line 348
    return-void
.end method
