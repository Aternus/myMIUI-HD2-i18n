.class public Lcom/android/browser/util/GraphicUtil;
.super Ljava/lang/Object;
.source "GraphicUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makeRoundImage(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "bm"
    .parameter "rx"
    .parameter "ry"

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 21
    if-nez p0, :cond_0

    .line 22
    const/4 v6, 0x0

    .line 42
    :goto_0
    return-object v6

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 26
    .local v5, width:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 27
    .local v1, height:I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v1, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 28
    .local v4, round:Landroid/graphics/Bitmap;
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 30
    .local v0, canvas:Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    const/4 v6, 0x1

    invoke-direct {v3, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 31
    .local v3, paint:Landroid/graphics/Paint;
    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    div-int/lit8 v2, v6, 0x3

    .line 32
    .local v2, minRound:I
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 33
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 35
    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 36
    const v6, -0xbdbdbe

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    new-instance v6, Landroid/graphics/RectF;

    int-to-float v7, v5

    int-to-float v8, v1

    invoke-direct {v6, v9, v9, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v7, p1

    int-to-float v8, p2

    invoke-virtual {v0, v6, v7, v8, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 39
    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v7}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 40
    invoke-virtual {v0, p0, v9, v9, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object v6, v4

    .line 42
    goto :goto_0
.end method
