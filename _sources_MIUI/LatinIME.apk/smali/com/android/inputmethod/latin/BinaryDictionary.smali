.class public Lcom/android/inputmethod/latin/BinaryDictionary;
.super Lcom/android/inputmethod/latin/Dictionary;
.source "BinaryDictionary.java"


# static fields
.field private static final ENABLE_MISSED_CHARACTERS:Z = true

.field private static final MAX_ALTERNATIVES:I = 0x10

.field private static final MAX_BIGRAMS:I = 0x3c

.field private static final MAX_WORDS:I = 0x12

.field protected static final MAX_WORD_LENGTH:I = 0x30

.field private static final TAG:Ljava/lang/String; = "BinaryDictionary"

.field private static final TYPED_LETTER_MULTIPLIER:I = 0x2


# instance fields
.field private mDicTypeId:I

.field private mDictLength:I

.field private mFrequencies:[I

.field private mFrequencies_bigrams:[I

.field private mInputCodes:[I

.field private mNativeDict:I

.field private mNativeDictDirectBuffer:Ljava/nio/ByteBuffer;

.field private mOutputChars:[C

.field private mOutputChars_bigrams:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    :try_start_0
    const-string v1, "jni_latinime"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 66
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    const-string v1, "BinaryDictionary"

    const-string v2, "Could not load native library jni_latinime"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/nio/ByteBuffer;I)V
    .locals 2
    .parameter "context"
    .parameter "byteBuffer"
    .parameter "dicTypeId"

    .prologue
    const/4 v1, 0x2

    .line 87
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Dictionary;-><init>()V

    .line 53
    const/16 v0, 0x300

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mInputCodes:[I

    .line 54
    const/16 v0, 0x360

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars:[C

    .line 55
    const/16 v0, 0xb40

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars_bigrams:[C

    .line 56
    const/16 v0, 0x12

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mFrequencies:[I

    .line 57
    const/16 v0, 0x3c

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mFrequencies_bigrams:[I

    .line 88
    if-eqz p2, :cond_0

    .line 89
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iput-object p2, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDictDirectBuffer:Ljava/nio/ByteBuffer;

    .line 96
    :goto_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mDictLength:I

    .line 97
    iget-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDictDirectBuffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0, v0, v1, v1}, Lcom/android/inputmethod/latin/BinaryDictionary;->openNative(Ljava/nio/ByteBuffer;II)I

    move-result v0

    iput v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    .line 100
    :cond_0
    iput p3, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mDicTypeId:I

    .line 101
    return-void

    .line 92
    :cond_1
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDictDirectBuffer:Ljava/nio/ByteBuffer;

    .line 93
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 94
    iget-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDictDirectBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;[II)V
    .locals 1
    .parameter "context"
    .parameter "resId"
    .parameter "dicTypeId"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/android/inputmethod/latin/Dictionary;-><init>()V

    .line 53
    const/16 v0, 0x300

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mInputCodes:[I

    .line 54
    const/16 v0, 0x360

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars:[C

    .line 55
    const/16 v0, 0xb40

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars_bigrams:[C

    .line 56
    const/16 v0, 0x12

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mFrequencies:[I

    .line 57
    const/16 v0, 0x3c

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mFrequencies_bigrams:[I

    .line 76
    if-eqz p2, :cond_0

    array-length v0, p2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p2, v0

    if-eqz v0, :cond_0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/BinaryDictionary;->loadDictionary(Landroid/content/Context;[I)V

    .line 79
    :cond_0
    iput p3, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mDicTypeId:I

    .line 80
    return-void
.end method

.method private native closeNative(I)V
.end method

.method private native getBigramsNative(I[CI[II[C[IIII)I
.end method

.method private native getSuggestionsNative(I[II[C[IIIII[II)I
.end method

.method private native isValidWordNative(I[CI)Z
.end method

.method private final loadDictionary(Landroid/content/Context;[I)V
    .locals 10
    .parameter "context"
    .parameter "resId"

    .prologue
    const-string v9, "Failed to close input stream"

    const-string v8, "BinaryDictionary"

    .line 115
    const/4 v3, 0x0

    .line 118
    .local v3, is:[Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 119
    .local v4, total:I
    :try_start_0
    array-length v5, p2

    new-array v3, v5, [Ljava/io/InputStream;

    .line 120
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, p2

    if-ge v2, v5, :cond_0

    .line 121
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    aget v6, p2, v2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    aput-object v5, v3, v2

    .line 122
    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v5

    add-int/2addr v4, v5

    .line 120
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    :cond_0
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    iput-object v5, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDictDirectBuffer:Ljava/nio/ByteBuffer;

    .line 127
    const/4 v1, 0x0

    .line 128
    .local v1, got:I
    const/4 v2, 0x0

    :goto_1
    array-length v5, p2

    if-ge v2, v5, :cond_1

    .line 129
    aget-object v5, v3, v2

    invoke-static {v5}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object v5

    iget-object v6, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDictDirectBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {v5, v6}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v5

    add-int/2addr v1, v5

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 131
    :cond_1
    if-eq v1, v4, :cond_2

    .line 132
    const-string v5, "BinaryDictionary"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes, expected "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_2
    if-eqz v3, :cond_3

    .line 143
    const/4 v2, 0x0

    :goto_3
    :try_start_1
    array-length v5, v3

    if-ge v2, v5, :cond_3

    .line 144
    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 134
    :cond_2
    :try_start_2
    iget-object v5, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDictDirectBuffer:Ljava/nio/ByteBuffer;

    const/4 v6, 0x2

    const/4 v7, 0x2

    invoke-direct {p0, v5, v6, v7}, Lcom/android/inputmethod/latin/BinaryDictionary;->openNative(Ljava/nio/ByteBuffer;II)I

    move-result v5

    iput v5, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    .line 136
    iput v4, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mDictLength:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 138
    .end local v1           #got:I
    .end local v2           #i:I
    :catch_0
    move-exception v5

    move-object v0, v5

    .line 139
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    const-string v5, "BinaryDictionary"

    const-string v6, "No available memory for binary dictionary"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 142
    if-eqz v3, :cond_3

    .line 143
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_4
    :try_start_4
    array-length v5, v3

    if-ge v2, v5, :cond_3

    .line 144
    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 147
    .end local v0           #e:Ljava/io/IOException;
    .restart local v1       #got:I
    :catch_1
    move-exception v5

    move-object v0, v5

    .line 148
    .restart local v0       #e:Ljava/io/IOException;
    const-string v5, "BinaryDictionary"

    const-string v5, "Failed to close input stream"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #got:I
    .end local v2           #i:I
    :cond_3
    :goto_5
    return-void

    .line 147
    .restart local v0       #e:Ljava/io/IOException;
    .restart local v2       #i:I
    :catch_2
    move-exception v5

    move-object v0, v5

    .line 148
    const-string v5, "BinaryDictionary"

    const-string v5, "Failed to close input stream"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 141
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #i:I
    :catchall_0
    move-exception v5

    .line 142
    if-eqz v3, :cond_4

    .line 143
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_6
    :try_start_5
    array-length v6, v3

    if-ge v2, v6, :cond_4

    .line 144
    aget-object v6, v3, v2

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 143
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 147
    :catch_3
    move-exception v6

    move-object v0, v6

    .line 148
    .restart local v0       #e:Ljava/io/IOException;
    const-string v6, "BinaryDictionary"

    const-string v6, "Failed to close input stream"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #i:I
    :cond_4
    throw v5
.end method

.method private native openNative(Ljava/nio/ByteBuffer;II)I
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    .prologue
    .line 250
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    if-eqz v0, :cond_0

    .line 251
    iget v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    invoke-direct {p0, v0}, Lcom/android/inputmethod/latin/BinaryDictionary;->closeNative(I)V

    .line 252
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    :cond_0
    monitor-exit p0

    return-void

    .line 250
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/BinaryDictionary;->close()V

    .line 259
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 260
    return-void
.end method

.method public getBigrams(Lcom/android/inputmethod/latin/WordComposer;Ljava/lang/CharSequence;Lcom/android/inputmethod/latin/Dictionary$WordCallback;[I)V
    .locals 18
    .parameter "codes"
    .parameter "previousWord"
    .parameter "callback"
    .parameter "nextLettersFrequencies"

    .prologue
    .line 158
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    .line 159
    .local v4, chars:[C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars_bigrams:[C

    move-object v2, v0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([CC)V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mFrequencies_bigrams:[I

    move-object v2, v0

    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 162
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v7

    .line 163
    .local v7, codesSize:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mInputCodes:[I

    move-object v2, v0

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 164
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/WordComposer;->getCodesAt(I)[I

    move-result-object v15

    .line 165
    .local v15, alternatives:[I
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mInputCodes:[I

    move-object v3, v0

    const/4 v5, 0x0

    array-length v6, v15

    const/16 v8, 0x10

    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v15, v2, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 168
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    move v3, v0

    array-length v5, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mInputCodes:[I

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars_bigrams:[C

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mFrequencies_bigrams:[I

    move-object v9, v0

    const/16 v10, 0x30

    const/16 v11, 0x3c

    const/16 v12, 0x10

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v12}, Lcom/android/inputmethod/latin/BinaryDictionary;->getBigramsNative(I[CI[II[C[IIII)I

    move-result v16

    .line 172
    .local v16, count:I
    const/16 v17, 0x0

    .local v17, j:I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_0

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mFrequencies_bigrams:[I

    move-object v2, v0

    aget v2, v2, v17

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    .line 184
    :cond_0
    return-void

    .line 174
    :cond_1
    mul-int/lit8 v10, v17, 0x30

    .line 175
    .local v10, start:I
    const/4 v11, 0x0

    .line 176
    .local v11, len:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars_bigrams:[C

    move-object v2, v0

    add-int v3, v10, v11

    aget-char v2, v2, v3

    if-eqz v2, :cond_2

    .line 177
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 179
    :cond_2
    if-lez v11, :cond_3

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars_bigrams:[C

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mFrequencies_bigrams:[I

    move-object v2, v0

    aget v12, v2, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mDicTypeId:I

    move v13, v0

    sget-object v14, Lcom/android/inputmethod/latin/Dictionary$DataType;->BIGRAM:Lcom/android/inputmethod/latin/Dictionary$DataType;

    move-object/from16 v8, p3

    invoke-interface/range {v8 .. v14}, Lcom/android/inputmethod/latin/Dictionary$WordCallback;->addWord([CIIIILcom/android/inputmethod/latin/Dictionary$DataType;)Z

    .line 172
    :cond_3
    add-int/lit8 v17, v17, 0x1

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mDictLength:I

    return v0
.end method

.method public getWords(Lcom/android/inputmethod/latin/WordComposer;Lcom/android/inputmethod/latin/Dictionary$WordCallback;[I)V
    .locals 27
    .parameter "codes"
    .parameter "callback"
    .parameter "nextLettersFrequencies"

    .prologue
    .line 189
    invoke-virtual/range {p1 .. p1}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v8

    .line 191
    .local v8, codesSize:I
    const/16 v5, 0x2f

    if-le v8, v5, :cond_1

    .line 235
    :cond_0
    return-void

    .line 193
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mInputCodes:[I

    move-object v5, v0

    const/4 v6, -0x1

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    .line 194
    const/16 v24, 0x0

    .local v24, i:I
    :goto_0
    move/from16 v0, v24

    move v1, v8

    if-ge v0, v1, :cond_2

    .line 195
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/inputmethod/latin/WordComposer;->getCodesAt(I)[I

    move-result-object v22

    .line 196
    .local v22, alternatives:[I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mInputCodes:[I

    move-object v6, v0

    mul-int/lit8 v7, v24, 0x10

    move-object/from16 v0, v22

    array-length v0, v0

    move v9, v0

    const/16 v10, 0x10

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    move-object/from16 v0, v22

    move v1, v5

    move-object v2, v6

    move v3, v7

    move v4, v9

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    .line 199
    .end local v22           #alternatives:[I
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars:[C

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([CC)V

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mFrequencies:[I

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([II)V

    .line 202
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mInputCodes:[I

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars:[C

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mFrequencies:[I

    move-object v10, v0

    const/16 v11, 0x30

    const/16 v12, 0x12

    const/16 v13, 0x10

    const/4 v14, -0x1

    if-eqz p3, :cond_4

    move-object/from16 v0, p3

    array-length v0, v0

    move v5, v0

    move/from16 v16, v5

    :goto_1
    move-object/from16 v5, p0

    move-object/from16 v15, p3

    invoke-direct/range {v5 .. v16}, Lcom/android/inputmethod/latin/BinaryDictionary;->getSuggestionsNative(I[II[C[IIIII[II)I

    move-result v23

    .line 212
    .local v23, count:I
    const/4 v5, 0x5

    move/from16 v0, v23

    move v1, v5

    if-ge v0, v1, :cond_3

    .line 213
    const/4 v14, 0x0

    .local v14, skip:I
    :goto_2
    if-ge v14, v8, :cond_3

    .line 214
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mInputCodes:[I

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars:[C

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mFrequencies:[I

    move-object v10, v0

    const/16 v11, 0x30

    const/16 v12, 0x12

    const/16 v13, 0x10

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v16}, Lcom/android/inputmethod/latin/BinaryDictionary;->getSuggestionsNative(I[II[C[IIIII[II)I

    move-result v26

    .line 218
    .local v26, tempCount:I
    move/from16 v0, v23

    move/from16 v1, v26

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v23

    .line 219
    if-lez v26, :cond_5

    .line 223
    .end local v14           #skip:I
    .end local v26           #tempCount:I
    :cond_3
    const/16 v25, 0x0

    .local v25, j:I
    :goto_3
    move/from16 v0, v25

    move/from16 v1, v23

    if-ge v0, v1, :cond_0

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mFrequencies:[I

    move-object v5, v0

    aget v5, v5, v25

    const/4 v6, 0x1

    if-lt v5, v6, :cond_0

    .line 225
    mul-int/lit8 v17, v25, 0x30

    .line 226
    .local v17, start:I
    const/16 v18, 0x0

    .line 227
    .local v18, len:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars:[C

    move-object v5, v0

    add-int v6, v17, v18

    aget-char v5, v5, v6

    if-eqz v5, :cond_6

    .line 228
    add-int/lit8 v18, v18, 0x1

    goto :goto_4

    .line 202
    .end local v17           #start:I
    .end local v18           #len:I
    .end local v23           #count:I
    .end local v25           #j:I
    :cond_4
    const/4 v5, 0x0

    move/from16 v16, v5

    goto :goto_1

    .line 213
    .restart local v14       #skip:I
    .restart local v23       #count:I
    .restart local v26       #tempCount:I
    :cond_5
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 230
    .end local v14           #skip:I
    .end local v26           #tempCount:I
    .restart local v17       #start:I
    .restart local v18       #len:I
    .restart local v25       #j:I
    :cond_6
    if-lez v18, :cond_7

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mOutputChars:[C

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mFrequencies:[I

    move-object v5, v0

    aget v19, v5, v25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/inputmethod/latin/BinaryDictionary;->mDicTypeId:I

    move/from16 v20, v0

    sget-object v21, Lcom/android/inputmethod/latin/Dictionary$DataType;->UNIGRAM:Lcom/android/inputmethod/latin/Dictionary$DataType;

    move-object/from16 v15, p2

    invoke-interface/range {v15 .. v21}, Lcom/android/inputmethod/latin/Dictionary$WordCallback;->addWord([CIIIILcom/android/inputmethod/latin/Dictionary$DataType;)Z

    .line 223
    :cond_7
    add-int/lit8 v25, v25, 0x1

    goto :goto_3
.end method

.method public isValidWord(Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "word"

    .prologue
    .line 239
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 241
    :goto_0
    return v1

    .line 240
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 241
    .local v0, chars:[C
    iget v1, p0, Lcom/android/inputmethod/latin/BinaryDictionary;->mNativeDict:I

    array-length v2, v0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/inputmethod/latin/BinaryDictionary;->isValidWordNative(I[CI)Z

    move-result v1

    goto :goto_0
.end method
