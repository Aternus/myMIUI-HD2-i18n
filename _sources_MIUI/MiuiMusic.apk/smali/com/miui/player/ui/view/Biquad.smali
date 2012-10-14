.class Lcom/miui/player/ui/view/Biquad;
.super Ljava/lang/Object;
.source "Biquad.java"


# instance fields
.field private a0:Lcom/miui/player/ui/view/Complex;

.field private a1:Lcom/miui/player/ui/view/Complex;

.field private a2:Lcom/miui/player/ui/view/Complex;

.field private b0:Lcom/miui/player/ui/view/Complex;

.field private b1:Lcom/miui/player/ui/view/Complex;

.field private b2:Lcom/miui/player/ui/view/Complex;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected evaluateTransfer(Lcom/miui/player/ui/view/Complex;)Lcom/miui/player/ui/view/Complex;
    .locals 5
    .parameter "z"

    .prologue
    .line 25
    invoke-virtual {p1, p1}, Lcom/miui/player/ui/view/Complex;->mul(Lcom/miui/player/ui/view/Complex;)Lcom/miui/player/ui/view/Complex;

    move-result-object v2

    .line 26
    .local v2, zSquared:Lcom/miui/player/ui/view/Complex;
    iget-object v3, p0, Lcom/miui/player/ui/view/Biquad;->b0:Lcom/miui/player/ui/view/Complex;

    iget-object v4, p0, Lcom/miui/player/ui/view/Biquad;->b1:Lcom/miui/player/ui/view/Complex;

    invoke-virtual {v4, p1}, Lcom/miui/player/ui/view/Complex;->div(Lcom/miui/player/ui/view/Complex;)Lcom/miui/player/ui/view/Complex;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/player/ui/view/Complex;->add(Lcom/miui/player/ui/view/Complex;)Lcom/miui/player/ui/view/Complex;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/player/ui/view/Biquad;->b2:Lcom/miui/player/ui/view/Complex;

    invoke-virtual {v4, v2}, Lcom/miui/player/ui/view/Complex;->div(Lcom/miui/player/ui/view/Complex;)Lcom/miui/player/ui/view/Complex;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/player/ui/view/Complex;->add(Lcom/miui/player/ui/view/Complex;)Lcom/miui/player/ui/view/Complex;

    move-result-object v1

    .line 27
    .local v1, nom:Lcom/miui/player/ui/view/Complex;
    iget-object v3, p0, Lcom/miui/player/ui/view/Biquad;->a0:Lcom/miui/player/ui/view/Complex;

    iget-object v4, p0, Lcom/miui/player/ui/view/Biquad;->a1:Lcom/miui/player/ui/view/Complex;

    invoke-virtual {v4, p1}, Lcom/miui/player/ui/view/Complex;->div(Lcom/miui/player/ui/view/Complex;)Lcom/miui/player/ui/view/Complex;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/player/ui/view/Complex;->add(Lcom/miui/player/ui/view/Complex;)Lcom/miui/player/ui/view/Complex;

    move-result-object v3

    iget-object v4, p0, Lcom/miui/player/ui/view/Biquad;->a2:Lcom/miui/player/ui/view/Complex;

    invoke-virtual {v4, v2}, Lcom/miui/player/ui/view/Complex;->div(Lcom/miui/player/ui/view/Complex;)Lcom/miui/player/ui/view/Complex;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/miui/player/ui/view/Complex;->add(Lcom/miui/player/ui/view/Complex;)Lcom/miui/player/ui/view/Complex;

    move-result-object v0

    .line 28
    .local v0, den:Lcom/miui/player/ui/view/Complex;
    invoke-virtual {v1, v0}, Lcom/miui/player/ui/view/Complex;->div(Lcom/miui/player/ui/view/Complex;)Lcom/miui/player/ui/view/Complex;

    move-result-object v3

    return-object v3
.end method

