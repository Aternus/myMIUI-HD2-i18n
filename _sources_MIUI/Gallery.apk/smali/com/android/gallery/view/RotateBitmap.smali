.class public Lcom/android/gallery/view/RotateBitmap;
.super Ljava/lang/Object;
.source "RotateBitmap.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHeight:I

.field private mRotation:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 15
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/gallery/view/RotateBitmap;-><init>(Landroid/graphics/Bitmap;I)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;I)V
    .locals 1
    .parameter "bitmap"
    .parameter "rotation"

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/gallery/view/RotateBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 20
    rem-int/lit16 v0, p2, 0x168

    invoke-virtual {p0, v0}, Lcom/android/gallery/view/RotateBitmap;->setRotation(I)V

    .line 21
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/gallery/view/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/android/gallery/view/RotateBitmap;->isOrientationChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/gallery/view/RotateBitmap;->mWidth:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/gallery/view/RotateBitmap;->mHeight:I

    goto :goto_0
.end method

.method public getRotateMatrix()Landroid/graphics/Matrix;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 55
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 56
    .local v4, matrix:Landroid/graphics/Matrix;
    iget-object v5, p0, Lcom/android/gallery/view/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v5, :cond_0

    .line 84
    :goto_0
    return-object v4

    .line 59
    :cond_0
    iget-object v5, p0, Lcom/android/gallery/view/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 60
    .local v3, intrinsicWidth:I
    iget-object v5, p0, Lcom/android/gallery/view/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 61
    .local v2, intrinsicHeight:I
    div-int/lit8 v0, v3, 0x2

    .line 62
    .local v0, cx:I
    div-int/lit8 v1, v2, 0x2

    .line 65
    .local v1, cy:I
    iget v5, p0, Lcom/android/gallery/view/RotateBitmap;->mRotation:I

    if-eqz v5, :cond_1

    .line 69
    neg-int v5, v0

    int-to-float v5, v5

    neg-int v6, v1

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 70
    iget v5, p0, Lcom/android/gallery/view/RotateBitmap;->mRotation:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 71
    invoke-virtual {p0}, Lcom/android/gallery/view/RotateBitmap;->isOrientationChanged()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 72
    int-to-float v5, v1

    int-to-float v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 78
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/gallery/view/RotateBitmap;->isOrientationChanged()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 79
    iget v5, p0, Lcom/android/gallery/view/RotateBitmap;->mHeight:I

    int-to-float v5, v5

    add-float/2addr v5, v7

    int-to-float v6, v2

    div-float/2addr v5, v6

    iget v6, p0, Lcom/android/gallery/view/RotateBitmap;->mWidth:I

    int-to-float v6, v6

    add-float/2addr v6, v7

    int-to-float v7, v3

    div-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0

    .line 74
    :cond_2
    int-to-float v5, v0

    int-to-float v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_1

    .line 81
    :cond_3
    iget v5, p0, Lcom/android/gallery/view/RotateBitmap;->mWidth:I

    int-to-float v5, v5

    add-float/2addr v5, v7

    int-to-float v6, v3

    div-float/2addr v5, v6

    iget v6, p0, Lcom/android/gallery/view/RotateBitmap;->mHeight:I

    int-to-float v6, v6

    add-float/2addr v6, v7

    int-to-float v7, v2

    div-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_0
.end method

.method public getRotation()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/android/gallery/view/RotateBitmap;->mRotation:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/android/gallery/view/RotateBitmap;->isOrientationChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/gallery/view/RotateBitmap;->mHeight:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/gallery/view/RotateBitmap;->mWidth:I

    goto :goto_0
.end method

.method public isOrientationChanged()Z
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/android/gallery/view/RotateBitmap;->mRotation:I

    div-int/lit8 v0, v0, 0x5a

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    const/4 v1, 0x0

    .line 39
    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/gallery/view/RotateBitmap;->setBitmap(Landroid/graphics/Bitmap;II)V

    .line 42
    return-void

    .line 39
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    goto :goto_1
.end method

.method public setBitmap(Landroid/graphics/Bitmap;II)V
    .locals 1
    .parameter "bitmap"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/gallery/view/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_0

    .line 46
    iput-object p1, p0, Lcom/android/gallery/view/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 49
    :cond_0
    iput p2, p0, Lcom/android/gallery/view/RotateBitmap;->mWidth:I

    .line 50
    iput p3, p0, Lcom/android/gallery/view/RotateBitmap;->mHeight:I

    .line 51
    return-void
.end method

.method public setRotation(I)V
    .locals 0
    .parameter "rotation"

    .prologue
    .line 24
    iput p1, p0, Lcom/android/gallery/view/RotateBitmap;->mRotation:I

    .line 25
    return-void
.end method
