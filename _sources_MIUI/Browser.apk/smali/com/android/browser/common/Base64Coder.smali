.class public Lcom/android/browser/common/Base64Coder;
.super Ljava/lang/Object;
.source "Base64Coder.java"


# static fields
.field private static map1:[C

.field private static map2:[B

.field private static final systemLineSeparator:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x40

    .line 6
    const-string v3, "line.separator"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/android/browser/common/Base64Coder;->systemLineSeparator:Ljava/lang/String;

    .line 9
    new-array v3, v6, [C

    sput-object v3, Lcom/android/browser/common/Base64Coder;->map1:[C

    .line 11
    const/4 v1, 0x0

    .line 12
    .local v1, i:I
    const/16 v0, 0x41

    .local v0, c:C
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_0
    const/16 v3, 0x5a

    if-gt v0, v3, :cond_0

    sget-object v3, Lcom/android/browser/common/Base64Coder;->map1:[C

    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aput-char v0, v3, v2

    add-int/lit8 v3, v0, 0x1

    int-to-char v0, v3

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 13
    :cond_0
    const/16 v0, 0x61

    :goto_1
    const/16 v3, 0x7a

    if-gt v0, v3, :cond_1

    sget-object v3, Lcom/android/browser/common/Base64Coder;->map1:[C

    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aput-char v0, v3, v2

    add-int/lit8 v3, v0, 0x1

    int-to-char v0, v3

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_1

    .line 14
    :cond_1
    const/16 v0, 0x30

    :goto_2
    const/16 v3, 0x39

    if-gt v0, v3, :cond_2

    sget-object v3, Lcom/android/browser/common/Base64Coder;->map1:[C

    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    aput-char v0, v3, v2

    add-int/lit8 v3, v0, 0x1

    int-to-char v0, v3

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_2

    .line 15
    :cond_2
    sget-object v3, Lcom/android/browser/common/Base64Coder;->map1:[C

    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    const/16 v4, 0x2b

    aput-char v4, v3, v2

    sget-object v3, Lcom/android/browser/common/Base64Coder;->map1:[C

    add-int/lit8 v2, v1, 0x1

    .end local v1           #i:I
    .restart local v2       #i:I
    const/16 v4, 0x2f

    aput-char v4, v3, v1

    .line 18
    const/16 v3, 0x80

    new-array v3, v3, [B

    sput-object v3, Lcom/android/browser/common/Base64Coder;->map2:[B

    .line 20
    const/4 v1, 0x0

    .end local v2           #i:I
    .restart local v1       #i:I
    :goto_3
    sget-object v3, Lcom/android/browser/common/Base64Coder;->map2:[B

    array-length v3, v3

    if-ge v1, v3, :cond_3

    sget-object v3, Lcom/android/browser/common/Base64Coder;->map2:[B

    const/4 v4, -0x1

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 21
    :cond_3
    const/4 v1, 0x0

    :goto_4
    if-ge v1, v6, :cond_4

    sget-object v3, Lcom/android/browser/common/Base64Coder;->map2:[B

    sget-object v4, Lcom/android/browser/common/Base64Coder;->map1:[C

    aget-char v4, v4, v1

    int-to-byte v5, v1

    aput-byte v5, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 1
    .parameter "s"

    .prologue
    .line 147
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lcom/android/browser/common/Base64Coder;->decode([C)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([C)[B
    .locals 2
    .parameter "in"

    .prologue
    .line 157
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/android/browser/common/Base64Coder;->decode([CII)[B

    move-result-object v0

    return-object v0
.end method

.method public static decode([CII)[B
    .locals 9
    .parameter "in"
    .parameter "iOff"
    .parameter "iLen"

    .prologue
    .line 169
    rem-int/lit8 v0, p2, 0x4

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "Length of Base64 encoded input string is not a multiple of 4."

    .end local p1
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 170
    .restart local p0
    .restart local p1
    :cond_0
    :goto_0
    if-lez p2, :cond_1

    add-int v0, p1, p2

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-char v0, p0, v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_1

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 171
    :cond_1
    mul-int/lit8 v0, p2, 0x3

    div-int/lit8 v4, v0, 0x4

    .line 172
    .local v4, oLen:I
    new-array v6, v4, [B

    .line 173
    .local v6, out:[B
    move v0, p1

    .line 174
    .local v0, ip:I
    add-int v2, p1, p2

    .line 175
    .local v2, iEnd:I
    const/4 p1, 0x0

    .local p1, op:I
    move v5, p1

    .end local p1           #op:I
    .local v5, op:I
    move p1, v0

    .line 176
    .end local v0           #ip:I
    .end local p2
    .local p1, ip:I
    :goto_1
    if-ge p1, v2, :cond_8

    .line 177
    add-int/lit8 p2, p1, 0x1

    .end local p1           #ip:I
    .local p2, ip:I
    aget-char p1, p0, p1

    .line 178
    .local p1, i0:I
    add-int/lit8 v0, p2, 0x1

    .end local p2           #ip:I
    .restart local v0       #ip:I
    aget-char p2, p0, p2

    .line 179
    .local p2, i1:I
    if-ge v0, v2, :cond_3

    add-int/lit8 v1, v0, 0x1

    .end local v0           #ip:I
    .local v1, ip:I
    aget-char v0, p0, v0

    move v3, v1

    .line 180
    .end local v1           #ip:I
    .local v0, i2:I
    .local v3, ip:I
    :goto_2
    if-ge v3, v2, :cond_4

    add-int/lit8 v1, v3, 0x1

    .end local v3           #ip:I
    .restart local v1       #ip:I
    aget-char v3, p0, v3

    move v8, v3

    move v3, v1

    .end local v1           #ip:I
    .restart local v3       #ip:I
    move v1, v8

    .line 181
    .local v1, i3:I
    :goto_3
    const/16 v7, 0x7f

    if-gt p1, v7, :cond_2

    const/16 v7, 0x7f

    if-gt p2, v7, :cond_2

    const/16 v7, 0x7f

    if-gt v0, v7, :cond_2

    const/16 v7, 0x7f

    if-le v1, v7, :cond_5

    .line 182
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "Illegal character in Base64 encoded data."

    .end local p1           #i0:I
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 179
    .end local v1           #i3:I
    .end local v3           #ip:I
    .local v0, ip:I
    .restart local p0
    .restart local p1       #i0:I
    :cond_3
    const/16 v1, 0x41

    move v3, v0

    .end local v0           #ip:I
    .restart local v3       #ip:I
    move v0, v1

    goto :goto_2

    .line 180
    .local v0, i2:I
    :cond_4
    const/16 v1, 0x41

    goto :goto_3

    .line 183
    .restart local v1       #i3:I
    :cond_5
    sget-object v7, Lcom/android/browser/common/Base64Coder;->map2:[B

    aget-byte p1, v7, p1

    .line 184
    .local p1, b0:I
    sget-object v7, Lcom/android/browser/common/Base64Coder;->map2:[B

    aget-byte p2, v7, p2

    .line 185
    .local p2, b1:I
    sget-object v7, Lcom/android/browser/common/Base64Coder;->map2:[B

    aget-byte v0, v7, v0

    .line 186
    .local v0, b2:I
    sget-object v7, Lcom/android/browser/common/Base64Coder;->map2:[B

    aget-byte v1, v7, v1

    .line 187
    .local v1, b3:I
    if-ltz p1, :cond_6

    if-ltz p2, :cond_6

    if-ltz v0, :cond_6

    if-gez v1, :cond_7

    .line 188
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .end local p0
    const-string p1, "Illegal character in Base64 encoded data."

    .end local p1           #b0:I
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 189
    .restart local p0
    .restart local p1       #b0:I
    :cond_7
    shl-int/lit8 p1, p1, 0x2

    ushr-int/lit8 v7, p2, 0x4

    or-int/2addr p1, v7

    .line 190
    .local p1, o0:I
    and-int/lit8 p2, p2, 0xf

    shl-int/lit8 p2, p2, 0x4

    ushr-int/lit8 v7, v0, 0x2

    or-int/2addr p2, v7

    .line 191
    .local p2, o1:I
    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x6

    or-int/2addr v0, v1

    .line 192
    .local v0, o2:I
    add-int/lit8 v1, v5, 0x1

    .end local v5           #op:I
    .local v1, op:I
    int-to-byte p1, p1

    aput-byte p1, v6, v5

    .line 193
    .end local p1           #o0:I
    if-ge v1, v4, :cond_a

    add-int/lit8 p1, v1, 0x1

    .end local v1           #op:I
    .local p1, op:I
    int-to-byte p2, p2

    aput-byte p2, v6, v1

    .end local p2           #o1:I
    move p2, p1

    .line 194
    .end local p1           #op:I
    .local p2, op:I
    :goto_4
    if-ge p2, v4, :cond_9

    add-int/lit8 p1, p2, 0x1

    .end local p2           #op:I
    .restart local p1       #op:I
    int-to-byte v0, v0

    aput-byte v0, v6, p2

    .end local v0           #o2:I
    :goto_5
    move v5, p1

    .end local p1           #op:I
    .restart local v5       #op:I
    move p1, v3

    .end local v3           #ip:I
    .local p1, ip:I
    goto/16 :goto_1

    .line 195
    :cond_8
    return-object v6

    .end local v5           #op:I
    .end local p1           #ip:I
    .restart local v0       #o2:I
    .restart local v3       #ip:I
    .restart local p2       #op:I
    :cond_9
    move p1, p2

    .end local p2           #op:I
    .local p1, op:I
    goto :goto_5

    .end local p1           #op:I
    .restart local v1       #op:I
    .local p2, o1:I
    :cond_a
    move p2, v1

    .end local v1           #op:I
    .local p2, op:I
    goto :goto_4
.end method

.method public static decodeLines(Ljava/lang/String;)[B
    .locals 6
    .parameter "s"

    .prologue
    .line 131
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    new-array v0, v5, [C

    .line 132
    .local v0, buf:[C
    const/4 v3, 0x0

    .line 133
    .local v3, p:I
    const/4 v2, 0x0

    .local v2, ip:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 134
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 135
    .local v1, c:C
    const/16 v5, 0x20

    if-eq v1, v5, :cond_0

    const/16 v5, 0xd

    if-eq v1, v5, :cond_0

    const/16 v5, 0xa

    if-eq v1, v5, :cond_0

    const/16 v5, 0x9

    if-eq v1, v5, :cond_0

    .line 136
    add-int/lit8 v4, v3, 0x1

    .end local v3           #p:I
    .local v4, p:I
    aput-char v1, v0, v3

    move v3, v4

    .line 133
    .end local v4           #p:I
    .restart local v3       #p:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    .end local v1           #c:C
    :cond_1
    const/4 v5, 0x0

    invoke-static {v0, v5, v3}, Lcom/android/browser/common/Base64Coder;->decode([CII)[B

    move-result-object v5

    return-object v5
.end method

.method public static decodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 120
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcom/android/browser/common/Base64Coder;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static encode([B)[C
    .locals 2
    .parameter "in"

    .prologue
    .line 71
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/android/browser/common/Base64Coder;->encode([BII)[C

    move-result-object v0

    return-object v0
.end method

.method public static encode([BI)[C
    .locals 1
    .parameter "in"
    .parameter "iLen"

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/android/browser/common/Base64Coder;->encode([BII)[C

    move-result-object v0

    return-object v0
.end method

.method public static encode([BII)[C
    .locals 10
    .parameter "in"
    .parameter "iOff"
    .parameter "iLen"

    .prologue
    .line 92
    mul-int/lit8 v0, p2, 0x4

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v4, v0, 0x3

    .line 93
    .local v4, oDataLen:I
    add-int/lit8 v0, p2, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v0, v0, 0x4

    .line 94
    .local v0, oLen:I
    new-array v7, v0, [C

    .line 95
    .local v7, out:[C
    move v0, p1

    .line 96
    .local v0, ip:I
    add-int v1, p1, p2

    .line 97
    .local v1, iEnd:I
    const/4 p1, 0x0

    .local p1, op:I
    move v6, p1

    .end local p1           #op:I
    .local v6, op:I
    move p1, v0

    .line 98
    .end local v0           #ip:I
    .end local p2
    .local p1, ip:I
    :goto_0
    if-ge p1, v1, :cond_4

    .line 99
    add-int/lit8 p2, p1, 0x1

    .end local p1           #ip:I
    .local p2, ip:I
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    .line 100
    .local p1, i0:I
    if-ge p2, v1, :cond_0

    add-int/lit8 v0, p2, 0x1

    .end local p2           #ip:I
    .restart local v0       #ip:I
    aget-byte p2, p0, p2

    and-int/lit16 p2, p2, 0xff

    move v2, v0

    .line 101
    .end local v0           #ip:I
    .local v2, ip:I
    .local p2, i1:I
    :goto_1
    if-ge v2, v1, :cond_1

    add-int/lit8 v0, v2, 0x1

    .end local v2           #ip:I
    .restart local v0       #ip:I
    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    move v9, v2

    move v2, v0

    .end local v0           #ip:I
    .restart local v2       #ip:I
    move v0, v9

    .line 102
    .local v0, i2:I
    :goto_2
    ushr-int/lit8 v3, p1, 0x2

    .line 103
    .local v3, o0:I
    and-int/lit8 p1, p1, 0x3

    shl-int/lit8 p1, p1, 0x4

    ushr-int/lit8 v5, p2, 0x4

    or-int/2addr p1, v5

    .line 104
    .local p1, o1:I
    and-int/lit8 p2, p2, 0xf

    shl-int/lit8 p2, p2, 0x2

    ushr-int/lit8 v5, v0, 0x6

    or-int/2addr p2, v5

    .line 105
    .local p2, o2:I
    and-int/lit8 v0, v0, 0x3f

    .line 106
    .local v0, o3:I
    add-int/lit8 v5, v6, 0x1

    .end local v6           #op:I
    .local v5, op:I
    sget-object v8, Lcom/android/browser/common/Base64Coder;->map1:[C

    aget-char v3, v8, v3

    .end local v3           #o0:I
    aput-char v3, v7, v6

    .line 107
    add-int/lit8 v3, v5, 0x1

    .end local v5           #op:I
    .local v3, op:I
    sget-object v6, Lcom/android/browser/common/Base64Coder;->map1:[C

    aget-char p1, v6, p1

    .end local p1           #o1:I
    aput-char p1, v7, v5

    .line 108
    if-ge v3, v4, :cond_2

    sget-object p1, Lcom/android/browser/common/Base64Coder;->map1:[C

    aget-char p1, p1, p2

    :goto_3
    aput-char p1, v7, v3

    add-int/lit8 p1, v3, 0x1

    .line 109
    .end local v3           #op:I
    .local p1, op:I
    if-ge p1, v4, :cond_3

    sget-object p2, Lcom/android/browser/common/Base64Coder;->map1:[C

    .end local p2           #o2:I
    aget-char p2, p2, v0

    :goto_4
    aput-char p2, v7, p1

    add-int/lit8 p1, p1, 0x1

    move v6, p1

    .end local p1           #op:I
    .restart local v6       #op:I
    move p1, v2

    .end local v2           #ip:I
    .local p1, ip:I
    goto :goto_0

    .line 100
    .end local v0           #o3:I
    .local p1, i0:I
    .local p2, ip:I
    :cond_0
    const/4 v0, 0x0

    move v2, p2

    .end local p2           #ip:I
    .restart local v2       #ip:I
    move p2, v0

    goto :goto_1

    .line 101
    .local p2, i1:I
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 108
    .end local v6           #op:I
    .end local p1           #i0:I
    .restart local v0       #o3:I
    .restart local v3       #op:I
    .local p2, o2:I
    :cond_2
    const/16 p1, 0x3d

    goto :goto_3

    .line 109
    .end local v3           #op:I
    .local p1, op:I
    :cond_3
    const/16 p2, 0x3d

    goto :goto_4

    .line 110
    .end local v0           #o3:I
    .end local v2           #ip:I
    .end local p2           #o2:I
    .restart local v6       #op:I
    .local p1, ip:I
    :cond_4
    return-object v7
.end method

.method public static encodeLines([B)Ljava/lang/String;
    .locals 4
    .parameter "in"

    .prologue
    .line 39
    const/4 v0, 0x0

    array-length v1, p0

    const/16 v2, 0x4c

    sget-object v3, Lcom/android/browser/common/Base64Coder;->systemLineSeparator:Ljava/lang/String;

    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/browser/common/Base64Coder;->encodeLines([BIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static encodeLines([BIIILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "in"
    .parameter "iOff"
    .parameter "iLen"
    .parameter "lineLen"
    .parameter "lineSeparator"

    .prologue
    .line 51
    mul-int/lit8 v6, p3, 0x3

    div-int/lit8 v0, v6, 0x4

    .line 52
    .local v0, blockLen:I
    if-gtz v0, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    .line 53
    :cond_0
    add-int v6, p2, v0

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    div-int v5, v6, v0

    .line 54
    .local v5, lines:I
    add-int/lit8 v6, p2, 0x2

    div-int/lit8 v6, v6, 0x3

    mul-int/lit8 v6, v6, 0x4

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v7

    mul-int/2addr v7, v5

    add-int v2, v6, v7

    .line 55
    .local v2, bufLen:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 56
    .local v1, buf:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .line 57
    .local v3, ip:I
    :goto_0
    if-ge v3, p2, :cond_1

    .line 58
    sub-int v6, p2, v3

    invoke-static {v6, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 59
    .local v4, l:I
    add-int v6, p1, v3

    invoke-static {p0, v6, v4}, Lcom/android/browser/common/Base64Coder;->encode([BII)[C

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    add-int/2addr v3, v4

    goto :goto_0

    .line 62
    .end local v4           #l:I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static encodeString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "s"

    .prologue
    .line 30
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/browser/common/Base64Coder;->encode([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
