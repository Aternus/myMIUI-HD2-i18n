.class public Lcom/android/settings/fuelgauge/HistoryChart;
.super Landroid/view/View;
.source "HistoryChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/HistoryChart$1;,
        Lcom/android/settings/fuelgauge/HistoryChart$Style;,
        Lcom/android/settings/fuelgauge/HistoryChart$ExactStyle;,
        Lcom/android/settings/fuelgauge/HistoryChart$AverageStyle;,
        Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;
    }
.end annotation


# instance fields
.field final mCpuUsagePaint:Landroid/graphics/Paint;

.field mDurationString:Ljava/lang/String;

.field private mHist:Landroid/os/IHistoryValueTimeline;

.field private mHistEnd:J

.field private mHistStart:J

.field final mHistoryPath:Landroid/graphics/Path;

.field private mStyle:Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;

.field final mTextPaint:Landroid/text/TextPaint;

.field final mThinLinePaint:Landroid/graphics/Paint;

.field private mTimeScale:Lcom/android/settings/fuelgauge/TimeScale;

.field private mUnitFormat:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 186
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mCpuUsagePaint:Landroid/graphics/Paint;

    .line 40
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mThinLinePaint:Landroid/graphics/Paint;

    .line 43
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mHistoryPath:Landroid/graphics/Path;

    .line 50
    new-instance v0, Lcom/android/settings/fuelgauge/TimeScale;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/TimeScale;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mTimeScale:Lcom/android/settings/fuelgauge/TimeScale;

    .line 188
    iget-object v0, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mCpuUsagePaint:Landroid/graphics/Paint;

    const/16 v1, 0x80

    const/16 v2, 0xff

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 189
    iget-object v0, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mCpuUsagePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 191
    iget-object v0, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v0, Landroid/text/TextPaint;->density:F

    .line 192
    iget-object v0, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 194
    iget-object v0, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x4180

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 195
    sget-object v0, Lcom/android/settings/fuelgauge/HistoryChart$Style;->Average:Lcom/android/settings/fuelgauge/HistoryChart$Style;

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/HistoryChart;->setStyle(Lcom/android/settings/fuelgauge/HistoryChart$Style;)V

    .line 196
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/HistoryChart;->setUnitFormat(Ljava/lang/String;)V

    .line 197
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    .line 272
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HistoryChart;->getWidth()I

    move-result v10

    .line 275
    .local v10, width:I
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HistoryChart;->getHeight()I

    move-result v7

    .line 277
    .local v7, height:I
    iget-object v0, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mDurationString:Ljava/lang/String;

    const/high16 v1, 0x4120

    const/high16 v2, 0x4180

    iget-object v3, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 279
    iget-object v0, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mHistoryPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mHistoryPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mCpuUsagePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 284
    :cond_0
    iget-object v5, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mThinLinePaint:Landroid/graphics/Paint;

    .line 285
    .local v5, paint:Landroid/graphics/Paint;
    const/16 v0, 0xf

    sub-int v6, v7, v0

    .line 286
    .local v6, bottom:I
    const/16 v9, 0x14

    .line 287
    .local v9, top:I
    const/4 v1, 0x0

    int-to-float v2, v6

    int-to-float v3, v10

    int-to-float v4, v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 288
    const/4 v1, 0x0

    int-to-float v2, v9

    int-to-float v3, v10

    int-to-float v4, v9

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 289
    const/4 v1, 0x0

    int-to-float v2, v9

    const/4 v3, 0x0

    int-to-float v4, v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 290
    const/4 v0, 0x1

    sub-int v0, v10, v0

    int-to-float v1, v0

    int-to-float v2, v9

    const/4 v0, 0x1

    sub-int v0, v10, v0

    int-to-float v3, v0

    int-to-float v4, v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 291
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    const/16 v0, 0xa

    if-ge v8, v0, :cond_1

    .line 292
    sub-int v0, v6, v9

    mul-int/2addr v0, v8

    div-int/lit8 v0, v0, 0xa

    add-int v11, v9, v0

    .line 293
    .local v11, y:I
    const/4 v1, 0x0

    int-to-float v2, v11

    const/high16 v3, 0x40a0

    int-to-float v4, v11

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 291
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 296
    .end local v11           #y:I
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mTimeScale:Lcom/android/settings/fuelgauge/TimeScale;

    invoke-virtual {v0, p1, v6, v10}, Lcom/android/settings/fuelgauge/TimeScale;->draw(Landroid/graphics/Canvas;II)V

    .line 297
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 10
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 246
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 248
    iget-object v6, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mHist:Landroid/os/IHistoryValueTimeline;

    if-eqz v6, :cond_0

    iget-wide v6, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mHistEnd:J

    iget-wide v8, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mHistStart:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    iget-object v6, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v7, 0x4000

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 252
    iget-object v6, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mCpuUsagePaint:Landroid/graphics/Paint;

    const/high16 v7, 0x4000

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 253
    iget-object v6, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mThinLinePaint:Landroid/graphics/Paint;

    const/high16 v7, 0x3f80

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 255
    iget-wide v6, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mHistEnd:J

    iget-wide v8, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mHistStart:J

    sub-long v3, v6, v8

    .line 256
    .local v3, timeChange:J
    iget-object v6, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mHist:Landroid/os/IHistoryValueTimeline;

    invoke-interface {v6}, Landroid/os/IHistoryValueTimeline;->startIterating()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 257
    const/4 v2, 0x0

    .line 258
    .local v2, item:Landroid/os/IHistoryValueItem;
    const/16 v6, 0xf

    sub-int v0, p2, v6

    .line 259
    .local v0, bottom:I
    const/16 v6, 0x14

    sub-int v6, p2, v6

    const/16 v7, 0xf

    sub-int v1, v6, v7

    .line 260
    .local v1, height:I
    iget-object v6, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mStyle:Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;

    iget-object v7, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mHistoryPath:Landroid/graphics/Path;

    invoke-virtual {v6, v7, v1, v0}, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->beginPath(Landroid/graphics/Path;II)V

    .line 261
    :goto_1
    iget-object v6, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mHist:Landroid/os/IHistoryValueTimeline;

    invoke-interface {v6}, Landroid/os/IHistoryValueTimeline;->getNextHistory()Landroid/os/IHistoryValueItem;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 262
    invoke-interface {v2}, Landroid/os/IHistoryValueItem;->getTime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mHistStart:J

    sub-long/2addr v6, v8

    long-to-float v6, v6

    long-to-float v7, v3

    div-float/2addr v6, v7

    int-to-float v7, p1

    mul-float/2addr v6, v7

    float-to-int v5, v6

    .line 263
    .local v5, x:I
    iget-object v6, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mStyle:Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;

    iget-object v7, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mHistoryPath:Landroid/graphics/Path;

    invoke-virtual {v6, v2, v7, v5}, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->addPath(Landroid/os/IHistoryValueItem;Landroid/graphics/Path;I)V

    goto :goto_1

    .line 266
    .end local v5           #x:I
    :cond_2
    iget-object v6, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mStyle:Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;

    iget-object v7, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mHistoryPath:Landroid/graphics/Path;

    invoke-virtual {v6, v7}, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->endPath(Landroid/graphics/Path;)V

    goto :goto_0
