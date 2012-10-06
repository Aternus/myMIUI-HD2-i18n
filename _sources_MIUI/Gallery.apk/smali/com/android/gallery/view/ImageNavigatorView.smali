.class public Lcom/android/gallery/view/ImageNavigatorView;
.super Lcom/android/gallery/view/AnimationGallery;
.source "ImageNavigatorView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# instance fields
.field private lastMoveStart:Landroid/graphics/PointF;

.field mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

.field private mid:Landroid/graphics/PointF;

.field mode:I

.field private oldDist:F

.field private start:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 19
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/gallery/view/AnimationGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    iput v1, p0, Lcom/android/gallery/view/ImageNavigatorView;->mode:I

    .line 65
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery/view/ImageNavigatorView;->start:Landroid/graphics/PointF;

    .line 67
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery/view/ImageNavigatorView;->lastMoveStart:Landroid/graphics/PointF;

    .line 69
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery/view/ImageNavigatorView;->mid:Landroid/graphics/PointF;

    .line 71
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/gallery/view/ImageNavigatorView;->oldDist:F

    .line 20
    invoke-virtual {p0}, Lcom/android/gallery/view/ImageNavigatorView;->init()V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2, v0}, Lcom/android/gallery/view/AnimationGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    iput v0, p0, Lcom/android/gallery/view/ImageNavigatorView;->mode:I

    .line 65
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery/view/ImageNavigatorView;->start:Landroid/graphics/PointF;

    .line 67
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery/view/ImageNavigatorView;->lastMoveStart:Landroid/graphics/PointF;

    .line 69
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery/view/ImageNavigatorView;->mid:Landroid/graphics/PointF;

    .line 71
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/gallery/view/ImageNavigatorView;->oldDist:F

    .line 25
    invoke-virtual {p0}, Lcom/android/gallery/view/ImageNavigatorView;->init()V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery/view/AnimationGallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery/view/ImageNavigatorView;->mode:I

    .line 65
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery/view/ImageNavigatorView;->start:Landroid/graphics/PointF;

    .line 67
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery/view/ImageNavigatorView;->lastMoveStart:Landroid/graphics/PointF;

    .line 69
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/gallery/view/ImageNavigatorView;->mid:Landroid/graphics/PointF;

    .line 71
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/gallery/view/ImageNavigatorView;->oldDist:F

    .line 30
    invoke-virtual {p0}, Lcom/android/gallery/view/ImageNavigatorView;->init()V

    .line 31
    return-void
.end method

