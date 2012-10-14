.class Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;
.super Ljava/lang/Object;
.source "HistoryTimelineChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/HistoryTimelineChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateBand"
.end annotation


# instance fields
.field private lastState:Z

.field private lastX:I

.field private mLabel:Ljava/lang/String;

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mStateMask:I

.field private mY:I

.field final synthetic this$0:Lcom/android/settings/fuelgauge/HistoryTimelineChart;


# direct methods
.method public constructor <init>(Lcom/android/settings/fuelgauge/HistoryTimelineChart;ILjava/lang/String;Landroid/graphics/Path;Landroid/graphics/Paint;)V
    .locals 0
    .parameter
    .parameter "stateMask"
    .parameter "label"
    .parameter "path"
    .parameter "paint"

    .prologue
    .line 268
    iput-object p1, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;->this$0:Lcom/android/settings/fuelgauge/HistoryTimelineChart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput p2, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;->mStateMask:I

    .line 270
    iput-object p4, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;->mPath:Landroid/graphics/Path;

    .line 271
    iput-object p5, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;->mPaint:Landroid/graphics/Paint;

    .line 272
    iput-object p3, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;->mLabel:Ljava/lang/String;

    .line 273
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;->mLabel:Ljava/lang/String;

    const/high16 v1, 0x4120

    iget v2, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;->mY:I

    add-int/lit8 v2, v2, 0xe

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;->this$0:Lcom/android/settings/fuelgauge/HistoryTimelineChart;

    iget-object v3, v3, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 299
    iget-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 302
    :cond_0
    return-void
.end method

.method public end(I)V
    .locals 3
    .parameter "x"

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;->lastState:Z

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;->mPath:Landroid/graphics/Path;

    int-to-float v1, p1

    iget v2, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;->mY:I

    add-int/lit8 v2, v2, 0x18

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 296
    :cond_0
    return-void
.end method

.method public onState(II)V
    .locals 4
    .parameter "states"
    .parameter "x"

    .prologue
    .line 280
    iget v1, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;->mStateMask:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 282
    .local v0, state:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;->lastState:Z

    if-eq v0, v1, :cond_0

    .line 283
    if-eqz v0, :cond_2

    .line 284
    iget-object v1, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;->mPath:Landroid/graphics/Path;

    int-to-float v2, p2

    iget v3, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;->mY:I

    add-int/lit8 v3, v3, 0x18

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 285
    iput p2, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;->lastX:I

    .line 289
    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;->lastState:Z

    .line 291
    :cond_0
    return-void

    .line 280
    .end local v0           #state:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 287
    .restart local v0       #state:Z
    :cond_2
    iget-object v1, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;->mPath:Landroid/graphics/Path;

    iget v2, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;->lastX:I

    if-ne v2, p2, :cond_3

    add-int/lit8 v2, p2, 0x1

    int-to-float v2, v2

    :goto_2
    iget v3, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;->mY:I

    add-int/lit8 v3, v3, 0x18

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    :cond_3
    int-to-float v2, p2

    goto :goto_2
.end method

.method public setY(I)V
    .locals 0
    .parameter "y"

    .prologue
    .line 276
    iput p1, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;->mY:I

    .line 277
    return-void
.end method
