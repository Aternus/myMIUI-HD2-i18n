.class public Lcom/android/gallery/view/CropImageView;
.super Lcom/android/gallery/view/ImageViewTouchBase;
.source "CropImageView.java"


# instance fields
.field public mHighlightViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery/view/HighlightView;",
            ">;"
        }
    .end annotation
.end field

.field mLastX:F

.field mLastY:F

.field mMotionEdge:I

.field mMotionHighlightView:Lcom/android/gallery/view/HighlightView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/gallery/view/ImageViewTouchBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery/view/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery/view/CropImageView;->mMotionHighlightView:Lcom/android/gallery/view/HighlightView;

    .line 40
    return-void
.end method

.method private centerBasedOnHighlightView(Lcom/android/gallery/view/HighlightView;)V
    .locals 13
    .parameter "hv"

    .prologue
    .line 225
    iget-object v1, p1, Lcom/android/gallery/view/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 227
    .local v1, drawRect:Landroid/graphics/Rect;
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v5, v9

    .line 228
    .local v5, width:F
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v2, v9

    .line 230
    .local v2, height:F
    invoke-virtual {p0}, Lcom/android/gallery/view/CropImageView;->getWidth()I

    move-result v9

    int-to-float v4, v9

    .line 231
    .local v4, thisWidth:F
    invoke-virtual {p0}, Lcom/android/gallery/view/CropImageView;->getHeight()I

    move-result v9

    int-to-float v3, v9

    .line 233
    .local v3, thisHeight:F
    div-float v9, v4, v5

    const v10, 0x3f19999a

    mul-float v6, v9, v10

    .line 234
    .local v6, z1:F
    div-float v9, v3, v2

    const v10, 0x3f19999a

    mul-float v7, v9, v10

    .line 236
    .local v7, z2:F
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .line 237
    .local v8, zoom:F
    invoke-virtual {p0}, Lcom/android/gallery/view/CropImageView;->getScale()F

    move-result v9

    mul-float/2addr v8, v9

    .line 238
    const/high16 v9, 0x3f80

    invoke-static {v9, v8}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 240
    invoke-virtual {p0}, Lcom/android/gallery/view/CropImageView;->getScale()F

    move-result v9

    sub-float v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    div-float/2addr v9, v8

    float-to-double v9, v9

    const-wide v11, 0x3fb999999999999aL

    cmpl-double v9, v9, v11

    if-lez v9, :cond_0

    .line 241
    const/4 v9, 0x2

    new-array v0, v9, [F

    const/4 v9, 0x0

    iget-object v10, p1, Lcom/android/gallery/view/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerX()F

    move-result v10

    aput v10, v0, v9

    const/4 v9, 0x1

    iget-object v10, p1, Lcom/android/gallery/view/HighlightView;->mCropRect:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->centerY()F

    move-result v10

    aput v10, v0, v9

    .line 244
    .local v0, coordinates:[F
    invoke-virtual {p0}, Lcom/android/gallery/view/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 245
    const/4 v9, 0x0

    aget v9, v0, v9

    const/4 v10, 0x1

    aget v10, v0, v10

    const/high16 v11, 0x4396

    invoke-virtual {p0, v8, v9, v10, v11}, Lcom/android/gallery/view/CropImageView;->zoomTo(FFFF)V

    .line 248
    .end local v0           #coordinates:[F
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/gallery/view/CropImageView;->ensureVisible(Lcom/android/gallery/view/HighlightView;)V

    .line 249
    return-void
.end method

.method private ensureVisible(Lcom/android/gallery/view/HighlightView;)V
    .locals 10
    .parameter "hv"

    .prologue
    const/4 v9, 0x0

    .line 206
    iget-object v6, p1, Lcom/android/gallery/view/HighlightView;->mDrawRect:Landroid/graphics/Rect;

    .line 208
    .local v6, r:Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/gallery/view/CropImageView;->getLeft()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 209
    .local v1, panDeltaX1:I
    invoke-virtual {p0}, Lcom/android/gallery/view/CropImageView;->getRight()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 211
    .local v2, panDeltaX2:I
    invoke-virtual {p0}, Lcom/android/gallery/view/CropImageView;->getTop()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 212
    .local v4, panDeltaY1:I
    invoke-virtual {p0}, Lcom/android/gallery/view/CropImageView;->getBottom()I

    move-result v7

    iget v8, v6, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 214
    .local v5, panDeltaY2:I
    if-eqz v1, :cond_2

    move v0, v1

    .line 215
    .local v0, panDeltaX:I
    :goto_0
    if-eqz v4, :cond_3

    move v3, v4

    .line 217
    .local v3, panDeltaY:I
    :goto_1
    if-nez v0, :cond_0

    if-eqz v3, :cond_1

    .line 218
    :cond_0
    int-to-float v7, v0

    int-to-float v8, v3

    invoke-virtual {p0, v7, v8}, Lcom/android/gallery/view/CropImageView;->panBy(FF)V

    .line 220
    :cond_1
    return-void

    .end local v0           #panDeltaX:I
    .end local v3           #panDeltaY:I
    :cond_2
    move v0, v2

    .line 214
    goto :goto_0

    .restart local v0       #panDeltaX:I
    :cond_3
    move v3, v5

    .line 215
    goto :goto_1
.end method

.method private recomputeFocus(Landroid/view/MotionEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    .line 82
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/gallery/view/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 83
    iget-object v3, p0, Lcom/android/gallery/view/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery/view/HighlightView;

    .line 84
    .local v1, hv:Lcom/android/gallery/view/HighlightView;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/gallery/view/HighlightView;->setFocus(Z)V

    .line 85
    invoke-virtual {v1}, Lcom/android/gallery/view/HighlightView;->invalidate()V

    .line 82
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 88
    .end local v1           #hv:Lcom/android/gallery/view/HighlightView;
    :cond_0
    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/gallery/view/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 89
    iget-object v3, p0, Lcom/android/gallery/view/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery/view/HighlightView;

    .line 90
    .restart local v1       #hv:Lcom/android/gallery/view/HighlightView;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/android/gallery/view/HighlightView;->getHit(FF)I

    move-result v0

    .line 91
    .local v0, edge:I
    if-eq v0, v5, :cond_2

    .line 92
    invoke-virtual {v1}, Lcom/android/gallery/view/HighlightView;->hasFocus()Z

    move-result v3

    if-nez v3, :cond_1

    .line 93
    invoke-virtual {v1, v5}, Lcom/android/gallery/view/HighlightView;->setFocus(Z)V

    .line 94
    invoke-virtual {v1}, Lcom/android/gallery/view/HighlightView;->invalidate()V

    .line 99
    .end local v0           #edge:I
    .end local v1           #hv:Lcom/android/gallery/view/HighlightView;
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery/view/CropImageView;->invalidate()V

    .line 100
    return-void

    .line 88
    .restart local v0       #edge:I
    .restart local v1       #hv:Lcom/android/gallery/view/HighlightView;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public add(Lcom/android/gallery/view/HighlightView;)V
    .locals 1
    .parameter "hv"

    .prologue
    .line 260
    iget-object v0, p0, Lcom/android/gallery/view/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 261
    invoke-virtual {p0}, Lcom/android/gallery/view/CropImageView;->invalidate()V

    .line 262
    return-void
.end method

.method public bridge synthetic center(ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-super {p0, p1, p2}, Lcom/android/gallery/view/ImageViewTouchBase;->center(ZZ)V

    return-void
.end method

.method public bridge synthetic getScale()F
    .locals 1

    .prologue
    .line 15
    invoke-super {p0}, Lcom/android/gallery/view/ImageViewTouchBase;->getScale()F

    move-result v0

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 253
    invoke-super {p0, p1}, Lcom/android/gallery/view/ImageViewTouchBase;->onDraw(Landroid/graphics/Canvas;)V

    .line 254
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/gallery/view/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 255
    iget-object v1, p0, Lcom/android/gallery/view/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery/view/HighlightView;

    invoke-virtual {v1, p1}, Lcom/android/gallery/view/HighlightView;->draw(Landroid/graphics/Canvas;)V

    .line 254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :cond_0
    return-void
.end method

.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-super {p0, p1, p2}, Lcom/android/gallery/view/ImageViewTouchBase;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 4
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 26
    invoke-super/range {p0 .. p5}, Lcom/android/gallery/view/ImageViewTouchBase;->onLayout(ZIIII)V

    .line 27
    iget-object v2, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mBitmapDisplayed:Lcom/android/gallery/view/RotateBitmap;

    invoke-virtual {v2}, Lcom/android/gallery/view/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 28
    iget-object v2, p0, Lcom/android/gallery/view/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery/view/HighlightView;

    .line 29
    .local v0, hv:Lcom/android/gallery/view/HighlightView;
    iget-object v2, v0, Lcom/android/gallery/view/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/android/gallery/view/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 30
    invoke-virtual {v0}, Lcom/android/gallery/view/HighlightView;->invalidate()V

    .line 31
    iget-boolean v2, v0, Lcom/android/gallery/view/HighlightView;->mIsFocused:Z

    if-eqz v2, :cond_0

    .line 32
    invoke-direct {p0, v0}, Lcom/android/gallery/view/CropImageView;->centerBasedOnHighlightView(Lcom/android/gallery/view/HighlightView;)V

    goto :goto_0

    .line 36
    .end local v0           #hv:Lcom/android/gallery/view/HighlightView;
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x1

    .line 104
    invoke-virtual {p0}, Lcom/android/gallery/view/CropImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/gallery/ui/CropImage;

    .line 105
    .local v0, cropImage:Lcom/android/gallery/ui/CropImage;
    iget-boolean v5, v0, Lcom/android/gallery/ui/CropImage;->mSaving:Z

    if-eqz v5, :cond_0

    move v5, v6

    .line 201
    .end local p0
    :goto_0
    return v5

    .line 109
    .restart local p0
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 186
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    packed-switch v5, :pswitch_data_1

    :cond_2
    :goto_2
    move v5, v10

    .line 201
    goto :goto_0

    .line 111
    :pswitch_0
    iget-boolean v5, v0, Lcom/android/gallery/ui/CropImage;->mWaitingToPick:Z

    if-eqz v5, :cond_3

    .line 112
    invoke-direct {p0, p1}, Lcom/android/gallery/view/CropImageView;->recomputeFocus(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 114
    :cond_3
    const/4 v3, 0x0

    .local v3, i:I
    :goto_3
    iget-object v5, p0, Lcom/android/gallery/view/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_1

    .line 122
    iget-object v5, p0, Lcom/android/gallery/view/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery/view/HighlightView;

    .line 123
    .local v2, hv:Lcom/android/gallery/view/HighlightView;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v2, v5, v6}, Lcom/android/gallery/view/HighlightView;->getHit(FF)I

    move-result v1

    .line 124
    .local v1, edge:I
    if-eq v1, v10, :cond_5

    .line 125
    iput v1, p0, Lcom/android/gallery/view/CropImageView;->mMotionEdge:I

    .line 126
    iput-object v2, p0, Lcom/android/gallery/view/CropImageView;->mMotionHighlightView:Lcom/android/gallery/view/HighlightView;

    .line 127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/android/gallery/view/CropImageView;->mLastX:F

    .line 128
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/android/gallery/view/CropImageView;->mLastY:F

    .line 130
    iget-object v5, p0, Lcom/android/gallery/view/CropImageView;->mMotionHighlightView:Lcom/android/gallery/view/HighlightView;

    const/16 v6, 0x20

    if-ne v1, v6, :cond_4

    sget-object v6, Lcom/android/gallery/view/HighlightView$ModifyMode;->Move:Lcom/android/gallery/view/HighlightView$ModifyMode;

    :goto_4
    invoke-virtual {v5, v6}, Lcom/android/gallery/view/HighlightView;->setMode(Lcom/android/gallery/view/HighlightView$ModifyMode;)V

    goto :goto_1

    :cond_4
    sget-object v6, Lcom/android/gallery/view/HighlightView$ModifyMode;->Grow:Lcom/android/gallery/view/HighlightView$ModifyMode;

    goto :goto_4

    .line 114
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 140
    .end local v1           #edge:I
    .end local v2           #hv:Lcom/android/gallery/view/HighlightView;
    .end local v3           #i:I
    :pswitch_1
    iget-boolean v5, v0, Lcom/android/gallery/ui/CropImage;->mWaitingToPick:Z

    if-eqz v5, :cond_9

    .line 141
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_5
    iget-object v5, p0, Lcom/android/gallery/view/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_a

    .line 142
    iget-object v5, p0, Lcom/android/gallery/view/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery/view/HighlightView;

    .line 143
    .restart local v2       #hv:Lcom/android/gallery/view/HighlightView;
    invoke-virtual {v2}, Lcom/android/gallery/view/HighlightView;->hasFocus()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 144
    iput-object v2, v0, Lcom/android/gallery/ui/CropImage;->mCrop:Lcom/android/gallery/view/HighlightView;

    .line 145
    const/4 v4, 0x0

    .local v4, j:I
    :goto_6
    iget-object v5, p0, Lcom/android/gallery/view/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 146
    if-ne v4, v3, :cond_6

    .line 145
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 151
    :cond_6
    iget-object v5, p0, Lcom/android/gallery/view/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/gallery/view/HighlightView;

    invoke-virtual {v5, v10}, Lcom/android/gallery/view/HighlightView;->setHidden(Z)V

    goto :goto_7

    .line 153
    :cond_7
    invoke-direct {p0, v2}, Lcom/android/gallery/view/CropImageView;->centerBasedOnHighlightView(Lcom/android/gallery/view/HighlightView;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/gallery/view/CropImageView;->getContext()Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/gallery/ui/CropImage;

    iput-boolean v6, p0, Lcom/android/gallery/ui/CropImage;->mWaitingToPick:Z

    move v5, v10

    .line 155
    goto/16 :goto_0

    .line 141
    .end local v4           #j:I
    .restart local p0
    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 158
    .end local v2           #hv:Lcom/android/gallery/view/HighlightView;
    .end local v3           #i:I
    :cond_9
    iget-object v5, p0, Lcom/android/gallery/view/CropImageView;->mMotionHighlightView:Lcom/android/gallery/view/HighlightView;

    if-eqz v5, :cond_a

    .line 159
    iget-object v5, p0, Lcom/android/gallery/view/CropImageView;->mMotionHighlightView:Lcom/android/gallery/view/HighlightView;

    invoke-direct {p0, v5}, Lcom/android/gallery/view/CropImageView;->centerBasedOnHighlightView(Lcom/android/gallery/view/HighlightView;)V

    .line 160
    iget-object v5, p0, Lcom/android/gallery/view/CropImageView;->mMotionHighlightView:Lcom/android/gallery/view/HighlightView;

    sget-object v6, Lcom/android/gallery/view/HighlightView$ModifyMode;->None:Lcom/android/gallery/view/HighlightView$ModifyMode;

    invoke-virtual {v5, v6}, Lcom/android/gallery/view/HighlightView;->setMode(Lcom/android/gallery/view/HighlightView$ModifyMode;)V

    .line 162
    :cond_a
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/gallery/view/CropImageView;->mMotionHighlightView:Lcom/android/gallery/view/HighlightView;

    goto/16 :goto_1

    .line 165
    :pswitch_2
    iget-boolean v5, v0, Lcom/android/gallery/ui/CropImage;->mWaitingToPick:Z

    if-eqz v5, :cond_b

    .line 166
    invoke-direct {p0, p1}, Lcom/android/gallery/view/CropImageView;->recomputeFocus(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 167
    :cond_b
    iget-object v5, p0, Lcom/android/gallery/view/CropImageView;->mMotionHighlightView:Lcom/android/gallery/view/HighlightView;

    if-eqz v5, :cond_1

    .line 168
    iget-object v5, p0, Lcom/android/gallery/view/CropImageView;->mMotionHighlightView:Lcom/android/gallery/view/HighlightView;

    iget v6, p0, Lcom/android/gallery/view/CropImageView;->mMotionEdge:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    iget v8, p0, Lcom/android/gallery/view/CropImageView;->mLastX:F

    sub-float/2addr v7, v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, p0, Lcom/android/gallery/view/CropImageView;->mLastY:F

    sub-float/2addr v8, v9

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/gallery/view/HighlightView;->handleMotion(IFF)V

    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iput v5, p0, Lcom/android/gallery/view/CropImageView;->mLastX:F

    .line 172
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iput v5, p0, Lcom/android/gallery/view/CropImageView;->mLastY:F

    .line 180
    iget-object v5, p0, Lcom/android/gallery/view/CropImageView;->mMotionHighlightView:Lcom/android/gallery/view/HighlightView;

    invoke-direct {p0, v5}, Lcom/android/gallery/view/CropImageView;->ensureVisible(Lcom/android/gallery/view/HighlightView;)V

    goto/16 :goto_1

    .line 188
    :pswitch_3
    invoke-virtual {p0, v10, v10}, Lcom/android/gallery/view/CropImageView;->center(ZZ)V

    goto/16 :goto_2

    .line 195
    :pswitch_4
    invoke-virtual {p0}, Lcom/android/gallery/view/CropImageView;->getScale()F

    move-result v5

    const/high16 v6, 0x3f80

    invoke-static {v5, v6}, Lcom/android/gallery/util/Utils;->floatEquals(FF)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 196
    invoke-virtual {p0, v10, v10}, Lcom/android/gallery/view/CropImageView;->center(ZZ)V

    goto/16 :goto_2

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 186
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected postTranslate(FF)V
    .locals 3
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lcom/android/gallery/view/ImageViewTouchBase;->postTranslate(FF)V

    .line 72
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/gallery/view/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/android/gallery/view/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery/view/HighlightView;

    .line 74
    .local v0, hv:Lcom/android/gallery/view/HighlightView;
    iget-object v2, v0, Lcom/android/gallery/view/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 75
    invoke-virtual {v0}, Lcom/android/gallery/view/HighlightView;->invalidate()V

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v0           #hv:Lcom/android/gallery/view/HighlightView;
    :cond_0
    return-void
.end method

.method public bridge synthetic setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/android/gallery/view/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-super {p0, p1, p2}, Lcom/android/gallery/view/ImageViewTouchBase;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    return-void
.end method

.method public bridge synthetic setImageRotateBitmapResetBase(Lcom/android/gallery/view/RotateBitmap;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 15
    invoke-super {p0, p1, p2}, Lcom/android/gallery/view/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/android/gallery/view/RotateBitmap;Z)V

    return-void
.end method

.method protected zoomTo(FFF)V
    .locals 4
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    .line 44
    invoke-super {p0, p1, p2, p3}, Lcom/android/gallery/view/ImageViewTouchBase;->zoomTo(FFF)V

    .line 45
    iget-object v2, p0, Lcom/android/gallery/view/CropImageView;->mHighlightViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery/view/HighlightView;

    .line 46
    .local v0, hv:Lcom/android/gallery/view/HighlightView;
    iget-object v2, v0, Lcom/android/gallery/view/HighlightView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Lcom/android/gallery/view/CropImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 47
    invoke-virtual {v0}, Lcom/android/gallery/view/HighlightView;->invalidate()V

    goto :goto_0

    .line 49
    .end local v0           #hv:Lcom/android/gallery/view/HighlightView;
    :cond_0
    return-void
.end method
