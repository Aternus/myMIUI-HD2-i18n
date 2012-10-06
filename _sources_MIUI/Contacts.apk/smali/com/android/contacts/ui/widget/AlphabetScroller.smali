.class public Lcom/android/contacts/ui/widget/AlphabetScroller;
.super Landroid/widget/ImageButton;
.source "AlphabetScroller.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final mAlphabet:[C

.field private mFastScroller:Landroid/widget/FastScroller;

.field private mIndexer:Landroid/widget/SectionIndexer;

.field private mList:Landroid/widget/AbsListView;

.field private final mOverlaySize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 28
    .local v0, resources:Landroid/content/res/Resources;
    const v1, 0x7f0b0126

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    iput-object v1, p0, Lcom/android/contacts/ui/widget/AlphabetScroller;->mAlphabet:[C

    .line 29
    const v1, 0x7f090018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/contacts/ui/widget/AlphabetScroller;->mOverlaySize:I

    .line 30
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Lcom/android/contacts/ui/widget/AlphabetScroller;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 31
    invoke-virtual {p0, p0}, Lcom/android/contacts/ui/widget/AlphabetScroller;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    return-void
.end method

.method private getPosition(F)F
    .locals 8
    .parameter "y"

    .prologue
    .line 63
    iget v6, p0, Lcom/android/contacts/ui/widget/AlphabetScroller;->mPaddingTop:I

    int-to-float v6, v6

    cmpg-float v6, p1, v6

    if-gez v6, :cond_0

    .line 64
    const/high16 v6, -0x4080

    .line 83
    :goto_0
    return v6

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/ui/widget/AlphabetScroller;->getPaddingBottom()I

    move-result v3

    .line 69
    .local v3, paddingBottom:I
    invoke-virtual {p0}, Lcom/android/contacts/ui/widget/AlphabetScroller;->getHeight()I

    move-result v0

    .line 70
    .local v0, h:I
    sub-int v6, v0, v3

    int-to-float v6, v6

    cmpl-float v6, p1, v6

    if-ltz v6, :cond_1

    .line 71
    const/high16 v6, 0x3f80

    goto :goto_0

    .line 75
    :cond_1
    iget-object v6, p0, Lcom/android/contacts/ui/widget/AlphabetScroller;->mAlphabet:[C

    array-length v6, v6

    int-to-float v6, v6

    mul-float/2addr v6, p1

    sub-int v7, v0, v3

    int-to-float v7, v7

    div-float/2addr v6, v7

    float-to-int v2, v6

    .line 76
    .local v2, needlePos:I
    iget-object v6, p0, Lcom/android/contacts/ui/widget/AlphabetScroller;->mAlphabet:[C

    aget-char v6, v6, v2

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, needle:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/contacts/ui/widget/AlphabetScroller;->mIndexer:Landroid/widget/SectionIndexer;

    invoke-interface {v6}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v5

    .line 78
    .local v5, sections:[Ljava/lang/Object;
    invoke-static {v5, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 79
    .local v4, section:I
    if-gez v4, :cond_2

    .line 81
    neg-int v6, v4

    const/4 v7, 0x2

    sub-int v4, v6, v7

    .line 83
    :cond_2
    int-to-float v6, v4

    array-length v7, v5

    int-to-float v7, v7

    div-float/2addr v6, v7

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .parameter "v"

    .prologue
    .line 89
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 46
    iget-object v1, p0, Lcom/android/contacts/ui/widget/AlphabetScroller;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 59
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 50
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/contacts/ui/widget/AlphabetScroller;->getPosition(F)F

    move-result v0

    .line 51
    .local v0, position:F
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 52
    iget-object v1, p0, Lcom/android/contacts/ui/widget/AlphabetScroller;->mList:Landroid/widget/AbsListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setSelection(I)V

    goto :goto_0

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/ui/widget/AlphabetScroller;->mFastScroller:Landroid/widget/FastScroller;

    invoke-interface {v1, v0}, Landroid/widget/FastScroller;->scrollTo(F)V

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setList(Landroid/widget/AbsListView;Landroid/widget/SectionIndexer;)V
    .locals 4
    .parameter "list"
    .parameter "indexer"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/contacts/ui/widget/AlphabetScroller;->mList:Landroid/widget/AbsListView;

    .line 36
    iput-object p2, p0, Lcom/android/contacts/ui/widget/AlphabetScroller;->mIndexer:Landroid/widget/SectionIndexer;

    .line 37
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFastScroller()Landroid/widget/FastScroller;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/ui/widget/AlphabetScroller;->mFastScroller:Landroid/widget/FastScroller;

    .line 38
    iget-object v0, p0, Lcom/android/contacts/ui/widget/AlphabetScroller;->mFastScroller:Landroid/widget/FastScroller;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/android/contacts/ui/widget/AlphabetScroller;->mFastScroller:Landroid/widget/FastScroller;

    invoke-interface {v0}, Landroid/widget/FastScroller;->hideThumb()V

    .line 40
    iget-object v0, p0, Lcom/android/contacts/ui/widget/AlphabetScroller;->mFastScroller:Landroid/widget/FastScroller;

    const v1, 0x7f020069

    iget v2, p0, Lcom/android/contacts/ui/widget/AlphabetScroller;->mOverlaySize:I

    const/high16 v3, 0x3f00

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/FastScroller;->setOverlayDrawable(IIF)V

    .line 42
    :cond_0
    return-void
.end method
