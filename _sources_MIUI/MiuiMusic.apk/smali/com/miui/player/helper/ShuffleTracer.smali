.class public Lcom/miui/player/helper/ShuffleTracer;
.super Ljava/lang/Object;
.source "ShuffleTracer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/helper/ShuffleTracer$OnTraceableShufferExpand;
    }
.end annotation


# static fields
.field private static final PREF_SHUFFLE_IDX:Ljava/lang/String; = "shuffle_index"

.field private static final PREF_SHUFFLE_VEC:Ljava/lang/String; = "shuffle_vector"


# instance fields
.field private final mListener:Lcom/miui/player/helper/ShuffleTracer$OnTraceableShufferExpand;

.field private final mRandom:Ljava/util/Random;

.field public mShuffleRec:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTracer:I


# direct methods
.method public constructor <init>(Lcom/miui/player/helper/ShuffleTracer$OnTraceableShufferExpand;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/helper/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/player/helper/ShuffleTracer;->mTracer:I

    .line 16
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/miui/player/helper/ShuffleTracer;->mRandom:Ljava/util/Random;

    .line 20
    iput-object p1, p0, Lcom/miui/player/helper/ShuffleTracer;->mListener:Lcom/miui/player/helper/ShuffleTracer$OnTraceableShufferExpand;

    .line 21
    return-void
.end method

.method private expand(II)V
    .locals 16
    .parameter "interval"
    .parameter "first"

    .prologue
    .line 107
    const/4 v5, 0x0

    .line 108
    .local v5, isExpand:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/helper/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    move-object v13, v0

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/helper/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/util/Vector;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 109
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/helper/ShuffleTracer;->mRandom:Ljava/util/Random;

    move-object v13, v0

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/util/Random;->setSeed(J)V

    .line 110
    move/from16 v0, p1

    new-array v0, v0, [I

    move-object v9, v0

    .line 111
    .local v9, rec:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    move v0, v2

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    .line 112
    aput v2, v9, v2

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    :cond_1
    const/4 v2, 0x0

    :goto_1
    move v0, v2

    move/from16 v1, p1

    if-ge v0, v1, :cond_2

    .line 116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/helper/ShuffleTracer;->mRandom:Ljava/util/Random;

    move-object v13, v0

    sub-int v14, p1, v2

    invoke-virtual {v13, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    add-int v7, v13, v2

    .line 117
    .local v7, j:I
    aget v10, v9, v2

    .line 118
    .local v10, t:I
    aget v13, v9, v7

    aput v13, v9, v2

    .line 119
    aput v10, v9, v7

    .line 115
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 121
    .end local v7           #j:I
    .end local v10           #t:I
    :cond_2
    const/4 v11, 0x0

    .line 122
    .local v11, v:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/helper/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    move-object v13, v0

    if-nez v13, :cond_4

    .line 123
    new-instance v11, Ljava/util/Vector;

    .end local v11           #v:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    move-object v0, v11

    move/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 127
    .restart local v11       #v:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    :goto_2
    if-ltz p2, :cond_3

    .line 128
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_3
    const/4 v3, 0x0

    .line 131
    .local v3, idx:I
    :goto_3
    move v0, v3

    move/from16 v1, p1

    if-ge v0, v1, :cond_5

    aget v13, v9, v3

    move v0, v13

    move/from16 v1, p2

    if-eq v0, v1, :cond_5

    .line 132
    aget v13, v9, v3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 125
    .end local v3           #idx:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/helper/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    move-object v11, v0

    goto :goto_2

    .line 135
    .restart local v3       #idx:I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    :goto_4
    move v0, v3

    move/from16 v1, p1

    if-ge v0, v1, :cond_6

    .line 136
    aget v13, v9, v3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 140
    :cond_6
    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/miui/player/helper/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    .line 141
    const/4 v13, 0x0

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/player/helper/ShuffleTracer;->mTracer:I

    .line 142
    const/4 v5, 0x1

    .line 182
    .end local v2           #i:I
    .end local v3           #idx:I
    .end local v9           #rec:[I
    .end local v11           #v:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    .end local p2
    :cond_7
    :goto_5
    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/helper/ShuffleTracer;->mListener:Lcom/miui/player/helper/ShuffleTracer$OnTraceableShufferExpand;

    move-object v13, v0

    if-eqz v13, :cond_8

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/helper/ShuffleTracer;->mListener:Lcom/miui/player/helper/ShuffleTracer$OnTraceableShufferExpand;

    move-object v13, v0

    invoke-interface {v13}, Lcom/miui/player/helper/ShuffleTracer$OnTraceableShufferExpand;->onExpand()V

    .line 185
    :cond_8
    return-void

    .line 143
    .restart local p2
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/helper/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v13

    move v0, v13

    move/from16 v1, p1

    if-le v0, v1, :cond_e

    .line 145
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/helper/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 146
    .end local p2
    .local v6, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_a
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 147
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move v0, v13

    move/from16 v1, p1

    if-lt v0, v1, :cond_a

    .line 148
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    .line 152
    :cond_b
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/helper/ShuffleTracer;->mTracer:I

    move v13, v0

    move v0, v13

    move/from16 v1, p1

    if-ge v0, v1, :cond_c

    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/helper/ShuffleTracer;->mTracer:I

    move v13, v0

    if-gez v13, :cond_d

    .line 153
    :cond_c
    const/4 v13, 0x0

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/miui/player/helper/ShuffleTracer;->mTracer:I

    .line 155
    :cond_d
    const/4 v5, 0x1

    .line 156
    goto :goto_5

    .end local v6           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .restart local p2
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/helper/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    move/from16 v0, p1

    move v1, v13

    if-ne v0, v1, :cond_10

    .line 157
    const/4 v13, 0x1

    sub-int v12, p1, v13

    .line 158
    .local v12, value:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/helper/ShuffleTracer;->mTracer:I

    move v13, v0

    add-int/lit8 v8, v13, 0x1

    .line 159
    .local v8, next:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/helper/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v13

    if-ne v8, v13, :cond_f

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/helper/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    move-object v13, v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 165
    :goto_7
    const/4 v5, 0x1

    .line 166
    goto/16 :goto_5

    .line 162
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/helper/ShuffleTracer;->mRandom:Ljava/util/Random;

    move-object v13, v0

    sub-int v14, p1, v8

    invoke-virtual {v13, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    add-int v4, v13, v8

    .line 163
    .local v4, insertPos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/helper/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    move-object v13, v0

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14, v4}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_7

    .line 166
    .end local v4           #insertPos:I
    .end local v8           #next:I
    .end local v12           #value:I
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/helper/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    move/from16 v0, p1

    move v1, v13

    if-le v0, v1, :cond_7

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/helper/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    move-object v11, v0

    .line 168
    .restart local v11       #v:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    move-object v0, v11

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->ensureCapacity(I)V

    .line 169
    invoke-virtual {v11}, Ljava/util/Vector;->size()I

    move-result v2

    .restart local v2       #i:I
    :goto_8
    move v0, v2

    move/from16 v1, p1

    if-ge v0, v1, :cond_11

    .line 170
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 169
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 173
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/miui/player/helper/ShuffleTracer;->mTracer:I

    move v13, v0

    add-int/lit8 v2, v13, 0x1

    .end local p2
    :goto_9
    move v0, v2

    move/from16 v1, p1

    if-ge v0, v1, :cond_12

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/miui/player/helper/ShuffleTracer;->mRandom:Ljava/util/Random;

    move-object v13, v0

    sub-int v14, p1, v2

    invoke-virtual {v13, v14}, Ljava/util/Random;->nextInt(I)I

    move-result v13

    add-int v7, v13, v2

    .line 175
    .restart local v7       #j:I
    invoke-virtual {v11, v7}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 176
    .restart local v10       #t:I
    invoke-virtual {v11, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v11, v7, v13}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v2, v13}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 173
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 179
    .end local v7           #j:I
    .end local v10           #t:I
    :cond_12
    const/4 v5, 0x1

    goto/16 :goto_5
.end method

.method static read(Ljava/util/Vector;Ljava/lang/String;I)V
    .locals 8
    .parameter
    .parameter "q"
    .parameter "maxLen"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p0, v:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    const/16 v7, 0x61

    const/16 v6, 0x30

    .line 211
    invoke-virtual {p0}, Ljava/util/Vector;->clear()V

    .line 212
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    move v3, v5

    .line 213
    .local v3, qlen:I
    :goto_0
    const/4 v5, 0x1

    if-gt v3, v5, :cond_2

    .line 242
    :cond_0
    :goto_1
    return-void

    .line 212
    .end local v3           #qlen:I
    :cond_1
    const/4 v5, 0x0

    move v3, v5

    goto :goto_0

    .line 216
    .restart local v3       #qlen:I
    :cond_2
    const/4 v2, 0x0

    .line 217
    .local v2, n:I
    const/4 v4, 0x0

    .line 218
    .local v4, shift:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v3, :cond_0

    .line 219
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 220
    .local v0, c:C
    const/16 v5, 0x3b

    if-ne v0, v5, :cond_4

    .line 221
    if-lt v2, p2, :cond_3

    .line 223
    invoke-virtual {p0}, Ljava/util/Vector;->clear()V

    goto :goto_1

    .line 226
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 227
    const/4 v2, 0x0

    .line 228
    const/4 v4, 0x0

    .line 218
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 230
    :cond_4
    if-lt v0, v6, :cond_5

    const/16 v5, 0x39

    if-gt v0, v5, :cond_5

    .line 231
    sub-int v5, v0, v6

    shl-int/2addr v5, v4

    add-int/2addr v2, v5

    .line 239
    :goto_4
    add-int/lit8 v4, v4, 0x4

    goto :goto_3

    .line 232
    :cond_5
    if-lt v0, v7, :cond_6

    const/16 v5, 0x66

    if-gt v0, v5, :cond_6

    .line 233
    add-int/lit8 v5, v0, 0xa

    sub-int/2addr v5, v7

    shl-int/2addr v5, v4

    add-int/2addr v2, v5

    goto :goto_4

    .line 236
    :cond_6
    invoke-virtual {p0}, Ljava/util/Vector;->clear()V

    goto :goto_1
.end method

.method static serialize(Ljava/util/Vector;)Ljava/lang/String;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, value:Ljava/util/Vector;,"Ljava/util/Vector<Ljava/lang/Integer;>;"
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/Vector;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 189
    :cond_0
    const-string v5, ""

    .line 207
    :goto_0
    return-object v5

    .line 191
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    .local v4, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/util/Vector;->size()I

    move-result v2

    .line 193
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 194
    invoke-virtual {p0, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 195
    .local v3, n:I
    if-nez v3, :cond_2

    .line 196
    const-string v5, "0;"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 198
    :cond_2
    :goto_3
    if-eqz v3, :cond_3

    .line 199
    and-int/lit8 v0, v3, 0xf

    .line 200
    .local v0, digit:I
    shr-int/lit8 v3, v3, 0x4

    .line 201
    sget-object v5, Lcom/miui/player/helper/MediaPlayerConstants;->HEX_DIGITS:[C

    aget-char v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 203
    .end local v0           #digit:I
    :cond_3
    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 207
    .end local v3           #n:I
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method


# virtual methods
.method public back(II)I
    .locals 3
    .parameter "interval"
    .parameter "currentPos"

    .prologue
    const/4 v2, 0x1

    .line 63
    if-gtz p1, :cond_0

    .line 64
    const/4 v1, -0x1

    .line 76
    .end local p0
    :goto_0
    return v1

    .line 67
    .restart local p0
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/player/helper/ShuffleTracer;->expand(II)V

    .line 68
    const/4 v0, -0x1

    .line 69
    .local v0, ret:I
    iget v1, p0, Lcom/miui/player/helper/ShuffleTracer;->mTracer:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/miui/player/helper/ShuffleTracer;->mTracer:I

    .line 70
    iget v1, p0, Lcom/miui/player/helper/ShuffleTracer;->mTracer:I

    if-ltz v1, :cond_1

    .line 71
    iget-object v1, p0, Lcom/miui/player/helper/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    iget v2, p0, Lcom/miui/player/helper/ShuffleTracer;->mTracer:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    move v1, v0

    .line 76
    goto :goto_0

    .line 73
    .restart local p0
    :cond_1
    iget-object v1, p0, Lcom/miui/player/helper/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/miui/player/helper/ShuffleTracer;->mTracer:I

    .line 74
    iget-object v1, p0, Lcom/miui/player/helper/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    iget v2, p0, Lcom/miui/player/helper/ShuffleTracer;->mTracer:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/player/helper/ShuffleTracer;->mTracer:I

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/helper/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    .line 60
    return-void
.end method

.method public getTracer()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/miui/player/helper/ShuffleTracer;->mTracer:I

    return v0
.end method

.method public load(Landroid/content/SharedPreferences;I)V
    .locals 6
    .parameter "sp"
    .parameter "maxLen"

    .prologue
    const/4 v5, 0x0

    .line 80
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/miui/player/helper/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    .line 81
    const-string v3, "shuffle_vector"

    const-string v4, ""

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    .local v1, q:Ljava/lang/String;
    iget-object v3, p0, Lcom/miui/player/helper/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    invoke-static {v3, v1, p2}, Lcom/miui/player/helper/ShuffleTracer;->read(Ljava/util/Vector;Ljava/lang/String;I)V

    .line 83
    iput v5, p0, Lcom/miui/player/helper/ShuffleTracer;->mTracer:I

    .line 84
    iget-object v3, p0, Lcom/miui/player/helper/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v2

    .line 85
    .local v2, size:I
    if-lez v2, :cond_0

    .line 86
    const-string v3, "shuffle_index"

    invoke-interface {p1, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 87
    .local v0, backHistory:I
    if-ge v0, v2, :cond_0

    .line 88
    iput v0, p0, Lcom/miui/player/helper/ShuffleTracer;->mTracer:I

    .line 91
    .end local v0           #backHistory:I
    :cond_0
    return-void
.end method

.method public peekNext(II)I
    .locals 2
    .parameter "interval"
    .parameter "currentPos"

    .prologue
    .line 28
    if-gtz p1, :cond_0

    .line 29
    const/4 v1, -0x1

    .line 37
    .end local p0
    :goto_0
    return v1

    .line 32
    .restart local p0
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/player/helper/ShuffleTracer;->expand(II)V

    .line 33
    iget v1, p0, Lcom/miui/player/helper/ShuffleTracer;->mTracer:I

    add-int/lit8 v0, v1, 0x1

    .line 34
    .local v0, tracer:I
    iget-object v1, p0, Lcom/miui/player/helper/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 35
    const/4 v0, 0x0

    .line 37
    :cond_1
    iget-object v1, p0, Lcom/miui/player/helper/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public randNext(II)I
    .locals 3
    .parameter "interval"
    .parameter "currentPos"

    .prologue
    .line 41
    if-gtz p1, :cond_0

    .line 42
    const/4 v1, -0x1

    .line 54
    .end local p0
    :goto_0
    return v1

    .line 45
    .restart local p0
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/miui/player/helper/ShuffleTracer;->expand(II)V

    .line 46
    const/4 v0, -0x1

    .line 47
    .local v0, ret:I
    iget v1, p0, Lcom/miui/player/helper/ShuffleTracer;->mTracer:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/player/helper/ShuffleTracer;->mTracer:I

    .line 48
    iget v1, p0, Lcom/miui/player/helper/ShuffleTracer;->mTracer:I

    iget-object v2, p0, Lcom/miui/player/helper/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 49
    iget-object v1, p0, Lcom/miui/player/helper/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    iget v2, p0, Lcom/miui/player/helper/ShuffleTracer;->mTracer:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    move v1, v0

    .line 54
    goto :goto_0

    .line 51
    .restart local p0
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/player/helper/ShuffleTracer;->mTracer:I

    .line 52
    iget-object v1, p0, Lcom/miui/player/helper/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    iget v2, p0, Lcom/miui/player/helper/ShuffleTracer;->mTracer:I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1
.end method

.method public save(Landroid/content/SharedPreferences$Editor;IIZ)V
    .locals 3
    .parameter "ed"
    .parameter "interval"
    .parameter "first"
    .parameter "full"

    .prologue
    .line 94
    if-gtz p2, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/miui/player/helper/ShuffleTracer;->expand(II)V

    .line 99
    const-string v1, "shuffle_index"

    iget v2, p0, Lcom/miui/player/helper/ShuffleTracer;->mTracer:I

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 100
    if-eqz p4, :cond_0

    .line 101
    iget-object v1, p0, Lcom/miui/player/helper/ShuffleTracer;->mShuffleRec:Ljava/util/Vector;

    invoke-static {v1}, Lcom/miui/player/helper/ShuffleTracer;->serialize(Ljava/util/Vector;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, q:Ljava/lang/String;
    const-string v1, "shuffle_vector"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method
