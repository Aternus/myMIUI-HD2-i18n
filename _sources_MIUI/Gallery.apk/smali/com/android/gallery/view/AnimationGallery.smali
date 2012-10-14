.class public Lcom/android/gallery/view/AnimationGallery;
.super Landroid/widget/Gallery;
.source "AnimationGallery.java"


# instance fields
.field private mCamera:Landroid/graphics/Camera;

.field private mScreenTransitionType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 13
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/android/gallery/view/AnimationGallery;->mCamera:Landroid/graphics/Camera;

    .line 39
    iput v1, p0, Lcom/android/gallery/view/AnimationGallery;->mScreenTransitionType:I

    .line 14
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery/view/AnimationGallery;->setStaticTransformationsEnabled(Z)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 18
    invoke-direct {p0, p1, p2, v1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/android/gallery/view/AnimationGallery;->mCamera:Landroid/graphics/Camera;

    .line 39
    iput v1, p0, Lcom/android/gallery/view/AnimationGallery;->mScreenTransitionType:I

    .line 19
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery/view/AnimationGallery;->setStaticTransformationsEnabled(Z)V

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/android/gallery/view/AnimationGallery;->mCamera:Landroid/graphics/Camera;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery/view/AnimationGallery;->mScreenTransitionType:I

    .line 24
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery/view/AnimationGallery;->setStaticTransformationsEnabled(Z)V

    .line 25
    return-void
.end method


# virtual methods
.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 13
    .parameter "child"
    .parameter "t"

    .prologue
    .line 51
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v1, v9

    .line 52
    .local v1, childW:F
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v0, v9

    .line 53
    .local v0, childH:F
    invoke-virtual {p0}, Lcom/android/gallery/view/AnimationGallery;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x4000

    div-float v4, v9, v10

    .line 54
    .local v4, halfScreenW:F
    const/high16 v9, 0x4000

    div-float v3, v1, v9

    .line 55
    .local v3, halfChildW:F
    const/high16 v9, 0x4000

    div-float v2, v0, v9

    .line 56
    .local v2, halfChildH:F
    invoke-virtual {p0}, Lcom/android/gallery/view/AnimationGallery;->getScrollX()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v9, v4

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    sub-float/2addr v9, v3

    add-float v10, v4, v3

    div-float/2addr v9, v10

    const/high16 v10, -0x4080

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 58
    .local v5, interpolation:F
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    .line 60
    .local v6, m:Landroid/graphics/Matrix;
    iget v9, p0, Lcom/android/gallery/view/AnimationGallery;->mScreenTransitionType:I

    packed-switch v9, :pswitch_data_0

    .line 139
    const/4 v9, 0x0

    .line 141
    :goto_0
    return v9

    .line 62
    :pswitch_0
    const/4 v9, 0x0

    goto :goto_0

    .line 65
    :pswitch_1
    const/4 v9, 0x0

    cmpl-float v9, v5, v9

    if-nez v9, :cond_0

    const/4 v9, 0x0

    goto :goto_0

    .line 66
    :cond_0
    const/high16 v9, 0x3f80

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v10

    sub-float/2addr v9, v10

    invoke-virtual {p2, v9}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 67
    mul-float v9, v1, v5

    const/4 v10, 0x0

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 68
    sget v9, Landroid/view/animation/Transformation;->TYPE_BOTH:I

    invoke-virtual {p2, v9}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    .line 141
    :goto_1
    const/4 v9, 0x1

    goto :goto_0

    .line 72
    :pswitch_2
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v9

    neg-float v10, v5

    const/high16 v11, 0x4234

    mul-float/2addr v10, v11

    invoke-virtual {v9, v10, v3, v0}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 73
    sget v9, Landroid/view/animation/Transformation;->TYPE_MATRIX:I

    invoke-virtual {p2, v9}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    goto :goto_1

    .line 77
    :pswitch_3
    const/4 v9, 0x0

    cmpl-float v9, v5, v9

    if-nez v9, :cond_1

    const/4 v9, 0x0

    goto :goto_0

    .line 78
    :cond_1
    const/high16 v9, 0x3f80

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v10

    sub-float/2addr v9, v10

    invoke-virtual {p2, v9}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 79
    iget-object v9, p0, Lcom/android/gallery/view/AnimationGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v9}, Landroid/graphics/Camera;->save()V

    .line 80
    iget-object v9, p0, Lcom/android/gallery/view/AnimationGallery;->mCamera:Landroid/graphics/Camera;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, v3}, Landroid/graphics/Camera;->translate(FFF)V

    .line 81
    iget-object v9, p0, Lcom/android/gallery/view/AnimationGallery;->mCamera:Landroid/graphics/Camera;

    const/high16 v10, -0x3d4c

    mul-float/2addr v10, v5

    invoke-virtual {v9, v10}, Landroid/graphics/Camera;->rotateY(F)V

    .line 82
    iget-object v9, p0, Lcom/android/gallery/view/AnimationGallery;->mCamera:Landroid/graphics/Camera;

    const/4 v10, 0x0

    const/4 v11, 0x0

    neg-float v12, v3

    invoke-virtual {v9, v10, v11, v12}, Landroid/graphics/Camera;->translate(FFF)V

    .line 83
    iget-object v9, p0, Lcom/android/gallery/view/AnimationGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v9, v6}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 84
    iget-object v9, p0, Lcom/android/gallery/view/AnimationGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v9}, Landroid/graphics/Camera;->restore()V

    .line 85
    neg-float v9, v3

    neg-float v10, v2

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 86
    const/high16 v9, 0x3f80

    const/high16 v10, 0x4000

    mul-float/2addr v10, v5

    add-float/2addr v9, v10

    mul-float/2addr v9, v3

    invoke-virtual {v6, v9, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 87
    sget v9, Landroid/view/animation/Transformation;->TYPE_BOTH:I

    invoke-virtual {p2, v9}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    goto :goto_1

    .line 91
    :pswitch_4
    const/high16 v9, 0x3f80

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v10

    sub-float/2addr v9, v10

    invoke-virtual {p2, v9}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 92
    iget-object v9, p0, Lcom/android/gallery/view/AnimationGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v9}, Landroid/graphics/Camera;->save()V

    .line 93
    iget-object v9, p0, Lcom/android/gallery/view/AnimationGallery;->mCamera:Landroid/graphics/Camera;

    neg-float v10, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v11

    mul-float/2addr v10, v11

    const/high16 v11, 0x4040

    div-float/2addr v10, v11

    neg-float v11, v3

    mul-float/2addr v11, v5

    invoke-virtual {v9, v10, v2, v11}, Landroid/graphics/Camera;->translate(FFF)V

    .line 95
    iget-object v9, p0, Lcom/android/gallery/view/AnimationGallery;->mCamera:Landroid/graphics/Camera;

    const/high16 v10, 0x41f0

    neg-float v11, v5

    mul-float/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/graphics/Camera;->rotateY(F)V

    .line 96
    iget-object v9, p0, Lcom/android/gallery/view/AnimationGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v9, v6}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 97
    iget-object v9, p0, Lcom/android/gallery/view/AnimationGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v9}, Landroid/graphics/Camera;->restore()V

    .line 98
    mul-float v9, v1, v5

    invoke-virtual {v6, v9, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 99
    sget v9, Landroid/view/animation/Transformation;->TYPE_BOTH:I

    invoke-virtual {p2, v9}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    goto/16 :goto_1

    .line 103
    :pswitch_5
    const/4 v9, 0x0

    cmpg-float v9, v5, v9

    if-gtz v9, :cond_2

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 104
    :cond_2
    const/high16 v9, 0x3f80

    sub-float/2addr v9, v5

    invoke-virtual {p2, v9}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 105
    const v9, 0x3f19999a

    const v10, 0x3ecccccd

    const/high16 v11, 0x3f80

    sub-float/2addr v11, v5

    mul-float/2addr v10, v11

    add-float v7, v9, v10

    .line 106
    .local v7, scale:F
    invoke-virtual {v6, v7, v7}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 107
    const/high16 v9, 0x3f80

    sub-float/2addr v9, v7

    mul-float/2addr v9, v1

    const/high16 v10, 0x4040

    mul-float/2addr v9, v10

    const/high16 v10, 0x3f80

    sub-float/2addr v10, v7

    mul-float/2addr v10, v0

    const/high16 v11, 0x3f00

    mul-float/2addr v10, v11

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 108
    sget v9, Landroid/view/animation/Transformation;->TYPE_BOTH:I

    invoke-virtual {p2, v9}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    goto/16 :goto_1

    .line 112
    .end local v7           #scale:F
    :pswitch_6
    const/4 v9, 0x0

    cmpl-float v9, v5, v9

    if-nez v9, :cond_3

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 113
    :cond_3
    const/high16 v9, 0x3f80

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v10

    sub-float/2addr v9, v10

    invoke-virtual {p2, v9}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 114
    iget-object v9, p0, Lcom/android/gallery/view/AnimationGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v9}, Landroid/graphics/Camera;->save()V

    .line 115
    iget-object v9, p0, Lcom/android/gallery/view/AnimationGallery;->mCamera:Landroid/graphics/Camera;

    mul-float v10, v1, v5

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/graphics/Camera;->translate(FFF)V

    .line 116
    iget-object v9, p0, Lcom/android/gallery/view/AnimationGallery;->mCamera:Landroid/graphics/Camera;

    const/high16 v10, 0x4234

    mul-float/2addr v10, v5

    invoke-virtual {v9, v10}, Landroid/graphics/Camera;->rotateY(F)V

    .line 117
    iget-object v9, p0, Lcom/android/gallery/view/AnimationGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v9, v6}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 118
    iget-object v9, p0, Lcom/android/gallery/view/AnimationGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v9}, Landroid/graphics/Camera;->restore()V

    .line 119
    neg-float v9, v3

    neg-float v10, v2

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 120
    invoke-virtual {v6, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 121
    sget v9, Landroid/view/animation/Transformation;->TYPE_BOTH:I

    invoke-virtual {p2, v9}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    goto/16 :goto_1

    .line 124
    :pswitch_7
    const/4 v9, 0x0

    cmpl-float v9, v5, v9

    if-nez v9, :cond_4

    const/4 v9, 0x0

    goto/16 :goto_0

    .line 125
    :cond_4
    const/high16 v9, 0x3f80

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v10

    sub-float/2addr v9, v10

    invoke-virtual {p2, v9}, Landroid/view/animation/Transformation;->setAlpha(F)V

    .line 126
    iget-object v9, p0, Lcom/android/gallery/view/AnimationGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v9}, Landroid/graphics/Camera;->save()V

    .line 127
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    mul-float v8, v9, v1

    .line 128
    .local v8, zoomAmount:F
    iget-object v9, p0, Lcom/android/gallery/view/AnimationGallery;->mCamera:Landroid/graphics/Camera;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11, v8}, Landroid/graphics/Camera;->translate(FFF)V

    .line 129
    iget-object v9, p0, Lcom/android/gallery/view/AnimationGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v9, v6}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 130
    iget-object v9, p0, Lcom/android/gallery/view/AnimationGallery;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v9}, Landroid/graphics/Camera;->restore()V

    .line 132
    neg-float v9, v3

    neg-float v10, v2

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 133
    invoke-virtual {v6, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 135
    sget v9, Landroid/view/animation/Transformation;->TYPE_BOTH:I

    invoke-virtual {p2, v9}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    goto/16 :goto_1

    .line 60
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_3
        :pswitch_7
    .end packed-switch
.end method

.method public setTransitionType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 42
    iput p1, p0, Lcom/android/gallery/view/AnimationGallery;->mScreenTransitionType:I

    .line 43
    return-void
.end method
