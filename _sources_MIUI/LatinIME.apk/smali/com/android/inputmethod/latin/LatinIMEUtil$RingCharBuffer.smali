.class Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;
.super Ljava/lang/Object;
.source "LatinIMEUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/inputmethod/latin/LatinIMEUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RingCharBuffer"
.end annotation


# static fields
.field static final BUFSIZE:I = 0x14

.field private static final INVALID_COORDINATE:I = -0x2

.field private static final PLACEHOLDER_DELIMITER_CHAR:C = '\ufffc'

.field private static sRingCharBuffer:Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;


# instance fields
.field private mCharBuf:[C

.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mEnd:I

.field mLength:I

.field private mXBuf:[I

.field private mYBuf:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;

    invoke-direct {v0}, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;-><init>()V

    sput-object v0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->sRingCharBuffer:Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x14

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->mEnabled:Z

    .line 91
    iput v0, p0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->mEnd:I

    .line 92
    iput v0, p0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->mLength:I

    .line 93
    new-array v0, v1, [C

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->mCharBuf:[C

    .line 94
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->mXBuf:[I

    .line 95
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->mYBuf:[I

    .line 98
    return-void
.end method

.method public static getInstance()Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->sRingCharBuffer:Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Z)Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;
    .locals 1
    .parameter "context"
    .parameter "enabled"

    .prologue
    .line 103
    sget-object v0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->sRingCharBuffer:Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;

    iput-object p0, v0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->mContext:Landroid/content/Context;

    .line 104
    sget-object v0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->sRingCharBuffer:Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;

    iput-boolean p1, v0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->mEnabled:Z

    .line 105
    sget-object v0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->sRingCharBuffer:Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;

    return-object v0
.end method

.method private normalize(I)I
    .locals 2
    .parameter "in"

    .prologue
    .line 108
    rem-int/lit8 v0, p1, 0x14

    .line 109
    .local v0, ret:I
    if-gez v0, :cond_0

    add-int/lit8 v1, v0, 0x14

    :goto_0
    return v1

    :cond_0
    move v1, v0

    goto :goto_0
.end method


# virtual methods
.method public getLastChar()C
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 131
    iget v0, p0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->mLength:I

    if-ge v0, v2, :cond_0

    .line 132
    const v0, 0xfffc

    .line 134
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->mCharBuf:[C

    iget v1, p0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->mEnd:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->normalize(I)I

    move-result v1

    aget-char v0, v0, v1

    goto :goto_0
.end method

.method public getLastString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 156
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 157
    .local v2, sb:Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v3, p0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->mLength:I

    if-ge v1, v3, :cond_0

    .line 158
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->mCharBuf:[C

    iget v4, p0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->mEnd:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    sub-int/2addr v4, v1

    invoke-direct {p0, v4}, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->normalize(I)I

    move-result v4

    aget-char v0, v3, v4

    .line 159
    .local v0, c:C
    iget-object v3, p0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->mContext:Landroid/content/Context;

    check-cast v3, Lcom/android/inputmethod/latin/LatinIME;

    invoke-virtual {v3, v0}, Lcom/android/inputmethod/latin/LatinIME;->isWordSeparator(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 160
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 165
    .end local v0           #c:C
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->reverse()Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getPreviousX(CI)I
    .locals 3
    .parameter "c"
    .parameter "back"

    .prologue
    .line 138
    iget v1, p0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->mEnd:I

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    sub-int/2addr v1, p2

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->normalize(I)I

    move-result v0

    .line 139
    .local v0, index:I
    iget v1, p0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->mLength:I

    if-le v1, p2, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->mCharBuf:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    if-eq v1, v2, :cond_1

    .line 141
    :cond_0
    const/4 v1, -0x2

    .line 143
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->mXBuf:[I

    aget v1, v1, v0

    goto :goto_0
.end method

.method public getPreviousY(CI)I
    .locals 3
    .parameter "c"
    .parameter "back"

    .prologue
    .line 147
    iget v1, p0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->mEnd:I

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    sub-int/2addr v1, p2

    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->normalize(I)I

    move-result v0

    .line 148
    .local v0, index:I
    iget v1, p0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->mLength:I

    if-le v1, p2, :cond_0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    iget-object v2, p0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->mCharBuf:[C

    aget-char v2, v2, v0

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    if-eq v1, v2, :cond_1

    .line 150
    :cond_0
    const/4 v1, -0x2

    .line 152
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->mYBuf:[I

    aget v1, v1, v0

    goto :goto_0
.end method

.method public pop()C
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 122
    iget v0, p0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->mLength:I

    if-ge v0, v1, :cond_0

    .line 123
    const v0, 0xfffc

    .line 127
    :goto_0
    return v0

    .line 125
    :cond_0
    iget v0, p0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->mEnd:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->normalize(I)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->mEnd:I

    .line 126
    iget v0, p0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->mLength:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->mLength:I

    .line 127
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->mCharBuf:[C

    iget v1, p0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->mEnd:I

    aget-char v0, v0, v1

    goto :goto_0
.end method

.method public push(CII)V
    .locals 2
    .parameter "c"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 112
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->mEnabled:Z

    if-nez v0, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->mCharBuf:[C

    iget v1, p0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->mEnd:I

    aput-char p1, v0, v1

    .line 114
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->mXBuf:[I

    iget v1, p0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->mEnd:I

    aput p2, v0, v1

    .line 115
    iget-object v0, p0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->mYBuf:[I

    iget v1, p0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->mEnd:I

    aput p3, v0, v1

    .line 116
    iget v0, p0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->mEnd:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->normalize(I)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->mEnd:I

    .line 117
    iget v0, p0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->mLength:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 118
    iget v0, p0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->mLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->mLength:I

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 168
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/LatinIMEUtil$RingCharBuffer;->mLength:I

    .line 169
    return-void
.end method
