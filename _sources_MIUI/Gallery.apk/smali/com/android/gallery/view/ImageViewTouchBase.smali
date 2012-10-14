.class abstract Lcom/android/gallery/view/ImageViewTouchBase;
.super Landroid/widget/ImageView;
.source "ImageViewTouchBase.java"


# instance fields
.field protected mBaseMatrix:Landroid/graphics/Matrix;

.field protected final mBitmapDisplayed:Lcom/android/gallery/view/RotateBitmap;

.field private final mDisplayMatrix:Landroid/graphics/Matrix;

.field protected mHandler:Landroid/os/Handler;

.field private final mMatrixValues:[F

.field mMaxZoom:F

.field private mOnLayoutRunnable:Ljava/lang/Runnable;

.field protected mSuppMatrix:Landroid/graphics/Matrix;

.field mThisHeight:I

.field mThisWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 201
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 55
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mMatrixValues:[F

    .line 58
    new-instance v0, Lcom/android/gallery/view/RotateBitmap;

    invoke-direct {v0, v2}, Lcom/android/gallery/view/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mBitmapDisplayed:Lcom/android/gallery/view/RotateBitmap;

    .line 60
    iput v1, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mThisWidth:I

    iput v1, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mThisHeight:I

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    .line 117
    iput-object v2, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 202
    invoke-direct {p0}, Lcom/android/gallery/view/ImageViewTouchBase;->init()V

    .line 203
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 206
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 48
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 52
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 55
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mMatrixValues:[F

    .line 58
    new-instance v0, Lcom/android/gallery/view/RotateBitmap;

    invoke-direct {v0, v2}, Lcom/android/gallery/view/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mBitmapDisplayed:Lcom/android/gallery/view/RotateBitmap;

    .line 60
    iput v1, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mThisWidth:I

    iput v1, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mThisHeight:I

    .line 91
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    .line 117
    iput-object v2, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 207
    invoke-direct {p0}, Lcom/android/gallery/view/ImageViewTouchBase;->init()V

    .line 208
    return-void
.end method

.method private getProperBaseMatrix(Lcom/android/gallery/view/RotateBitmap;Landroid/graphics/Matrix;)V
    .locals 10
    .parameter "bitmap"
    .parameter "matrix"

    .prologue
    const/high16 v9, 0x4000

    .line 230
    invoke-virtual {p0}, Lcom/android/gallery/view/ImageViewTouchBase;->getWidth()I

    move-result v7

    int-to-float v4, v7

    .line 231
    .local v4, viewWidth:F
    invoke-virtual {p0}, Lcom/android/gallery/view/ImageViewTouchBase;->getHeight()I

    move-result v7

    int-to-float v3, v7

    .line 233
    .local v3, viewHeight:F
    invoke-virtual {p1}, Lcom/android/gallery/view/RotateBitmap;->getWidth()I

    move-result v7

    int-to-float v5, v7

    .line 234
    .local v5, w:F
    invoke-virtual {p1}, Lcom/android/gallery/view/RotateBitmap;->getHeight()I

    move-result v7

    int-to-float v0, v7

    .line 235
    .local v0, h:F
    invoke-virtual {p2}, Landroid/graphics/Matrix;->reset()V

    .line 239
    div-float v7, v4, v5

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 240
    .local v6, widthScale:F
    div-float v7, v3, v0

    invoke-static {v7, v9}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 241
    .local v1, heightScale:F
    invoke-static {v6, v1}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 243
    .local v2, scale:F
    invoke-virtual {p1}, Lcom/android/gallery/view/RotateBitmap;->getRotateMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {p2, v7}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 244
    invoke-virtual {p2, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 246
    mul-float v7, v5, v2

    sub-float v7, v4, v7

    div-float/2addr v7, v9

    mul-float v8, v0, v2

    sub-float v8, v3, v8

    div-float/2addr v8, v9

    invoke-virtual {p2, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 247
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 211
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/android/gallery/view/ImageViewTouchBase;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 212
    return-void
.end method

.method private setImageBitmap(Landroid/graphics/Bitmap;I)V
    .locals 2
    .parameter "bitmap"
    .parameter "rotation"

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/gallery/view/ImageViewTouchBase;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 105
    .local v0, d:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    .line 106
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 109
    :cond_0
    iget-object v1, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mBitmapDisplayed:Lcom/android/gallery/view/RotateBitmap;

    invoke-virtual {v1, p1}, Lcom/android/gallery/view/RotateBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 110
    iget-object v1, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mBitmapDisplayed:Lcom/android/gallery/view/RotateBitmap;

    invoke-virtual {v1, p2}, Lcom/android/gallery/view/RotateBitmap;->setRotation(I)V

    .line 111
    return-void
.end method


# virtual methods
.method public center(ZZ)V
    .locals 12
    .parameter "horizontal"
    .parameter "vertical"

    .prologue
    const/high16 v11, 0x4000

    const/4 v10, 0x0

    .line 158
    iget-object v8, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mBitmapDisplayed:Lcom/android/gallery/view/RotateBitmap;

    invoke-virtual {v8}, Lcom/android/gallery/view/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_0

    .line 198
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery/view/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .line 164
    .local v3, m:Landroid/graphics/Matrix;
    new-instance v4, Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mBitmapDisplayed:Lcom/android/gallery/view/RotateBitmap;

    invoke-virtual {v8}, Lcom/android/gallery/view/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mBitmapDisplayed:Lcom/android/gallery/view/RotateBitmap;

    invoke-virtual {v9}, Lcom/android/gallery/view/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v4, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 167
    .local v4, rect:Landroid/graphics/RectF;
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 169
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 170
    .local v2, height:F
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 172
    .local v7, width:F
    const/4 v0, 0x0

    .local v0, deltaX:F
    const/4 v1, 0x0

    .line 174
    .local v1, deltaY:F
    if-eqz p2, :cond_1

    .line 175
    invoke-virtual {p0}, Lcom/android/gallery/view/ImageViewTouchBase;->getHeight()I

    move-result v5

    .line 176
    .local v5, viewHeight:I
    int-to-float v8, v5

    cmpg-float v8, v2, v8

    if-gez v8, :cond_3

    .line 177
    int-to-float v8, v5

    sub-float/2addr v8, v2

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->top:F

    sub-float v1, v8, v9

    .line 185
    .end local v5           #viewHeight:I
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 186
    invoke-virtual {p0}, Lcom/android/gallery/view/ImageViewTouchBase;->getWidth()I

    move-result v6

    .line 187
    .local v6, viewWidth:I
    int-to-float v8, v6

    cmpg-float v8, v7, v8

    if-gez v8, :cond_5

    .line 188
    int-to-float v8, v6

    sub-float/2addr v8, v7

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, v8, v9

    .line 196
    .end local v6           #viewWidth:I
    :cond_2
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/android/gallery/view/ImageViewTouchBase;->postTranslate(FF)V

    .line 197
    invoke-virtual {p0}, Lcom/android/gallery/view/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/gallery/view/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 178
    .restart local v5       #viewHeight:I
    :cond_3
    iget v8, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_4

    .line 179
    iget v8, v4, Landroid/graphics/RectF;->top:F

    neg-float v1, v8

    goto :goto_1

    .line 180
    :cond_4
    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v9, v5

    cmpg-float v8, v8, v9

    if-gez v8, :cond_1

    .line 181
    invoke-virtual {p0}, Lcom/android/gallery/view/ImageViewTouchBase;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v8, v9

    goto :goto_1

    .line 189
    .end local v5           #viewHeight:I
    .restart local v6       #viewWidth:I
    :cond_5
    iget v8, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_6

    .line 190
    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v0, v8

    goto :goto_2

    .line 191
    :cond_6
    iget v8, v4, Landroid/graphics/RectF;->right:F

    int-to-float v9, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_2

    .line 192
    int-to-float v8, v6

    iget v9, v4, Landroid/graphics/RectF;->right:F

    sub-float v0, v8, v9

    goto :goto_2
.end method

.method protected getImageViewMatrix()Landroid/graphics/Matrix;
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 254
    iget-object v0, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 255
    iget-object v0, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mDisplayMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/android/gallery/view/ImageViewTouchBase;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected getScale(Landroid/graphics/Matrix;)F
    .locals 1
    .parameter "matrix"

    .prologue
    .line 221
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery/view/ImageViewTouchBase;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method protected getValue(Landroid/graphics/Matrix;I)F
    .locals 1
    .parameter "matrix"
    .parameter "whichValue"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 216
    iget-object v0, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method protected maxZoom()F
    .locals 5

    .prologue
    .line 265
    iget-object v3, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mBitmapDisplayed:Lcom/android/gallery/view/RotateBitmap;

    invoke-virtual {v3}, Lcom/android/gallery/view/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    .line 266
    const/high16 v3, 0x3f80

    .line 272
    :goto_0
    return v3

    .line 269
    :cond_0
    iget-object v3, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mBitmapDisplayed:Lcom/android/gallery/view/RotateBitmap;

    invoke-virtual {v3}, Lcom/android/gallery/view/RotateBitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mThisWidth:I

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 270
    .local v1, fw:F
    iget-object v3, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mBitmapDisplayed:Lcom/android/gallery/view/RotateBitmap;

    invoke-virtual {v3}, Lcom/android/gallery/view/RotateBitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mThisHeight:I

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 271
    .local v0, fh:F
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x4080

    mul-float v2, v3, v4

    .local v2, max:F
    move v3, v2

    .line 272
    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/high16 v1, 0x3f80

    .line 82
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery/view/ImageViewTouchBase;->getScale()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 85
    invoke-virtual {p0, v1}, Lcom/android/gallery/view/ImageViewTouchBase;->zoomTo(F)V

    .line 86
    const/4 v0, 0x1

    .line 88
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 66
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 67
    sub-int v1, p4, p2

    iput v1, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mThisWidth:I

    .line 68
    sub-int v1, p5, p3

    iput v1, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mThisHeight:I

    .line 69
    iget-object v0, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 70
    .local v0, r:Ljava/lang/Runnable;
    if-eqz v0, :cond_0

    .line 71
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 72
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 74
    :cond_0
    iget-object v1, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mBitmapDisplayed:Lcom/android/gallery/view/RotateBitmap;

    invoke-virtual {v1}, Lcom/android/gallery/view/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 75
    iget-object v1, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mBitmapDisplayed:Lcom/android/gallery/view/RotateBitmap;

    iget-object v2, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v1, v2}, Lcom/android/gallery/view/ImageViewTouchBase;->getProperBaseMatrix(Lcom/android/gallery/view/RotateBitmap;Landroid/graphics/Matrix;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/gallery/view/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/gallery/view/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 78
    :cond_1
    return-void
.end method

.method protected panBy(FF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 364
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery/view/ImageViewTouchBase;->postTranslate(FF)V

    .line 365
    invoke-virtual {p0}, Lcom/android/gallery/view/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery/view/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 366
    return-void
.end method

.method protected postTranslate(FF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 361
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery/view/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    .line 100
    return-void
.end method

.method public setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .parameter "bitmap"
    .parameter "resetSupp"

    .prologue
    .line 122
    new-instance v0, Lcom/android/gallery/view/RotateBitmap;

    invoke-direct {v0, p1}, Lcom/android/gallery/view/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0, p2}, Lcom/android/gallery/view/ImageViewTouchBase;->setImageRotateBitmapResetBase(Lcom/android/gallery/view/RotateBitmap;Z)V

    .line 123
    return-void
.end method

.method public setImageRotateBitmapResetBase(Lcom/android/gallery/view/RotateBitmap;Z)V
    .locals 3
    .parameter "bitmap"
    .parameter "resetSupp"

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/android/gallery/view/ImageViewTouchBase;->getWidth()I

    move-result v0

    .line 128
    .local v0, viewWidth:I
    if-gtz v0, :cond_0

    .line 129
    new-instance v1, Lcom/android/gallery/view/ImageViewTouchBase$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/gallery/view/ImageViewTouchBase$1;-><init>(Lcom/android/gallery/view/ImageViewTouchBase;Lcom/android/gallery/view/RotateBitmap;Z)V

    iput-object v1, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mOnLayoutRunnable:Ljava/lang/Runnable;

    .line 150
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery/view/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 138
    iget-object v1, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v1}, Lcom/android/gallery/view/ImageViewTouchBase;->getProperBaseMatrix(Lcom/android/gallery/view/RotateBitmap;Landroid/graphics/Matrix;)V

    .line 139
    invoke-virtual {p1}, Lcom/android/gallery/view/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/gallery/view/RotateBitmap;->getRotation()I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/android/gallery/view/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;I)V

    .line 145
    :goto_1
    if-eqz p2, :cond_1

    .line 146
    iget-object v1, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery/view/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/gallery/view/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 149
    invoke-virtual {p0}, Lcom/android/gallery/view/ImageViewTouchBase;->maxZoom()F

    move-result v1

    iput v1, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mMaxZoom:F

    goto :goto_0

    .line 141
    :cond_2
    iget-object v1, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 142
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/gallery/view/ImageViewTouchBase;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method protected zoomTo(F)V
    .locals 4
    .parameter "scale"

    .prologue
    const/high16 v3, 0x4000

    .line 309
    invoke-virtual {p0}, Lcom/android/gallery/view/ImageViewTouchBase;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 310
    .local v0, cx:F
    invoke-virtual {p0}, Lcom/android/gallery/view/ImageViewTouchBase;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 312
    .local v1, cy:F
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/gallery/view/ImageViewTouchBase;->zoomTo(FFF)V

    .line 313
    return-void
.end method

.method protected zoomTo(FFF)V
    .locals 4
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    const/4 v3, 0x1

    .line 276
    iget v2, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mMaxZoom:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_0

    .line 277
    iget p1, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mMaxZoom:F

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery/view/ImageViewTouchBase;->getScale()F

    move-result v1

    .line 281
    .local v1, oldScale:F
    div-float v0, p1, v1

    .line 283
    .local v0, deltaScale:F
    iget-object v2, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 284
    invoke-virtual {p0}, Lcom/android/gallery/view/ImageViewTouchBase;->getImageViewMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/gallery/view/ImageViewTouchBase;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 285
    invoke-virtual {p0, v3, v3}, Lcom/android/gallery/view/ImageViewTouchBase;->center(ZZ)V

    .line 286
    return-void
.end method

.method protected zoomTo(FFFF)V
    .locals 10
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"
    .parameter "durationMs"

    .prologue
    .line 290
    invoke-virtual {p0}, Lcom/android/gallery/view/ImageViewTouchBase;->getScale()F

    move-result v0

    sub-float v0, p1, v0

    div-float v6, v0, p4

    .line 291
    .local v6, incrementPerMs:F
    invoke-virtual {p0}, Lcom/android/gallery/view/ImageViewTouchBase;->getScale()F

    move-result v5

    .line 292
    .local v5, oldScale:F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 294
    .local v3, startTime:J
    iget-object v9, p0, Lcom/android/gallery/view/ImageViewTouchBase;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/gallery/view/ImageViewTouchBase$2;

    move-object v1, p0

    move v2, p4

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/gallery/view/ImageViewTouchBase$2;-><init>(Lcom/android/gallery/view/ImageViewTouchBase;FJFFFF)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 306
    return-void
.end method
