.class public Lcom/android/mms/ui/RowLayout;
.super Landroid/view/ViewGroup;
.source "RowLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/RowLayout$LayoutParams;,
        Lcom/android/mms/ui/RowLayout$RowInfo;
    }
.end annotation


# instance fields
.field private mHorizontalSpacing:I

.field protected mRows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/ui/RowLayout$RowInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mVerticalSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 14
    iput v0, p0, Lcom/android/mms/ui/RowLayout;->mVerticalSpacing:I

    .line 15
    iput v0, p0, Lcom/android/mms/ui/RowLayout;->mHorizontalSpacing:I

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/RowLayout;->mRows:Ljava/util/ArrayList;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    iput v0, p0, Lcom/android/mms/ui/RowLayout;->mVerticalSpacing:I

    .line 15
    iput v0, p0, Lcom/android/mms/ui/RowLayout;->mHorizontalSpacing:I

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/RowLayout;->mRows:Ljava/util/ArrayList;

    .line 49
    invoke-direct {p0, p2}, Lcom/android/mms/ui/RowLayout;->initAttributes(Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    iput v0, p0, Lcom/android/mms/ui/RowLayout;->mVerticalSpacing:I

    .line 15
    iput v0, p0, Lcom/android/mms/ui/RowLayout;->mHorizontalSpacing:I

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/RowLayout;->mRows:Ljava/util/ArrayList;

    .line 54
    invoke-direct {p0, p2}, Lcom/android/mms/ui/RowLayout;->initAttributes(Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method private initAttributes(Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "attrs"

    .prologue
    const/4 v3, 0x0

    .line 58
    invoke-virtual {p0}, Lcom/android/mms/ui/RowLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/mms/R$styleable;->RowLayout:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 59
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/RowLayout;->setVerticalSpacing(I)V

    .line 60
    const/4 v1, 0x1

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/RowLayout;->setHorizontalSpacing(I)V

    .line 61
    return-void
.end method


# virtual methods
.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "x0"

    .prologue
    .line 13
    invoke-virtual {p0, p1}, Lcom/android/mms/ui/RowLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/mms/ui/RowLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/mms/ui/RowLayout$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 73
    new-instance v0, Lcom/android/mms/ui/RowLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/mms/ui/RowLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/mms/ui/RowLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 9
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 155
    const/4 v2, 0x0

    .line 156
    .local v2, i:I
    invoke-virtual {p0}, Lcom/android/mms/ui/RowLayout;->getPaddingTop()I

    move-result v7

    add-int v6, p3, v7

    .line 157
    .local v6, y:I
    const/4 v3, 0x0

    .local v3, row:I
    :goto_0
    iget-object v7, p0, Lcom/android/mms/ui/RowLayout;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_1

    .line 158
    invoke-virtual {p0}, Lcom/android/mms/ui/RowLayout;->getPaddingLeft()I

    move-result v7

    add-int v4, p2, v7

    .line 159
    .local v4, x:I
    const/4 v1, 0x0

    .local v1, column:I
    :goto_1
    iget-object v7, p0, Lcom/android/mms/ui/RowLayout;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/ui/RowLayout$RowInfo;

    iget v7, v7, Lcom/android/mms/ui/RowLayout$RowInfo;->childCount:I

    if-ge v1, v7, :cond_0

    .line 160
    invoke-virtual {p0, v2}, Lcom/android/mms/ui/RowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 161
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int v5, v4, v7

    .line 162
    .local v5, x2:I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {v0, v4, v6, v5, v7}, Landroid/view/View;->layout(IIII)V

    .line 163
    iget v7, p0, Lcom/android/mms/ui/RowLayout;->mHorizontalSpacing:I

    add-int v4, v5, v7

    .line 164
    add-int/lit8 v2, v2, 0x1

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 166
    .end local v0           #child:Landroid/view/View;
    .end local v5           #x2:I
    :cond_0
    iget-object v7, p0, Lcom/android/mms/ui/RowLayout;->mRows:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/ui/RowLayout$RowInfo;

    iget v7, v7, Lcom/android/mms/ui/RowLayout$RowInfo;->height:I

    iget v8, p0, Lcom/android/mms/ui/RowLayout;->mVerticalSpacing:I

    add-int/2addr v7, v8

    add-int/2addr v6, v7

    .line 157
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 168
    .end local v1           #column:I
    .end local v4           #x:I
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 20
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 92
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v18

    .line 93
    .local v18, widthMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v19

    .line 94
    .local v19, widthSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v12

    .line 95
    .local v12, heightMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v13

    .line 97
    .local v13, heightSize:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/RowLayout;->getChildCount()I

    move-result v11

    .line 98
    .local v11, count:I
    const/4 v8, 0x0

    .line 99
    .local v8, heightUsed:I
    const/4 v15, 0x0

    .line 101
    .local v15, maxRowWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RowLayout;->mRows:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 102
    new-instance v17, Lcom/android/mms/ui/RowLayout$RowInfo;

    invoke-direct/range {v17 .. v17}, Lcom/android/mms/ui/RowLayout$RowInfo;-><init>()V

    .line 103
    .local v17, rowInfo:Lcom/android/mms/ui/RowLayout$RowInfo;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    if-ge v14, v11, :cond_1

    .line 104
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/RowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 107
    .local v4, child:Landroid/view/View;
    const/4 v6, 0x0

    move-object/from16 v3, p0

    move/from16 v5, p1

    move/from16 v7, p2

    invoke-virtual/range {v3 .. v8}, Lcom/android/mms/ui/RowLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 108
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 109
    .local v9, childHeight:I
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    .line 111
    .local v10, childWidth:I
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/mms/ui/RowLayout$RowInfo;->width:I

    move v3, v0

    add-int v16, v3, v10

    .line 112
    .local v16, newWidth:I
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/mms/ui/RowLayout$RowInfo;->childCount:I

    move v3, v0

    if-lez v3, :cond_0

    .line 113
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/RowLayout;->mHorizontalSpacing:I

    move v3, v0

    add-int v16, v16, v3

    .line 115
    :cond_0
    if-eqz v18, :cond_6

    move/from16 v0, v16

    move/from16 v1, v19

    if-le v0, v1, :cond_6

    .line 117
    if-eqz v12, :cond_4

    if-lt v8, v13, :cond_4

    .line 140
    .end local v4           #child:Landroid/view/View;
    .end local v9           #childHeight:I
    .end local v10           #childWidth:I
    .end local v16           #newWidth:I
    :cond_1
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/mms/ui/RowLayout$RowInfo;->childCount:I

    move v3, v0

    if-lez v3, :cond_3

    .line 141
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RowLayout;->mRows:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 142
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/RowLayout;->mVerticalSpacing:I

    move v3, v0

    add-int/2addr v8, v3

    .line 144
    :cond_2
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/mms/ui/RowLayout$RowInfo;->height:I

    move v3, v0

    add-int/2addr v8, v3

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RowLayout;->mRows:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/RowLayout;->getPaddingLeft()I

    move-result v3

    add-int/2addr v3, v15

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/RowLayout;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    move v0, v3

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/mms/ui/RowLayout;->resolveSize(II)I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/RowLayout;->getPaddingTop()I

    move-result v4

    add-int/2addr v4, v8

    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/ui/RowLayout;->getPaddingBottom()I

    move-result v5

    add-int/2addr v4, v5

    move v0, v4

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/android/mms/ui/RowLayout;->resolveSize(II)I

    move-result v4

    move-object/from16 v0, p0

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/ui/RowLayout;->setMeasuredDimension(II)V

    .line 151
    return-void

    .line 122
    .restart local v4       #child:Landroid/view/View;
    .restart local v9       #childHeight:I
    .restart local v10       #childWidth:I
    .restart local v16       #newWidth:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RowLayout;->mRows:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 123
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/RowLayout;->mVerticalSpacing:I

    move v3, v0

    add-int/2addr v8, v3

    .line 125
    :cond_5
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/mms/ui/RowLayout$RowInfo;->height:I

    move v3, v0

    add-int/2addr v8, v3

    .line 126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/RowLayout;->mRows:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v17, Lcom/android/mms/ui/RowLayout$RowInfo;

    .end local v17           #rowInfo:Lcom/android/mms/ui/RowLayout$RowInfo;
    invoke-direct/range {v17 .. v17}, Lcom/android/mms/ui/RowLayout$RowInfo;-><init>()V

    .line 130
    .restart local v17       #rowInfo:Lcom/android/mms/ui/RowLayout$RowInfo;
    :cond_6
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/mms/ui/RowLayout$RowInfo;->childCount:I

    move v3, v0

    if-lez v3, :cond_7

    .line 131
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/mms/ui/RowLayout$RowInfo;->width:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/mms/ui/RowLayout;->mHorizontalSpacing:I

    move v4, v0

    .end local v4           #child:Landroid/view/View;
    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/mms/ui/RowLayout$RowInfo;->width:I

    .line 133
    :cond_7
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/mms/ui/RowLayout$RowInfo;->width:I

    move v3, v0

    add-int/2addr v3, v10

    move v0, v3

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/mms/ui/RowLayout$RowInfo;->width:I

    .line 134
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/mms/ui/RowLayout$RowInfo;->childCount:I

    move v3, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/mms/ui/RowLayout$RowInfo;->childCount:I

    .line 135
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/mms/ui/RowLayout$RowInfo;->width:I

    move v3, v0

    invoke-static {v15, v3}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 136
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/mms/ui/RowLayout$RowInfo;->height:I

    move v3, v0

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v0, v3

    move-object/from16 v1, v17

    iput v0, v1, Lcom/android/mms/ui/RowLayout$RowInfo;->height:I

    .line 103
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0
.end method

.method public setHorizontalSpacing(I)V
    .locals 0
    .parameter "horizontalSpacing"

    .prologue
    .line 82
    iput p1, p0, Lcom/android/mms/ui/RowLayout;->mHorizontalSpacing:I

    .line 83
    invoke-virtual {p0}, Lcom/android/mms/ui/RowLayout;->requestLayout()V

    .line 84
    return-void
.end method

.method public setVerticalSpacing(I)V
    .locals 0
    .parameter "verticalSpacing"

    .prologue
    .line 77
    iput p1, p0, Lcom/android/mms/ui/RowLayout;->mVerticalSpacing:I

    .line 78
    invoke-virtual {p0}, Lcom/android/mms/ui/RowLayout;->requestLayout()V

    .line 79
    return-void
.end method
