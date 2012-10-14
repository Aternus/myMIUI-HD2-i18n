.class public abstract Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;
.super Ljava/lang/Object;
.source "HistoryChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/HistoryChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "StyleStrategy"
.end annotation


# instance fields
.field protected first:Z

.field protected mBottom:I

.field protected mHeight:I

.field protected mLastTime:J

.field protected mLastX:I

.field final synthetic this$0:Lcom/android/settings/fuelgauge/HistoryChart;


# direct methods
.method public constructor <init>(Lcom/android/settings/fuelgauge/HistoryChart;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->this$0:Lcom/android/settings/fuelgauge/HistoryChart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addPath(Landroid/os/IHistoryValueItem;Landroid/graphics/Path;I)V
    .locals 4
    .parameter "item"
    .parameter "path"
    .parameter "x"

    .prologue
    .line 66
    invoke-interface {p1}, Landroid/os/IHistoryValueItem;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->mLastTime:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    .line 75
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->first:Z

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->doAddPath(Landroid/os/IHistoryValueItem;Landroid/graphics/Path;IZ)V

    .line 70
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->first:Z

    if-eqz v0, :cond_1

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->first:Z

    .line 73
    :cond_1
    iput p3, p0, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->mLastX:I

    .line 74
    invoke-interface {p1}, Landroid/os/IHistoryValueItem;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->mLastTime:J

    goto :goto_0
.end method

.method public beginPath(Landroid/graphics/Path;II)V
    .locals 2
    .parameter "path"
    .parameter "height"
    .parameter "bottom"

    .prologue
    .line 80
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->first:Z

    .line 82
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->mLastTime:J

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->mLastX:I

    .line 84
    iput p2, p0, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->mHeight:I

    .line 85
    iput p3, p0, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->mBottom:I

    .line 86
    return-void
.end method

.method public abstract beginPreprocess()V
.end method

.method protected abstract doAddPath(Landroid/os/IHistoryValueItem;Landroid/graphics/Path;IZ)V
.end method

.method public endPath(Landroid/graphics/Path;)V
    .locals 0
    .parameter "path"

    .prologue
    .line 88
    return-void
.end method

.method public abstract getMaxValueString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract preprocess(Landroid/os/IHistoryValueItem;)V
.end method