.end method

.method public setHistory(Landroid/os/IHistoryValueTimeline;)V
    .locals 10
    .parameter "hist"

    .prologue
    const-wide/16 v6, 0x0

    .line 216
    iput-object p1, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mHist:Landroid/os/IHistoryValueTimeline;

    .line 217
    iput-wide v6, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mHistStart:J

    .line 218
    iput-wide v6, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mHistEnd:J

    .line 219
    iget-object v4, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mHist:Landroid/os/IHistoryValueTimeline;

    invoke-interface {v4}, Landroid/os/IHistoryValueTimeline;->startIterating()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 220
    iget-object v4, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mStyle:Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;

    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->beginPreprocess()V

    .line 221
    const/4 v1, 0x0

    .line 222
    .local v1, item:Landroid/os/IHistoryValueItem;
    const-wide/16 v2, 0x0

    .line 223
    .local v2, lastTime:J
    const/4 v0, 0x1

    .line 224
    .local v0, first:Z
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mHist:Landroid/os/IHistoryValueTimeline;

    invoke-interface {v4}, Landroid/os/IHistoryValueTimeline;->getNextHistory()Landroid/os/IHistoryValueItem;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 225
    invoke-interface {v1}, Landroid/os/IHistoryValueItem;->getTime()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-lez v4, :cond_0

    .line 228
    if-eqz v0, :cond_1

    .line 229
    const/4 v0, 0x0

    .line 230
    invoke-interface {v1}, Landroid/os/IHistoryValueItem;->getTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mHistStart:J

    .line 232
    :cond_1
    iget-object v4, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mStyle:Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;

    invoke-virtual {v4, v1}, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->preprocess(Landroid/os/IHistoryValueItem;)V

    goto :goto_0

    .line 236
    .end local v0           #first:Z
    .end local v1           #item:Landroid/os/IHistoryValueItem;
    .end local v2           #lastTime:J
    :cond_2
    iget-wide v4, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mHistStart:J

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mHistEnd:J

    .line 240
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HistoryChart;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mHistEnd:J

    iget-wide v8, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mHistStart:J

    sub-long/2addr v6, v8

    long-to-double v6, v6

    invoke-static {v5, v6, v7}, Lcom/android/settings/fuelgauge/Utils;->formatElapsedTime(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mStyle:Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;

    iget-object v6, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mUnitFormat:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->getMaxValueString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mDurationString:Ljava/lang/String;

    .line 241
    iget-object v4, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mTimeScale:Lcom/android/settings/fuelgauge/TimeScale;

    iget-wide v5, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mHistStart:J

    iget-wide v7, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mHistEnd:J

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/settings/fuelgauge/TimeScale;->init(JJ)V

    .line 242
    return-void
.end method

.method public setStyle(Lcom/android/settings/fuelgauge/HistoryChart$Style;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 204
    sget-object v0, Lcom/android/settings/fuelgauge/HistoryChart$1;->$SwitchMap$com$android$settings$fuelgauge$HistoryChart$Style:[I

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/HistoryChart$Style;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 207
    new-instance v0, Lcom/android/settings/fuelgauge/HistoryChart$AverageStyle;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/HistoryChart$AverageStyle;-><init>(Lcom/android/settings/fuelgauge/HistoryChart;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mStyle:Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;

    .line 213
    :goto_0
    return-void

    .line 210
    :pswitch_0
    new-instance v0, Lcom/android/settings/fuelgauge/HistoryChart$ExactStyle;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/HistoryChart$ExactStyle;-><init>(Lcom/android/settings/fuelgauge/HistoryChart;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mStyle:Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;

    goto :goto_0

    .line 204
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public setUnitFormat(Ljava/lang/String;)V
    .locals 0
    .parameter "uf"

    .prologue
    .line 200
    iput-object p1, p0, Lcom/android/settings/fuelgauge/HistoryChart;->mUnitFormat:Ljava/lang/String;

    .line 201
    return-void
.end method
