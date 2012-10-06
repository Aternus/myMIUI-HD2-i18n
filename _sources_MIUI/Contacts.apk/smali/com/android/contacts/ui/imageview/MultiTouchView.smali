.class public Lcom/android/contacts/ui/imageview/MultiTouchView;
.super Landroid/view/View;
.source "MultiTouchView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/ui/imageview/MultiTouchView$Options;
    }
.end annotation


# instance fields
.field private currentMode:I

.field private isSmallPic:Z

.field protected mBaseMatrix:Landroid/graphics/Matrix;

.field protected mBitmapDisplayed:Lcom/android/contacts/ui/imageview/RotateBitmap;

.field private final mDisplayMatrix:Landroid/graphics/Matrix;

.field private mHandler:Landroid/os/Handler;

.field mImageRawHeight:I

.field mImageRawWidth:I

.field private final mMatrixValues:[F

.field mMaxZoom:F

.field protected mSuppMatrix:Landroid/graphics/Matrix;

.field mThisHeight:I

.field mThisWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, -0x1

    .line 32
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->currentMode:I

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mHandler:Landroid/os/Handler;

    .line 70
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 72
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 76
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 79
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mMatrixValues:[F

    .line 82
    new-instance v0, Lcom/android/contacts/ui/imageview/RotateBitmap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/contacts/ui/imageview/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mBitmapDisplayed:Lcom/android/contacts/ui/imageview/RotateBitmap;

    .line 85
    iput v2, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mImageRawWidth:I

    iput v2, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mImageRawHeight:I

    .line 87
    iput v2, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mThisWidth:I

    iput v2, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mThisHeight:I

    .line 33
    invoke-direct {p0}, Lcom/android/contacts/ui/imageview/MultiTouchView;->init()V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, -0x1

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->currentMode:I

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mHandler:Landroid/os/Handler;

    .line 70
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 72
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 76
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 79
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mMatrixValues:[F

    .line 82
    new-instance v0, Lcom/android/contacts/ui/imageview/RotateBitmap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/contacts/ui/imageview/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mBitmapDisplayed:Lcom/android/contacts/ui/imageview/RotateBitmap;

    .line 85
    iput v2, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mImageRawWidth:I

    iput v2, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mImageRawHeight:I

    .line 87
    iput v2, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mThisWidth:I

    iput v2, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mThisHeight:I

    .line 38
    invoke-direct {p0}, Lcom/android/contacts/ui/imageview/MultiTouchView;->init()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v2, -0x1

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->currentMode:I

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mHandler:Landroid/os/Handler;

    .line 70
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mBaseMatrix:Landroid/graphics/Matrix;

    .line 72
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mSuppMatrix:Landroid/graphics/Matrix;

    .line 76
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mDisplayMatrix:Landroid/graphics/Matrix;

    .line 79
    const/16 v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mMatrixValues:[F

    .line 82
    new-instance v0, Lcom/android/contacts/ui/imageview/RotateBitmap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/contacts/ui/imageview/RotateBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mBitmapDisplayed:Lcom/android/contacts/ui/imageview/RotateBitmap;

    .line 85
    iput v2, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mImageRawWidth:I

    iput v2, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mImageRawHeight:I

    .line 87
    iput v2, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mThisWidth:I

    iput v2, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mThisHeight:I

    .line 43
    invoke-direct {p0}, Lcom/android/contacts/ui/imageview/MultiTouchView;->init()V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/ui/imageview/MultiTouchView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getProperBaseMatrix(Landroid/graphics/Matrix;)V
    .locals 8
    .parameter "matrix"

    .prologue
    const/high16 v7, 0x4000

    .line 385
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/MultiTouchView;->getWidth()I

    move-result v5

    int-to-float v3, v5

    .line 386
    .local v3, viewWidth:F
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/MultiTouchView;->getHeight()I

    move-result v5

    int-to-float v2, v5

    .line 388
    .local v2, viewHeight:F
    iget-object v5, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mBitmapDisplayed:Lcom/android/contacts/ui/imageview/RotateBitmap;

    invoke-virtual {v5}, Lcom/android/contacts/ui/imageview/RotateBitmap;->getWidth()I

    move-result v5

    int-to-float v4, v5

    .line 389
    .local v4, w:F
    iget-object v5, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mBitmapDisplayed:Lcom/android/contacts/ui/imageview/RotateBitmap;

    invoke-virtual {v5}, Lcom/android/contacts/ui/imageview/RotateBitmap;->getHeight()I

    move-result v5

    int-to-float v0, v5

    .line 390
    .local v0, h:F
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 393
    cmpg-float v5, v4, v3

    if-gez v5, :cond_0

    cmpg-float v5, v0, v2

    if-gez v5, :cond_0

    .line 394
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->isSmallPic:Z

    .line 395
    const/high16 v1, 0x3f80

    .line 401
    .local v1, scale:F
    :goto_0
    iget-object v5, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mBitmapDisplayed:Lcom/android/contacts/ui/imageview/RotateBitmap;

    invoke-virtual {v5}, Lcom/android/contacts/ui/imageview/RotateBitmap;->getRotateMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 402
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 404
    mul-float v5, v4, v1

    sub-float v5, v3, v5

    div-float/2addr v5, v7

    mul-float v6, v0, v1

    sub-float v6, v2, v6

    div-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 405
    return-void

    .line 397
    .end local v1           #scale:F
    :cond_0
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->isSmallPic:Z

    .line 398
    div-float v5, v3, v4

    div-float v6, v2, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .restart local v1       #scale:F
    goto :goto_0
.end method

.method private init()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/imageview/MultiTouchView;->setClickable(Z)V

    .line 48
    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/imageview/MultiTouchView;->setLongClickable(Z)V

    .line 49
    return-void
.end method


# virtual methods
.method public adjustLeftRight(Z)V
    .locals 6
    .parameter "leftAttachView"

    .prologue
    const/4 v5, 0x0

    .line 287
    iget-object v3, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mBitmapDisplayed:Lcom/android/contacts/ui/imageview/RotateBitmap;

    invoke-virtual {v3}, Lcom/android/contacts/ui/imageview/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    .line 307
    :goto_0
    return-void

    .line 291
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/MultiTouchView;->getViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 293
    .local v0, m:Landroid/graphics/Matrix;
    new-instance v1, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mBitmapDisplayed:Lcom/android/contacts/ui/imageview/RotateBitmap;

    invoke-virtual {v3}, Lcom/android/contacts/ui/imageview/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mBitmapDisplayed:Lcom/android/contacts/ui/imageview/RotateBitmap;

    invoke-virtual {v4}, Lcom/android/contacts/ui/imageview/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v1, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 296
    .local v1, rect:Landroid/graphics/RectF;
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 298
    if-eqz p1, :cond_1

    .line 299
    iget v3, v1, Landroid/graphics/RectF;->left:F

    neg-float v3, v3

    invoke-virtual {p0, v3, v5}, Lcom/android/contacts/ui/imageview/MultiTouchView;->postTranslate(FF)V

    .line 305
    :goto_1
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/MultiTouchView;->setViewMatrix()V

    .line 306
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/MultiTouchView;->invalidate()V

    goto :goto_0

    .line 301
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/MultiTouchView;->getWidth()I

    move-result v2

    .line 302
    .local v2, viewWidth:I
    int-to-float v3, v2

    iget v4, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v4

    invoke-virtual {p0, v3, v5}, Lcom/android/contacts/ui/imageview/MultiTouchView;->postTranslate(FF)V

    goto :goto_1
.end method

.method public center(ZZLcom/android/contacts/ui/imageview/MultiTouchView$Options;)V
    .locals 12
    .parameter "horizontal"
    .parameter "vertical"
    .parameter "opt"

    .prologue
    const/high16 v11, 0x4000

    const/4 v10, 0x0

    .line 228
    iget-object v8, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mBitmapDisplayed:Lcom/android/contacts/ui/imageview/RotateBitmap;

    invoke-virtual {v8}, Lcom/android/contacts/ui/imageview/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    if-nez v8, :cond_2

    .line 229
    if-eqz p3, :cond_0

    iget-boolean v8, p3, Lcom/android/contacts/ui/imageview/MultiTouchView$Options;->inJustGetMatrix:Z

    if-nez v8, :cond_1

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/MultiTouchView;->setViewMatrix()V

    .line 231
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/MultiTouchView;->invalidate()V

    .line 284
    :cond_1
    :goto_0
    return-void

    .line 237
    :cond_2
    if-eqz p3, :cond_5

    iget-boolean v8, p3, Lcom/android/contacts/ui/imageview/MultiTouchView$Options;->inJustGetMatrix:Z

    if-eqz v8, :cond_5

    .line 238
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 239
    .local v3, m:Landroid/graphics/Matrix;
    iget-object v8, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v8}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 240
    iget-object v8, p3, Lcom/android/contacts/ui/imageview/MultiTouchView$Options;->outSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, v8}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 245
    :goto_1
    new-instance v4, Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mBitmapDisplayed:Lcom/android/contacts/ui/imageview/RotateBitmap;

    invoke-virtual {v8}, Lcom/android/contacts/ui/imageview/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    iget-object v9, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mBitmapDisplayed:Lcom/android/contacts/ui/imageview/RotateBitmap;

    invoke-virtual {v9}, Lcom/android/contacts/ui/imageview/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    invoke-direct {v4, v10, v10, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 248
    .local v4, rect:Landroid/graphics/RectF;
    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 250
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v2

    .line 251
    .local v2, height:F
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v7

    .line 253
    .local v7, width:F
    const/4 v0, 0x0

    .local v0, deltaX:F
    const/4 v1, 0x0

    .line 255
    .local v1, deltaY:F
    if-eqz p2, :cond_3

    .line 256
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/MultiTouchView;->getHeight()I

    move-result v5

    .line 257
    .local v5, viewHeight:I
    int-to-float v8, v5

    cmpg-float v8, v2, v8

    if-gez v8, :cond_6

    .line 258
    int-to-float v8, v5

    sub-float/2addr v8, v2

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->top:F

    sub-float v1, v8, v9

    .line 266
    .end local v5           #viewHeight:I
    :cond_3
    :goto_2
    if-eqz p1, :cond_4

    .line 267
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/MultiTouchView;->getWidth()I

    move-result v6

    .line 268
    .local v6, viewWidth:I
    int-to-float v8, v6

    cmpg-float v8, v7, v8

    if-gez v8, :cond_8

    .line 269
    int-to-float v8, v6

    sub-float/2addr v8, v7

    div-float/2addr v8, v11

    iget v9, v4, Landroid/graphics/RectF;->left:F

    sub-float v0, v8, v9

    .line 276
    .end local v6           #viewWidth:I
    :cond_4
    :goto_3
    if-eqz p3, :cond_a

    iget-boolean v8, p3, Lcom/android/contacts/ui/imageview/MultiTouchView$Options;->inJustGetMatrix:Z

    if-eqz v8, :cond_a

    .line 277
    iget-object v8, p3, Lcom/android/contacts/ui/imageview/MultiTouchView$Options;->outSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v8, v0, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto :goto_0

    .line 242
    .end local v0           #deltaX:F
    .end local v1           #deltaY:F
    .end local v2           #height:F
    .end local v3           #m:Landroid/graphics/Matrix;
    .end local v4           #rect:Landroid/graphics/RectF;
    .end local v7           #width:F
    :cond_5
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/MultiTouchView;->getViewMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    .restart local v3       #m:Landroid/graphics/Matrix;
    goto :goto_1

    .line 259
    .restart local v0       #deltaX:F
    .restart local v1       #deltaY:F
    .restart local v2       #height:F
    .restart local v4       #rect:Landroid/graphics/RectF;
    .restart local v5       #viewHeight:I
    .restart local v7       #width:F
    :cond_6
    iget v8, v4, Landroid/graphics/RectF;->top:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_7

    .line 260
    iget v8, v4, Landroid/graphics/RectF;->top:F

    neg-float v1, v8

    goto :goto_2

    .line 261
    :cond_7
    iget v8, v4, Landroid/graphics/RectF;->bottom:F

    int-to-float v9, v5

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    .line 262
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/MultiTouchView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    iget v9, v4, Landroid/graphics/RectF;->bottom:F

    sub-float v1, v8, v9

    goto :goto_2

    .line 270
    .end local v5           #viewHeight:I
    .restart local v6       #viewWidth:I
    :cond_8
    iget v8, v4, Landroid/graphics/RectF;->left:F

    cmpl-float v8, v8, v10

    if-lez v8, :cond_9

    .line 271
    iget v8, v4, Landroid/graphics/RectF;->left:F

    neg-float v0, v8

    goto :goto_3

    .line 272
    :cond_9
    iget v8, v4, Landroid/graphics/RectF;->right:F

    int-to-float v9, v6

    cmpg-float v8, v8, v9

    if-gez v8, :cond_4

    .line 273
    int-to-float v8, v6

    iget v9, v4, Landroid/graphics/RectF;->right:F

    sub-float v0, v8, v9

    goto :goto_3

    .line 279
    .end local v6           #viewWidth:I
    :cond_a
    invoke-virtual {p0, v0, v1}, Lcom/android/contacts/ui/imageview/MultiTouchView;->postTranslate(FF)V

    .line 280
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/MultiTouchView;->setViewMatrix()V

    .line 281
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/MultiTouchView;->invalidate()V

    goto/16 :goto_0
.end method

.method public getBottomExceedOffset()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 183
    iget-object v2, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mBitmapDisplayed:Lcom/android/contacts/ui/imageview/RotateBitmap;

    invoke-virtual {v2}, Lcom/android/contacts/ui/imageview/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v5

    .line 192
    :goto_0
    return v2

    .line 185
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/MultiTouchView;->getViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 187
    .local v0, m:Landroid/graphics/Matrix;
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mBitmapDisplayed:Lcom/android/contacts/ui/imageview/RotateBitmap;

    invoke-virtual {v2}, Lcom/android/contacts/ui/imageview/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mBitmapDisplayed:Lcom/android/contacts/ui/imageview/RotateBitmap;

    invoke-virtual {v3}, Lcom/android/contacts/ui/imageview/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 190
    .local v1, rect:Landroid/graphics/RectF;
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 192
    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v2, v2

    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/MultiTouchView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0
.end method

.method public getLeftExceedOffset()F
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 196
    iget-object v2, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mBitmapDisplayed:Lcom/android/contacts/ui/imageview/RotateBitmap;

    invoke-virtual {v2}, Lcom/android/contacts/ui/imageview/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v4

    .line 205
    :goto_0
    return v2

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/MultiTouchView;->getViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 200
    .local v0, m:Landroid/graphics/Matrix;
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mBitmapDisplayed:Lcom/android/contacts/ui/imageview/RotateBitmap;

    invoke-virtual {v2}, Lcom/android/contacts/ui/imageview/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mBitmapDisplayed:Lcom/android/contacts/ui/imageview/RotateBitmap;

    invoke-virtual {v3}, Lcom/android/contacts/ui/imageview/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 203
    .local v1, rect:Landroid/graphics/RectF;
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 205
    iget v2, v1, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    goto :goto_0
.end method

.method public getMaxScale()F
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mMaxZoom:F

    return v0
.end method

.method protected getMaxZoomInt()F
    .locals 6

    .prologue
    const/high16 v5, 0x3f80

    .line 423
    iget-object v3, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mBitmapDisplayed:Lcom/android/contacts/ui/imageview/RotateBitmap;

    invoke-virtual {v3}, Lcom/android/contacts/ui/imageview/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    move v3, v5

    .line 431
    :goto_0
    return v3

    .line 427
    :cond_0
    iget v3, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mImageRawHeight:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/MultiTouchView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 428
    .local v1, fw:F
    iget v3, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mImageRawHeight:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/MultiTouchView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v0, v3, v4

    .line 430
    .local v0, fh:F
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v3

    const/high16 v4, 0x4080

    mul-float v2, v3, v4

    .line 431
    .local v2, max:F
    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    div-float v4, v5, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto :goto_0
.end method

.method public getRightExceedOffset()F
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 209
    iget-object v3, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mBitmapDisplayed:Lcom/android/contacts/ui/imageview/RotateBitmap;

    invoke-virtual {v3}, Lcom/android/contacts/ui/imageview/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    move v3, v5

    .line 219
    :goto_0
    return v3

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/MultiTouchView;->getViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 213
    .local v0, m:Landroid/graphics/Matrix;
    new-instance v1, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mBitmapDisplayed:Lcom/android/contacts/ui/imageview/RotateBitmap;

    invoke-virtual {v3}, Lcom/android/contacts/ui/imageview/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mBitmapDisplayed:Lcom/android/contacts/ui/imageview/RotateBitmap;

    invoke-virtual {v4}, Lcom/android/contacts/ui/imageview/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v1, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 216
    .local v1, rect:Landroid/graphics/RectF;
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 217
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/MultiTouchView;->getWidth()I

    move-result v3

    int-to-float v2, v3

    .line 219
    .local v2, viewWidth:F
    iget v3, v1, Landroid/graphics/RectF;->right:F

    sub-float/2addr v3, v2

    invoke-static {v3, v5}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto :goto_0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Lcom/android/contacts/ui/imageview/MultiTouchView;->getScale(Landroid/graphics/Matrix;)F

    move-result v0

    return v0
.end method

.method protected getScale(Landroid/graphics/Matrix;)F
    .locals 1
    .parameter "matrix"

    .prologue
    .line 316
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/ui/imageview/MultiTouchView;->getValue(Landroid/graphics/Matrix;I)F

    move-result v0

    return v0
.end method

.method public getTopExceedOffset()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 170
    iget-object v2, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mBitmapDisplayed:Lcom/android/contacts/ui/imageview/RotateBitmap;

    invoke-virtual {v2}, Lcom/android/contacts/ui/imageview/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_0

    move v2, v5

    .line 179
    :goto_0
    return v2

    .line 172
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/MultiTouchView;->getViewMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 174
    .local v0, m:Landroid/graphics/Matrix;
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mBitmapDisplayed:Lcom/android/contacts/ui/imageview/RotateBitmap;

    invoke-virtual {v2}, Lcom/android/contacts/ui/imageview/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mBitmapDisplayed:Lcom/android/contacts/ui/imageview/RotateBitmap;

    invoke-virtual {v3}, Lcom/android/contacts/ui/imageview/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 177
    .local v1, rect:Landroid/graphics/RectF;
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 179
    iget v2, v1, Landroid/graphics/RectF;->top:F

    neg-float v2, v2

    float-to-int v2, v2

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0
.end method

.method protected getValue(Landroid/graphics/Matrix;I)F
    .locals 1
    .parameter "matrix"
    .parameter "whichValue"

    .prologue
    .line 310
    iget-object v0, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mMatrixValues:[F

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 311
    iget-object v0, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mMatrixValues:[F

    aget v0, v0, p2

    return v0
.end method

.method protected getViewMatrix()Landroid/graphics/Matrix;
    .locals 1

    .prologue
    .line 409
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/MultiTouchView;->setViewMatrix()V

    .line 410
    iget-object v0, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mDisplayMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x0

    .line 106
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 107
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 110
    iget-object v1, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mBitmapDisplayed:Lcom/android/contacts/ui/imageview/RotateBitmap;

    invoke-virtual {v1}, Lcom/android/contacts/ui/imageview/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 120
    :goto_0
    return-void

    .line 113
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getSaveCount()I

    move-result v0

    .line 114
    .local v0, saveCount:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 115
    iget-object v1, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mDisplayMatrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mDisplayMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mBitmapDisplayed:Lcom/android/contacts/ui/imageview/RotateBitmap;

    invoke-virtual {v1}, Lcom/android/contacts/ui/imageview/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v4, v4, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 119
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 57
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 58
    sub-int v0, p4, p2

    iput v0, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mThisWidth:I

    .line 59
    sub-int v0, p5, p3

    iput v0, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mThisHeight:I

    .line 61
    iget-object v0, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mBitmapDisplayed:Lcom/android/contacts/ui/imageview/RotateBitmap;

    invoke-virtual {v0}, Lcom/android/contacts/ui/imageview/RotateBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Lcom/android/contacts/ui/imageview/MultiTouchView;->getProperBaseMatrix(Landroid/graphics/Matrix;)V

    .line 64
    iget-boolean v0, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->isSmallPic:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    :goto_0
    iput v0, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->currentMode:I

    .line 65
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/MultiTouchView;->setViewMatrix()V

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/MultiTouchView;->getMaxZoomInt()F

    move-result v0

    iput v0, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mMaxZoom:F

    .line 68
    return-void

    .line 64
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public panBy(FF)V
    .locals 0
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 532
    invoke-virtual {p0, p1, p2}, Lcom/android/contacts/ui/imageview/MultiTouchView;->postTranslate(FF)V

    .line 533
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/MultiTouchView;->setViewMatrix()V

    .line 534
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/MultiTouchView;->invalidate()V

    .line 535
    return-void
.end method

.method protected postTranslate(FF)V
    .locals 1
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 486
    return-void
.end method

.method public recycle()V
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mBitmapDisplayed:Lcom/android/contacts/ui/imageview/RotateBitmap;

    invoke-virtual {v0}, Lcom/android/contacts/ui/imageview/RotateBitmap;->recycle()V

    .line 53
    return-void
.end method

.method public refreshOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mBitmapDisplayed:Lcom/android/contacts/ui/imageview/RotateBitmap;

    invoke-virtual {v0, p1}, Lcom/android/contacts/ui/imageview/RotateBitmap;->setRotation(I)V

    .line 148
    iget-object v0, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, v0}, Lcom/android/contacts/ui/imageview/MultiTouchView;->getProperBaseMatrix(Landroid/graphics/Matrix;)V

    .line 149
    iget-object v0, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 150
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/MultiTouchView;->setViewMatrix()V

    .line 151
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/MultiTouchView;->getMaxZoomInt()F

    move-result v0

    iput v0, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mMaxZoom:F

    .line 153
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/MultiTouchView;->invalidate()V

    .line 154
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;I)V
    .locals 2
    .parameter "bitmap"
    .parameter "orientation"

    .prologue
    const/4 v1, 0x0

    .line 127
    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    if-nez p1, :cond_1

    :goto_1
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/contacts/ui/imageview/MultiTouchView;->setBitmap(Landroid/graphics/Bitmap;III)V

    .line 129
    return-void

    .line 127
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    goto :goto_1
.end method

.method public setBitmap(Landroid/graphics/Bitmap;III)V
    .locals 2
    .parameter "bitmap"
    .parameter "imageRawWidth"
    .parameter "imageRawHeight"
    .parameter "orientation"

    .prologue
    .line 132
    iget-object v1, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 133
    iget-object v1, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 135
    iput p2, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mImageRawWidth:I

    .line 136
    iput p3, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mImageRawHeight:I

    .line 137
    iget-object v1, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mBitmapDisplayed:Lcom/android/contacts/ui/imageview/RotateBitmap;

    invoke-virtual {v1, p1}, Lcom/android/contacts/ui/imageview/RotateBitmap;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 138
    iget-object v1, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mBitmapDisplayed:Lcom/android/contacts/ui/imageview/RotateBitmap;

    invoke-virtual {v1, p4}, Lcom/android/contacts/ui/imageview/RotateBitmap;->setRotation(I)V

    .line 139
    iget-object v1, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mBitmapDisplayed:Lcom/android/contacts/ui/imageview/RotateBitmap;

    invoke-virtual {v1}, Lcom/android/contacts/ui/imageview/RotateBitmap;->isOrientationChanged()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    iget v0, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mImageRawWidth:I

    .line 141
    .local v0, temp:I
    iget v1, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mImageRawHeight:I

    iput v1, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mImageRawWidth:I

    .line 142
    iput v0, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mImageRawHeight:I

    .line 144
    .end local v0           #temp:I
    :cond_0
    return-void
.end method

.method protected setViewMatrix()V
    .locals 2

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mBaseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 415
    iget-object v0, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mDisplayMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postConcat(Landroid/graphics/Matrix;)Z

    .line 416
    return-void
.end method

.method public zoomTo(FF)V
    .locals 4
    .parameter "scale"
    .parameter "durationMs"

    .prologue
    const/high16 v3, 0x4000

    .line 478
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/MultiTouchView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v2, v3

    .line 479
    .local v0, cx:F
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/MultiTouchView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v1, v2, v3

    .line 481
    .local v1, cy:F
    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/android/contacts/ui/imageview/MultiTouchView;->zoomTo(FFFF)V

    .line 482
    return-void
.end method

.method public zoomTo(FFFF)V
    .locals 10
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"
    .parameter "durationMs"

    .prologue
    .line 452
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/MultiTouchView;->getScale()F

    move-result v0

    sub-float v0, p1, v0

    div-float v6, v0, p4

    .line 453
    .local v6, incrementPerMs:F
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/MultiTouchView;->getScale()F

    move-result v5

    .line 454
    .local v5, oldScale:F
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 456
    .local v3, startTime:J
    iget-object v9, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/contacts/ui/imageview/MultiTouchView$1;

    move-object v1, p0

    move v2, p4

    move v7, p2

    move v8, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/contacts/ui/imageview/MultiTouchView$1;-><init>(Lcom/android/contacts/ui/imageview/MultiTouchView;FJFFFF)V

    invoke-virtual {v9, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 468
    return-void
.end method

.method public zoomTo(FFFLcom/android/contacts/ui/imageview/MultiTouchView$Options;)V
    .locals 5
    .parameter "scale"
    .parameter "centerX"
    .parameter "centerY"
    .parameter "opt"

    .prologue
    const/4 v4, 0x1

    .line 435
    if-eqz p4, :cond_0

    iget-boolean v2, p4, Lcom/android/contacts/ui/imageview/MultiTouchView$Options;->inJustGetMatrix:Z

    if-eqz v2, :cond_0

    .line 436
    iget-object v2, p4, Lcom/android/contacts/ui/imageview/MultiTouchView$Options;->inSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v2}, Lcom/android/contacts/ui/imageview/MultiTouchView;->getScale(Landroid/graphics/Matrix;)F

    move-result v1

    .line 437
    .local v1, oldScale:F
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p4, Lcom/android/contacts/ui/imageview/MultiTouchView$Options;->outSuppMatrix:Landroid/graphics/Matrix;

    .line 438
    iget-object v2, p4, Lcom/android/contacts/ui/imageview/MultiTouchView$Options;->outSuppMatrix:Landroid/graphics/Matrix;

    iget-object v3, p4, Lcom/android/contacts/ui/imageview/MultiTouchView$Options;->inSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 439
    div-float v0, p1, v1

    .line 440
    .local v0, deltaScale:F
    iget-object v2, p4, Lcom/android/contacts/ui/imageview/MultiTouchView$Options;->outSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 447
    :goto_0
    invoke-virtual {p0, v4, v4, p4}, Lcom/android/contacts/ui/imageview/MultiTouchView;->center(ZZLcom/android/contacts/ui/imageview/MultiTouchView$Options;)V

    .line 448
    return-void

    .line 442
    .end local v0           #deltaScale:F
    .end local v1           #oldScale:F
    :cond_0
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/MultiTouchView;->getScale()F

    move-result v1

    .line 443
    .restart local v1       #oldScale:F
    div-float v0, p1, v1

    .line 444
    .restart local v0       #deltaScale:F
    iget-object v2, p0, Lcom/android/contacts/ui/imageview/MultiTouchView;->mSuppMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, v0, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_0
.end method
