.class public Lcom/android/inputmethod/latin/Suggest;
.super Ljava/lang/Object;
.source "Suggest.java"

# interfaces
.implements Lcom/android/inputmethod/latin/Dictionary$WordCallback;


# static fields
.field public static final APPROX_MAX_WORD_LENGTH:I = 0x20

.field public static final BIGRAM_MULTIPLIER_MAX:D = 1.5

.field public static final BIGRAM_MULTIPLIER_MIN:D = 1.2

.field public static final CORRECTION_BASIC:I = 0x1

.field public static final CORRECTION_FULL:I = 0x2

.field public static final CORRECTION_FULL_BIGRAM:I = 0x3

.field public static final CORRECTION_NONE:I = 0x0

.field public static final DIC_AUTO:I = 0x3

.field public static final DIC_CONTACTS:I = 0x4

.field public static final DIC_MAIN:I = 0x1

.field public static final DIC_TYPE_LAST_ID:I = 0x4

.field public static final DIC_USER:I = 0x2

.field public static final DIC_USER_TYPED:I = 0x0

.field static final LARGE_DICTIONARY_THRESHOLD:I = 0x30d40

.field public static final MAXIMUM_BIGRAM_FREQUENCY:I = 0x7f

.field private static final PREF_MAX_BIGRAMS:I = 0x3c


# instance fields
.field private mAutoDictionary:Lcom/android/inputmethod/latin/Dictionary;

.field private mAutoTextEnabled:Z

