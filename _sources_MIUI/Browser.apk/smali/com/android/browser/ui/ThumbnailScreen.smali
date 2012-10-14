.class public Lcom/android/browser/ui/ThumbnailScreen;
.super Landroid/view/ViewGroup;
.source "ThumbnailScreen.java"


# static fields
.field private static final DRAG_OVER_MOVEMENT_ANIMATION_OFFSET_UNIT:I = 0x14

.field private static final DRAG_OVER_MOVEMENT_DELAY:I = 0x64


# instance fields
.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field protected mChildHeight:I

.field protected mChildWidth:I

.field protected mColumnCount:I

.field private mFoucsedThumbnail:Landroid/view/View;

.field private mLastestMoveIndex:I

.field private mLastestMoveTime:J

.field protected mMaxChildrenCount:I

.field private mMovingAnimationStarted:Z

.field protected mOrderThumbnailInRowFirst:Z

.field protected mRowCount:I

.field protected mScreenMarginLeft:I

.field protected mScreenMarginTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IIIIZ)V
    .locals 3
    .parameter "context"
    .parameter "rowCount"
    .parameter "columnCount"
    .parameter "childWidth"
    .parameter "childHeight"
    .parameter "orderThumbnailInRowFirst"

    .prologue
    const/4 v2, 0x1

    .line 38
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 22
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/ui/ThumbnailScreen;->mLastestMoveIndex:I

    .line 172
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/ui/ThumbnailScreen;->mMovingAnimationStarted:Z

    .line 40
    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/browser/ui/ThumbnailScreen;->mRowCount:I

    .line 41
    invoke-static {v2, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/browser/ui/ThumbnailScreen;->mColumnCount:I

    .line 42
    invoke-static {v2, p5}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/browser/ui/ThumbnailScreen;->mChildHeight:I

    .line 43
    invoke-static {v2, p4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/browser/ui/ThumbnailScreen;->mChildWidth:I

    .line 44
    iget v0, p0, Lcom/android/browser/ui/ThumbnailScreen;->mRowCount:I

    iget v1, p0, Lcom/android/browser/ui/ThumbnailScreen;->mColumnCount:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/browser/ui/ThumbnailScreen;->mMaxChildrenCount:I

    .line 45
    iput-boolean p6, p0, Lcom/android/browser/ui/ThumbnailScreen;->mOrderThumbnailInRowFirst:Z

    .line 47
    invoke-virtual {p0, v2}, Lcom/android/browser/ui/ThumbnailScreen;->setDrawingCacheEnabled(Z)V

    .line 48
    invoke-virtual {p0, v2}, Lcom/android/browser/ui/ThumbnailScreen;->setWholeAnimationCacheEnabled(Z)V

    .line 49
    return-void
.end method

.method static synthetic access$002(Lcom/android/browser/ui/ThumbnailScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/android/browser/ui/ThumbnailScreen;->mMovingAnimationStarted:Z

    return p1
.end method

.method private convertToColumnIndex(I)I
    .locals 3
    .parameter "rawIndex"

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/android/browser/ui/ThumbnailScreen;->mOrderThumbnailInRowFirst:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/browser/ui/ThumbnailScreen;->mColumnCount:I

    rem-int v0, p1, v0

    :goto_0
    iget v1, p0, Lcom/android/browser/ui/ThumbnailScreen;->mMaxChildrenCount:I

    div-int v1, p1, v1

    iget v2, p0, Lcom/android/browser/ui/ThumbnailScreen;->mColumnCount:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lcom/android/browser/ui/ThumbnailScreen;->mRowCount:I

    div-int v0, p1, v0

    goto :goto_0
.end method

.method private convertToRawIndex(II)I
    .locals 1
    .parameter "rowIndex"
    .parameter "columnIndex"

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/android/browser/ui/ThumbnailScreen;->mOrderThumbnailInRowFirst:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/browser/ui/ThumbnailScreen;->mColumnCount:I

    mul-int/2addr v0, p1

    add-int/2addr v0, p2

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/browser/ui/ThumbnailScreen;->mRowCount:I

    mul-int/2addr v0, p2

    add-int/2addr v0, p1

    goto :goto_0
.end method

.method private convertToRowIndex(I)I
    .locals 2
    .parameter "rawIndex"

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/android/browser/ui/ThumbnailScreen;->mOrderThumbnailInRowFirst:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/browser/ui/ThumbnailScreen;->mColumnCount:I

    div-int v0, p1, v0

    :goto_0
    iget v1, p0, Lcom/android/browser/ui/ThumbnailScreen;->mRowCount:I

    rem-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lcom/android/browser/ui/ThumbnailScreen;->mRowCount:I

    rem-int v0, p1, v0

    goto :goto_0
.end method

.method private getPositionIndex(II)I
    .locals 7
    .parameter "hitX"
    .parameter "hitY"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 309
    iget v2, p0, Lcom/android/browser/ui/ThumbnailScreen;->mScreenMarginLeft:I

    sub-int/2addr p1, v2

    .line 310
    iget v2, p0, Lcom/android/browser/ui/ThumbnailScreen;->mScreenMarginTop:I

    sub-int/2addr p2, v2

    .line 312
    iget v2, p0, Lcom/android/browser/ui/ThumbnailScreen;->mChildHeight:I

    div-int v1, p2, v2

    .line 313
    .local v1, rowIndex:I
    iget v2, p0, Lcom/android/browser/ui/ThumbnailScreen;->mChildWidth:I

    div-int v0, p1, v2

    .line 316
    .local v0, columnIndex:I
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget v2, p0, Lcom/android/browser/ui/ThumbnailScreen;->mColumnCount:I

    if-ge v0, v2, :cond_0

    iget v2, p0, Lcom/android/browser/ui/ThumbnailScreen;->mRowCount:I

    if-lt v1, v2, :cond_1

    .line 317
    :cond_0
    iget v2, p0, Lcom/android/browser/ui/ThumbnailScreen;->mRowCount:I

    sub-int/2addr v2, v6

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, p0, Lcom/android/browser/ui/ThumbnailScreen;->mColumnCount:I

    sub-int/2addr v3, v6

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/browser/ui/ThumbnailScreen;->convertToRawIndex(II)I

    move-result v2

    .line 328
    :goto_0
    return v2

    .line 325
    :cond_1
    iget v2, p0, Lcom/android/browser/ui/ThumbnailScreen;->mChildWidth:I

    rem-int v2, p1, v2

    iget v3, p0, Lcom/android/browser/ui/ThumbnailScreen;->mChildWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x7

    iget v3, p0, Lcom/android/browser/ui/ThumbnailScreen;->mChildWidth:I

    mul-int/lit8 v3, v3, 0x3

    if-le v2, v3, :cond_2

    move v2, v4

    goto :goto_0

    .line 326
    :cond_2
    iget v2, p0, Lcom/android/browser/ui/ThumbnailScreen;->mChildHeight:I

    rem-int v2, p2, v2

    iget v3, p0, Lcom/android/browser/ui/ThumbnailScreen;->mChildHeight:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x7

    iget v3, p0, Lcom/android/browser/ui/ThumbnailScreen;->mChildHeight:I

    mul-int/lit8 v3, v3, 0x3

    if-le v2, v3, :cond_3

    move v2, v4

    goto :goto_0

    .line 328
    :cond_3
    invoke-direct {p0, v1, v0}, Lcom/android/browser/ui/ThumbnailScreen;->convertToRawIndex(II)I

    move-result v2

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 5
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/android/browser/ui/ThumbnailScreen;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/android/browser/ui/ThumbnailScreen;->mMaxChildrenCount:I

    if-lt v0, v1, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ScreenViewItem only support %d children."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/browser/ui/ThumbnailScreen;->mMaxChildrenCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 96
    return-void
.end method

.method public clearSwitchingAnimation()V
    .locals 4

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/android/browser/ui/ThumbnailScreen;->getChildCount()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 166
    invoke-virtual {p0, v0}, Lcom/android/browser/ui/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 167
    .local v1, thumbnail:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 165
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 169
    .end local v1           #thumbnail:Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/ui/ThumbnailScreen;->clearAnimation()V

    .line 170
    return-void
.end method

.method public getThumbnailIndex(II)I
    .locals 5
    .parameter "hitX"
    .parameter "hitY"

    .prologue
    .line 296
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 297
    .local v0, hitRect:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/browser/ui/ThumbnailScreen;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int v1, v3, v4

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_1

    .line 298
    invoke-virtual {p0, v1}, Lcom/android/browser/ui/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 299
    .local v2, thumbnail:Landroid/view/View;
    invoke-virtual {v2, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 300
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    .line 304
    .end local v2           #thumbnail:Landroid/view/View;
    :goto_1
    return v3

    .line 297
    .restart local v2       #thumbnail:Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 304
    .end local v2           #thumbnail:Landroid/view/View;
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method public isMovingAnimationStarted()Z
    .locals 1

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/browser/ui/ThumbnailScreen;->mMovingAnimationStarted:Z

    return v0
.end method

.method protected layoutChildByIndex(I)V
    .locals 9
    .parameter "index"

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/browser/ui/ThumbnailScreen;->convertToRowIndex(I)I

    move-result v1

    .line 64
    .local v1, rowIndex:I
    invoke-direct {p0, p1}, Lcom/android/browser/ui/ThumbnailScreen;->convertToColumnIndex(I)I

    move-result v0

    .line 66
    .local v0, columnIndex:I
    invoke-virtual {p0, p1}, Lcom/android/browser/ui/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v3, p0, Lcom/android/browser/ui/ThumbnailScreen;->mScreenMarginLeft:I

    iget v4, p0, Lcom/android/browser/ui/ThumbnailScreen;->mChildWidth:I

    mul-int/2addr v4, v0

    add-int/2addr v3, v4

    iget v4, p0, Lcom/android/browser/ui/ThumbnailScreen;->mScreenMarginTop:I

    iget v5, p0, Lcom/android/browser/ui/ThumbnailScreen;->mChildHeight:I

    mul-int/2addr v5, v1

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/browser/ui/ThumbnailScreen;->mScreenMarginLeft:I

    iget v6, p0, Lcom/android/browser/ui/ThumbnailScreen;->mChildWidth:I

    add-int/lit8 v7, v0, 0x1

    mul-int/2addr v6, v7

    add-int/2addr v5, v6

    iget v6, p0, Lcom/android/browser/ui/ThumbnailScreen;->mScreenMarginTop:I

    iget v7, p0, Lcom/android/browser/ui/ThumbnailScreen;->mChildHeight:I

    add-int/lit8 v8, v1, 0x1

    mul-int/2addr v7, v8

    add-int/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 71
    return-void
.end method

.method public moveThumbnail(III)V
    .locals 6
    .parameter "duration"
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 212
    if-eq p2, p3, :cond_3

    .line 213
    invoke-virtual {p0}, Lcom/android/browser/ui/ThumbnailScreen;->getChildCount()I

    move-result v3

    sub-int v1, v3, v4

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 214
    invoke-virtual {p0, v1}, Lcom/android/browser/ui/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->clearAnimation()V

    .line 213
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/browser/ui/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 218
    .local v2, movingTarget:Landroid/view/View;
    invoke-virtual {p0, p2, v4}, Lcom/android/browser/ui/ThumbnailScreen;->removeViewsInLayout(II)V

    .line 219
    invoke-virtual {p0}, Lcom/android/browser/ui/ThumbnailScreen;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v2, p3, v3, v4}, Lcom/android/browser/ui/ThumbnailScreen;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 220
    if-ge p2, p3, :cond_1

    move v0, v4

    .line 221
    .local v0, direction:I
    :goto_1
    move v1, p2

    :goto_2
    if-eq v1, p3, :cond_2

    .line 222
    invoke-virtual {p0, v1}, Lcom/android/browser/ui/ThumbnailScreen;->layoutChildByIndex(I)V

    .line 221
    add-int/2addr v1, v0

    goto :goto_2

    .end local v0           #direction:I
    :cond_1
    move v0, v5

    .line 220
    goto :goto_1

    .line 225
    .restart local v0       #direction:I
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/browser/ui/ThumbnailScreen;->startMovingAnimation(III)V

    .line 226
    invoke-virtual {p0}, Lcom/android/browser/ui/ThumbnailScreen;->invalidate()V

    .line 227
    iput v5, p0, Lcom/android/browser/ui/ThumbnailScreen;->mLastestMoveIndex:I

    .line 229
    .end local v0           #direction:I
    .end local v1           #i:I
    .end local v2           #movingTarget:Landroid/view/View;
    :cond_3
    return-void
.end method

.method public moveThumbnailInto(ZLcom/android/browser/ui/ThumbnailScreen;I)I
    .locals 5
    .parameter "isMovingToRight"
    .parameter "fromScreen"
    .parameter "fromThumbnail"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 266
    invoke-virtual {p2, p3}, Lcom/android/browser/ui/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 267
    .local v0, dragingThumbnail:Landroid/view/View;
    invoke-virtual {p2, v0}, Lcom/android/browser/ui/ThumbnailScreen;->removeView(Landroid/view/View;)V

    .line 274
    if-eqz p1, :cond_0

    .line 275
    invoke-virtual {p0, v3}, Lcom/android/browser/ui/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 276
    .local v1, thumbnail:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/android/browser/ui/ThumbnailScreen;->removeViewInLayout(Landroid/view/View;)V

    .line 277
    invoke-virtual {p2, v1}, Lcom/android/browser/ui/ThumbnailScreen;->addView(Landroid/view/View;)V

    .line 278
    invoke-virtual {p0}, Lcom/android/browser/ui/ThumbnailScreen;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p0, v0, v3, v2, v4}, Lcom/android/browser/ui/ThumbnailScreen;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move v2, v3

    .line 288
    :goto_0
    return v2

    .line 281
    .end local v1           #thumbnail:Landroid/view/View;
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/ui/ThumbnailScreen;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v4

    invoke-virtual {p0, v2}, Lcom/android/browser/ui/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 282
    .restart local v1       #thumbnail:Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/android/browser/ui/ThumbnailScreen;->removeViewInLayout(Landroid/view/View;)V

    .line 283
    invoke-virtual {p2, v1, v3}, Lcom/android/browser/ui/ThumbnailScreen;->addView(Landroid/view/View;I)V

    .line 284
    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/android/browser/ui/ThumbnailScreen;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/android/browser/ui/ThumbnailScreen;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    .line 285
    invoke-virtual {p0}, Lcom/android/browser/ui/ThumbnailScreen;->getChildCount()I

    move-result v2

    sub-int/2addr v2, v4

    goto :goto_0
.end method

.method public moveThumbnailTo(IIII)I
    .locals 6
    .parameter "duration"
    .parameter "lastestPosistion"
    .parameter "toX"
    .parameter "toY"

    .prologue
    .line 232
    invoke-direct {p0, p3, p4}, Lcom/android/browser/ui/ThumbnailScreen;->getPositionIndex(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/browser/ui/ThumbnailScreen;->getChildCount()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 233
    .local v1, newPosition:I
    if-gez v1, :cond_0

    .line 234
    move v1, p2

    .line 238
    :cond_0
    if-eq v1, p2, :cond_2

    .line 239
    iget v2, p0, Lcom/android/browser/ui/ThumbnailScreen;->mLastestMoveIndex:I

    if-ltz v2, :cond_1

    iget v2, p0, Lcom/android/browser/ui/ThumbnailScreen;->mLastestMoveIndex:I

    if-eq v2, v1, :cond_3

    .line 240
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/browser/ui/ThumbnailScreen;->mLastestMoveTime:J

    .line 241
    iput v1, p0, Lcom/android/browser/ui/ThumbnailScreen;->mLastestMoveIndex:I

    .line 242
    move v1, p2

    .line 249
    :cond_2
    :goto_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/browser/ui/ThumbnailScreen;->moveThumbnail(III)V

    .line 251
    iget v2, p0, Lcom/android/browser/ui/ThumbnailScreen;->mChildWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p3, v2

    .line 252
    iget v2, p0, Lcom/android/browser/ui/ThumbnailScreen;->mChildHeight:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr p4, v2

    .line 254
    invoke-virtual {p0, v1}, Lcom/android/browser/ui/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 255
    .local v0, movingTarget:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v3, p4

    invoke-virtual {v0, p3, p4, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 257
    invoke-virtual {p0}, Lcom/android/browser/ui/ThumbnailScreen;->invalidate()V

    .line 258
    return v1

    .line 244
    .end local v0           #movingTarget:Landroid/view/View;
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/browser/ui/ThumbnailScreen;->mLastestMoveTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 245
    move v1, p2

    goto :goto_0
.end method

.method protected onAnimationEnd()V
    .locals 3

    .prologue
    .line 155
    invoke-super {p0}, Landroid/view/ViewGroup;->onAnimationEnd()V

    .line 156
    iget-object v1, p0, Lcom/android/browser/ui/ThumbnailScreen;->mFoucsedThumbnail:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/android/browser/ui/ThumbnailScreen;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/animation/Animation$AnimationListener;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 158
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/browser/ui/ThumbnailScreen;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 159
    invoke-virtual {p0, v0}, Lcom/android/browser/ui/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 162
    .end local v0           #i:I
    :cond_0
    return-void
.end method

.method protected onAnimationStart()V
    .locals 4

    .prologue
    .line 144
    invoke-super {p0}, Landroid/view/ViewGroup;->onAnimationStart()V

    .line 145
    iget-object v1, p0, Lcom/android/browser/ui/ThumbnailScreen;->mFoucsedThumbnail:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 146
    iget-object v1, p0, Lcom/android/browser/ui/ThumbnailScreen;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 147
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/browser/ui/ThumbnailScreen;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 148
    invoke-virtual {p0, v0}, Lcom/android/browser/ui/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/browser/ui/ThumbnailScreen;->mFoucsedThumbnail:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/browser/ui/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x4

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 147
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 151
    .end local v0           #i:I
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/android/browser/ui/ThumbnailScreen;->getChildCount()I

    move-result v0

    .line 76
    .local v0, count:I
    if-nez v0, :cond_1

    .line 86
    :cond_0
    return-void

    .line 79
    :cond_1
    sub-int v2, p4, p2

    iget v3, p0, Lcom/android/browser/ui/ThumbnailScreen;->mChildWidth:I

    iget v4, p0, Lcom/android/browser/ui/ThumbnailScreen;->mColumnCount:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/browser/ui/ThumbnailScreen;->mScreenMarginLeft:I

    .line 80
    sub-int v2, p5, p3

    iget v3, p0, Lcom/android/browser/ui/ThumbnailScreen;->mChildHeight:I

    iget v4, p0, Lcom/android/browser/ui/ThumbnailScreen;->mRowCount:I

    mul-int/2addr v3, v4

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/browser/ui/ThumbnailScreen;->mScreenMarginTop:I

    .line 83
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 84
    invoke-virtual {p0, v1}, Lcom/android/browser/ui/ThumbnailScreen;->layoutChildByIndex(I)V

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v2, 0x4000

    .line 53
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/ui/ThumbnailScreen;->setMeasuredDimension(II)V

    .line 57
    iget v0, p0, Lcom/android/browser/ui/ThumbnailScreen;->mChildWidth:I

    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget v1, p0, Lcom/android/browser/ui/ThumbnailScreen;->mChildHeight:I

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/ui/ThumbnailScreen;->measureChildren(II)V

    .line 60
    return-void
.end method

.method public resetThumbnailLayout(I)V
    .locals 0
    .parameter "index"

    .prologue
    .line 292
    invoke-virtual {p0, p1}, Lcom/android/browser/ui/ThumbnailScreen;->layoutChildByIndex(I)V

    .line 293
    return-void
.end method

.method public startMovingAnimation(III)V
    .locals 11
    .parameter "duration"
    .parameter "fromIndex"
    .parameter "toIndex"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 180
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 182
    .local v2, interpolator:Landroid/view/animation/Interpolator;
    if-ge p2, p3, :cond_0

    move v0, v10

    .line 183
    .local v0, direction:I
    :goto_0
    const/4 v4, 0x0

    .line 184
    .local v4, v:Landroid/view/View;
    move v1, p2

    .local v1, i:I
    :goto_1
    if-eq v1, p3, :cond_1

    .line 185
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    iget v5, p0, Lcom/android/browser/ui/ThumbnailScreen;->mChildWidth:I

    add-int v6, v1, v0

    invoke-direct {p0, v6}, Lcom/android/browser/ui/ThumbnailScreen;->convertToColumnIndex(I)I

    move-result v6

    invoke-direct {p0, v1}, Lcom/android/browser/ui/ThumbnailScreen;->convertToColumnIndex(I)I

    move-result v7

    sub-int/2addr v6, v7

    mul-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/android/browser/ui/ThumbnailScreen;->mChildHeight:I

    add-int v7, v1, v0

    invoke-direct {p0, v7}, Lcom/android/browser/ui/ThumbnailScreen;->convertToRowIndex(I)I

    move-result v7

    invoke-direct {p0, v1}, Lcom/android/browser/ui/ThumbnailScreen;->convertToRowIndex(I)I

    move-result v8

    sub-int/2addr v7, v8

    mul-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v3, v5, v9, v6, v9}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 188
    .local v3, tranlsAnimation:Landroid/view/animation/TranslateAnimation;
    int-to-long v5, p1

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 189
    invoke-virtual {v3, v2}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 190
    sub-int v5, v1, p3

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    mul-int/lit8 v5, v5, 0x14

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Landroid/view/animation/TranslateAnimation;->setStartOffset(J)V

    .line 193
    invoke-virtual {p0, v1}, Lcom/android/browser/ui/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 194
    invoke-virtual {v4, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 184
    add-int/2addr v1, v0

    goto :goto_1

    .line 182
    .end local v0           #direction:I
    .end local v1           #i:I
    .end local v3           #tranlsAnimation:Landroid/view/animation/TranslateAnimation;
    .end local v4           #v:Landroid/view/View;
    :cond_0
    const/4 v5, -0x1

    move v0, v5

    goto :goto_0

    .line 196
    .restart local v0       #direction:I
    .restart local v1       #i:I
    .restart local v4       #v:Landroid/view/View;
    :cond_1
    if-eqz v4, :cond_2

    .line 197
    iput-boolean v10, p0, Lcom/android/browser/ui/ThumbnailScreen;->mMovingAnimationStarted:Z

    .line 198
    invoke-virtual {v4}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v5

    new-instance v6, Lcom/android/browser/ui/ThumbnailScreen$1;

    invoke-direct {v6, p0}, Lcom/android/browser/ui/ThumbnailScreen$1;-><init>(Lcom/android/browser/ui/ThumbnailScreen;)V

    invoke-virtual {v5, v6}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 209
    :cond_2
    return-void
.end method

.method public startSwitchingAnimation(ZIILandroid/view/animation/Animation$AnimationListener;)V
    .locals 15
    .parameter "entering"
    .parameter "duration"
    .parameter "focusedIndex"
    .parameter "animationListener"

    .prologue
    .line 106
    if-eqz p1, :cond_0

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object v12, v5

    .line 109
    .local v12, interpolator:Landroid/view/animation/Interpolator;
    :goto_0
    move-object v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/browser/ui/ThumbnailScreen;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/browser/ui/ThumbnailScreen;->mFoucsedThumbnail:Landroid/view/View;

    .line 110
    move-object/from16 v0, p4

    move-object v1, p0

    iput-object v0, v1, Lcom/android/browser/ui/ThumbnailScreen;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 113
    invoke-virtual {p0}, Lcom/android/browser/ui/ThumbnailScreen;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/android/browser/ui/ThumbnailScreen;->mChildWidth:I

    iget v7, p0, Lcom/android/browser/ui/ThumbnailScreen;->mScreenMarginLeft:I

    mul-int/lit8 v7, v7, 0x4

    sub-int/2addr v6, v7

    div-int/2addr v5, v6

    int-to-float v13, v5

    .line 114
    .local v13, scaleRatio:F
    if-eqz p1, :cond_1

    move v3, v13

    .line 115
    .local v3, fromRatio:F
    :goto_1
    if-eqz p1, :cond_2

    const/high16 v5, 0x3f80

    move v4, v5

    .line 116
    .local v4, toRatio:F
    :goto_2
    new-instance v2, Landroid/view/animation/ScaleAnimation;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move v5, v3

    move v6, v4

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    .line 122
    .local v2, scaleAnimation:Landroid/view/animation/ScaleAnimation;
    iget-object v5, p0, Lcom/android/browser/ui/ThumbnailScreen;->mFoucsedThumbnail:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    mul-float v10, v5, v13

    .line 123
    .local v10, deltaX:F
    iget-object v5, p0, Lcom/android/browser/ui/ThumbnailScreen;->mFoucsedThumbnail:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    mul-float v11, v5, v13

    .line 124
    .local v11, deltaY:F
    if-eqz p1, :cond_3

    .line 125
    new-instance v14, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v14, v10, v5, v11, v6}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 132
    .local v14, translateAnimation:Landroid/view/animation/TranslateAnimation;
    :goto_3
    new-instance v9, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    invoke-direct {v9, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 133
    .local v9, animation:Landroid/view/animation/AnimationSet;
    invoke-virtual {v9, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 134
    invoke-virtual {v9, v14}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 135
    move/from16 v0, p2

    int-to-long v0, v0

    move-wide v5, v0

    invoke-virtual {v9, v5, v6}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 136
    invoke-virtual {v9, v12}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 139
    invoke-virtual {p0, v9}, Lcom/android/browser/ui/ThumbnailScreen;->startAnimation(Landroid/view/animation/Animation;)V

    .line 140
    return-void

    .line 106
    .end local v2           #scaleAnimation:Landroid/view/animation/ScaleAnimation;
    .end local v3           #fromRatio:F
    .end local v4           #toRatio:F
    .end local v9           #animation:Landroid/view/animation/AnimationSet;
    .end local v10           #deltaX:F
    .end local v11           #deltaY:F
    .end local v12           #interpolator:Landroid/view/animation/Interpolator;
    .end local v13           #scaleRatio:F
    .end local v14           #translateAnimation:Landroid/view/animation/TranslateAnimation;
    :cond_0
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    move-object v12, v5

    goto :goto_0

    .line 114
    .restart local v12       #interpolator:Landroid/view/animation/Interpolator;
    .restart local v13       #scaleRatio:F
    :cond_1
    const/high16 v5, 0x3f80

    move v3, v5

    goto :goto_1

    .restart local v3       #fromRatio:F
    :cond_2
    move v4, v13

    .line 115
    goto :goto_2

    .line 128
    .restart local v2       #scaleAnimation:Landroid/view/animation/ScaleAnimation;
    .restart local v4       #toRatio:F
    .restart local v10       #deltaX:F
    .restart local v11       #deltaY:F
    :cond_3
    new-instance v14, Landroid/view/animation/TranslateAnimation;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v14, v5, v10, v6, v11}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .restart local v14       #translateAnimation:Landroid/view/animation/TranslateAnimation;
    goto :goto_3
.end method
