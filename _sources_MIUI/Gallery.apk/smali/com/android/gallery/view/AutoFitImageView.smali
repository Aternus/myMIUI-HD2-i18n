.class public Lcom/android/gallery/view/AutoFitImageView;
.super Landroid/widget/ImageView;
.source "AutoFitImageView.java"

# interfaces
.implements Lcom/android/gallery/data/ThumbnailCacheManager$ThumbnailReadyListener;


# instance fields
.field protected mBaseMatrix:Landroid/graphics/Matrix;

.field private mCropOutside:Z

.field protected mEmpty:Landroid/graphics/drawable/Drawable;

.field protected mForceLowPriority:Z

.field protected mLoaded:Z

.field protected mMatrixOrientation:I

.field protected mMeta:Lcom/android/gallery/data/BaseMeta;

.field protected mRequested:Z

.field protected mSuppressLayout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 26
    iput-boolean v1, p0, Lcom/android/gallery/view/AutoFitImageView;->mCropOutside:Z

    .line 27
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/gallery/view/AutoFitImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 29
    iput-boolean v1, p0, Lcom/android/gallery/view/AutoFitImageView;->mSuppressLayout:Z

    .line 33
    invoke-direct {p0}, Lcom/android/gallery/view/AutoFitImageView;->init()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    iput-boolean v1, p0, Lcom/android/gallery/view/AutoFitImageView;->mCropOutside:Z

    .line 27
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/gallery/view/AutoFitImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 29
    iput-boolean v1, p0, Lcom/android/gallery/view/AutoFitImageView;->mSuppressLayout:Z

    .line 38
    invoke-direct {p0}, Lcom/android/gallery/view/AutoFitImageView;->init()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x0

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    iput-boolean v1, p0, Lcom/android/gallery/view/AutoFitImageView;->mCropOutside:Z

    .line 27
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/gallery/view/AutoFitImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 29
    iput-boolean v1, p0, Lcom/android/gallery/view/AutoFitImageView;->mSuppressLayout:Z

    .line 43
    invoke-direct {p0}, Lcom/android/gallery/view/AutoFitImageView;->init()V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery/view/AutoFitImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/android/gallery/view/AutoFitImageView;->updateThumbnail(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private fetchThumbnail()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 79
    iput-boolean v6, p0, Lcom/android/gallery/view/AutoFitImageView;->mRequested:Z

    .line 80
    iget-object v4, p0, Lcom/android/gallery/view/AutoFitImageView;->mMeta:Lcom/android/gallery/data/BaseMeta;

    if-nez v4, :cond_1

    .line 103
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    iget-object v4, p0, Lcom/android/gallery/view/AutoFitImageView;->mMeta:Lcom/android/gallery/data/BaseMeta;

    instance-of v4, v4, Lcom/android/gallery/data/UriMeta;

    if-eqz v4, :cond_2

    .line 83
    iget-object v4, p0, Lcom/android/gallery/view/AutoFitImageView;->mMeta:Lcom/android/gallery/data/BaseMeta;

    invoke-virtual {v4}, Lcom/android/gallery/data/BaseMeta;->getRawImage()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/gallery/view/AutoFitImageView;->updateThumbnail(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery/view/AutoFitImageView;->getWidth()I

    move-result v4

    iget v5, p0, Lcom/android/gallery/view/AutoFitImageView;->mPaddingLeft:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/gallery/view/AutoFitImageView;->mPaddingRight:I

    sub-int v3, v4, v5

    .line 87
    .local v3, width:I
    invoke-virtual {p0}, Lcom/android/gallery/view/AutoFitImageView;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/gallery/view/AutoFitImageView;->mPaddingTop:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/gallery/view/AutoFitImageView;->mPaddingBottom:I

    sub-int v1, v4, v5

    .line 89
    .local v1, height:I
    mul-int v4, v3, v1

    const v5, 0x9c40

    if-gt v4, v5, :cond_4

    move v2, v6

    .line 94
    .local v2, type:I
    :goto_1
    iget-object v4, p0, Lcom/android/gallery/view/AutoFitImageView;->mMeta:Lcom/android/gallery/data/BaseMeta;

    invoke-static {v4, v2}, Lcom/android/gallery/data/ThumbnailCacheManager;->getThumbnail(Lcom/android/gallery/data/BaseMeta;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 95
    .local v0, cache:Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_3

    .line 96
    iget-object v4, p0, Lcom/android/gallery/view/AutoFitImageView;->mMeta:Lcom/android/gallery/data/BaseMeta;

    iget-boolean v5, p0, Lcom/android/gallery/view/AutoFitImageView;->mForceLowPriority:Z

    invoke-static {v4, v2, p0, v5}, Lcom/android/gallery/data/ThumbnailCacheManager;->fetchThumbnail(Lcom/android/gallery/data/BaseMeta;ILcom/android/gallery/data/ThumbnailCacheManager$ThumbnailReadyListener;Z)V

    .line 97
    iget-object v4, p0, Lcom/android/gallery/view/AutoFitImageView;->mMeta:Lcom/android/gallery/data/BaseMeta;

    invoke-static {v4, v2, v7, v6}, Lcom/android/gallery/data/ThumbnailCacheManager;->getThumbnail(Lcom/android/gallery/data/BaseMeta;IZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 100
    :cond_3
    if-eqz v0, :cond_0

    .line 101
    invoke-direct {p0, v0}, Lcom/android/gallery/view/AutoFitImageView;->updateThumbnail(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .end local v0           #cache:Landroid/graphics/drawable/Drawable;
    .end local v2           #type:I
    :cond_4
    move v2, v7

    .line 89
    goto :goto_1
.end method

.method private init()V
    .locals 2

    .prologue
    .line 47
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0}, Lcom/android/gallery/view/AutoFitImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery/view/AutoFitImageView;->mCropOutside:Z

    .line 48
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/android/gallery/view/AutoFitImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 49
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setImageDrawableWithoutLayout(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "drawable"

    .prologue
    .line 175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery/view/AutoFitImageView;->mSuppressLayout:Z

    .line 176
    invoke-virtual {p0, p1}, Lcom/android/gallery/view/AutoFitImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 177
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery/view/AutoFitImageView;->mSuppressLayout:Z

    .line 178
    return-void
.end method

.method private updateThumbnail(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "drawable"

    .prologue
    .line 250
    iget-boolean v1, p0, Lcom/android/gallery/view/AutoFitImageView;->mLoaded:Z

    if-eqz v1, :cond_1

    .line 251
    invoke-virtual {p0}, Lcom/android/gallery/view/AutoFitImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 252
    .local v0, current:Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 259
    .end local v0           #current:Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery/view/AutoFitImageView;->mLoaded:Z

    .line 258
    invoke-direct {p0, p1}, Lcom/android/gallery/view/AutoFitImageView;->setImageDrawableWithoutLayout(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23
    .parameter "canvas"

    .prologue
    .line 195
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery/view/AutoFitImageView;->mLoaded:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery/view/AutoFitImageView;->mMatrixOrientation:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/view/AutoFitImageView;->mMeta:Lcom/android/gallery/data/BaseMeta;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/gallery/data/BaseMeta;->mOrientation:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 196
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery/view/AutoFitImageView;->updateMatrix()Z

    .line 237
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v12

    .line 203
    .local v12, saveCount:I
    invoke-super/range {p0 .. p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 204
    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 206
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery/view/AutoFitImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 207
    .local v7, drawable:Landroid/graphics/drawable/Drawable;
    if-nez v7, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery/view/AutoFitImageView;->mLoaded:Z

    move/from16 v17, v0

    if-eqz v17, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/view/AutoFitImageView;->mMeta:Lcom/android/gallery/data/BaseMeta;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery/data/BaseMeta;->isVideo()Z

    move-result v17

    if-nez v17, :cond_3

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery/view/AutoFitImageView;->getContext()Landroid/content/Context;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f09004b

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 209
    .local v13, text:Ljava/lang/String;
    new-instance v11, Landroid/graphics/Paint;

    invoke-direct {v11}, Landroid/graphics/Paint;-><init>()V

    .line 210
    .local v11, p:Landroid/graphics/Paint;
    const/16 v17, -0x1

    move-object v0, v11

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 211
    const/16 v17, 0x1

    move-object v0, v11

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 212
    sget-object v17, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 213
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery/view/AutoFitImageView;->getWidth()I

    move-result v16

    .line 214
    .local v16, width:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery/view/AutoFitImageView;->getHeight()I

    move-result v8

    .line 216
    .local v8, height:I
    const/high16 v9, 0x41a0

    .line 217
    .local v9, initSize:F
    invoke-virtual {v11, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 218
    :goto_1
    invoke-virtual {v11, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v19, v0

    const-wide v21, 0x3fe999999999999aL

    mul-double v19, v19, v21

    cmpl-double v17, v17, v19

    if-lez v17, :cond_2

    .line 219
    const/high16 v17, 0x3f80

    sub-float v9, v9, v17

    invoke-virtual {v11, v9}, Landroid/graphics/Paint;->setTextSize(F)V

    goto :goto_1

    .line 222
    :cond_2
    div-int/lit8 v17, v16, 0x2

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    div-int/lit8 v18, v8, 0x2

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p1

    move-object v1, v13

    move/from16 v2, v17

    move/from16 v3, v18

    move-object v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 224
    .end local v8           #height:I
    .end local v9           #initSize:F
    .end local v11           #p:Landroid/graphics/Paint;
    .end local v13           #text:Ljava/lang/String;
    .end local v16           #width:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/view/AutoFitImageView;->mMeta:Lcom/android/gallery/data/BaseMeta;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/view/AutoFitImageView;->mMeta:Lcom/android/gallery/data/BaseMeta;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/gallery/data/BaseMeta;->isVideo()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/view/AutoFitImageView;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f02007e

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    .line 228
    .local v15, videoIndicator:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery/view/AutoFitImageView;->getWidth()I

    move-result v16

    .line 229
    .restart local v16       #width:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery/view/AutoFitImageView;->getHeight()I

    move-result v8

    .line 230
    .restart local v8       #height:I
    move/from16 v0, v16

    move v1, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v17

    mul-int/lit8 v17, v17, 0x2

    div-int/lit8 v6, v17, 0x5

    .line 231
    .local v6, dW:I
    move v5, v6

    .line 232
    .local v5, dH:I
    sub-int v17, v16, v6

    div-int/lit8 v10, v17, 0x2

    .line 233
    .local v10, left:I
    sub-int v17, v8, v5

    div-int/lit8 v14, v17, 0x2

    .line 234
    .local v14, top:I
    add-int v17, v10, v6

    add-int v18, v14, v5

    move-object v0, v15

    move v1, v10

    move v2, v14

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 235
    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 189
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 190
    invoke-virtual {p0}, Lcom/android/gallery/view/AutoFitImageView;->updateMatrix()Z

    .line 191
    return-void
.end method

.method public onThumbnailReady(Lcom/android/gallery/data/BaseMeta;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "meta"
    .parameter "drawable"

    .prologue
    .line 241
    new-instance v0, Lcom/android/gallery/view/AutoFitImageView$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/gallery/view/AutoFitImageView$1;-><init>(Lcom/android/gallery/view/AutoFitImageView;Lcom/android/gallery/data/BaseMeta;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v0}, Lcom/android/gallery/view/AutoFitImageView;->post(Ljava/lang/Runnable;)Z

    .line 247
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/android/gallery/view/AutoFitImageView;->mSuppressLayout:Z

    if-nez v0, :cond_0

    .line 183
    invoke-super {p0}, Landroid/widget/ImageView;->requestLayout()V

    .line 185
    :cond_0
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .parameter "drawable"

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 166
    instance-of v2, p1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v2, :cond_0

    .line 167
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    move-object v1, v0

    .line 168
    .local v1, animationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 169
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 171
    .end local v1           #animationDrawable:Landroid/graphics/drawable/AnimationDrawable;
    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery/view/AutoFitImageView;->updateMatrix()Z

    .line 172
    return-void
.end method

.method public setMeta(Lcom/android/gallery/data/BaseMeta;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "meta"
    .parameter "empty"

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/gallery/view/AutoFitImageView;->setMeta(Lcom/android/gallery/data/BaseMeta;Landroid/graphics/drawable/Drawable;Z)V

    .line 57
    return-void
.end method

.method public setMeta(Lcom/android/gallery/data/BaseMeta;Landroid/graphics/drawable/Drawable;Z)V
    .locals 2
    .parameter "meta"
    .parameter "empty"
    .parameter "force"

    .prologue
    const/4 v1, 0x0

    .line 60
    iget-object v0, p0, Lcom/android/gallery/view/AutoFitImageView;->mMeta:Lcom/android/gallery/data/BaseMeta;

    if-ne v0, p1, :cond_0

    .line 61
    iput-boolean p3, p0, Lcom/android/gallery/view/AutoFitImageView;->mForceLowPriority:Z

    .line 62
    invoke-direct {p0}, Lcom/android/gallery/view/AutoFitImageView;->fetchThumbnail()V

    .line 76
    :goto_0
    return-void

    .line 66
    :cond_0
    iput-object p1, p0, Lcom/android/gallery/view/AutoFitImageView;->mMeta:Lcom/android/gallery/data/BaseMeta;

    .line 67
    iput-object p2, p0, Lcom/android/gallery/view/AutoFitImageView;->mEmpty:Landroid/graphics/drawable/Drawable;

    .line 68
    iput-boolean v1, p0, Lcom/android/gallery/view/AutoFitImageView;->mLoaded:Z

    .line 69
    iput-boolean v1, p0, Lcom/android/gallery/view/AutoFitImageView;->mRequested:Z

    .line 70
    iput-boolean p3, p0, Lcom/android/gallery/view/AutoFitImageView;->mForceLowPriority:Z

    .line 72
    iget-object v0, p0, Lcom/android/gallery/view/AutoFitImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 73
    iput v1, p0, Lcom/android/gallery/view/AutoFitImageView;->mMatrixOrientation:I

    .line 74
    iget-object v0, p0, Lcom/android/gallery/view/AutoFitImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/android/gallery/view/AutoFitImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 75
    invoke-direct {p0, p2}, Lcom/android/gallery/view/AutoFitImageView;->setImageDrawableWithoutLayout(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected updateMatrix()Z
    .locals 12

    .prologue
    const/high16 v11, 0x4000

    .line 106
    invoke-virtual {p0}, Lcom/android/gallery/view/AutoFitImageView;->getWidth()I

    move-result v8

    iget v9, p0, Lcom/android/gallery/view/AutoFitImageView;->mPaddingLeft:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/android/gallery/view/AutoFitImageView;->mPaddingRight:I

    sub-int v7, v8, v9

    .line 107
    .local v7, width:I
    invoke-virtual {p0}, Lcom/android/gallery/view/AutoFitImageView;->getHeight()I

    move-result v8

    iget v9, p0, Lcom/android/gallery/view/AutoFitImageView;->mPaddingTop:I

    sub-int/2addr v8, v9

    iget v9, p0, Lcom/android/gallery/view/AutoFitImageView;->mPaddingBottom:I

    sub-int v3, v8, v9

    .line 108
    .local v3, height:I
    if-lez v7, :cond_0

    if-lez v3, :cond_0

    iget-object v8, p0, Lcom/android/gallery/view/AutoFitImageView;->mMeta:Lcom/android/gallery/data/BaseMeta;

    if-nez v8, :cond_1

    :cond_0
    const/4 v8, 0x0

    .line 160
    :goto_0
    return v8

    .line 110
    :cond_1
    iget-boolean v8, p0, Lcom/android/gallery/view/AutoFitImageView;->mRequested:Z

    if-nez v8, :cond_2

    .line 111
    invoke-direct {p0}, Lcom/android/gallery/view/AutoFitImageView;->fetchThumbnail()V

    .line 114
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery/view/AutoFitImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 115
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    .line 116
    iget-object v8, p0, Lcom/android/gallery/view/AutoFitImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8}, Landroid/graphics/Matrix;->reset()V

    .line 119
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v2, v8

    .line 120
    .local v2, drawableWidth:F
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    int-to-float v1, v8

    .line 121
    .local v1, drawableHeight:F
    iget-object v8, p0, Lcom/android/gallery/view/AutoFitImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    neg-float v9, v2

    div-float/2addr v9, v11

    neg-float v10, v1

    div-float/2addr v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 123
    iget-boolean v8, p0, Lcom/android/gallery/view/AutoFitImageView;->mLoaded:Z

    if-eqz v8, :cond_3

    .line 124
    iget-object v8, p0, Lcom/android/gallery/view/AutoFitImageView;->mMeta:Lcom/android/gallery/data/BaseMeta;

    iget v8, v8, Lcom/android/gallery/data/BaseMeta;->mOrientation:I

    iput v8, p0, Lcom/android/gallery/view/AutoFitImageView;->mMatrixOrientation:I

    .line 129
    iget v8, p0, Lcom/android/gallery/view/AutoFitImageView;->mMatrixOrientation:I

    div-int/lit8 v8, v8, 0x5a

    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_5

    .line 130
    int-to-float v8, v7

    div-float v6, v8, v2

    .line 131
    .local v6, scaleWidth:F
    int-to-float v8, v3

    div-float v5, v8, v1

    .line 138
    .local v5, scaleHeight:F
    :goto_1
    iget-boolean v8, p0, Lcom/android/gallery/view/AutoFitImageView;->mCropOutside:Z

    if-eqz v8, :cond_6

    .line 139
    invoke-static {v6, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 144
    .local v4, scale:F
    :goto_2
    iget-object v8, p0, Lcom/android/gallery/view/AutoFitImageView;->mMeta:Lcom/android/gallery/data/BaseMeta;

    invoke-virtual {v8}, Lcom/android/gallery/data/BaseMeta;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v2

    invoke-static {v8, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 145
    iget-object v8, p0, Lcom/android/gallery/view/AutoFitImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v4, v4}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 148
    iget v8, p0, Lcom/android/gallery/view/AutoFitImageView;->mMatrixOrientation:I

    if-eqz v8, :cond_3

    .line 152
    iget-object v8, p0, Lcom/android/gallery/view/AutoFitImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    iget v9, p0, Lcom/android/gallery/view/AutoFitImageView;->mMatrixOrientation:I

    int-to-float v9, v9

    invoke-virtual {v8, v9}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 157
    .end local v4           #scale:F
    .end local v5           #scaleHeight:F
    .end local v6           #scaleWidth:F
    :cond_3
    iget-object v8, p0, Lcom/android/gallery/view/AutoFitImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    div-int/lit8 v9, v7, 0x2

    int-to-float v9, v9

    div-int/lit8 v10, v3, 0x2

    int-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 158
    iget-object v8, p0, Lcom/android/gallery/view/AutoFitImageView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v8}, Lcom/android/gallery/view/AutoFitImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 160
    .end local v1           #drawableHeight:F
    .end local v2           #drawableWidth:F
    :cond_4
    const/4 v8, 0x1

    goto :goto_0

    .line 133
    .restart local v1       #drawableHeight:F
    .restart local v2       #drawableWidth:F
    :cond_5
    int-to-float v8, v3

    div-float v6, v8, v2

    .line 134
    .restart local v6       #scaleWidth:F
    int-to-float v8, v7

    div-float v5, v8, v1

    .restart local v5       #scaleHeight:F
    goto :goto_1

    .line 142
    :cond_6
    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .restart local v4       #scale:F
    goto :goto_2
.end method
