.class public Lcom/android/gallery/view/MultiTouchView;
.super Lcom/android/gallery/view/AutoFitImageView;
.source "MultiTouchView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery/view/MultiTouchView$FetchRawDataTask;
    }
.end annotation


# instance fields
.field private mCurrentMode:I

.field private final mDisplayMatrix:Landroid/graphics/Matrix;

.field private mHandler:Landroid/os/Handler;

.field private final mMatrixValues:[F

.field mMaxZoom:F

.field protected mRawDataRequested:Z

.field protected mSuppMatrix:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/gallery/view/AutoFitImageView;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery/view/MultiTouchView;->mCurrentMode:I

    .line 27
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/gallery/view/MultiTouchView;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 31
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/gallery/view/MultiTouchView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 34
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery/view/MultiTouchView;->mMatrixValues:[F

    .line 36
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/gallery/view/MultiTouchView;->mMaxZoom:F

    .line 281
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/gallery/view/MultiTouchView;->mHandler:Landroid/os/Handler;

    .line 40
    invoke-direct {p0}, Lcom/android/gallery/view/MultiTouchView;->init()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/gallery/view/AutoFitImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery/view/MultiTouchView;->mCurrentMode:I

    .line 27
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/gallery/view/MultiTouchView;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 31
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/gallery/view/MultiTouchView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 34
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery/view/MultiTouchView;->mMatrixValues:[F

    .line 36
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/gallery/view/MultiTouchView;->mMaxZoom:F

    .line 281
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/gallery/view/MultiTouchView;->mHandler:Landroid/os/Handler;

    .line 45
    invoke-direct {p0}, Lcom/android/gallery/view/MultiTouchView;->init()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery/view/AutoFitImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery/view/MultiTouchView;->mCurrentMode:I

    .line 27
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/gallery/view/MultiTouchView;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 31
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/gallery/view/MultiTouchView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 34
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/gallery/view/MultiTouchView;->mMatrixValues:[F

    .line 36
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/gallery/view/MultiTouchView;->mMaxZoom:F

    .line 281
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/gallery/view/MultiTouchView;->mHandler:Landroid/os/Handler;

    .line 50
    invoke-direct {p0}, Lcom/android/gallery/view/MultiTouchView;->init()V

    .line 51
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery/view/MultiTouchView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/gallery/view/MultiTouchView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getContentRect()Landroid/graphics/RectF;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 96
    invoke-virtual {p0}, Lcom/android/gallery/view/MultiTouchView;->getViewMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 97
    .local v1, m:Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lcom/android/gallery/view/MultiTouchView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 98
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v2, v3

    .line 101
    .local v2, rect:Landroid/graphics/RectF;
    :goto_0
    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 102
    return-object v2

    .line 98
    .end local v2           #rect:Landroid/graphics/RectF;
    :cond_0
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v6, v6, v6, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object v2, v3

    goto :goto_0
.end method

.method private init()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-virtual {p0, v0}, Lcom/android/gallery/view/MultiTouchView;->setClickable(Z)V

    .line 55
    invoke-virtual {p0, v0}, Lcom/android/gallery/view/MultiTouchView;->setLongClickable(Z)V

    .line 56
    return-void
.end method

.method private setImageZoomMode(IF)V
    .locals 11
    .parameter "targetMode"
    .parameter "durationMs"

    .prologue
    .line 216
    iput p1, p0, Lcom/android/gallery/view/MultiTouchView;->mCurrentMode:I

    .line 218
    const/high16 v4, 0x3f80

    .line 219
    .local v4, scale:F
    iget v9, p0, Lcom/android/gallery/view/MultiTouchView;->mCurrentMode:I

    if-nez v9, :cond_2

    .line 220
    const/high16 v4, 0x3f80

    .line 246
    :cond_0
    :goto_0
    const/4 v9, 0x0

    cmpg-float v9, p2, v9

    if-gtz v9, :cond_1

    const/high16 v9, 0x42c8

    move p2, v9

    .line 247
    :cond_1
    invoke-virtual {p0, v4, p2}, Lcom/android/gallery/view/MultiTouchView;->zoomTo(FF)V

    .line 248
    return-void

    .line 221
    :cond_2
    iget v9, p0, Lcom/android/gallery/view/MultiTouchView;->mCurrentMode:I

    const/4 v10, 0x3

    if-ne v9, v10, :cond_3

    .line 222
    const/high16 v4, 0x4040

    goto :goto_0

    .line 223
    :cond_3
    iget v9, p0, Lcom/android/gallery/view/MultiTouchView;->mCurrentMode:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5

    .line 224
    invoke-virtual {p0}, Lcom/android/gallery/view/MultiTouchView;->getWidth()I

    move-result v9

    iget v10, p0, Lcom/android/gallery/view/AutoFitImageView;->mPaddingLeft:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/gallery/view/AutoFitImageView;->mPaddingRight:I

    sub-int v8, v9, v10

    .line 225
    .local v8, width:I
    invoke-virtual {p0}, Lcom/android/gallery/view/MultiTouchView;->getHeight()I

    move-result v9

    iget v10, p0, Lcom/android/gallery/view/AutoFitImageView;->mPaddingTop:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/gallery/view/AutoFitImageView;->mPaddingBottom:I

    sub-int v3, v9, v10

    .line 227
    .local v3, height:I
    invoke-virtual {p0}, Lcom/android/gallery/view/MultiTouchView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 228
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    int-to-float v2, v9

    .line 229
    .local v2, drawableWidth:F
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v9

    int-to-float v1, v9

    .line 233
    .local v1, drawableHeight:F
    iget v9, p0, Lcom/android/gallery/view/AutoFitImageView;->mMatrixOrientation:I

    div-int/lit8 v9, v9, 0x5a

    rem-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_4

    .line 234
    int-to-float v9, v8

    div-float v7, v9, v2

    .line 235
    .local v7, scaleWidth:F
    int-to-float v9, v3

    div-float v6, v9, v1

    .line 240
    .local v6, scaleHeight:F
    :goto_1
    iget-object v9, p0, Lcom/android/gallery/view/AutoFitImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v9}, Lcom/android/gallery/view/MultiTouchView;->getScale(Landroid/graphics/Matrix;)F

    move-result v5

    .line 241
    .local v5, scaleFitInside:F
    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v9

    div-float v4, v9, v5

    .line 242
    goto :goto_0

    .line 237
    .end local v5           #scaleFitInside:F
    .end local v6           #scaleHeight:F
    .end local v7           #scaleWidth:F
    :cond_4
    int-to-float v9, v3

    div-float v7, v9, v2

    .line 238
    .restart local v7       #scaleWidth:F
    int-to-float v9, v8

    div-float v6, v9, v1

    .restart local v6       #scaleHeight:F
    goto :goto_1

    .line 242
    .end local v0           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v1           #drawableHeight:F
    .end local v2           #drawableWidth:F
    .end local v3           #height:I
    .end local v6           #scaleHeight:F
    .end local v7           #scaleWidth:F
    .end local v8           #width:I
    :cond_5
    iget v9, p0, Lcom/android/gallery/view/MultiTouchView;->mCurrentMode:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 243
    iget v9, p0, Lcom/android/gallery/view/MultiTouchView;->mMaxZoom:F

    const/high16 v10, 0x4040

    div-float v4, v9, v10

    goto :goto_0
.end method


# virtual methods
.method public adjustLeftRight(Z)V
    .locals 5
    .parameter "leftAttachView"

    .prologue
    const/4 v4, 0x0

    .line 177
    iget-boolean v2, p0, Lcom/android/gallery/view/AutoFitImageView;->mLoaded:Z

    if-nez v2, :cond_0

    .line 189
    :goto_0
    return-void

    .line 178
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery/view/MultiTouchView;->getContentRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 180
    .local v0, rect:Landroid/graphics/RectF;
    if-eqz p1, :cond_1

    .line 181
    iget v2, v0, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    invoke-virtual {p0, v2, v4}, Lcom/android/gallery/view/MultiTouchView;->postTranslate(FF)V

    .line 187
    :goto_1
    invoke-virtual {p0}, Lcom/android/gallery/view/MultiTouchView;->setViewMatrix()V

    .line 188
    invoke-virtual {p0}, Lcom/android/gallery/view/MultiTouchView;->invalidate()V

    goto :goto_0

    .line 183
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery/view/MultiTouchView;->getWidth()I

    move-result v1

    .line 184
    .local v1, viewWidth:I
    int-to-float v2, v1

    iget v3, v0, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    invoke-virtual {p0, v2, v4}, Lcom/android/gallery/view/MultiTouchView;->postTranslate(FF)V

    goto :goto_1
.end method

.method public center(ZZ)V
    .locals 11
    .parameter "horizontal"
    .parameter "vertical"

    .prologue
    const/high16 v10, 0x4000

    const/4 v9, 0x0

    .line 142
    iget-boolean v7, p0, Lcom/android/gallery/view/AutoFitImageView;->mLoaded:Z

    if-nez v7, :cond_0

    .line 174
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery/view/MultiTouchView;->getContentRect()Landroid/graphics/RectF;

    move-result-object v3

    .line 145
    .local v3, rect:Landroid/graphics/RectF;
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 146
    .local v2, height:F
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v6

    .line 148
    .local v6, width:F
    const/4 v0, 0x0

    .local v0, deltaX:F
    const/4 v1, 0x0

    .line 150
    .local v1, deltaY:F
    if-eqz p2, :cond_1

    .line 151
    invoke-virtual {p0}, Lcom/android/gallery/view/MultiTouchView;->getHeight()I

    move-result v4

    .line 152
    .local v4, viewHeight:I
    int-to-float v7, v4

    cmpg-float v7, v2, v7

    if-gez v7, :cond_3

    .line 153
    int-to-float v7, v4

    sub-float/2addr v7, v2

    div-float/2addr v7, v10

    iget v8, v3, Landroid/graphics/RectF;->top:F

    sub-float v1, v7, v8

    .line 161
    .end local v4           #viewHeight:I
    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    .line 162
    invoke-virtual {p0}, Lcom/android/gallery/view/MultiTouchView;->getWidth()I

    move-result v5

    .line 163
    .local v5, viewWidth:I
    int-to-float v7, v5

    cmpg-float v7, v6, v7

    if-gez v7, :cond_5

    .line 164
    int-to-float v7, v5

    sub-float/2addr v7, v6

    div-float/2addr v7, v10

    iget v8, v3, Landroid/graphics/RectF;->left:F

    sub-float v0, v7, v8

    .line 171
    .end local v5           #viewWidth:I
    :cond_2
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/android/gallery/view/MultiTouchView;->postTranslate(FF)V

    .line 172
    invoke-virtual {p0}, Lcom/android/gallery/view/MultiTouchView;->setViewMatrix()V

    .line 173
    invoke-virtual {p0}, Lcom/android/gallery/view/MultiTouchView;->invalidate()V

    goto :goto_0

    .line 154
    .restart local v4       #viewHeight:I
    :cond_3
    iget v7, v3, Landroid/graphics/RectF;->top:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_4

    .line 155
    iget v7, v3, Landroid/graphics/RectF;->top:F

    neg-float v1, v7

    goto :goto_1

    .line 156
    :cond_4
    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    int-to-float v8, v4

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/android/gallery/view/MultiTouchView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    iget v8, v3, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v7, v8

    goto :goto_1

    .line 165
    .end local v4           #viewHeight:I
    .restart local v5       #viewWidth:I
    :cond_5
    iget v7, v3, Landroid/graphics/RectF;->left:F

    cmpl-float v7, v7, v9

    if-lez v7, :cond_6

    .line 166
    iget v7, v3, Landroid/graphics/RectF;->left:F

    neg-float v0, v7

    goto :goto_2

    .line 167
    :cond_6
    iget v7, v3, Landroid/graphics/RectF;->right:F

    int-to-float v8, v5

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    .line 168
    int-to-float v7, v5

    iget v8, v3, Landroid/graphics/RectF;->right:F

    sub-float v0, v7, v8

    goto :goto_2
.end method

.method public createVideoIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/gallery/view/AutoFitImageView;->mMeta:Lcom/android/gallery/data/BaseMeta;

    invoke-virtual {v0}, Lcom/android/gallery/data/BaseMeta;->isVideo()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery/view/AutoFitImageView;->mMeta:Lcom/android/gallery/data/BaseMeta;

    invoke-static {v0}, Lcom/android/gallery/app/AppHelper;->createVideoIntent(Lcom/android/gallery/data/BaseMeta;)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBottomExceedOffset()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 119
    iget-boolean v1, p0, Lcom/android/gallery/view/AutoFitImageView;->mLoaded:Z

    if-nez v1, :cond_0

    move v1, v3

    .line 121
    :goto_0
    return v1

    .line 120
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery/view/MultiTouchView;->getContentRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 121
    .local v0, rect:Landroid/graphics/RectF;
    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/android/gallery/view/MultiTouchView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0
.end method

.method public getLeftExceedOffset()F
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 125
    iget-boolean v1, p0, Lcom/android/gallery/view/AutoFitImageView;->mLoaded:Z

    if-nez v1, :cond_0

    move v1, v2

    .line 127
    :goto_0
    return v1

    .line 126
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery/view/MultiTouchView;->getContentRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 127
    .local v0, rect:Landroid/graphics/RectF;
    iget v1, v0, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_0
.end method

.method public getMaxScale()F
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcom/android/gallery/view/MultiTouchView;->mMaxZoom:F

    return v0
.end method

.method public getRightExceedOffset()F
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 131
    iget-boolean v1, p0, Lcom/android/gallery/view/AutoFitImageView;->mLoaded:Z

    if-nez v1, :cond_0

    move v1, v3

    .line 133
    :goto_0
    return v1

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery/view/MultiTouchView;->getContentRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 133
    .local v0, rect:Landroid/graphics/RectF;
    iget v1, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {p0}, Lcom/android/gallery/view/MultiTouchView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/gallery/view/MultiTouchView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/android/gallery/view/MultiTouchView;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected getScale(Landroid/graphics/Matrix;)F
    .locals 1
    .parameter "matrix"

    .prologue
    .line 198
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery/view/MultiTouchView;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method public getTopExceedOffset()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 113
    iget-boolean v1, p0, Lcom/android/gallery/view/AutoFitImageView;->mLoaded:Z

    if-nez v1, :cond_0

    move v1, v2

    .line 115
    :goto_0
    return v1

    .line 114
    :cond_0
    invoke-direct {p0}, Lcom/android/gallery/view/MultiTouchView;->getContentRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 115
    .local v0, rect:Landroid/graphics/RectF;
    iget v1, v0, Landroid/graphics/RectF;->top:F

    neg-float v1, v1

    float-to-int v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0
.end method

.method protected getValue(Landroid/graphics/Matrix;I)F
    .locals 1
    .parameter "matrix"
    .parameter "whichValue"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/gallery/view/MultiTouchView;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 193
    iget-object v0, p0, Lcom/android/gallery/view/MultiTouchView;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method protected getViewMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/android/gallery/view/MultiTouchView;->setViewMatrix()V

    .line 253
    iget-object v0, p0, Lcom/android/gallery/view/MultiTouchView;->mDisplayMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public isVerticalOut()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 106
    iget-boolean v1, p0, Lcom/android/gallery/view/AutoFitImageView;->mLoaded:Z

    if-nez v1, :cond_0

    move v1, v3

    .line 109
    :goto_0
    return v1

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery/view/MultiTouchView;->getScale()F

    move-result v1

    const/high16 v2, 0x3f80

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    move v1, v3

    goto :goto_0

    .line 108
    :cond_1
    invoke-direct {p0}, Lcom/android/gallery/view/MultiTouchView;->getContentRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 109
    .local v0, rect:Landroid/graphics/RectF;
    iget v1, v0, Landroid/graphics/RectF;->top:F

    float-to-int v1, v1

    if-ltz v1, :cond_2

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v1, v1

    invoke-virtual {p0}, Lcom/android/gallery/view/MultiTouchView;->getHeight()I

    move-result v2

    if-le v1, v2, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v3

    goto :goto_0
.end method

.method public isVideo()Z
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/gallery/view/AutoFitImageView;->mMeta:Lcom/android/gallery/data/BaseMeta;

    invoke-virtual {v0}, Lcom/android/gallery/data/BaseMeta;->isVideo()Z

    move-result v0

    return v0
.end method

.method public panBy(FF)V
    .locals 0
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 330
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery/view/MultiTouchView;->postTranslate(FF)V

    .line 331
    invoke-virtual {p0}, Lcom/android/gallery/view/MultiTouchView;->setViewMatrix()V

    .line 332
    invoke-virtual {p0}, Lcom/android/gallery/view/MultiTouchView;->invalidate()V

    .line 333
    return-void
.end method

.method protected postTranslate(FF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/gallery/view/MultiTouchView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 321
    return-void
.end method

.method public requestRawData()V
    .locals 2

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/android/gallery/view/MultiTouchView;->mRawDataRequested:Z

    if-nez v0, :cond_0

    .line 271
    iget-boolean v0, p0, Lcom/android/gallery/view/AutoFitImageView;->mLoaded:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/gallery/view/MultiTouchView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery/view/AutoFitImageView;->mMeta:Lcom/android/gallery/data/BaseMeta;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/gallery/view/MultiTouchView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/gallery/view/AutoFitImageView;->mMeta:Lcom/android/gallery/data/BaseMeta;

    invoke-virtual {v1}, Lcom/android/gallery/data/BaseMeta;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 273
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery/view/MultiTouchView;->mRawDataRequested:Z

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    new-instance v0, Lcom/android/gallery/view/MultiTouchView$FetchRawDataTask;

    invoke-direct {v0, p0}, Lcom/android/gallery/view/MultiTouchView$FetchRawDataTask;-><init>(Lcom/android/gallery/view/MultiTouchView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/gallery/view/MultiTouchView$FetchRawDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public setMeta(Lcom/android/gallery/data/BaseMeta;Landroid/graphics/drawable/Drawable;Z)V
    .locals 1
    .parameter "meta"
    .parameter "empty"
    .parameter "force"

    .prologue
    .line 60
    invoke-super {p0, p1, p2, p3}, Lcom/android/gallery/view/AutoFitImageView;->setMeta(Lcom/android/gallery/data/BaseMeta;Landroid/graphics/drawable/Drawable;Z)V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery/view/MultiTouchView;->mRawDataRequested:Z

    .line 62
    return-void
.end method

.method protected setViewMatrix()V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/gallery/view/MultiTouchView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/gallery/view/AutoFitImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 258
    iget-object v0, p0, Lcom/android/gallery/view/MultiTouchView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/gallery/view/MultiTouchView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 259
    iget-object v0, p0, Lcom/android/gallery/view/MultiTouchView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/android/gallery/view/MultiTouchView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 260
    return-void
.end method

.method public switchMode()V
    .locals 4

    .prologue
    const/high16 v3, 0x4396

    .line 206
    iget-boolean v1, p0, Lcom/android/gallery/view/AutoFitImageView;->mLoaded:Z

    if-nez v1, :cond_0

    .line 213
    :goto_0
    return-void

    .line 207
    :cond_0
    const/high16 v0, 0x4396

    .line 208
    .local v0, durationMs:F
    invoke-virtual {p0}, Lcom/android/gallery/view/MultiTouchView;->getScale()F

    move-result v1

    const/high16 v2, 0x3f80

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 209
    const/4 v1, 0x0

    invoke-direct {p0, v1, v3}, Lcom/android/gallery/view/MultiTouchView;->setImageZoomMode(IF)V

    goto :goto_0

    .line 211
    :cond_1
    const/4 v1, 0x3

    invoke-direct {p0, v1, v3}, Lcom/android/gallery/view/MultiTouchView;->setImageZoomMode(IF)V

    goto :goto_0
.end method

.method protected updateMatrix()Z
    .locals 4

    .prologue
    .line 65
    invoke-super {p0}, Lcom/android/gallery/view/AutoFitImageView;->updateMatrix()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 80
    :goto_0
    return v2

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery/view/MultiTouchView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 68
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    iget-boolean v2, p0, Lcom/android/gallery/view/AutoFitImageView;->mLoaded:Z

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    .line 69
    iget-object v2, p0, Lcom/android/gallery/view/AutoFitImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v2}, Lcom/android/gallery/view/MultiTouchView;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    .line 70
    .local v0, baseScale:F
    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-nez v2, :cond_1

    .line 71
    const/high16 v0, 0x3f80

    .line 73
    :cond_1
    iget-object v2, p0, Lcom/android/gallery/view/AutoFitImageView;->mMeta:Lcom/android/gallery/data/BaseMeta;

    invoke-virtual {v2}, Lcom/android/gallery/data/BaseMeta;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iput v2, p0, Lcom/android/gallery/view/MultiTouchView;->mMaxZoom:F

    .line 74
    iget v2, p0, Lcom/android/gallery/view/MultiTouchView;->mMaxZoom:F

    const/high16 v3, 0x4040

    mul-float/2addr v2, v3

    div-float/2addr v2, v0

    iput v2, p0, Lcom/android/gallery/view/MultiTouchView;->mMaxZoom:F

    .line 76
    iget-object v2, p0, Lcom/android/gallery/view/MultiTouchView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/gallery/view/AutoFitImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 77
    iget-object v2, p0, Lcom/android/gallery/view/MultiTouchView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/gallery/view/MultiTouchView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 78
    iget-object v2, p0, Lcom/android/gallery/view/MultiTouchView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v2}, Lcom/android/gallery/view/MultiTouchView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 80
    .end local v0           #baseScale:F
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public zoomTo(FF)V
    .locals 4
    .parameter "scale"
    .parameter "durationMs"

    .prologue
    const/high16 v3, 0x4000

    .line 307
    invoke-virtual {p0}, Lcom/android/gallery/view/MultiTouchView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 308
    .local v0, cx:F
    invoke-virtual {p0}, Lcom/android/gallery/view/MultiTouchView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 310
    .local v1, cy:F
    const/4 v2, 0x0

    cmpl-float v2, p2, v2

    if-lez v2, :cond_0

    .line 311
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/gallery/view/MultiTouchView;->zoomTo(FFFF)V

    .line 317
    :goto_0
    return-void

    .line 314
    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/gallery/view/MultiTouchView;->zoomTo(FFF)V

    .line 315
    invoke-virtual {p0}, Lcom/android/gallery/view/MultiTouchView;->requestRawData()V

    goto :goto_0
.end method

.method public zoomTo(FFF)V
    .locals 4
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"

    .prologue
    const/4 v3, 0x1

    .line 263
    invoke-virtual {p0}, Lcom/android/gallery/view/MultiTouchView;->getScale()F

    move-result v1

    .line 264
    .local v1, oldScale:F
    div-float v0, p1, v1

    .line 265
    .local v0, deltaScale:F
    iget-object v2, p0, Lcom/android/gallery/view/MultiTouchView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 266
    invoke-virtual {p0, v3, v3}, Lcom/android/gallery/view/MultiTouchView;->center(ZZ)V

    .line 267
    return-void
.end method

.method public zoomTo(FFFF)V
    .locals 10
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"
    .parameter "durationMs"

    .prologue
    .line 285
    invoke-virtual {p0}, Lcom/android/gallery/view/MultiTouchView;->getScale()F

    move-result v0

    sub-float v0, p1, v0

    div-float v6, v0, p4

    .line 286
    .local v6, incrementPerMs:F
    invoke-virtual {p0}, Lcom/android/gallery/view/MultiTouchView;->getScale()F

    move-result v5

    .line 287
    .local v5, oldScale:F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 289
    .local v3, startTime:J
    iget-object v9, p0, Lcom/android/gallery/view/MultiTouchView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/gallery/view/MultiTouchView$1;

    move-object v1, p0

    move v2, p4

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/gallery/view/MultiTouchView$1;-><init>(Lcom/android/gallery/view/MultiTouchView;FJFFFF)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 304
    return-void
.end method