.field private mBigramPriorities:[I

.field mBigramSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mContactsDictionary:Lcom/android/inputmethod/latin/Dictionary;

.field private mCorrectionMode:I

.field private mHaveCorrection:Z

.field private mIsAllUpperCase:Z

.field private mIsFirstCharCapitalized:Z

.field private mLowerOriginalWord:Ljava/lang/String;

.field private mMainDict:Lcom/android/inputmethod/latin/BinaryDictionary;

.field private mNextLettersFrequencies:[I

.field private mOriginalWord:Ljava/lang/CharSequence;

.field private mPrefMaxSuggestions:I

.field private mPriorities:[I

.field private mStringPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mSuggestions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mUserBigramDictionary:Lcom/android/inputmethod/latin/Dictionary;

.field private mUserDictionary:Lcom/android/inputmethod/latin/Dictionary;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/nio/ByteBuffer;)V
    .locals 2
    .parameter "context"
    .parameter "byteBuffer"

    .prologue
    const/4 v1, 0x1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    .line 84
    iget v0, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mPriorities:[I

    .line 85
    const/16 v0, 0x3c

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramPriorities:[I

    .line 92
    const/16 v0, 0x500

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mNextLettersFrequencies:[I

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    .line 104
    iput v1, p0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    .line 112
    new-instance v0, Lcom/android/inputmethod/latin/BinaryDictionary;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/inputmethod/latin/BinaryDictionary;-><init>(Landroid/content/Context;Ljava/nio/ByteBuffer;I)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/BinaryDictionary;

    .line 113
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Suggest;->initPool()V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;[I)V
    .locals 2
    .parameter "context"
    .parameter "dictionaryResId"

    .prologue
    const/4 v1, 0x1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    .line 84
    iget v0, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mPriorities:[I

    .line 85
    const/16 v0, 0x3c

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramPriorities:[I

    .line 92
    const/16 v0, 0x500

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mNextLettersFrequencies:[I

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    .line 104
    iput v1, p0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    .line 107
    new-instance v0, Lcom/android/inputmethod/latin/BinaryDictionary;

    invoke-direct {v0, p1, p2, v1}, Lcom/android/inputmethod/latin/BinaryDictionary;-><init>(Landroid/content/Context;[II)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/BinaryDictionary;

    .line 108
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Suggest;->initPool()V

    .line 109
    return-void
.end method

.method private collectGarbage(Ljava/util/ArrayList;I)V
    .locals 6
    .parameter
    .parameter "prefMaxSuggestions"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 513
    .local p1, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    iget-object v3, p0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 514
    .local v2, poolSize:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 515
    .local v1, garbageSize:I
    :goto_0
    if-ge v2, p2, :cond_1

    if-lez v1, :cond_1

    .line 516
    const/4 v3, 0x1

    sub-int v3, v1, v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 517
    .local v0, garbage:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    instance-of v3, v0, Ljava/lang/StringBuilder;

    if-eqz v3, :cond_0

    .line 518
    iget-object v3, p0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 519
    add-int/lit8 v2, v2, 0x1

    .line 521
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 522
    goto :goto_0

    .line 523
    .end local v0           #garbage:Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v3, p2, 0x1

    if-ne v2, v3, :cond_2

    .line 524
    const-string v3, "Suggest"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "String pool got too big: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 527
    return-void
.end method

.method private compareCaseInsensitive(Ljava/lang/String;[CII)Z
    .locals 5
    .parameter "mLowerOriginalWord"
    .parameter "word"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v4, 0x0

    .line 386
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 387
    .local v1, originalLength:I
    if-ne v1, p4, :cond_2

    aget-char v2, p2, p3

    invoke-static {v2}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 388
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 389
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int v3, p3, v0

    aget-char v3, p2, v3

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    if-eq v2, v3, :cond_0

    move v2, v4

    .line 395
    .end local v0           #i:I
    :goto_1
    return v2

    .line 388
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 393
    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    .end local v0           #i:I
    :cond_2
    move v2, v4

    .line 395
    goto :goto_1
.end method

.method private haveSufficientCommonality(Ljava/lang/String;Ljava/lang/CharSequence;)Z
    .locals 11
    .parameter "original"
    .parameter "suggestion"

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 187
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 188
    .local v5, originalLength:I
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    .line 189
    .local v6, suggestionLength:I
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 190
    .local v3, minLength:I
    if-gt v3, v10, :cond_0

    move v7, v8

    .line 209
    :goto_0
    return v7

    .line 191
    :cond_0
    const/4 v2, 0x0

    .line 192
    .local v2, matching:I
    const/4 v1, 0x0

    .line 194
    .local v1, lessMatching:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_3

    .line 195
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/android/inputmethod/latin/ExpandableDictionary;->toLowerCase(C)C

    move-result v4

    .line 196
    .local v4, origChar:C
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/android/inputmethod/latin/ExpandableDictionary;->toLowerCase(C)C

    move-result v7

    if-ne v4, v7, :cond_2

    .line 197
    add-int/lit8 v2, v2, 0x1

    .line 198
    add-int/lit8 v1, v1, 0x1

    .line 194
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 199
    :cond_2
    add-int/lit8 v7, v0, 0x1

    if-ge v7, v6, :cond_1

    add-int/lit8 v7, v0, 0x1

    invoke-interface {p2, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lcom/android/inputmethod/latin/ExpandableDictionary;->toLowerCase(C)C

    move-result v7

    if-ne v4, v7, :cond_1

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 204
    .end local v4           #origChar:C
    :cond_3
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 206
    const/4 v7, 0x4

    if-gt v3, v7, :cond_5

    .line 207
    if-lt v2, v10, :cond_4

    move v7, v8

    goto :goto_0

    :cond_4
    move v7, v9

    goto :goto_0

    .line 209
    :cond_5
    div-int/lit8 v7, v3, 0x2

    if-le v2, v7, :cond_6

    move v7, v8

    goto :goto_0

    :cond_6
    move v7, v9

    goto :goto_0
.end method

.method private initPool()V
    .locals 3

    .prologue
    .line 117
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    if-ge v0, v2, :cond_0

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Suggest;->getApproxMaxWordLength()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 119
    .local v1, sb:Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 121
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :cond_0
    return-void
.end method

.method private removeDupes()V
    .locals 7

    .prologue
    .line 354
    iget-object v4, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    .line 355
    .local v4, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_1

    .line 371
    :cond_0
    return-void

    .line 356
    :cond_1
    const/4 v1, 0x1

    .line 358
    .local v1, i:I
    :goto_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_0

    .line 359
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 361
    .local v0, cur:Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, j:I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 362
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    .line 363
    .local v3, previous:Ljava/lang/CharSequence;
    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 364
    invoke-direct {p0, v1}, Lcom/android/inputmethod/latin/Suggest;->removeFromSuggestions(I)V

    .line 365
    add-int/lit8 v1, v1, -0x1

    .line 369
    .end local v3           #previous:Ljava/lang/CharSequence;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 370
    goto :goto_0

    .line 361
    .restart local v3       #previous:Ljava/lang/CharSequence;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private removeFromSuggestions(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 374
    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    .line 375
    .local v0, garbage:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/StringBuilder;

    if-eqz v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    :cond_0
    return-void
.end method

.method private searchBigramSuggestion([CII)I
    .locals 6
    .parameter "word"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 485
    iget-object v4, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 486
    .local v0, bigramSuggestSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 487
    iget-object v4, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ne v4, p3, :cond_2

    .line 488
    const/4 v1, 0x1

    .line 489
    .local v1, chk:Z
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-ge v3, p3, :cond_0

    .line 490
    iget-object v4, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    add-int v5, p2, v3

    aget-char v5, p1, v5

    if-eq v4, v5, :cond_1

    .line 491
    const/4 v1, 0x0

    .line 495
    :cond_0
    if-eqz v1, :cond_2

    move v4, v2

    .line 499
    .end local v1           #chk:Z
    .end local v3           #j:I
    :goto_2
    return v4

    .line 489
    .restart local v1       #chk:Z
    .restart local v3       #j:I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 486
    .end local v1           #chk:Z
    .end local v3           #j:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 499
    :cond_3
    const/4 v4, -0x1

    goto :goto_2
.end method


# virtual methods
.method public addWord([CIIIILcom/android/inputmethod/latin/Dictionary$DataType;)Z
    .locals 20
    .parameter "word"
    .parameter "offset"
    .parameter "length"
    .parameter "freq"
    .parameter "dicTypeId"
    .parameter "dataType"

    .prologue
    .line 400
    move-object/from16 v6, p6

    .line 404
    .local v6, dataTypeForLog:Lcom/android/inputmethod/latin/Dictionary$DataType;
    sget-object v16, Lcom/android/inputmethod/latin/Dictionary$DataType;->BIGRAM:Lcom/android/inputmethod/latin/Dictionary$DataType;

    move-object/from16 v0, p6

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_1

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    move-object v15, v0

    .line 406
    .local v15, suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramPriorities:[I

    move-object v13, v0

    .line 407
    .local v13, priorities:[I
    const/16 v12, 0x3c

    .line 414
    .local v12, prefMaxSuggestions:I
    :goto_0
    const/4 v11, 0x0

    .line 417
    .local v11, pos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mLowerOriginalWord:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/inputmethod/latin/Suggest;->compareCaseInsensitive(Ljava/lang/String;[CII)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 418
    const/4 v11, 0x0

    .line 449
    .end local p6
    :cond_0
    :goto_1
    if-lt v11, v12, :cond_6

    .line 450
    const/16 v16, 0x1

    .line 479
    :goto_2
    return v16

    .line 409
    .end local v11           #pos:I
    .end local v12           #prefMaxSuggestions:I
    .end local v13           #priorities:[I
    .end local v15           #suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    .restart local p6
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object v15, v0

    .line 410
    .restart local v15       #suggestions:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mPriorities:[I

    move-object v13, v0

    .line 411
    .restart local v13       #priorities:[I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    move v12, v0

    .restart local v12       #prefMaxSuggestions:I
    goto :goto_0

    .line 420
    .restart local v11       #pos:I
    :cond_2
    sget-object v16, Lcom/android/inputmethod/latin/Dictionary$DataType;->UNIGRAM:Lcom/android/inputmethod/latin/Dictionary$DataType;

    move-object/from16 v0, p6

    move-object/from16 v1, v16

    if-ne v0, v1, :cond_3

    .line 422
    invoke-direct/range {p0 .. p3}, Lcom/android/inputmethod/latin/Suggest;->searchBigramSuggestion([CII)I

    move-result v5

    .line 423
    .local v5, bigramSuggestion:I
    if-ltz v5, :cond_3

    .line 424
    sget-object v6, Lcom/android/inputmethod/latin/Dictionary$DataType;->BIGRAM:Lcom/android/inputmethod/latin/Dictionary$DataType;

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramPriorities:[I

    move-object/from16 v16, v0

    aget v16, v16, v5

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide v18, 0x405fc00000000000L

    div-double v16, v16, v18

    const-wide v18, 0x3fd3333333333334L

    mul-double v16, v16, v18

    const-wide v18, 0x3ff3333333333333L

    add-double v8, v16, v18

    .line 435
    .local v8, multiplier:D
    move/from16 v0, p4

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v16, v16, v8

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->round(D)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 p4, v0

    .line 440
    .end local v5           #bigramSuggestion:I
    .end local v8           #multiplier:D
    :cond_3
    const/16 v16, 0x1

    sub-int v16, v12, v16

    aget v16, v13, v16

    move/from16 v0, v16

    move/from16 v1, p4

    if-lt v0, v1, :cond_5

    const/16 v16, 0x1

    goto :goto_2

    .line 446
    .end local p6
    :cond_4
    add-int/lit8 v11, v11, 0x1

    .line 441
    :cond_5
    if-ge v11, v12, :cond_0

    .line 442
    aget v16, v13, v11

    move/from16 v0, v16

    move/from16 v1, p4

    if-lt v0, v1, :cond_0

    aget v16, v13, v11

    move/from16 v0, v16

    move/from16 v1, p4

    if-ne v0, v1, :cond_4

    invoke-virtual {v15, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/CharSequence;

    invoke-interface/range {p6 .. p6}, Ljava/lang/CharSequence;->length()I

    move-result v16

    move/from16 v0, p3

    move/from16 v1, v16

    if-ge v0, v1, :cond_4

    goto/16 :goto_1

    .line 453
    :cond_6
    add-int/lit8 v16, v11, 0x1

    sub-int v17, v12, v11

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move-object v0, v13

    move v1, v11

    move-object v2, v13

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 455
    aput p4, v13, v11

    .line 456
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 457
    .local v10, poolSize:I
    if-lez v10, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    sub-int v17, v10, v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/StringBuilder;

    move-object/from16 v14, p6

    .line 459
    .local v14, sb:Ljava/lang/StringBuilder;
    :goto_3
    const/16 v16, 0x0

    move-object v0, v14

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 460
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/Suggest;->mIsAllUpperCase:Z

    move/from16 v16, v0

    if-eqz v16, :cond_a

    .line 461
    new-instance v16, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v16

    move-object v0, v14

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    :cond_7
    :goto_4
    invoke-virtual {v15, v11, v14}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 471
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    move v1, v12

    if-le v0, v1, :cond_c

    .line 472
    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    .line 473
    .local v7, garbage:Ljava/lang/CharSequence;
    move-object v0, v7

    instance-of v0, v0, Ljava/lang/StringBuilder;

    move/from16 v16, v0

    if-eqz v16, :cond_8

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    .end local v7           #garbage:Ljava/lang/CharSequence;
    :cond_8
    :goto_5
    const/16 v16, 0x1

    goto/16 :goto_2

    .line 457
    .end local v14           #sb:Ljava/lang/StringBuilder;
    :cond_9
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/Suggest;->getApproxMaxWordLength()I

    move-result v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v14, v16

    goto :goto_3

    .line 462
    .restart local v14       #sb:Ljava/lang/StringBuilder;
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/Suggest;->mIsFirstCharCapitalized:Z

    move/from16 v16, v0

    if-eqz v16, :cond_b

    .line 463
    aget-char v16, p1, p2

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v16

    move-object v0, v14

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 464
    const/16 v16, 0x1

    move/from16 v0, p3

    move/from16 v1, v16

    if-le v0, v1, :cond_7

    .line 465
    add-int/lit8 v16, p2, 0x1

    const/16 v17, 0x1

    sub-int v17, p3, v17

    move-object v0, v14

    move-object/from16 v1, p1

    move/from16 v2, v16

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 468
    :cond_b
    move-object v0, v14

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 477
    :cond_c
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move/from16 v1, p5

    move-object v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/latin/LatinImeLogger;->onAddSuggestedWord(Ljava/lang/String;ILcom/android/inputmethod/latin/Dictionary$DataType;)V

    goto :goto_5
.end method

.method public close()V
    .locals 1

    .prologue
    .line 530
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/BinaryDictionary;

    if-eqz v0, :cond_0

    .line 531
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/BinaryDictionary;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/BinaryDictionary;->close()V

    .line 533
    :cond_0
    return-void
.end method

.method public getApproxMaxWordLength()I
    .locals 1

    .prologue
    .line 140
    const/16 v0, 0x20

    return v0
.end method

.method public getCorrectionMode()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    return v0
.end method

.method public getNextLettersFrequencies()[I
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mNextLettersFrequencies:[I

    return-object v0
.end method

.method public getSuggestions(Landroid/view/View;Lcom/android/inputmethod/latin/WordComposer;ZLjava/lang/CharSequence;)Ljava/util/List;
    .locals 22
    .parameter "view"
    .parameter "wordComposer"
    .parameter "includeTypedWordIfValid"
    .parameter "prevWordForBigram"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/inputmethod/latin/WordComposer;",
            "Z",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    invoke-static/range {p4 .. p4}, Lcom/android/inputmethod/latin/LatinImeLogger;->onStartSuggestion(Ljava/lang/CharSequence;)V

    .line 224
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/latin/Suggest;->mHaveCorrection:Z

    .line 225
    invoke-virtual/range {p2 .. p2}, Lcom/android/inputmethod/latin/WordComposer;->isFirstCharCapitalized()Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/latin/Suggest;->mIsFirstCharCapitalized:Z

    .line 226
    invoke-virtual/range {p2 .. p2}, Lcom/android/inputmethod/latin/WordComposer;->isAllUpperCase()Z

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/latin/Suggest;->mIsAllUpperCase:Z

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/latin/Suggest;->collectGarbage(Ljava/util/ArrayList;I)V

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mPriorities:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Ljava/util/Arrays;->fill([II)V

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mNextLettersFrequencies:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Ljava/util/Arrays;->fill([II)V

    .line 232
    invoke-virtual/range {p2 .. p2}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    if-eqz v19, :cond_d

    .line 234
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    .line 235
    .local v14, mOriginalWordString:Ljava/lang/String;
    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    .line 236
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/Suggest;->mLowerOriginalWord:Ljava/lang/String;

    .line 238
    const/16 v19, 0x0

    sget-object v20, Lcom/android/inputmethod/latin/Dictionary$DataType;->UNIGRAM:Lcom/android/inputmethod/latin/Dictionary$DataType;

    move-object v0, v14

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/android/inputmethod/latin/LatinImeLogger;->onAddSuggestedWord(Ljava/lang/String;ILcom/android/inputmethod/latin/Dictionary$DataType;)V

    .line 244
    .end local v14           #mOriginalWordString:Ljava/lang/String;
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_11

    .line 247
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramPriorities:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Ljava/util/Arrays;->fill([II)V

    .line 248
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x3c

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/latin/Suggest;->collectGarbage(Ljava/util/ArrayList;I)V

    .line 250
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 251
    invoke-virtual/range {p4 .. p4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    .line 252
    .local v13, lowerPrevWord:Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/BinaryDictionary;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v13

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/BinaryDictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 253
    move-object/from16 p4, v13

    .line 255
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mUserBigramDictionary:Lcom/android/inputmethod/latin/Dictionary;

    move-object/from16 v19, v0

    if-eqz v19, :cond_2

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mUserBigramDictionary:Lcom/android/inputmethod/latin/Dictionary;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mNextLettersFrequencies:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p0

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/inputmethod/latin/Dictionary;->getBigrams(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/Dictionary$WordCallback;[I)V

    .line 259
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mContactsDictionary:Lcom/android/inputmethod/latin/Dictionary;

    move-object/from16 v19, v0

    if-eqz v19, :cond_3

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mContactsDictionary:Lcom/android/inputmethod/latin/Dictionary;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mNextLettersFrequencies:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p0

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/inputmethod/latin/Dictionary;->getBigrams(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/Dictionary$WordCallback;[I)V

    .line 263
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/BinaryDictionary;

    move-object/from16 v19, v0

    if-eqz v19, :cond_4

    .line 264
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/BinaryDictionary;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mNextLettersFrequencies:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p0

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/inputmethod/latin/BinaryDictionary;->getBigrams(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/Dictionary$WordCallback;[I)V

    .line 267
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface/range {v19 .. v20}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    .line 268
    .local v10, currentChar:C
    invoke-static {v10}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v11

    .line 269
    .local v11, currentCharUpper:C
    const/4 v8, 0x0

    .line 270
    .local v8, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 271
    .local v6, bigramSuggestionSize:I
    const/4 v12, 0x0

    .local v12, i:I
    move v9, v8

    .end local v8           #count:I
    .end local p3
    .local v9, count:I
    :goto_1
    if-ge v12, v6, :cond_1c

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v19

    move/from16 v0, v19

    move v1, v10

    if-eq v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    const/16 v19, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v19

    move/from16 v0, v19

    move v1, v11

    if-ne v0, v1, :cond_f

    .line 274
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 275
    .local v16, poolSize:I
    if-lez v16, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    sub-int v20, v16, v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/StringBuilder;

    move-object/from16 v17, p3

    .line 278
    .local v17, sb:Ljava/lang/StringBuilder;
    :goto_2
    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mBigramSuggestions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    add-int/lit8 v8, v9, 0x1

    .end local v9           #count:I
    .restart local v8       #count:I
    move-object/from16 v0, v19

    move v1, v9

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 281
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    move/from16 v19, v0

    move v0, v8

    move/from16 v1, v19

    if-le v0, v1, :cond_10

    .line 308
    .end local v6           #bigramSuggestionSize:I
    .end local v8           #count:I
    .end local v10           #currentChar:C
    .end local v11           #currentCharUpper:C
    .end local v12           #i:I
    .end local v13           #lowerPrevWord:Ljava/lang/CharSequence;
    .end local v16           #poolSize:I
    .end local v17           #sb:Ljava/lang/StringBuilder;
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    if-eqz v19, :cond_7

    .line 309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v19 .. v21}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 313
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_9

    .line 316
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mLowerOriginalWord:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Ljava/lang/CharSequence;

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/inputmethod/latin/Suggest;->haveSufficientCommonality(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_9

    .line 317
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/latin/Suggest;->mHaveCorrection:Z

    .line 320
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/inputmethod/latin/Suggest;->mAutoTextEnabled:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1b

    .line 321
    const/4 v12, 0x0

    .line 322
    .restart local v12       #i:I
    const/4 v15, 0x6

    .line 324
    .local v15, max:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    const/4 v15, 0x1

    .line 325
    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move v0, v12

    move/from16 v1, v19

    if-ge v0, v1, :cond_1b

    if-ge v12, v15, :cond_1b

    .line 326
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v18

    .line 327
    .local v18, suggestedWord:Ljava/lang/String;
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v20

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move-object/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Landroid/text/AutoText;->get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v5

    .line 330
    .local v5, autoText:Ljava/lang/CharSequence;
    if-eqz v5, :cond_18

    const/16 v19, 0x1

    move/from16 v7, v19

    .line 332
    .local v7, canAdd:Z
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_19

    const/16 v19, 0x1

    :goto_6
    and-int v7, v7, v19

    .line 334
    if-eqz v7, :cond_b

    add-int/lit8 v19, v12, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_b

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    add-int/lit8 v20, v12, 0x1

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_1a

    const/16 v19, 0x1

    :goto_7
    and-int v7, v7, v19

    .line 337
    :cond_b
    if-eqz v7, :cond_c

    .line 338
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/latin/Suggest;->mHaveCorrection:Z

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    add-int/lit8 v20, v12, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 340
    add-int/lit8 v12, v12, 0x1

    .line 342
    :cond_c
    add-int/lit8 v12, v12, 0x1

    .line 343
    goto/16 :goto_4

    .line 241
    .end local v5           #autoText:Ljava/lang/CharSequence;
    .end local v7           #canAdd:Z
    .end local v12           #i:I
    .end local v15           #max:I
    .end local v18           #suggestedWord:Ljava/lang/String;
    .restart local p2
    .restart local p3
    :cond_d
    const-string v19, ""

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/inputmethod/latin/Suggest;->mLowerOriginalWord:Ljava/lang/String;

    goto/16 :goto_0

    .line 275
    .end local p3
    .restart local v6       #bigramSuggestionSize:I
    .restart local v9       #count:I
    .restart local v10       #currentChar:C
    .restart local v11       #currentCharUpper:C
    .restart local v12       #i:I
    .restart local v13       #lowerPrevWord:Ljava/lang/CharSequence;
    .restart local v16       #poolSize:I
    :cond_e
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/inputmethod/latin/Suggest;->getApproxMaxWordLength()I

    move-result v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v17, v19

    goto/16 :goto_2

    .end local v16           #poolSize:I
    :cond_f
    move v8, v9

    .line 271
    .end local v9           #count:I
    .restart local v8       #count:I
    :cond_10
    add-int/lit8 v12, v12, 0x1

    move v9, v8

    .end local v8           #count:I
    .restart local v9       #count:I
    goto/16 :goto_1

    .line 286
    .end local v6           #bigramSuggestionSize:I
    .end local v9           #count:I
    .end local v10           #currentChar:C
    .end local v11           #currentCharUpper:C
    .end local v12           #i:I
    .end local v13           #lowerPrevWord:Ljava/lang/CharSequence;
    .restart local p3
    :cond_11
    invoke-virtual/range {p2 .. p2}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_6

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mUserDictionary:Lcom/android/inputmethod/latin/Dictionary;

    move-object/from16 v19, v0

    if-nez v19, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mContactsDictionary:Lcom/android/inputmethod/latin/Dictionary;

    move-object/from16 v19, v0

    if-eqz v19, :cond_16

    .line 289
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mUserDictionary:Lcom/android/inputmethod/latin/Dictionary;

    move-object/from16 v19, v0

    if-eqz v19, :cond_13

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mUserDictionary:Lcom/android/inputmethod/latin/Dictionary;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mNextLettersFrequencies:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/inputmethod/latin/Dictionary;->getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;[I)V

    .line 292
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mContactsDictionary:Lcom/android/inputmethod/latin/Dictionary;

    move-object/from16 v19, v0

    if-eqz v19, :cond_14

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mContactsDictionary:Lcom/android/inputmethod/latin/Dictionary;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mNextLettersFrequencies:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/inputmethod/latin/Dictionary;->getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;[I)V

    .line 296
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mOriginalWord:Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/Suggest;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v19

    if-eqz v19, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_16

    .line 299
    :cond_15
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/latin/Suggest;->mHaveCorrection:Z

    .line 302
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/BinaryDictionary;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mNextLettersFrequencies:[I

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    move-object/from16 v2, p0

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/inputmethod/latin/BinaryDictionary;->getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;[I)V

    .line 303
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_6

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    if-lez v19, :cond_6

    .line 305
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/inputmethod/latin/Suggest;->mHaveCorrection:Z

    goto/16 :goto_3

    .line 330
    .end local p2
    .end local p3
    .restart local v5       #autoText:Ljava/lang/CharSequence;
    .restart local v12       #i:I
    .restart local v15       #max:I
    .restart local v18       #suggestedWord:Ljava/lang/String;
    :cond_18
    const/16 v19, 0x0

    move/from16 v7, v19

    goto/16 :goto_5

    .line 332
    .restart local v7       #canAdd:Z
    :cond_19
    const/16 v19, 0x0

    goto/16 :goto_6

    .line 335
    :cond_1a
    const/16 v19, 0x0

    goto/16 :goto_7

    .line 345
    .end local v5           #autoText:Ljava/lang/CharSequence;
    .end local v7           #canAdd:Z
    .end local v12           #i:I
    .end local v15           #max:I
    .end local v18           #suggestedWord:Ljava/lang/String;
    :cond_1b
    invoke-direct/range {p0 .. p0}, Lcom/android/inputmethod/latin/Suggest;->removeDupes()V

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    return-object v19

    .restart local v6       #bigramSuggestionSize:I
    .restart local v9       #count:I
    .restart local v10       #currentChar:C
    .restart local v11       #currentCharUpper:C
    .restart local v12       #i:I
    .restart local v13       #lowerPrevWord:Ljava/lang/CharSequence;
    .restart local p2
    :cond_1c
    move v8, v9

    .end local v9           #count:I
    .restart local v8       #count:I
    goto/16 :goto_3
.end method

.method public hasMainDictionary()Z
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/BinaryDictionary;

    invoke-virtual {v0}, Lcom/android/inputmethod/latin/BinaryDictionary;->getSize()I

    move-result v0

    const v1, 0x30d40

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMinimalCorrection()Z
    .locals 1

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/Suggest;->mHaveCorrection:Z

    return v0
.end method

.method public isValidWord(Ljava/lang/CharSequence;)Z
    .locals 2
    .parameter "word"

    .prologue
    const/4 v1, 0x0

    .line 503
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    .line 506
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mMainDict:Lcom/android/inputmethod/latin/BinaryDictionary;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/BinaryDictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mUserDictionary:Lcom/android/inputmethod/latin/Dictionary;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mUserDictionary:Lcom/android/inputmethod/latin/Dictionary;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mAutoDictionary:Lcom/android/inputmethod/latin/Dictionary;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mAutoDictionary:Lcom/android/inputmethod/latin/Dictionary;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mContactsDictionary:Lcom/android/inputmethod/latin/Dictionary;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/inputmethod/latin/Suggest;->mContactsDictionary:Lcom/android/inputmethod/latin/Dictionary;

    invoke-virtual {v0, p1}, Lcom/android/inputmethod/latin/Dictionary;->isValidWord(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public setAutoDictionary(Lcom/android/inputmethod/latin/Dictionary;)V
    .locals 0
    .parameter "autoDictionary"

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/inputmethod/latin/Suggest;->mAutoDictionary:Lcom/android/inputmethod/latin/Dictionary;

    .line 160
    return-void
.end method

.method public setAutoTextEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/Suggest;->mAutoTextEnabled:Z

    .line 125
    return-void
.end method

.method public setContactsDictionary(Lcom/android/inputmethod/latin/Dictionary;)V
    .locals 0
    .parameter "userDictionary"

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/inputmethod/latin/Suggest;->mContactsDictionary:Lcom/android/inputmethod/latin/Dictionary;

    .line 156
    return-void
.end method

.method public setCorrectionMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 132
    iput p1, p0, Lcom/android/inputmethod/latin/Suggest;->mCorrectionMode:I

    .line 133
    return-void
.end method

.method public setMaxSuggestions(I)V
    .locals 3
    .parameter "maxSuggestions"

    .prologue
    .line 173
    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const/16 v1, 0x64

    if-le p1, v1, :cond_1

    .line 174
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "maxSuggestions must be between 1 and 100"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 176
    :cond_1
    iput p1, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    .line 177
    iget v1, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mPriorities:[I

    .line 178
    const/16 v1, 0x3c

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mBigramPriorities:[I

    .line 179
    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mSuggestions:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    invoke-direct {p0, v1, v2}, Lcom/android/inputmethod/latin/Suggest;->collectGarbage(Ljava/util/ArrayList;I)V

    .line 180
    :goto_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/inputmethod/latin/Suggest;->mPrefMaxSuggestions:I

    if-ge v1, v2, :cond_2

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/Suggest;->getApproxMaxWordLength()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 182
    .local v0, sb:Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/inputmethod/latin/Suggest;->mStringPool:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 184
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_2
    return-void
.end method

.method public setUserBigramDictionary(Lcom/android/inputmethod/latin/Dictionary;)V
    .locals 0
    .parameter "userBigramDictionary"

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/inputmethod/latin/Suggest;->mUserBigramDictionary:Lcom/android/inputmethod/latin/Dictionary;

    .line 164
    return-void
.end method

.method public setUserDictionary(Lcom/android/inputmethod/latin/Dictionary;)V
    .locals 0
    .parameter "userDictionary"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/android/inputmethod/latin/Suggest;->mUserDictionary:Lcom/android/inputmethod/latin/Dictionary;

    .line 149
    return-void
.end method
