.class public Lcom/android/inputmethod/voice/WaveformImage;
.super Ljava/lang/Object;
.source "WaveformImage.java"


# static fields
.field private static final SAMPLING_RATE:I = 0x1f40


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static drawWaveform(Ljava/io/ByteArrayOutputStream;IIII)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "waveBuffer"
    .parameter "w"
    .parameter "h"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 40
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 41
    .local v0, b:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 42
    .local v2, c:Landroid/graphics/Canvas;
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 43
    .local v5, paint:Landroid/graphics/Paint;
    const/4 v1, -0x1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 45
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 47
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    .line 51
    .local v1, buf:Ljava/nio/ShortBuffer;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    .line 53
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p0

    .end local p0
    div-int/lit8 v3, p0, 0x2

    .line 54
    .local v3, numSamples:I
    const/16 p0, 0x320

    .line 55
    .local p0, delay:I
    div-int/lit8 p0, p4, 0x2

    .end local p0           #delay:I
    add-int/lit16 p0, p0, 0x320

    .line 56
    .local p0, endIndex:I
    if-eqz p4, :cond_0

    if-lt p0, v3, :cond_1

    .line 57
    :cond_0
    move p0, v3

    .line 59
    :cond_1
    div-int/lit8 p3, p3, 0x2

    .end local p3
    const/16 p4, 0x320

    sub-int/2addr p3, p4

    .line 60
    .local p3, index:I
    if-gez p3, :cond_5

    .line 61
    .end local p4
    const/4 p3, 0x0

    move p4, p3

    .line 63
    .end local p3           #index:I
    .local p4, index:I
    :goto_0
    sub-int v3, p0, p4

    .line 64
    .local v3, size:I
    const/16 p3, 0x20

    .line 65
    .local p3, numSamplePerPixel:I
    mul-int p0, p3, p1

    div-int p0, v3, p0

    .line 66
    .local p0, delta:I
    if-nez p0, :cond_4

    .line 67
    div-int p3, v3, p1

    .line 68
    const/4 p0, 0x1

    move v4, p3

    .line 71
    .end local p3           #numSamplePerPixel:I
    .local v4, numSamplePerPixel:I
    :goto_1
    const/high16 p3, 0x3860

    .line 75
    .local p3, scale:F
    const/4 p3, 0x0

    .end local v3           #size:I
    .local p3, i:I
    :goto_2
    const/4 v3, 0x1

    sub-int v3, p1, v3

    if-ge p3, v3, :cond_3

    .line 76
    int-to-float v7, p3

    .line 77
    .local v7, x:F
    const/4 v3, 0x0

    .local v3, j:I
    :goto_3
    if-ge v3, v4, :cond_2

    .line 78
    :try_start_0
    invoke-virtual {v1, p4}, Ljava/nio/ShortBuffer;->get(I)S

    move-result v6

    .line 79
    .local v6, s:S
    div-int/lit8 v8, p2, 0x2

    int-to-float v8, v8

    mul-int/2addr v6, p2

    int-to-float v6, v6

    const/high16 v9, 0x3860

    mul-float/2addr v6, v9

    sub-float v6, v8, v6

    .line 80
    .local v6, y:F
    invoke-virtual {v2, v7, v6, v5}, Landroid/graphics/Canvas;->drawPoint(FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    add-int/2addr p4, p0

    .line 77
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 75
    .end local v6           #y:F
    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    .end local v3           #j:I
    .end local v7           #x:F
    :cond_3
    move p0, p4

    .line 88
    .end local p4           #index:I
    .local p0, index:I
    :goto_4
    return-object v0

    .line 84
    .restart local v3       #j:I
    .restart local v7       #x:F
    .local p0, delta:I
    .restart local p4       #index:I
    :catch_0
    move-exception p0

    .end local p0           #delta:I
    move p0, p4

    .end local p4           #index:I
    .local p0, index:I
    goto :goto_4

    .end local v4           #numSamplePerPixel:I
    .end local v7           #x:F
    .local v3, size:I
    .local p0, delta:I
    .local p3, numSamplePerPixel:I
    .restart local p4       #index:I
    :cond_4
    move v4, p3

    .end local p3           #numSamplePerPixel:I
    .restart local v4       #numSamplePerPixel:I
    goto :goto_1

    .end local v4           #numSamplePerPixel:I
    .end local p4           #index:I
    .local v3, numSamples:I
    .local p0, endIndex:I
    .local p3, index:I
    :cond_5
    move p4, p3

    .end local p3           #index:I
    .restart local p4       #index:I
    goto :goto_0
.end method
