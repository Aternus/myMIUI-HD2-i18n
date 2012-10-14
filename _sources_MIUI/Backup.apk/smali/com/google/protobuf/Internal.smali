.class public Lcom/google/protobuf/Internal;
.super Ljava/lang/Object;
.source "Internal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Internal$EnumLiteMap;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    return-void
.end method

.method public static isValidUtf8(Lcom/google/protobuf/ByteString;)Z
    .locals 12
    .parameter "byteString"

    .prologue
    const/16 v11, 0xf4

    const/16 v10, 0xbf

    const/16 v9, 0x80

    const/4 v8, 0x0

    .line 114
    const/4 v4, 0x0

    .line 115
    .local v4, index:I
    invoke-virtual {p0}, Lcom/google/protobuf/ByteString;->size()I

    move-result v6

    .local v6, size:I
    move v5, v4

    .line 120
    .end local v4           #index:I
    .local v5, index:I
    :cond_0
    :goto_0
    if-ge v5, v6, :cond_14

    .line 121
    add-int/lit8 v4, v5, 0x1

    .end local v5           #index:I
    .restart local v4       #index:I
    invoke-virtual {p0, v5}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v7

    and-int/lit16 v0, v7, 0xff

    .line 122
    .local v0, byte1:I
    if-ge v0, v9, :cond_1

    move v5, v4

    .line 124
    .end local v4           #index:I
    .restart local v5       #index:I
    goto :goto_0

    .line 127
    .end local v5           #index:I
    .restart local v4       #index:I
    :cond_1
    const/16 v7, 0xc2

    if-lt v0, v7, :cond_2

    if-le v0, v11, :cond_3

    :cond_2
    move v7, v8

    .line 184
    .end local v0           #byte1:I
    :goto_1
    return v7

    .line 131
    .restart local v0       #byte1:I
    :cond_3
    if-lt v4, v6, :cond_4

    move v7, v8

    .line 133
    goto :goto_1

    .line 135
    :cond_4
    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .restart local v5       #index:I
    invoke-virtual {p0, v4}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v7

    and-int/lit16 v1, v7, 0xff

    .line 136
    .local v1, byte2:I
    if-lt v1, v9, :cond_5

    if-le v1, v10, :cond_6

    :cond_5
    move v4, v5

    .end local v5           #index:I
    .restart local v4       #index:I
    move v7, v8

    .line 138
    goto :goto_1

    .line 140
    .end local v4           #index:I
    .restart local v5       #index:I
    :cond_6
    const/16 v7, 0xdf

    if-le v0, v7, :cond_0

    .line 146
    if-lt v5, v6, :cond_7

    move v4, v5

    .end local v5           #index:I
    .restart local v4       #index:I
    move v7, v8

    .line 148
    goto :goto_1

    .line 150
    .end local v4           #index:I
    .restart local v5       #index:I
    :cond_7
    add-int/lit8 v4, v5, 0x1

    .end local v5           #index:I
    .restart local v4       #index:I
    invoke-virtual {p0, v5}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v7

    and-int/lit16 v2, v7, 0xff

    .line 151
    .local v2, byte3:I
    if-lt v2, v9, :cond_8

    if-le v2, v10, :cond_9

    :cond_8
    move v7, v8

    .line 153
    goto :goto_1

    .line 155
    :cond_9
    const/16 v7, 0xef

    if-gt v0, v7, :cond_c

    .line 158
    const/16 v7, 0xe0

    if-ne v0, v7, :cond_a

    const/16 v7, 0xa0

    if-lt v1, v7, :cond_b

    :cond_a
    const/16 v7, 0xed

    if-ne v0, v7, :cond_13

    const/16 v7, 0x9f

    if-le v1, v7, :cond_13

    :cond_b
    move v7, v8

    .line 161
    goto :goto_1

    .line 167
    :cond_c
    if-lt v4, v6, :cond_d

    move v7, v8

    .line 169
    goto :goto_1

    .line 171
    :cond_d
    add-int/lit8 v5, v4, 0x1

    .end local v4           #index:I
    .restart local v5       #index:I
    invoke-virtual {p0, v4}, Lcom/google/protobuf/ByteString;->byteAt(I)B

    move-result v7

    and-int/lit16 v3, v7, 0xff

    .line 172
    .local v3, byte4:I
    if-lt v3, v9, :cond_e

    if-le v3, v10, :cond_f

    :cond_e
    move v4, v5

    .end local v5           #index:I
    .restart local v4       #index:I
    move v7, v8

    .line 174
    goto :goto_1

    .line 177
    .end local v4           #index:I
    .restart local v5       #index:I
    :cond_f
    const/16 v7, 0xf0

    if-ne v0, v7, :cond_10

    const/16 v7, 0x90

    if-lt v1, v7, :cond_11

    :cond_10
    if-ne v0, v11, :cond_12

    const/16 v7, 0x8f

    if-le v1, v7, :cond_12

    :cond_11
    move v4, v5

    .end local v5           #index:I
    .restart local v4       #index:I
    move v7, v8

    .line 180
    goto :goto_1

    .end local v4           #index:I
    .restart local v5       #index:I
    :cond_12
    move v4, v5

    .end local v3           #byte4:I
    .end local v5           #index:I
    .restart local v4       #index:I
    :cond_13
    move v5, v4

    .line 183
    .end local v4           #index:I
    .restart local v5       #index:I
    goto :goto_0

    .line 184
    .end local v0           #byte1:I
    .end local v1           #byte2:I
    .end local v2           #byte3:I
    :cond_14
    const/4 v7, 0x1

    move v4, v5

    .end local v5           #index:I
    .restart local v4       #index:I
    goto :goto_1
.end method
