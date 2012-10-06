.class public Lcom/android/contacts/ui/imageview/ImageNavigatorView;
.super Landroid/widget/Gallery;
.source "ImageNavigatorView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# instance fields
.field curChild:Lcom/android/contacts/ui/imageview/MultiTouchView;

.field private lastMoveStart:Landroid/graphics/PointF;

.field private mActivity:Lcom/android/contacts/ui/imageview/ImageViewActivity;

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

    const/4 v0, 0x0

    .line 16
    invoke-direct {p0, p1, v1, v0}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    iput v0, p0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->mode:I

    .line 53
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->start:Landroid/graphics/PointF;

    .line 55
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->lastMoveStart:Landroid/graphics/PointF;

    .line 57
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->mid:Landroid/graphics/PointF;

    .line 59
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->oldDist:F

    .line 61
    iput-object v1, p0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->curChild:Lcom/android/contacts/ui/imageview/MultiTouchView;

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 20
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    iput v0, p0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->mode:I

    .line 53
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->start:Landroid/graphics/PointF;

    .line 55
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->lastMoveStart:Landroid/graphics/PointF;

    .line 57
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->mid:Landroid/graphics/PointF;

    .line 59
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->oldDist:F

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->curChild:Lcom/android/contacts/ui/imageview/MultiTouchView;

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->mode:I

    .line 53
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->start:Landroid/graphics/PointF;

    .line 55
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->lastMoveStart:Landroid/graphics/PointF;

    .line 57
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->mid:Landroid/graphics/PointF;

    .line 59
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->oldDist:F

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->curChild:Lcom/android/contacts/ui/imageview/MultiTouchView;

    .line 25
    return-void
.end method