.method private adjustViewLeftRight(Lcom/android/gallery/view/MultiTouchView;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 248
    iget-object v2, p0, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    invoke-virtual {p0, v2}, Lcom/android/gallery/view/ImageNavigatorView;->getLeftMargin(Landroid/view/View;)I

    move-result v0

    .line 249
    .local v0, leftMargin:I
    iget-object v2, p0, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    invoke-virtual {p0, v2}, Lcom/android/gallery/view/ImageNavigatorView;->getRightMargin(Landroid/view/View;)I

    move-result v1

    .line 250
    .local v1, rightMargin:I
    if-lez v1, :cond_1

    .line 251
    iget-object v2, p0, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/gallery/view/MultiTouchView;->adjustLeftRight(Z)V

    .line 255
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    if-lez v0, :cond_0

    .line 253
    iget-object v2, p0, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/gallery/view/MultiTouchView;->adjustLeftRight(Z)V

    goto :goto_0
.end method

.method private midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V
    .locals 7
    .parameter "point"
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x4000

    .line 50
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float v0, v2, v3

    .line 51
    .local v0, x:F
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float v1, v2, v3

    .line 52
    .local v1, y:F
    div-float v2, v0, v4

    div-float v3, v1, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 53
    return-void
.end method

.method private spacing(Landroid/view/MotionEvent;)F
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 42
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 43
    .local v0, x:F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 44
    .local v1, y:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    invoke-static {v2}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v2

    return v2
.end method


# virtual methods
.method protected getLeftMargin(Landroid/view/View;)I
    .locals 2
    .parameter "child"

    .prologue
    .line 240
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getRightMargin(Landroid/view/View;)I
    .locals 2
    .parameter "child"

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/android/gallery/view/ImageNavigatorView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 34
    const v0, 0x3e99999a

    invoke-virtual {p0, v0}, Lcom/android/gallery/view/ImageNavigatorView;->setOverScrollRatio(F)V

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery/view/ImageNavigatorView;->setFlingOneScreen(Z)V

    .line 36
    const/high16 v0, 0x4448

    invoke-virtual {p0, v0}, Lcom/android/gallery/view/ImageNavigatorView;->setMinFlingVelocity(F)V

    .line 37
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    invoke-virtual {v0}, Lcom/android/gallery/view/MultiTouchView;->switchMode()V

    .line 261
    const/4 v0, 0x1

    .line 263
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/4 v2, 0x0

    .line 78
    iget-object v1, p0, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    if-nez v1, :cond_0

    move v0, v2

    .line 84
    .local v0, exceed:F
    :goto_0
    const/high16 v1, 0x4120

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    return v1

    .line 78
    .end local v0           #exceed:F
    :cond_0
    cmpg-float v1, p3, v2

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    invoke-virtual {v1}, Lcom/android/gallery/view/MultiTouchView;->getRightExceedOffset()F

    move-result v1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    invoke-virtual {v1}, Lcom/android/gallery/view/MultiTouchView;->getLeftExceedOffset()F

    move-result v1

    move v0, v1

    goto :goto_0

    .line 84
    .restart local v0       #exceed:F
    :cond_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/gallery/view/AnimationGallery;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v1

    goto :goto_1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 236
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "e"

    .prologue
    const/4 v10, 0x1

    .line 273
    iget-object v1, p0, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    if-nez v1, :cond_0

    .line 274
    const/4 v1, 0x0

    .line 298
    :goto_0
    return v1

    .line 277
    :cond_0
    iget-object v1, p0, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    invoke-virtual {v1}, Lcom/android/gallery/view/MultiTouchView;->isVideo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    invoke-virtual {p0}, Lcom/android/gallery/view/ImageNavigatorView;->getWidth()I

    move-result v9

    .line 280
    .local v9, width:I
    invoke-virtual {p0}, Lcom/android/gallery/view/ImageNavigatorView;->getHeight()I

    move-result v6

    .line 281
    .local v6, height:I
    invoke-static {v9, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    div-int/lit8 v8, v1, 0x5

    .line 282
    .local v8, size:I
    sub-int v1, v9, v8

    div-int/lit8 v9, v1, 0x2

    .line 283
    sub-int v1, v6, v8

    div-int/lit8 v6, v1, 0x2

    .line 284
    int-to-float v1, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-int v2, v9, v8

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    int-to-float v1, v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    add-int v2, v6, v8

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 286
    iget-object v1, p0, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    invoke-virtual {v1}, Lcom/android/gallery/view/MultiTouchView;->createVideoIntent()Landroid/content/Intent;

    move-result-object v7

    .line 287
    .local v7, intent:Landroid/content/Intent;
    if-eqz v7, :cond_1

    .line 288
    iget-object v1, p0, Lcom/android/gallery/view/ImageNavigatorView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v1, v10

    .line 289
    goto :goto_0

    .line 294
    .end local v6           #height:I
    .end local v7           #intent:Landroid/content/Intent;
    .end local v8           #size:I
    .end local v9           #width:I
    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery/view/ImageNavigatorView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    .line 295
    .local v0, listener:Landroid/widget/AdapterView$OnItemClickListener;
    if-eqz v0, :cond_2

    .line 296
    invoke-virtual {p0}, Lcom/android/gallery/view/ImageNavigatorView;->getSelectedView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/gallery/view/ImageNavigatorView;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/gallery/view/ImageNavigatorView;->getSelectedItemId()J

    move-result-wide v4

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_2
    move v1, v10

    .line 298
    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 303
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .parameter "event"

    .prologue
    .line 89
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v22

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    if-nez v22, :cond_0

    .line 90
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery/view/ImageNavigatorView;->getSelectedView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/gallery/view/MultiTouchView;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    .line 92
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    move-object/from16 v22, v0

    if-nez v22, :cond_1

    invoke-super/range {p0 .. p1}, Lcom/android/gallery/view/AnimationGallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v22

    .line 231
    :goto_0
    return v22

    .line 94
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v22

    move/from16 v0, v22

    and-int/lit16 v0, v0, 0xff

    move/from16 v22, v0

    packed-switch v22, :pswitch_data_0

    .line 231
    :cond_2
    :goto_1
    :pswitch_0
    invoke-super/range {p0 .. p1}, Lcom/android/gallery/view/AnimationGallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v22

    goto :goto_0

    .line 96
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/view/ImageNavigatorView;->start:Landroid/graphics/PointF;

    move-object/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/PointF;->set(FF)V

    .line 97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/view/ImageNavigatorView;->lastMoveStart:Landroid/graphics/PointF;

    move-object/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/PointF;->set(FF)V

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery/view/ImageNavigatorView;->getSelectedView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/gallery/view/MultiTouchView;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    .line 99
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery/view/ImageNavigatorView;->mode:I

    goto :goto_1

    .line 102
    :pswitch_2
    invoke-direct/range {p0 .. p1}, Lcom/android/gallery/view/ImageNavigatorView;->spacing(Landroid/view/MotionEvent;)F

    move-result v22

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery/view/ImageNavigatorView;->oldDist:F

    .line 103
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery/view/ImageNavigatorView;->oldDist:F

    move/from16 v22, v0

    const/high16 v23, 0x4120

    cmpl-float v22, v22, v23

    if-lez v22, :cond_2

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/view/ImageNavigatorView;->mid:Landroid/graphics/PointF;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/gallery/view/ImageNavigatorView;->midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    .line 105
    const/16 v22, 0x2

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery/view/ImageNavigatorView;->mode:I

    goto :goto_1

    .line 109
    :pswitch_3
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery/view/ImageNavigatorView;->mode:I

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/android/gallery/view/ImageNavigatorView;->getSelectedView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/gallery/view/MultiTouchView;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    .line 115
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x1

    invoke-virtual/range {v22 .. v24}, Lcom/android/gallery/view/MultiTouchView;->center(ZZ)V

    goto/16 :goto_1

    .line 121
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_3

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/gallery/view/MultiTouchView;->getScale()F

    move-result v19

    .line 123
    .local v19, scale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/gallery/view/MultiTouchView;->getMaxScale()F

    move-result v11

    .line 124
    .local v11, maxScale:F
    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide/high16 v24, 0x3ff0

    cmpg-double v22, v22, v24

    if-gez v22, :cond_4

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    move-object/from16 v22, v0

    const/high16 v23, 0x3f80

    const/high16 v24, 0x4396

    invoke-virtual/range {v22 .. v24}, Lcom/android/gallery/view/MultiTouchView;->zoomTo(FF)V

    .line 131
    .end local v11           #maxScale:F
    .end local v19           #scale:F
    :cond_3
    :goto_2
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery/view/ImageNavigatorView;->mode:I

    goto/16 :goto_1

    .line 126
    .restart local v11       #maxScale:F
    .restart local v19       #scale:F
    :cond_4
    cmpl-float v22, v19, v11

    if-lez v22, :cond_3

    .line 127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    move-object/from16 v22, v0

    const/high16 v23, 0x4396

    move-object/from16 v0, v22

    move v1, v11

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery/view/MultiTouchView;->zoomTo(FF)V

    goto :goto_2

    .line 135
    .end local v11           #maxScale:F
    .end local v19           #scale:F
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    move-object/from16 v22, v0

    if-eqz v22, :cond_2

    .line 137
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery/view/ImageNavigatorView;->mode:I

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_c

    .line 138
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/view/ImageNavigatorView;->lastMoveStart:Landroid/graphics/PointF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    sub-float v7, v22, v23

    .line 139
    .local v7, dx:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/view/ImageNavigatorView;->lastMoveStart:Landroid/graphics/PointF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v23, v0

    sub-float v8, v22, v23

    .line 140
    .local v8, dy:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/gallery/view/MultiTouchView;->getLeftExceedOffset()F

    move-result v9

    .line 141
    .local v9, leftExceed:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/gallery/view/MultiTouchView;->getRightExceedOffset()F

    move-result v17

    .line 142
    .local v17, rightExceed:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/view/ImageNavigatorView;->lastMoveStart:Landroid/graphics/PointF;

    move-object/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    invoke-virtual/range {v22 .. v24}, Landroid/graphics/PointF;->set(FF)V

    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/gallery/view/MultiTouchView;->isVerticalOut()Z

    move-result v21

    .line 145
    .local v21, vOut:Z
    if-nez v21, :cond_7

    .line 146
    const/4 v8, 0x0

    .line 156
    :cond_5
    :goto_3
    const/4 v15, 0x0

    .line 157
    .local v15, pan:F
    const/16 v22, 0x0

    cmpl-float v22, v7, v22

    if-lez v22, :cond_a

    .line 159
    const/16 v22, 0x0

    cmpl-float v22, v9, v22

    if-lez v22, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/gallery/view/ImageNavigatorView;->getRightMargin(Landroid/view/View;)I

    move-result v22

    if-nez v22, :cond_6

    .line 161
    invoke-static {v9, v7}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 162
    sub-float/2addr v7, v15

    .line 164
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v15

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery/view/MultiTouchView;->panBy(FF)V

    .line 176
    :goto_4
    const/16 v22, 0x0

    const/16 v23, 0x0

    move v0, v7

    neg-float v0, v0

    move/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-super {v0, v1, v2, v3, v4}, Lcom/android/gallery/view/AnimationGallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    goto/16 :goto_1

    .line 149
    .end local v15           #pan:F
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/gallery/view/MultiTouchView;->getBottomExceedOffset()I

    move-result v5

    .line 150
    .local v5, dBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/gallery/view/MultiTouchView;->getTopExceedOffset()I

    move-result v6

    .line 151
    .local v6, dTop:I
    const/16 v22, 0x0

    cmpl-float v22, v8, v22

    if-lez v22, :cond_8

    if-eqz v6, :cond_9

    :cond_8
    const/16 v22, 0x0

    cmpg-float v22, v8, v22

    if-gez v22, :cond_5

    if-nez v5, :cond_5

    .line 152
    :cond_9
    const/high16 v22, 0x4000

    div-float v8, v8, v22

    goto :goto_3

    .line 168
    .end local v5           #dBottom:I
    .end local v6           #dTop:I
    .restart local v15       #pan:F
    :cond_a
    const/16 v22, 0x0

    cmpl-float v22, v17, v22

    if-lez v22, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/gallery/view/ImageNavigatorView;->getLeftMargin(Landroid/view/View;)I

    move-result v22

    if-nez v22, :cond_b

    .line 170
    move v0, v7

    neg-float v0, v0

    move/from16 v22, v0

    move/from16 v0, v17

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 171
    add-float/2addr v7, v15

    .line 173
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    move-object/from16 v22, v0

    move v0, v15

    neg-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, v22

    move/from16 v1, v23

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery/view/MultiTouchView;->panBy(FF)V

    goto :goto_4

    .line 178
    .end local v7           #dx:F
    .end local v8           #dy:F
    .end local v9           #leftExceed:F
    .end local v15           #pan:F
    .end local v17           #rightExceed:F
    .end local v21           #vOut:Z
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery/view/ImageNavigatorView;->mode:I

    move/from16 v22, v0

    const/16 v23, 0x2

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_2

    .line 179
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/gallery/view/MultiTouchView;->getRight()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    cmpl-float v22, v22, v23

    if-gtz v22, :cond_d

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/gallery/view/MultiTouchView;->getLeft()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    cmpg-float v22, v22, v23

    if-gez v22, :cond_e

    .line 180
    :cond_d
    const/16 v22, 0x1

    goto/16 :goto_0

    .line 183
    :cond_e
    invoke-direct/range {p0 .. p1}, Lcom/android/gallery/view/ImageNavigatorView;->spacing(Landroid/view/MotionEvent;)F

    move-result v12

    .line 185
    .local v12, newDist:F
    const/high16 v22, 0x4120

    cmpl-float v22, v12, v22

    if-lez v22, :cond_2

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/gallery/view/ImageNavigatorView;->getLeftMargin(Landroid/view/View;)I

    move-result v10

    .line 187
    .local v10, leftMargin:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/gallery/view/ImageNavigatorView;->getRightMargin(Landroid/view/View;)I

    move-result v18

    .line 189
    .local v18, rightMargin:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/gallery/view/ImageNavigatorView;->oldDist:F

    move/from16 v22, v0

    div-float v16, v12, v22

    .line 190
    .local v16, rate:F
    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/gallery/view/ImageNavigatorView;->oldDist:F

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/gallery/view/MultiTouchView;->getScale()F

    move-result v14

    .line 193
    .local v14, oldScale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/gallery/view/MultiTouchView;->getScale()F

    move-result v23

    mul-float v23, v23, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/view/ImageNavigatorView;->mid:Landroid/graphics/PointF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/view/ImageNavigatorView;->mid:Landroid/graphics/PointF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v25, v0

    invoke-virtual/range {v22 .. v25}, Lcom/android/gallery/view/MultiTouchView;->zoomTo(FFF)V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/gallery/view/MultiTouchView;->requestRawData()V

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/gallery/view/MultiTouchView;->getScale()F

    move-result v13

    .line 203
    .local v13, newScale:F
    const/16 v20, 0x0

    .line 204
    .local v20, scrollX:F
    if-lez v18, :cond_10

    .line 207
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/gallery/view/MultiTouchView;->getWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v24, v13, v14

    const/high16 v25, 0x3f80

    sub-float v24, v24, v25

    mul-float v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(FF)F

    move-result v20

    .line 210
    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    .line 219
    :cond_f
    :goto_5
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v20

    move/from16 v4, v24

    invoke-super {v0, v1, v2, v3, v4}, Lcom/android/gallery/view/AnimationGallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 222
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/gallery/view/ImageNavigatorView;->adjustViewLeftRight(Lcom/android/gallery/view/MultiTouchView;)V

    goto/16 :goto_1

    .line 212
    :cond_10
    if-lez v10, :cond_f

    .line 215
    move v0, v10

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/gallery/view/ImageNavigatorView;->mCurrentChild:Lcom/android/gallery/view/MultiTouchView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/gallery/view/MultiTouchView;->getWidth()I

    move-result v23

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    div-float v24, v13, v14

    const/high16 v25, 0x3f80

    sub-float v24, v24, v25

    mul-float v23, v23, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->min(FF)F

    move-result v20

    goto :goto_5

    .line 94
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method
