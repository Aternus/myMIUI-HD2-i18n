.class public Lcom/android/contacts/ui/imageview/RotateBitmap;
.super Ljava/lang/Object;
.source "RotateBitmap.java"


# instance fields
.field private mAutoRecycle:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mHeight:I

.field private mRotation:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "bitmap"

    .prologue
    .line 15
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/contacts/ui/imageview/RotateBitmap;-><init>(Landroid/graphics/Bitmap;IZ)V

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;IZ)V
    .locals 1
    .parameter "bitmap"
    .parameter "rotation"
    .parameter "autoRecycle"

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/ui/imageview/RotateBitmap;->mAutoRecycle:Z

    .line 23
    invoke-virtual {p0, p1, p3}, Lcom/android/contacts/ui/imageview/RotateBitmap;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 24
    rem-int/lit16 v0, p2, 0x168

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/imageview/RotateBitmap;->setRotation(I)V

    .line 25
    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/contacts/ui/imageview/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/RotateBitmap;->isOrientationChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/ui/imageview/RotateBitmap;->mWidth:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/contacts/ui/imageview/RotateBitmap;->mHeight:I

    goto :goto_0
.end method

.method public getRotateMatrix()Landroid/graphics/Matrix;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 77
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 78
    .local v4, matrix:Landroid/graphics/Matrix;
    iget-object v5, p0, Lcom/android/contacts/ui/imageview/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 79
    .local v3, intrinsicWidth:I
    iget-object v5, p0, Lcom/android/contacts/ui/imageview/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 80
    .local v2, intrinsicHeight:I
    div-int/lit8 v0, v3, 0x2

    .line 81
    .local v0, cx:I
    div-int/lit8 v1, v2, 0x2

    .line 84
    .local v1, cy:I
    iget v5, p0, Lcom/android/contacts/ui/imageview/RotateBitmap;->mRotation:I

    if-eqz v5, :cond_0

    .line 88
    neg-int v5, v0

    int-to-float v5, v5

    neg-int v6, v1

    int-to-float v6, v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 89
    iget v5, p0, Lcom/android/contacts/ui/imageview/RotateBitmap;->mRotation:I

    int-to-float v5, v5

    invoke-virtual {v4, v5}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 90
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/RotateBitmap;->isOrientationChanged()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 91
    int-to-float v5, v1

    int-to-float v6, v0

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 97
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/RotateBitmap;->isOrientationChanged()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 98
    iget v5, p0, Lcom/android/contacts/ui/imageview/RotateBitmap;->mHeight:I

    int-to-float v5, v5

    add-float/2addr v5, v7

    int-to-float v6, v2

    div-float/2addr v5, v6

    iget v6, p0, Lcom/android/contacts/ui/imageview/RotateBitmap;->mWidth:I

    int-to-float v6, v6

    add-float/2addr v6, v7

    int-to-float v7, v3

    div-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 103
    :goto_1
    return-object v4

    .line 93
    :cond_1
    int-to-float v5, v0

    int-to-float v6, v1

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 100
    :cond_2
    iget v5, p0, Lcom/android/contacts/ui/imageview/RotateBitmap;->mWidth:I

    int-to-float v5, v5

    add-float/2addr v5, v7

    int-to-float v6, v3

    div-float/2addr v5, v6

    iget v6, p0, Lcom/android/contacts/ui/imageview/RotateBitmap;->mHeight:I

    int-to-float v6, v6

    add-float/2addr v6, v7

    int-to-float v7, v2

    div-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    goto :goto_1
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/RotateBitmap;->isOrientationChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/contacts/ui/imageview/RotateBitmap;->mHeight:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/contacts/ui/imageview/RotateBitmap;->mWidth:I

    goto :goto_0
.end method

.method public isOrientationChanged()Z
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/android/contacts/ui/imageview/RotateBitmap;->mRotation:I

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

.method public recycle()V
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/contacts/ui/imageview/RotateBitmap;->mAutoRecycle:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/ui/imageview/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/ui/imageview/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/android/contacts/ui/imageview/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 31
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/ui/imageview/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 32
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/ui/imageview/RotateBitmap;->setBitmap(Landroid/graphics/Bitmap;Z)V

    .line 48
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 2
    .parameter "bitmap"
    .parameter "autoRecycle"

    .prologue
    const/4 v1, 0x0

    .line 51
    iget-object v0, p0, Lcom/android/contacts/ui/imageview/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-eq v0, p1, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/RotateBitmap;->recycle()V

    .line 53
    iput-object p1, p0, Lcom/android/contacts/ui/imageview/RotateBitmap;->mBitmap:Landroid/graphics/Bitmap;

    .line 55
    :cond_0
    if-nez p1, :cond_1

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/contacts/ui/imageview/RotateBitmap;->mWidth:I

    .line 56
    if-nez p1, :cond_2

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/android/contacts/ui/imageview/RotateBitmap;->mHeight:I

    .line 57
    iput-boolean p2, p0, Lcom/android/contacts/ui/imageview/RotateBitmap;->mAutoRecycle:Z

    .line 58
    return-void

    .line 55
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0

    .line 56
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_1
.end method

.method public setRotation(I)V
    .locals 0
    .parameter "rotation"

    .prologue
    .line 35
    iput p1, p0, Lcom/android/contacts/ui/imageview/RotateBitmap;->mRotation:I

    .line 36
    return-void
.end method