.method private adjustViewLeftRight(Lcom/android/contacts/ui/imageview/MultiTouchView;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 253
    iget-object v2, p0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->curChild:Lcom/android/contacts/ui/imageview/MultiTouchView;

    invoke-virtual {p0, v2}, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->getLeftMargin(Landroid/view/View;)I

    move-result v0

    .line 254
    .local v0, leftMargin:I
    iget-object v2, p0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->curChild:Lcom/android/contacts/ui/imageview/MultiTouchView;

    invoke-virtual {p0, v2}, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->getRightMargin(Landroid/view/View;)I

    move-result v1

    .line 255
    .local v1, rightMargin:I
    if-lez v1, :cond_1

    .line 256
    iget-object v2, p0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->curChild:Lcom/android/contacts/ui/imageview/MultiTouchView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/contacts/ui/imageview/MultiTouchView;->adjustLeftRight(Z)V

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 257
    :cond_1
    if-lez v0, :cond_0

    .line 258
    iget-object v2, p0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->curChild:Lcom/android/contacts/ui/imageview/MultiTouchView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/contacts/ui/imageview/MultiTouchView;->adjustLeftRight(Z)V

    goto :goto_0
.end method

.method private isScrollingLeft(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "e1"
    .parameter "e2"

    .prologue
    .line 64
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

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

    .line 38
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    add-float v0, v2, v3

    .line 39
    .local v0, x:F
    invoke-virtual {p2, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    add-float v1, v2, v3

    .line 40
    .local v1, y:F
    div-float v2, v0, v4

    div-float v3, v1, v4

    invoke-virtual {p1, v2, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 41
    return-void
.end method

.method private spacing(Landroid/view/MotionEvent;)F
    .locals 6
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 30
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float v0, v2, v3

    .line 31
    .local v0, x:F
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    sub-float v1, v2, v3

    .line 32
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
    .line 244
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
    .line 249
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 286
    const/4 v0, 0x0

    return v0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 291
    const/4 v0, 0x0

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 7
    .parameter "e1"
    .parameter "e2"
    .parameter "velocityX"
    .parameter "velocityY"

    .prologue
    const/high16 v6, 0x4120

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 71
    if-nez p1, :cond_0

    move v3, v5

    .line 96
    :goto_0
    return v3

    .line 73
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->curChild:Lcom/android/contacts/ui/imageview/MultiTouchView;

    if-nez v3, :cond_1

    move v1, v4

    .line 74
    .local v1, leftExceed:F
    :goto_1
    iget-object v3, p0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->curChild:Lcom/android/contacts/ui/imageview/MultiTouchView;

    if-nez v3, :cond_2

    move v2, v4

    .line 75
    .local v2, rightExceed:F
    :goto_2
    cmpg-float v3, p3, v4

    if-gez v3, :cond_3

    .line 77
    cmpl-float v3, v2, v6

    if-lez v3, :cond_4

    move v3, v5

    .line 78
    goto :goto_0

    .line 73
    .end local v1           #leftExceed:F
    .end local v2           #rightExceed:F
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->curChild:Lcom/android/contacts/ui/imageview/MultiTouchView;

    invoke-virtual {v3}, Lcom/android/contacts/ui/imageview/MultiTouchView;->getLeftExceedOffset()F

    move-result v3

    move v1, v3

    goto :goto_1

    .line 74
    .restart local v1       #leftExceed:F
    :cond_2
    iget-object v3, p0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->curChild:Lcom/android/contacts/ui/imageview/MultiTouchView;

    invoke-virtual {v3}, Lcom/android/contacts/ui/imageview/MultiTouchView;->getRightExceedOffset()F

    move-result v3

    move v2, v3

    goto :goto_2

    .line 83
    .restart local v2       #rightExceed:F
    :cond_3
    cmpl-float v3, v1, v6

    if-lez v3, :cond_4

    move v3, v5

    .line 84
    goto :goto_0

    .line 90
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->isScrollingLeft(Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 91
    const/16 v0, 0x15

    .line 95
    .local v0, kEvent:I
    :goto_3
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 96
    const/4 v3, 0x1

    goto :goto_0

    .line 93
    .end local v0           #kEvent:I
    :cond_5
    const/16 v0, 0x16

    .restart local v0       #kEvent:I
    goto :goto_3
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter "e1"
    .parameter "e2"
    .parameter "distanceX"
    .parameter "distanceY"

    .prologue
    .line 239
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 296
    const/4 v0, 0x1

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "e"

    .prologue
    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 26
    .parameter "event"

    .prologue
    .line 101
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v21

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    .line 233
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super/range {p0 .. p1}, Landroid/widget/Gallery;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v21

    :goto_1
    return v21

    .line 103
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->start:Landroid/graphics/PointF;

    move-object/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v23

    invoke-virtual/range {v21 .. v23}, Landroid/graphics/PointF;->set(FF)V

    .line 104
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->lastMoveStart:Landroid/graphics/PointF;

    move-object/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v23

    invoke-virtual/range {v21 .. v23}, Landroid/graphics/PointF;->set(FF)V

    .line 105
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->getSelectedView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/ui/imageview/MultiTouchView;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->curChild:Lcom/android/contacts/ui/imageview/MultiTouchView;

    .line 106
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->mode:I

    goto :goto_0

    .line 109
    :pswitch_2
    invoke-direct/range {p0 .. p1}, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->spacing(Landroid/view/MotionEvent;)F

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->oldDist:F

    .line 110
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->oldDist:F

    move/from16 v21, v0

    const/high16 v22, 0x4120

    cmpl-float v21, v21, v22

    if-lez v21, :cond_0

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->mid:Landroid/graphics/PointF;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->midPoint(Landroid/graphics/PointF;Landroid/view/MotionEvent;)V

    .line 112
    const/16 v21, 0x2

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->mode:I

    goto :goto_0

    .line 116
    :pswitch_3
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->mode:I

    .line 118
    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->getSelectedView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/ui/imageview/MultiTouchView;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->curChild:Lcom/android/contacts/ui/imageview/MultiTouchView;

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->curChild:Lcom/android/contacts/ui/imageview/MultiTouchView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->curChild:Lcom/android/contacts/ui/imageview/MultiTouchView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v21 .. v24}, Lcom/android/contacts/ui/imageview/MultiTouchView;->center(ZZLcom/android/contacts/ui/imageview/MultiTouchView$Options;)V

    goto/16 :goto_0

    .line 128
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->curChild:Lcom/android/contacts/ui/imageview/MultiTouchView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_1

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->curChild:Lcom/android/contacts/ui/imageview/MultiTouchView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/ui/imageview/MultiTouchView;->getScale()F

    move-result v19

    .line 130
    .local v19, scale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->curChild:Lcom/android/contacts/ui/imageview/MultiTouchView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/ui/imageview/MultiTouchView;->getMaxScale()F

    move-result v11

    .line 131
    .local v11, maxScale:F
    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v21, v0

    const-wide/high16 v23, 0x3ff0

    cmpg-double v21, v21, v23

    if-gez v21, :cond_2

    .line 132
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->curChild:Lcom/android/contacts/ui/imageview/MultiTouchView;

    move-object/from16 v21, v0

    const/high16 v22, 0x3f80

    const/high16 v23, 0x4396

    invoke-virtual/range {v21 .. v23}, Lcom/android/contacts/ui/imageview/MultiTouchView;->zoomTo(FF)V

    .line 138
    .end local v11           #maxScale:F
    .end local v19           #scale:F
    :cond_1
    :goto_2
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->mode:I

    goto/16 :goto_0

    .line 133
    .restart local v11       #maxScale:F
    .restart local v19       #scale:F
    :cond_2
    cmpl-float v21, v19, v11

    if-lez v21, :cond_1

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->curChild:Lcom/android/contacts/ui/imageview/MultiTouchView;

    move-object/from16 v21, v0

    const/high16 v22, 0x4396

    move-object/from16 v0, v21

    move v1, v11

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/ui/imageview/MultiTouchView;->zoomTo(FF)V

    goto :goto_2

    .line 142
    .end local v11           #maxScale:F
    .end local v19           #scale:F
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->curChild:Lcom/android/contacts/ui/imageview/MultiTouchView;

    move-object/from16 v21, v0

    if-eqz v21, :cond_0

    .line 144
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->mode:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    .line 145
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->lastMoveStart:Landroid/graphics/PointF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v22, v0

    sub-float v7, v21, v22

    .line 146
    .local v7, dx:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->lastMoveStart:Landroid/graphics/PointF;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v22, v0

    sub-float v8, v21, v22

    .line 147
    .local v8, dy:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->curChild:Lcom/android/contacts/ui/imageview/MultiTouchView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/ui/imageview/MultiTouchView;->getLeftExceedOffset()F

    move-result v9

    .line 148
    .local v9, leftExceed:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->curChild:Lcom/android/contacts/ui/imageview/MultiTouchView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/ui/imageview/MultiTouchView;->getRightExceedOffset()F

    move-result v17

    .line 149
    .local v17, rightExceed:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->lastMoveStart:Landroid/graphics/PointF;

    move-object/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v22

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v23

    invoke-virtual/range {v21 .. v23}, Landroid/graphics/PointF;->set(FF)V

    .line 152
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->curChild:Lcom/android/contacts/ui/imageview/MultiTouchView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/ui/imageview/MultiTouchView;->getBottomExceedOffset()I

    move-result v5

    .line 153
    .local v5, dBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->curChild:Lcom/android/contacts/ui/imageview/MultiTouchView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/ui/imageview/MultiTouchView;->getTopExceedOffset()I

    move-result v6

    .line 154
    .local v6, dTop:I
    const/16 v21, 0x0

    cmpl-float v21, v8, v21

    if-lez v21, :cond_3

    if-eqz v6, :cond_4

    :cond_3
    const/16 v21, 0x0

    cmpg-float v21, v8, v21

    if-gez v21, :cond_5

    if-nez v5, :cond_5

    .line 155
    :cond_4
    const/high16 v21, 0x4000

    div-float v8, v8, v21

    .line 158
    :cond_5
    const/4 v15, 0x0

    .line 159
    .local v15, pan:F
    const/16 v21, 0x0

    cmpl-float v21, v7, v21

    if-lez v21, :cond_7

    .line 161
    const/16 v21, 0x0

    cmpl-float v21, v9, v21

    if-lez v21, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->curChild:Lcom/android/contacts/ui/imageview/MultiTouchView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->getRightMargin(Landroid/view/View;)I

    move-result v21

    if-nez v21, :cond_6

    .line 163
    invoke-static {v9, v7}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 164
    sub-float/2addr v7, v15

    .line 166
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->curChild:Lcom/android/contacts/ui/imageview/MultiTouchView;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move v1, v15

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/ui/imageview/MultiTouchView;->panBy(FF)V

    .line 178
    :goto_3
    const/16 v21, 0x0

    const/16 v22, 0x0

    move v0, v7

    neg-float v0, v0

    move/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-super {v0, v1, v2, v3, v4}, Landroid/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    goto/16 :goto_0

    .line 170
    :cond_7
    const/16 v21, 0x0

    cmpl-float v21, v17, v21

    if-lez v21, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->curChild:Lcom/android/contacts/ui/imageview/MultiTouchView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->getLeftMargin(Landroid/view/View;)I

    move-result v21

    if-nez v21, :cond_8

    .line 172
    move v0, v7

    neg-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v17

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 173
    add-float/2addr v7, v15

    .line 175
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->curChild:Lcom/android/contacts/ui/imageview/MultiTouchView;

    move-object/from16 v21, v0

    move v0, v15

    neg-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    move v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/ui/imageview/MultiTouchView;->panBy(FF)V

    goto :goto_3

    .line 180
    .end local v5           #dBottom:I
    .end local v6           #dTop:I
    .end local v7           #dx:F
    .end local v8           #dy:F
    .end local v9           #leftExceed:F
    .end local v15           #pan:F
    .end local v17           #rightExceed:F
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->mode:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_0

    .line 181
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->curChild:Lcom/android/contacts/ui/imageview/MultiTouchView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/contacts/ui/imageview/MultiTouchView;->getRight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpl-float v21, v21, v22

    if-gtz v21, :cond_a

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->curChild:Lcom/android/contacts/ui/imageview/MultiTouchView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/contacts/ui/imageview/MultiTouchView;->getLeft()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    cmpg-float v21, v21, v22

    if-gez v21, :cond_b

    .line 182
    :cond_a
    const/16 v21, 0x1

    goto/16 :goto_1

    .line 185
    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->spacing(Landroid/view/MotionEvent;)F

    move-result v12

    .line 187
    .local v12, newDist:F
    const/high16 v21, 0x4120

    cmpl-float v21, v12, v21

    if-lez v21, :cond_0

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->curChild:Lcom/android/contacts/ui/imageview/MultiTouchView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->getLeftMargin(Landroid/view/View;)I

    move-result v10

    .line 189
    .local v10, leftMargin:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->curChild:Lcom/android/contacts/ui/imageview/MultiTouchView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->getRightMargin(Landroid/view/View;)I

    move-result v18

    .line 191
    .local v18, rightMargin:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->oldDist:F

    move/from16 v21, v0

    div-float v16, v12, v21

    .line 192
    .local v16, rate:F
    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->oldDist:F

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->curChild:Lcom/android/contacts/ui/imageview/MultiTouchView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/ui/imageview/MultiTouchView;->getScale()F

    move-result v14

    .line 195
    .local v14, oldScale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->curChild:Lcom/android/contacts/ui/imageview/MultiTouchView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->curChild:Lcom/android/contacts/ui/imageview/MultiTouchView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/contacts/ui/imageview/MultiTouchView;->getScale()F

    move-result v22

    mul-float v22, v22, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->mid:Landroid/graphics/PointF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->mid:Landroid/graphics/PointF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v24, v0

    const/16 v25, 0x0

    invoke-virtual/range {v21 .. v25}, Lcom/android/contacts/ui/imageview/MultiTouchView;->zoomTo(FFFLcom/android/contacts/ui/imageview/MultiTouchView$Options;)V

    .line 203
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->curChild:Lcom/android/contacts/ui/imageview/MultiTouchView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/ui/imageview/MultiTouchView;->getScale()F

    move-result v13

    .line 205
    .local v13, newScale:F
    const/16 v20, 0x0

    .line 206
    .local v20, scrollX:F
    if-lez v18, :cond_d

    .line 209
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->curChild:Lcom/android/contacts/ui/imageview/MultiTouchView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/contacts/ui/imageview/MultiTouchView;->getWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v23, v13, v14

    const/high16 v24, 0x3f80

    sub-float v23, v23, v24

    mul-float v22, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(FF)F

    move-result v20

    .line 212
    move/from16 v0, v20

    neg-float v0, v0

    move/from16 v20, v0

    .line 221
    :cond_c
    :goto_4
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, v20

    move/from16 v4, v23

    invoke-super {v0, v1, v2, v3, v4}, Landroid/widget/Gallery;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->curChild:Lcom/android/contacts/ui/imageview/MultiTouchView;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->adjustViewLeftRight(Lcom/android/contacts/ui/imageview/MultiTouchView;)V

    goto/16 :goto_0

    .line 214
    :cond_d
    if-lez v10, :cond_c

    .line 217
    move v0, v10

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->curChild:Lcom/android/contacts/ui/imageview/MultiTouchView;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/contacts/ui/imageview/MultiTouchView;->getWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v23, v13, v14

    const/high16 v24, 0x3f80

    sub-float v23, v23, v24

    mul-float v22, v22, v23

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(FF)F

    move-result v20

    goto :goto_4

    .line 101
    nop

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

.method public recycle()V
    .locals 3

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->getCount()I

    move-result v0

    .line 277
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 278
    invoke-virtual {p0, v1}, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/ui/imageview/MultiTouchView;

    .line 279
    .local v2, v:Lcom/android/contacts/ui/imageview/MultiTouchView;
    if-eqz v2, :cond_0

    .line 280
    invoke-virtual {v2}, Lcom/android/contacts/ui/imageview/MultiTouchView;->recycle()V

    .line 277
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 282
    .end local v2           #v:Lcom/android/contacts/ui/imageview/MultiTouchView;
    :cond_1
    return-void
.end method

.method public refreshOrientation(I)V
    .locals 1
    .parameter "orientation"

    .prologue
    .line 263
    invoke-virtual {p0}, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/ui/imageview/MultiTouchView;

    iput-object v0, p0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->curChild:Lcom/android/contacts/ui/imageview/MultiTouchView;

    .line 264
    iget-object v0, p0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->curChild:Lcom/android/contacts/ui/imageview/MultiTouchView;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->curChild:Lcom/android/contacts/ui/imageview/MultiTouchView;

    invoke-virtual {v0, p1}, Lcom/android/contacts/ui/imageview/MultiTouchView;->refreshOrientation(I)V

    .line 268
    :cond_0
    return-void
.end method

.method public setHostActivity(Lcom/android/contacts/ui/imageview/ImageViewActivity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/contacts/ui/imageview/ImageNavigatorView;->mActivity:Lcom/android/contacts/ui/imageview/ImageViewActivity;

    .line 302
    return-void
.end method