.method protected setHighShelf(FFFF)V
    .locals 17
    .parameter "centerFrequency"
    .parameter "samplingFrequency"
    .parameter "dbGain"
    .parameter "slope"

    .prologue
    .line 12
    const-wide v8, 0x401921fb54442d18L

    move/from16 v0, p1

    float-to-double v0, v0

    move-wide v10, v0

    mul-double/2addr v8, v10

    move/from16 v0, p2

    float-to-double v0, v0

    move-wide v10, v0

    div-double v6, v8, v10

    .line 13
    .local v6, w0:D
    const-wide/high16 v8, 0x4024

    const/high16 v10, 0x4220

    div-float v10, p3, v10

    float-to-double v10, v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    .line 14
    .local v2, A:D
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x4000

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0

    div-double/2addr v10, v2

    add-double/2addr v10, v2

    const/high16 v12, 0x3f80

    div-float v12, v12, p4

    const/high16 v13, 0x3f80

    sub-float/2addr v12, v13

    float-to-double v12, v12

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x4000

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    mul-double v4, v8, v10

    .line 16
    .local v4, alpha:D
    new-instance v8, Lcom/miui/player/ui/view/Complex;

    const-wide/high16 v9, 0x3ff0

    add-double/2addr v9, v2

    const-wide/high16 v11, 0x3ff0

    sub-double v11, v2, v11

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    const-wide/high16 v11, 0x4000

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    mul-double/2addr v11, v4

    add-double/2addr v9, v11

    mul-double/2addr v9, v2

    double-to-float v9, v9

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/miui/player/ui/view/Complex;-><init>(FF)V

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/view/Biquad;->b0:Lcom/miui/player/ui/view/Complex;

    .line 17
    new-instance v8, Lcom/miui/player/ui/view/Complex;

    const-wide/high16 v9, -0x4000

    mul-double/2addr v9, v2

    const-wide/high16 v11, 0x3ff0

    sub-double v11, v2, v11

    const-wide/high16 v13, 0x3ff0

    add-double/2addr v13, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    add-double/2addr v11, v13

    mul-double/2addr v9, v11

    double-to-float v9, v9

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/miui/player/ui/view/Complex;-><init>(FF)V

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/view/Biquad;->b1:Lcom/miui/player/ui/view/Complex;

    .line 18
    new-instance v8, Lcom/miui/player/ui/view/Complex;

    const-wide/high16 v9, 0x3ff0

    add-double/2addr v9, v2

    const-wide/high16 v11, 0x3ff0

    sub-double v11, v2, v11

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    add-double/2addr v9, v11

    const-wide/high16 v11, 0x4000

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    mul-double/2addr v11, v4

    sub-double/2addr v9, v11

    mul-double/2addr v9, v2

    double-to-float v9, v9

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/miui/player/ui/view/Complex;-><init>(FF)V

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/view/Biquad;->b2:Lcom/miui/player/ui/view/Complex;

    .line 19
    new-instance v8, Lcom/miui/player/ui/view/Complex;

    const-wide/high16 v9, 0x3ff0

    add-double/2addr v9, v2

    const-wide/high16 v11, 0x3ff0

    sub-double v11, v2, v11

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    sub-double/2addr v9, v11

    const-wide/high16 v11, 0x4000

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    mul-double/2addr v11, v4

    add-double/2addr v9, v11

    double-to-float v9, v9

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/miui/player/ui/view/Complex;-><init>(FF)V

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/view/Biquad;->a0:Lcom/miui/player/ui/view/Complex;

    .line 20
    new-instance v8, Lcom/miui/player/ui/view/Complex;

    const-wide/high16 v9, 0x4000

    const-wide/high16 v11, 0x3ff0

    sub-double v11, v2, v11

    const-wide/high16 v13, 0x3ff0

    add-double/2addr v13, v2

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double/2addr v13, v15

    sub-double/2addr v11, v13

    mul-double/2addr v9, v11

    double-to-float v9, v9

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/miui/player/ui/view/Complex;-><init>(FF)V

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/view/Biquad;->a1:Lcom/miui/player/ui/view/Complex;

    .line 21
    new-instance v8, Lcom/miui/player/ui/view/Complex;

    const-wide/high16 v9, 0x3ff0

    add-double/2addr v9, v2

    const-wide/high16 v11, 0x3ff0

    sub-double v11, v2, v11

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    sub-double/2addr v9, v11

    const-wide/high16 v11, 0x4000

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    mul-double/2addr v11, v13

    mul-double/2addr v11, v4

    sub-double/2addr v9, v11

    double-to-float v9, v9

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/miui/player/ui/view/Complex;-><init>(FF)V

    move-object v0, v8

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/ui/view/Biquad;->a2:Lcom/miui/player/ui/view/Complex;

    .line 22
    return-void
.end method
