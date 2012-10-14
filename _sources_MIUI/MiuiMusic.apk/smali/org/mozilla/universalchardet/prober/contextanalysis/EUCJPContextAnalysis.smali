.class public Lorg/mozilla/universalchardet/prober/contextanalysis/EUCJPContextAnalysis;
.super Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis;


# static fields
.field public static final FIRSTPLANE_HIGHBYTE_BEGIN:I = 0xa1

.field public static final FIRSTPLANE_HIGHBYTE_END:I = 0xfe

.field public static final HIRAGANA_HIGHBYTE:I = 0xa4

.field public static final HIRAGANA_LOWBYTE_BEGIN:I = 0xa1

.field public static final HIRAGANA_LOWBYTE_END:I = 0xf3

.field public static final SINGLE_SHIFT_2:I = 0x8e

.field public static final SINGLE_SHIFT_3:I = 0x8f


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis;-><init>()V

    return-void
.end method


# virtual methods
.method protected getOrder([BI)I
    .locals 3

    const/16 v2, 0xa1

    aget-byte v0, p1, p2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xa4

    if-ne v0, v1, :cond_0

    add-int/lit8 v0, p2, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    if-lt v0, v2, :cond_0

    const/16 v1, 0xf3

    if-gt v0, v1, :cond_0

    sub-int/2addr v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method protected getOrder(Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis$Order;[BI)V
    .locals 3

    const/16 v2, 0xa1

    const/4 v0, -0x1

    iput v0, p1, Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis$Order;->order:I

    const/4 v0, 0x1

    iput v0, p1, Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis$Order;->charLength:I

    aget-byte v0, p2, p3

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x8e

    if-eq v0, v1, :cond_0

    if-lt v0, v2, :cond_3

    const/16 v1, 0xfe

    if-gt v0, v1, :cond_3

    :cond_0
    const/4 v1, 0x2

    iput v1, p1, Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis$Order;->charLength:I

    :cond_1
    :goto_0
    const/16 v1, 0xa4

    if-ne v0, v1, :cond_2

    add-int/lit8 v0, p3, 0x1

    aget-byte v0, p2, v0

    and-int/lit16 v0, v0, 0xff

    if-lt v0, v2, :cond_2

    const/16 v1, 0xf3

    if-gt v0, v1, :cond_2

    sub-int/2addr v0, v2

    iput v0, p1, Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis$Order;->order:I

    :cond_2
    return-void

    :cond_3
    const/16 v1, 0x8f

    if-ne v0, v1, :cond_1

    const/4 v1, 0x3

    iput v1, p1, Lorg/mozilla/universalchardet/prober/contextanalysis/JapaneseContextAnalysis$Order;->charLength:I

    goto :goto_0
.end method
