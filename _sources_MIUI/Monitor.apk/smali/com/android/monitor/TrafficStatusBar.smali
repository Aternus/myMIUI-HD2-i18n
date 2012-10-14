.class public Lcom/android/monitor/TrafficStatusBar;
.super Landroid/view/View;
.source "TrafficStatusBar.java"


# instance fields
.field private mLimitValue:J

.field private mThresholdValue:J

.field private mUsedStatusColor:I

.field private mUsedValue:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/monitor/TrafficStatusBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/monitor/TrafficStatusBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    return-void
.end method

.method private getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "id"

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/monitor/TrafficStatusBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 20
    .parameter "canvas"

    .prologue
    .line 63
    const v15, 0x7f020021

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/android/monitor/TrafficStatusBar;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 64
    .local v6, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Lcom/android/monitor/TrafficStatusBar;->getWidth()I

    move-result v15

    const/16 v16, 0xe

    sub-int v12, v15, v16

    .local v12, width:I
    const/4 v7, 0x7

    .line 65
    .local v7, left:I
    new-instance v5, Landroid/graphics/Rect;

    const/4 v15, 0x0

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v16

    move-object v0, v5

    move v1, v7

    move v2, v15

    move v3, v12

    move/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 66
    .local v5, bounds:Landroid/graphics/Rect;
    invoke-virtual {v6, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 67
    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 70
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/monitor/TrafficStatusBar;->mLimitValue:J

    move-wide v15, v0

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-lez v15, :cond_0

    .line 72
    iput v7, v5, Landroid/graphics/Rect;->left:I

    .line 73
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/monitor/TrafficStatusBar;->mUsedValue:J

    move-wide v15, v0

    move v0, v12

    int-to-long v0, v0

    move-wide/from16 v17, v0

    mul-long v15, v15, v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/monitor/TrafficStatusBar;->mLimitValue:J

    move-wide/from16 v17, v0

    div-long v15, v15, v17

    long-to-int v15, v15

    add-int/2addr v15, v7

    iput v15, v5, Landroid/graphics/Rect;->right:I

    .line 74
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/monitor/TrafficStatusBar;->mUsedStatusColor:I

    move v15, v0

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/android/monitor/TrafficStatusBar;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 75
    invoke-virtual {v6, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 76
    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 79
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/monitor/TrafficStatusBar;->mThresholdValue:J

    move-wide v15, v0

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-lez v15, :cond_0

    .line 80
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/monitor/TrafficStatusBar;->mThresholdValue:J

    move-wide v15, v0

    move v0, v12

    int-to-long v0, v0

    move-wide/from16 v17, v0

    mul-long v15, v15, v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/monitor/TrafficStatusBar;->mLimitValue:J

    move-wide/from16 v17, v0

    div-long v15, v15, v17

    long-to-int v15, v15

    add-int/lit8 v15, v15, 0x7

    iput v15, v5, Landroid/graphics/Rect;->left:I

    .line 81
    iget v15, v5, Landroid/graphics/Rect;->left:I

    add-int/lit8 v15, v15, 0x5

    iput v15, v5, Landroid/graphics/Rect;->right:I

    .line 82
    const v15, 0x7f020015

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/android/monitor/TrafficStatusBar;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 83
    invoke-virtual {v6, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 84
    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 89
    :cond_0
    const/4 v15, 0x0

    iput v15, v5, Landroid/graphics/Rect;->left:I

    .line 90
    iget v15, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/monitor/TrafficStatusBar;->getWidth()I

    move-result v16

    add-int v15, v15, v16

    iput v15, v5, Landroid/graphics/Rect;->right:I

    .line 91
    const v15, 0x7f020022

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/android/monitor/TrafficStatusBar;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 92
    invoke-virtual {v6, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 93
    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 96
    new-instance v8, Landroid/graphics/Paint;

    const v15, 0x1060084

    invoke-direct {v8, v15}, Landroid/graphics/Paint;-><init>(I)V

    .line 97
    .local v8, paint:Landroid/graphics/Paint;
    const/16 v15, 0x101

    invoke-virtual {v8, v15}, Landroid/graphics/Paint;->setFlags(I)V

    .line 98
    invoke-virtual/range {p0 .. p0}, Lcom/android/monitor/TrafficStatusBar;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x1050010

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    .line 100
    .local v10, textSize:I
    int-to-float v15, v10

    invoke-virtual {v8, v15}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/monitor/TrafficStatusBar;->mContext:Landroid/content/Context;

    move-object v15, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/monitor/TrafficStatusBar;->mUsedValue:J

    move-wide/from16 v16, v0

    invoke-static/range {v15 .. v17}, Lcom/android/monitor/Traffic;->formatBytes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v9

    .line 102
    .local v9, status:Ljava/lang/String;
    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v15

    float-to-int v11, v15

    .line 103
    .local v11, textWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/monitor/TrafficStatusBar;->getWidth()I

    move-result v15

    sub-int/2addr v15, v11

    div-int/lit8 v13, v15, 0x2

    .line 104
    .local v13, x:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/monitor/TrafficStatusBar;->getHeight()I

    move-result v15

    move v0, v10

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x3ffccccccccccccdL

    div-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    sub-int v15, v15, v16

    div-int/lit8 v14, v15, 0x2

    .line 105
    .local v14, y:I
    int-to-float v15, v13

    move v0, v14

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p1

    move-object v1, v9

    move v2, v15

    move/from16 v3, v16

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 106
    invoke-virtual {v6, v5}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 107
    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 108
    return-void
.end method

.method public setStatusColor(I)V
    .locals 0
    .parameter "usedColor"

    .prologue
    .line 57
    iput p1, p0, Lcom/android/monitor/TrafficStatusBar;->mUsedStatusColor:I

    .line 58
    return-void
.end method

.method public setStatusValue(JJJ)V
    .locals 0
    .parameter "limit"
    .parameter "used"
    .parameter "threshold"

    .prologue
    .line 51
    iput-wide p1, p0, Lcom/android/monitor/TrafficStatusBar;->mLimitValue:J

    .line 52
    iput-wide p3, p0, Lcom/android/monitor/TrafficStatusBar;->mUsedValue:J

    .line 53
    iput-wide p5, p0, Lcom/android/monitor/TrafficStatusBar;->mThresholdValue:J

    .line 54
    return-void
.end method
