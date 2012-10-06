.class Lcom/android/settings/fuelgauge/HistoryTimelineChart$ChartData;
.super Ljava/lang/Object;
.source "HistoryTimelineChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/HistoryTimelineChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChartData"
.end annotation


# instance fields
.field mColors:[I

.field mLastBin:I

.field mPaints:[Landroid/graphics/Paint;

.field private mTicks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$ChartData;->mTicks:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method addTick(II)V
    .locals 2
    .parameter "x"
    .parameter "bin"

    .prologue
    .line 74
    iget v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$ChartData;->mLastBin:I

    if-eq p2, v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$ChartData;->mTicks:Ljava/util/ArrayList;

    shl-int/lit8 v1, p2, 0x10

    or-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iput p2, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$ChartData;->mLastBin:I

    .line 78
    :cond_0
    return-void
.end method

.method draw(Landroid/graphics/Canvas;II)V
    .locals 17
    .parameter "canvas"
    .parameter "top"
    .parameter "height"

    .prologue
    .line 85
    const/4 v10, -0x1

    .local v10, lastBin:I
    const/4 v11, 0x0

    .line 86
    .local v11, lastX:I
    add-int v8, p2, p3

    .line 87
    .local v8, bottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$ChartData;->mPaints:[Landroid/graphics/Paint;

    move-object v1, v0

    array-length v1, v1

    const/4 v2, 0x2

    sub-int v13, v1, v2

    .line 88
    .local v13, segments:I
    div-int v1, p3, v13

    int-to-float v12, v1

    .line 89
    .local v12, segmentHeight:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$ChartData;->mTicks:Ljava/util/ArrayList;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    .line 90
    .local v15, tick:Ljava/lang/Integer;
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const v2, 0xffff

    and-int v16, v1, v2

    .line 91
    .local v16, x:I
    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/high16 v2, -0x1

    and-int/2addr v1, v2

    shr-int/lit8 v7, v1, 0x10

    .line 92
    .local v7, bin:I
    if-ltz v10, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$ChartData;->mPaints:[Landroid/graphics/Paint;

    move-object v1, v0

    array-length v1, v1

    if-ge v10, v1, :cond_1

    .line 93
    move/from16 v14, p2

    .line 94
    .local v14, t:I
    const/4 v1, 0x2

    if-lt v10, v1, :cond_0

    .line 95
    const/4 v1, 0x1

    sub-int v1, v10, v1

    int-to-float v1, v1

    mul-float/2addr v1, v12

    float-to-int v1, v1

    sub-int v14, v8, v1

    .line 97
    :cond_0
    int-to-float v2, v11

    int-to-float v3, v14

    move/from16 v0, v16

    int-to-float v0, v0

    move v4, v0

    int-to-float v5, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$ChartData;->mPaints:[Landroid/graphics/Paint;

    move-object v1, v0

    aget-object v6, v1, v10

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 99
    .end local v14           #t:I
    :cond_1
    move v10, v7

    .line 100
    move/from16 v11, v16

    .line 101
    goto :goto_0

    .line 102
    .end local v7           #bin:I
    .end local v15           #tick:Ljava/lang/Integer;
    .end local v16           #x:I
    :cond_2
    return-void
.end method

.method finish(I)V
    .locals 2
    .parameter "width"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$ChartData;->mTicks:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method init(I)V
    .locals 1
    .parameter "width"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$ChartData;->mTicks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$ChartData;->mLastBin:I

    .line 71
    return-void
.end method

.method setColors([I)V
    .locals 3
    .parameter "colors"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$ChartData;->mColors:[I

    .line 60
    array-length v1, p1

    new-array v1, v1, [Landroid/graphics/Paint;

    iput-object v1, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$ChartData;->mPaints:[Landroid/graphics/Paint;

    .line 61
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 62
    iget-object v1, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$ChartData;->mPaints:[Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    aput-object v2, v1, v0

    .line 63
    iget-object v1, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$ChartData;->mPaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 64
    iget-object v1, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$ChartData;->mPaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_0
    return-void
.end method
