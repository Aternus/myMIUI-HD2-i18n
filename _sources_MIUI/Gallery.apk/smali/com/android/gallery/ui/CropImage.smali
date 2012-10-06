.class public Lcom/android/gallery/ui/CropImage;
.super Landroid/app/Activity;
.source "CropImage.java"


# instance fields
.field private mAspectX:I

.field private mAspectY:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCircleCrop:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field public mCrop:Lcom/android/gallery/view/HighlightView;

.field private mDoFaceDetection:Z

.field private final mHandler:Landroid/os/Handler;

.field private mImageView:Lcom/android/gallery/view/CropImageView;

.field private mMeta:Lcom/android/gallery/data/FileInfo;

.field private mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

.field private mOutputX:I

.field private mOutputY:I

.field private mRotation:I

.field mRunFaceDetection:Ljava/lang/Runnable;

.field private mSaveLockScreen:Z

.field private mSaveResultPrompt:Ljava/lang/String;

.field private mSaveUri:Landroid/net/Uri;

.field private mSaveWallpaper:Z

.field public mSaving:Z

.field private mScale:Z

.field private mScaleUp:Z

.field private mShowToast:Z

.field private mUri:Landroid/net/Uri;

.field public mWaitingToPick:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 63
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    iput-object v0, p0, Lcom/android/gallery/ui/CropImage;->mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 65
    iput-object v3, p0, Lcom/android/gallery/ui/CropImage;->mSaveUri:Landroid/net/Uri;

    .line 69
    iput-boolean v2, p0, Lcom/android/gallery/ui/CropImage;->mDoFaceDetection:Z

    .line 71
    iput-boolean v1, p0, Lcom/android/gallery/ui/CropImage;->mCircleCrop:Z

    .line 73
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/gallery/ui/CropImage;->mHandler:Landroid/os/Handler;

    .line 81
    iput-boolean v2, p0, Lcom/android/gallery/ui/CropImage;->mScaleUp:Z

    .line 83
    iput-boolean v1, p0, Lcom/android/gallery/ui/CropImage;->mSaveWallpaper:Z

    .line 85
    iput-boolean v1, p0, Lcom/android/gallery/ui/CropImage;->mSaveLockScreen:Z

    .line 101
    iput v1, p0, Lcom/android/gallery/ui/CropImage;->mRotation:I

    .line 103
    iput-object v3, p0, Lcom/android/gallery/ui/CropImage;->mUri:Landroid/net/Uri;

    .line 509
    new-instance v0, Lcom/android/gallery/ui/CropImage$8;

    invoke-direct {v0, p0}, Lcom/android/gallery/ui/CropImage$8;-><init>(Lcom/android/gallery/ui/CropImage;)V

    iput-object v0, p0, Lcom/android/gallery/ui/CropImage;->mRunFaceDetection:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery/ui/CropImage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/android/gallery/ui/CropImage;->onSaveClicked()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/gallery/ui/CropImage;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery/ui/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/gallery/ui/CropImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/gallery/ui/CropImage;->mAspectY:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/gallery/ui/CropImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/gallery/ui/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/gallery/ui/CropImage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/gallery/ui/CropImage;->mDoFaceDetection:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/gallery/ui/CropImage;)Lcom/android/gallery/view/CropImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery/ui/CropImage;->mImageView:Lcom/android/gallery/view/CropImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/gallery/ui/CropImage;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery/ui/CropImage;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/gallery/ui/CropImage;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/gallery/ui/CropImage;->saveWallpaper(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/gallery/ui/CropImage;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/gallery/ui/CropImage;->saveLockScreen(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/gallery/ui/CropImage;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/gallery/ui/CropImage;->saveOutput(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/gallery/ui/CropImage;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/android/gallery/ui/CropImage;->mSaveResultPrompt:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/gallery/ui/CropImage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/android/gallery/ui/CropImage;->mCircleCrop:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/gallery/ui/CropImage;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/android/gallery/ui/CropImage;->mAspectX:I

    return v0
.end method

.method private onSaveClicked()V
    .locals 26

    .prologue
    .line 259
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery/ui/CropImage;->mSaving:Z

    move v5, v0

    if-eqz v5, :cond_1

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 261
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/ui/CropImage;->mCrop:Lcom/android/gallery/view/HighlightView;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 263
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/gallery/ui/CropImage;->mSaving:Z

    .line 265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/ui/CropImage;->mCrop:Lcom/android/gallery/view/HighlightView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/gallery/view/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v23

    .line 267
    .local v23, r:Landroid/graphics/Rect;
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->width()I

    move-result v25

    .line 268
    .local v25, width:I
    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Rect;->height()I

    move-result v19

    .line 269
    .local v19, height:I
    if-lez v25, :cond_0

    if-lez v19, :cond_0

    .line 271
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v25

    move/from16 v1, v19

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 273
    .local v14, croppedImage:Landroid/graphics/Bitmap;
    new-instance v13, Landroid/graphics/Canvas;

    invoke-direct {v13, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 274
    .local v13, canvas:Landroid/graphics/Canvas;
    new-instance v22, Landroid/graphics/Paint;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Paint;-><init>()V

    .line 275
    .local v22, p:Landroid/graphics/Paint;
    const/4 v5, 0x1

    move-object/from16 v0, v22

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 276
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/ui/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    move-object v5, v0

    new-instance v6, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v6

    move v1, v7

    move v2, v8

    move/from16 v3, v25

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object v0, v13

    move-object v1, v5

    move-object/from16 v2, v23

    move-object v3, v6

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 279
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery/ui/CropImage;->mCircleCrop:Z

    move v5, v0

    if-eqz v5, :cond_2

    .line 285
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v14}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 286
    .local v12, c:Landroid/graphics/Canvas;
    new-instance v22, Landroid/graphics/Path;

    .end local v22           #p:Landroid/graphics/Paint;
    invoke-direct/range {v22 .. v22}, Landroid/graphics/Path;-><init>()V

    .line 287
    .local v22, p:Landroid/graphics/Path;
    move/from16 v0, v25

    int-to-float v0, v0

    move v5, v0

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    move/from16 v0, v19

    int-to-float v0, v0

    move v6, v0

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    move/from16 v0, v25

    int-to-float v0, v0

    move v7, v0

    const/high16 v8, 0x4000

    div-float/2addr v7, v8

    sget-object v8, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object/from16 v0, v22

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 288
    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, v12

    move-object/from16 v1, v22

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 289
    const/4 v5, 0x0

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v12, v5, v6}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 293
    .end local v12           #c:Landroid/graphics/Canvas;
    .end local v22           #p:Landroid/graphics/Path;
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery/ui/CropImage;->mOutputX:I

    move v5, v0

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery/ui/CropImage;->mOutputY:I

    move v5, v0

    if-eqz v5, :cond_3

    .line 294
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery/ui/CropImage;->mScale:Z

    move v5, v0

    if-eqz v5, :cond_5

    .line 296
    move-object/from16 v21, v14

    .line 297
    .local v21, old:Landroid/graphics/Bitmap;
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery/ui/CropImage;->mOutputX:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery/ui/CropImage;->mOutputY:I

    move v7, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery/ui/CropImage;->mScaleUp:Z

    move v8, v0

    invoke-static {v5, v14, v6, v7, v8}, Lcom/android/gallery/util/Utils;->transform(Landroid/graphics/Matrix;Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 298
    move-object/from16 v0, v21

    move-object v1, v14

    if-eq v0, v1, :cond_3

    .line 299
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/Bitmap;->recycle()V

    .line 336
    .end local v21           #old:Landroid/graphics/Bitmap;
    :cond_3
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery/ui/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v20

    .line 337
    .local v20, myExtras:Landroid/os/Bundle;
    if-eqz v20, :cond_6

    const-string v5, "data"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    if-nez v5, :cond_4

    const-string v5, "return-data"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 338
    :cond_4
    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .line 339
    .local v18, extras:Landroid/os/Bundle;
    const-string v5, "data"

    move-object/from16 v0, v18

    move-object v1, v5

    move-object v2, v14

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 340
    const/4 v5, -0x1

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "inline-data"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v6

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery/ui/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 341
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery/ui/CropImage;->finish()V

    goto/16 :goto_0

    .line 311
    .end local v18           #extras:Landroid/os/Bundle;
    .end local v20           #myExtras:Landroid/os/Bundle;
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery/ui/CropImage;->mOutputX:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery/ui/CropImage;->mOutputY:I

    move v6, v0

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 312
    .local v11, b:Landroid/graphics/Bitmap;
    new-instance v13, Landroid/graphics/Canvas;

    .end local v13           #canvas:Landroid/graphics/Canvas;
    invoke-direct {v13, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 314
    .restart local v13       #canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/ui/CropImage;->mCrop:Lcom/android/gallery/view/HighlightView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/gallery/view/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v24

    .line 315
    .local v24, srcRect:Landroid/graphics/Rect;
    new-instance v15, Landroid/graphics/Rect;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery/ui/CropImage;->mOutputX:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery/ui/CropImage;->mOutputY:I

    move v8, v0

    invoke-direct {v15, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 317
    .local v15, dstRect:Landroid/graphics/Rect;
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v16, v5, 0x2

    .line 318
    .local v16, dx:I
    invoke-virtual/range {v24 .. v24}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v17, v5, 0x2

    .line 321
    .local v17, dy:I
    const/4 v5, 0x0

    move v0, v5

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v6, 0x0

    move v0, v6

    move/from16 v1, v17

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, v24

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->inset(II)V

    .line 324
    const/4 v5, 0x0

    move/from16 v0, v16

    neg-int v0, v0

    move v6, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    const/4 v6, 0x0

    move/from16 v0, v17

    neg-int v0, v0

    move v7, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    invoke-virtual {v15, v5, v6}, Landroid/graphics/Rect;->inset(II)V

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/ui/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    move-object v5, v0

    const/4 v6, 0x0

    move-object v0, v13

    move-object v1, v5

    move-object/from16 v2, v24

    move-object v3, v15

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 330
    invoke-virtual {v14}, Landroid/graphics/Bitmap;->recycle()V

    .line 331
    move-object v14, v11

    goto/16 :goto_1

    .line 342
    .end local v11           #b:Landroid/graphics/Bitmap;
    .end local v15           #dstRect:Landroid/graphics/Rect;
    .end local v16           #dx:I
    .end local v17           #dy:I
    .end local v24           #srcRect:Landroid/graphics/Rect;
    .restart local v20       #myExtras:Landroid/os/Bundle;
    :cond_6
    if-eqz v20, :cond_7

    const-string v5, "return-uri"

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 343
    new-instance v18, Landroid/os/Bundle;

    invoke-direct/range {v18 .. v18}, Landroid/os/Bundle;-><init>()V

    .line 344
    .restart local v18       #extras:Landroid/os/Bundle;
    const-string v5, "data"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/ui/CropImage;->mUri:Landroid/net/Uri;

    move-object v6, v0

    move-object/from16 v0, v18

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 345
    const-string v5, "width"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/ui/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    move-object/from16 v0, v18

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 346
    const-string v5, "height"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/ui/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    move-object/from16 v0, v18

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 347
    const/4 v5, -0x1

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "inline-data"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v6

    move-object/from16 v0, p0

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery/ui/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 348
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery/ui/CropImage;->finish()V

    goto/16 :goto_0

    .line 350
    .end local v18           #extras:Landroid/os/Bundle;
    :cond_7
    move-object v11, v14

    .line 351
    .restart local v11       #b:Landroid/graphics/Bitmap;
    const/4 v9, 0x0

    .line 352
    .local v9, save:Ljava/lang/Runnable;
    const/4 v7, 0x0

    .line 353
    .local v7, messageId:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery/ui/CropImage;->mSaveWallpaper:Z

    move v5, v0

    if-eqz v5, :cond_8

    .line 354
    new-instance v9, Lcom/android/gallery/ui/CropImage$4;

    .end local v9           #save:Ljava/lang/Runnable;
    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcom/android/gallery/ui/CropImage$4;-><init>(Lcom/android/gallery/ui/CropImage;Landroid/graphics/Bitmap;)V

    .line 359
    .restart local v9       #save:Ljava/lang/Runnable;
    const v7, 0x7f090068

    .line 376
    :goto_2
    new-instance v10, Lcom/android/gallery/ui/CropImage$7;

    move-object v0, v10

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/gallery/ui/CropImage$7;-><init>(Lcom/android/gallery/ui/CropImage;)V

    .line 386
    .local v10, exit:Ljava/lang/Runnable;
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p0

    invoke-static/range {v5 .. v10}, Lcom/android/gallery/app/AppHelper;->startProgressDialogTask(Landroid/content/Context;IILjava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 360
    .end local v10           #exit:Ljava/lang/Runnable;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery/ui/CropImage;->mSaveLockScreen:Z

    move v5, v0

    if-eqz v5, :cond_9

    .line 361
    new-instance v9, Lcom/android/gallery/ui/CropImage$5;

    .end local v9           #save:Ljava/lang/Runnable;
    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcom/android/gallery/ui/CropImage$5;-><init>(Lcom/android/gallery/ui/CropImage;Landroid/graphics/Bitmap;)V

    .line 366
    .restart local v9       #save:Ljava/lang/Runnable;
    const v7, 0x7f090069

    goto :goto_2

    .line 368
    :cond_9
    new-instance v9, Lcom/android/gallery/ui/CropImage$6;

    .end local v9           #save:Ljava/lang/Runnable;
    move-object v0, v9

    move-object/from16 v1, p0

    move-object v2, v11

    invoke-direct {v0, v1, v2}, Lcom/android/gallery/ui/CropImage$6;-><init>(Lcom/android/gallery/ui/CropImage;Landroid/graphics/Bitmap;)V

    .line 373
    .restart local v9       #save:Ljava/lang/Runnable;
    const v7, 0x7f090061

    goto :goto_2
.end method

.method private saveLockScreen(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "croppedImage"

    .prologue
    .line 419
    :try_start_0
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/WallpaperManager;->setLockScreen(Landroid/graphics/Bitmap;)V

    .line 420
    invoke-virtual {p0}, Lcom/android/gallery/ui/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090075

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 421
    .local v1, text:Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/gallery/ui/CropImage;->setResult(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 427
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 429
    :cond_0
    iput-object v1, p0, Lcom/android/gallery/ui/CropImage;->mSaveResultPrompt:Ljava/lang/String;

    .line 430
    return-void

    .line 422
    .end local v1           #text:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 423
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {p0}, Lcom/android/gallery/ui/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090074

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 424
    .restart local v1       #text:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/gallery/ui/CropImage;->setResult(I)V

    goto :goto_0
.end method

.method private saveOutput(Landroid/graphics/Bitmap;)V
    .locals 26
    .parameter "croppedImage"

    .prologue
    .line 433
    const/16 v24, 0x0

    .line 434
    .local v24, savePath:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/ui/CropImage;->mSaveUri:Landroid/net/Uri;

    move-object v4, v0

    if-eqz v4, :cond_2

    .line 435
    const/16 v23, 0x0

    .line 437
    .local v23, outputStream:Ljava/io/OutputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/ui/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/ui/CropImage;->mSaveUri:Landroid/net/Uri;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v23

    .line 438
    if-eqz v23, :cond_0

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/ui/CropImage;->mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

    move-object v4, v0

    const/16 v5, 0x64

    move-object/from16 v0, p1

    move-object v1, v4

    move v2, v5

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 441
    invoke-virtual/range {v23 .. v23}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    :cond_0
    invoke-static/range {v23 .. v23}, Lcom/android/gallery/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 448
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/ui/CropImage;->mSaveUri:Landroid/net/Uri;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v24

    .line 449
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    .line 450
    .local v19, extras:Landroid/os/Bundle;
    const/4 v4, -0x1

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/ui/CropImage;->mSaveUri:Landroid/net/Uri;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v5

    move-object/from16 v0, p0

    move v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery/ui/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 490
    .end local v23           #outputStream:Ljava/io/OutputStream;
    :cond_1
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 492
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/gallery/ui/CropImage;->mShowToast:Z

    move v4, v0

    if-eqz v4, :cond_6

    if-eqz v24, :cond_6

    .line 493
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery/ui/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f09006b

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v24, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery/ui/CropImage;->mSaveResultPrompt:Ljava/lang/String;

    .line 498
    :goto_2
    return-void

    .line 443
    .end local v19           #extras:Landroid/os/Bundle;
    .restart local v23       #outputStream:Ljava/io/OutputStream;
    :catch_0
    move-exception v4

    move-object/from16 v18, v4

    .line 444
    .local v18, ex:Ljava/io/IOException;
    :try_start_1
    const-string v4, "CropImage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot open file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/ui/CropImage;->mSaveUri:Landroid/net/Uri;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    invoke-static/range {v23 .. v23}, Lcom/android/gallery/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v18           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    invoke-static/range {v23 .. v23}, Lcom/android/gallery/util/Utils;->closeSilently(Ljava/io/Closeable;)V

    throw v4

    .line 452
    .end local v23           #outputStream:Ljava/io/OutputStream;
    :cond_2
    new-instance v19, Landroid/os/Bundle;

    invoke-direct/range {v19 .. v19}, Landroid/os/Bundle;-><init>()V

    .line 453
    .restart local v19       #extras:Landroid/os/Bundle;
    const-string v4, "rect"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/ui/CropImage;->mCrop:Lcom/android/gallery/view/HighlightView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/gallery/view/HighlightView;->getCropRect()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v19

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    const/4 v10, 0x0

    .line 456
    .local v10, latitude:Ljava/lang/Double;
    const/4 v11, 0x0

    .line 457
    .local v11, longitude:Ljava/lang/Double;
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v21

    .line 458
    .local v21, now:J
    const-wide/16 v8, 0x3e8

    div-long v6, v21, v8

    .line 460
    .local v6, dateAdded:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/ui/CropImage;->mMeta:Lcom/android/gallery/data/FileInfo;

    move-object v4, v0

    if-eqz v4, :cond_1

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/ui/CropImage;->mMeta:Lcom/android/gallery/data/FileInfo;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/android/gallery/data/FileInfo;->isLatLongValid()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 462
    new-instance v10, Ljava/lang/Double;

    .end local v10           #latitude:Ljava/lang/Double;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/ui/CropImage;->mMeta:Lcom/android/gallery/data/FileInfo;

    move-object v4, v0

    iget-wide v8, v4, Lcom/android/gallery/data/BaseMeta;->mLatitude:D

    invoke-direct {v10, v8, v9}, Ljava/lang/Double;-><init>(D)V

    .line 463
    .restart local v10       #latitude:Ljava/lang/Double;
    new-instance v11, Ljava/lang/Double;

    .end local v11           #longitude:Ljava/lang/Double;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/ui/CropImage;->mMeta:Lcom/android/gallery/data/FileInfo;

    move-object v4, v0

    iget-wide v8, v4, Lcom/android/gallery/data/BaseMeta;->mLongitude:D

    invoke-direct {v11, v8, v9}, Ljava/lang/Double;-><init>(D)V

    .line 466
    .restart local v11       #longitude:Ljava/lang/Double;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/ui/CropImage;->mMeta:Lcom/android/gallery/data/FileInfo;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/gallery/util/StorageUtils;->getFolderPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 468
    .local v12, directory:Ljava/lang/String;
    const/16 v25, 0x0

    .line 470
    .local v25, x:I
    :cond_4
    add-int/lit8 v25, v25, 0x1

    .line 471
    const-string v4, "%s/%s-%d.jpg"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v12, v5, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/ui/CropImage;->mMeta:Lcom/android/gallery/data/FileInfo;

    move-object v9, v0

    iget-object v9, v9, Lcom/android/gallery/data/BaseMeta;->mTitle:Ljava/lang/String;

    aput-object v9, v5, v8

    const/4 v8, 0x2

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 472
    .local v17, candidate:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Lcom/android/gallery/util/StorageUtils;->isExist(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 475
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/ui/CropImage;->mMeta:Lcom/android/gallery/data/FileInfo;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/gallery/data/BaseMeta;->mTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 476
    .local v5, title:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ".jpg"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 477
    .local v13, finalFileName:Ljava/lang/String;
    const/4 v4, 0x1

    move v0, v4

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/4 v4, 0x0

    const/4 v8, 0x0

    aput v8, v16, v4

    .line 479
    .local v16, degree:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/ui/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/ui/CropImage;->mMeta:Lcom/android/gallery/data/FileInfo;

    move-object v8, v0

    iget-wide v8, v8, Lcom/android/gallery/data/BaseMeta;->mDateTaken:J

    const/4 v15, 0x0

    move-object/from16 v14, p1

    invoke-static/range {v4 .. v16}, Lcom/android/gallery/data/MediaStoreHelper;->addImage(Landroid/content/ContentResolver;Ljava/lang/String;JJLjava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;[B[I)Landroid/net/Uri;

    move-result-object v20

    .line 481
    .local v20, newUri:Landroid/net/Uri;
    if-eqz v20, :cond_5

    .line 482
    const/4 v4, -0x1

    new-instance v5, Landroid/content/Intent;

    .end local v5           #title:Ljava/lang/String;
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v5

    move-object/from16 v0, p0

    move v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery/ui/CropImage;->setResult(ILandroid/content/Intent;)V

    .line 487
    :goto_3
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v12, v13}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v24

    goto/16 :goto_1

    .line 484
    .restart local v5       #title:Ljava/lang/String;
    :cond_5
    const/4 v4, -0x1

    new-instance v5, Landroid/content/Intent;

    .end local v5           #title:Ljava/lang/String;
    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    move-object/from16 v0, p0

    move v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery/ui/CropImage;->setResult(ILandroid/content/Intent;)V

    goto :goto_3

    .line 496
    .end local v6           #dateAdded:J
    .end local v10           #latitude:Ljava/lang/Double;
    .end local v11           #longitude:Ljava/lang/Double;
    .end local v12           #directory:Ljava/lang/String;
    .end local v13           #finalFileName:Ljava/lang/String;
    .end local v16           #degree:[I
    .end local v17           #candidate:Ljava/lang/String;
    .end local v20           #newUri:Landroid/net/Uri;
    .end local v21           #now:J
    .end local v25           #x:I
    :cond_6
    const/4 v4, 0x0

    move-object v0, v4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery/ui/CropImage;->mSaveResultPrompt:Ljava/lang/String;

    goto/16 :goto_2
.end method

.method private saveWallpaper(Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "croppedImage"

    .prologue
    .line 401
    :try_start_0
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 402
    invoke-virtual {p0}, Lcom/android/gallery/ui/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090073

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, text:Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/gallery/ui/CropImage;->setResult(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    .line 412
    :cond_0
    iput-object v1, p0, Lcom/android/gallery/ui/CropImage;->mSaveResultPrompt:Ljava/lang/String;

    .line 413
    return-void

    .line 404
    .end local v1           #text:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 405
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 406
    invoke-virtual {p0}, Lcom/android/gallery/ui/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090072

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 407
    .restart local v1       #text:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/gallery/ui/CropImage;->setResult(I)V

    goto :goto_0
.end method

.method private startFaceDetection()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 213
    invoke-virtual {p0}, Lcom/android/gallery/ui/CropImage;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v2, p0, Lcom/android/gallery/ui/CropImage;->mImageView:Lcom/android/gallery/view/CropImageView;

    iget-object v3, p0, Lcom/android/gallery/ui/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3, v5}, Lcom/android/gallery/view/CropImageView;->setImageBitmapResetBase(Landroid/graphics/Bitmap;Z)V

    .line 217
    new-instance v1, Lcom/android/gallery/ui/CropImage$3;

    invoke-direct {v1, p0}, Lcom/android/gallery/ui/CropImage$3;-><init>(Lcom/android/gallery/ui/CropImage;)V

    .line 244
    .local v1, face_detect:Ljava/lang/Runnable;
    const/4 v0, 0x0

    .line 245
    .local v0, dialog:Landroid/app/ProgressDialog;
    iget-boolean v2, p0, Lcom/android/gallery/ui/CropImage;->mDoFaceDetection:Z

    if-eqz v2, :cond_1

    .line 246
    new-instance v0, Landroid/app/ProgressDialog;

    .end local v0           #dialog:Landroid/app/ProgressDialog;
    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 247
    .restart local v0       #dialog:Landroid/app/ProgressDialog;
    invoke-virtual {p0}, Lcom/android/gallery/ui/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090060

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 248
    invoke-virtual {v0, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 249
    invoke-virtual {v0, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 251
    :cond_1
    new-instance v2, Lcom/android/gallery/app/AppHelper$ProgressDialogTask;

    invoke-direct {v2, v0, v6, v1, v6}, Lcom/android/gallery/app/AppHelper$ProgressDialogTask;-><init>(Landroid/app/ProgressDialog;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    new-array v3, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/android/gallery/app/AppHelper$ProgressDialogTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v9, "CropImage"

    .line 109
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/gallery/ui/CropImage;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x400

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 113
    const v4, 0x7f030002

    invoke-virtual {p0, v4}, Lcom/android/gallery/ui/CropImage;->setContentView(I)V

    .line 115
    invoke-virtual {p0}, Lcom/android/gallery/ui/CropImage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery/ui/CropImage;->mContentResolver:Landroid/content/ContentResolver;

    .line 116
    const v4, 0x7f0c0004

    invoke-virtual {p0, v4}, Lcom/android/gallery/ui/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/gallery/view/CropImageView;

    iput-object v4, p0, Lcom/android/gallery/ui/CropImage;->mImageView:Lcom/android/gallery/view/CropImageView;

    .line 118
    invoke-virtual {p0}, Lcom/android/gallery/ui/CropImage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 119
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, action:Ljava/lang/String;
    const-string v4, "noShowToast"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_4

    move v4, v7

    :goto_0
    iput-boolean v4, p0, Lcom/android/gallery/ui/CropImage;->mShowToast:Z

    .line 122
    const-string v4, "android.intent.action.CROP_SET_WALLPAPER"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 123
    iput-boolean v7, p0, Lcom/android/gallery/ui/CropImage;->mSaveWallpaper:Z

    .line 128
    :goto_1
    const-string v4, "android.intent.action.CROP_SET_LOCKSCREEN_WALLPAPER"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 129
    iput-boolean v7, p0, Lcom/android/gallery/ui/CropImage;->mSaveLockScreen:Z

    .line 134
    :goto_2
    const-string v4, "circleCrop"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 135
    iput-boolean v7, p0, Lcom/android/gallery/ui/CropImage;->mCircleCrop:Z

    .line 136
    iput v7, p0, Lcom/android/gallery/ui/CropImage;->mAspectX:I

    .line 137
    iput v7, p0, Lcom/android/gallery/ui/CropImage;->mAspectY:I

    .line 140
    :cond_0
    const-string v4, "output"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iput-object v4, p0, Lcom/android/gallery/ui/CropImage;->mSaveUri:Landroid/net/Uri;

    .line 141
    iget-object v4, p0, Lcom/android/gallery/ui/CropImage;->mSaveUri:Landroid/net/Uri;

    if-eqz v4, :cond_1

    .line 142
    const-string v4, "outputFormat"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, outputFormatString:Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 144
    invoke-static {v2}, Landroid/graphics/Bitmap$CompressFormat;->valueOf(Ljava/lang/String;)Landroid/graphics/Bitmap$CompressFormat;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery/ui/CropImage;->mOutputFormat:Landroid/graphics/Bitmap$CompressFormat;

    .line 148
    .end local v2           #outputFormatString:Ljava/lang/String;
    :cond_1
    const-string v4, "data"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iput-object v4, p0, Lcom/android/gallery/ui/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 149
    const-string v4, "aspectX"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/gallery/ui/CropImage;->mAspectX:I

    .line 150
    const-string v4, "aspectY"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/gallery/ui/CropImage;->mAspectY:I

    .line 151
    const-string v4, "outputX"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/gallery/ui/CropImage;->mOutputX:I

    .line 152
    const-string v4, "outputY"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/gallery/ui/CropImage;->mOutputY:I

    .line 153
    const-string v4, "scale"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/gallery/ui/CropImage;->mScale:Z

    .line 154
    const-string v4, "scaleUpIfNeeded"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/gallery/ui/CropImage;->mScaleUp:Z

    .line 155
    const-string v4, "noFaceDetection"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_7

    move v4, v7

    :goto_3
    iput-boolean v4, p0, Lcom/android/gallery/ui/CropImage;->mDoFaceDetection:Z

    .line 157
    iget-boolean v4, p0, Lcom/android/gallery/ui/CropImage;->mSaveWallpaper:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/gallery/ui/CropImage;->mSaveLockScreen:Z

    if-eqz v4, :cond_3

    .line 158
    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery/ui/CropImage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 159
    .local v3, res:Landroid/content/res/Resources;
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    if-eq v8, v4, :cond_8

    .line 160
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/android/gallery/ui/CropImage;->mAspectX:I

    .line 161
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/android/gallery/ui/CropImage;->mAspectY:I

    .line 167
    :goto_4
    iget v4, p0, Lcom/android/gallery/ui/CropImage;->mAspectX:I

    iget-boolean v5, p0, Lcom/android/gallery/ui/CropImage;->mSaveLockScreen:Z

    if-eqz v5, :cond_9

    move v5, v7

    :goto_5
    mul-int/2addr v4, v5

    iput v4, p0, Lcom/android/gallery/ui/CropImage;->mAspectX:I

    .line 170
    .end local v3           #res:Landroid/content/res/Resources;
    :cond_3
    iget-object v4, p0, Lcom/android/gallery/ui/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_b

    .line 172
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery/ui/CropImage;->mUri:Landroid/net/Uri;

    .line 173
    iget-object v4, p0, Lcom/android/gallery/ui/CropImage;->mUri:Landroid/net/Uri;

    invoke-static {p0, v4}, Lcom/android/gallery/data/MediaStoreHelper;->getMediaMeta(Landroid/content/Context;Landroid/net/Uri;)Lcom/android/gallery/data/FileInfo;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery/ui/CropImage;->mMeta:Lcom/android/gallery/data/FileInfo;

    .line 175
    iget-object v4, p0, Lcom/android/gallery/ui/CropImage;->mMeta:Lcom/android/gallery/data/FileInfo;

    if-nez v4, :cond_a

    .line 176
    const-string v4, "CropImage"

    const-string v4, "Data cannot be null, exiting."

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    invoke-virtual {p0}, Lcom/android/gallery/ui/CropImage;->finish()V

    .line 210
    :goto_6
    return-void

    :cond_4
    move v4, v6

    .line 120
    goto/16 :goto_0

    .line 125
    :cond_5
    const-string v4, "save_wallpaper"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/gallery/ui/CropImage;->mSaveWallpaper:Z

    goto/16 :goto_1

    .line 131
    :cond_6
    const-string v4, "save_lockscreen"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/gallery/ui/CropImage;->mSaveLockScreen:Z

    goto/16 :goto_2

    :cond_7
    move v4, v6

    .line 155
    goto :goto_3

    .line 164
    .restart local v3       #res:Landroid/content/res/Resources;
    :cond_8
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v4, p0, Lcom/android/gallery/ui/CropImage;->mAspectX:I

    .line 165
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v4, p0, Lcom/android/gallery/ui/CropImage;->mAspectY:I

    goto :goto_4

    :cond_9
    move v5, v8

    .line 167
    goto :goto_5

    .line 181
    .end local v3           #res:Landroid/content/res/Resources;
    :cond_a
    iget-object v4, p0, Lcom/android/gallery/ui/CropImage;->mMeta:Lcom/android/gallery/data/FileInfo;

    invoke-virtual {v4}, Lcom/android/gallery/data/FileInfo;->loadAllData()V

    .line 182
    iget-object v4, p0, Lcom/android/gallery/ui/CropImage;->mMeta:Lcom/android/gallery/data/FileInfo;

    iget v4, v4, Lcom/android/gallery/data/BaseMeta;->mOrientation:I

    iput v4, p0, Lcom/android/gallery/ui/CropImage;->mRotation:I

    .line 183
    iget-object v4, p0, Lcom/android/gallery/ui/CropImage;->mMeta:Lcom/android/gallery/data/FileInfo;

    iget-object v4, v4, Lcom/android/gallery/data/BaseMeta;->mPath:Ljava/lang/String;

    const v5, 0x64140

    invoke-static {v4, v5}, Lcom/android/gallery/util/ImageLoader;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery/ui/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 185
    iget-object v4, p0, Lcom/android/gallery/ui/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_b

    iget v4, p0, Lcom/android/gallery/ui/CropImage;->mRotation:I

    if-eqz v4, :cond_b

    .line 186
    iget-object v4, p0, Lcom/android/gallery/ui/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    iget v5, p0, Lcom/android/gallery/ui/CropImage;->mRotation:I

    invoke-static {v4, v5}, Lcom/android/gallery/util/Utils;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/android/gallery/ui/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 190
    :cond_b
    iget-object v4, p0, Lcom/android/gallery/ui/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_c

    .line 191
    const-string v4, "CropImage"

    const-string v4, "Cannot load bitmap, exiting."

    invoke-static {v9, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p0}, Lcom/android/gallery/ui/CropImage;->finish()V

    goto :goto_6

    .line 196
    :cond_c
    const v4, 0x7f0c0006

    invoke-virtual {p0, v4}, Lcom/android/gallery/ui/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/android/gallery/ui/CropImage$1;

    invoke-direct {v5, p0}, Lcom/android/gallery/ui/CropImage$1;-><init>(Lcom/android/gallery/ui/CropImage;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    const v4, 0x7f0c0005

    invoke-virtual {p0, v4}, Lcom/android/gallery/ui/CropImage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    new-instance v5, Lcom/android/gallery/ui/CropImage$2;

    invoke-direct {v5, p0}, Lcom/android/gallery/ui/CropImage$2;-><init>(Lcom/android/gallery/ui/CropImage;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    invoke-direct {p0}, Lcom/android/gallery/ui/CropImage;->startFaceDetection()V

    goto/16 :goto_6
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/gallery/ui/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery/ui/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    iget-object v0, p0, Lcom/android/gallery/ui/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 504
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery/ui/CropImage;->mBitmap:Landroid/graphics/Bitmap;

    .line 506
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 507
    return-void
.end method
