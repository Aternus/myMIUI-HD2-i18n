.class public Lcom/android/inputmethod/latin/EditingUtil;
.super Ljava/lang/Object;
.source "EditingUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;,
        Lcom/android/inputmethod/latin/EditingUtil$Range;
    }
.end annotation


# static fields
.field private static final LOOKBACK_CHARACTER_NUM:I = 0xf

.field private static sMethodGetSelectedText:Ljava/lang/reflect/Method;

.field private static sMethodSetComposingRegion:Ljava/lang/reflect/Method;

.field private static sMethodsInitialized:Z

.field private static final spaceRegex:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 174
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/EditingUtil;->spaceRegex:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendText(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V
    .locals 5
    .parameter "connection"
    .parameter "newText"

    .prologue
    const/4 v3, 0x1

    const-string v4, " "

    .line 49
    if-nez p0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 54
    :cond_0
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 57
    const/4 v1, 0x0

    invoke-interface {p0, v3, v1}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 58
    .local v0, charBeforeCursor:Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    const-string v1, " "

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 64
    :cond_1
    invoke-interface {p0, p1, v3}, Landroid/view/inputmethod/InputConnection;->setComposingText(Ljava/lang/CharSequence;I)Z

    goto :goto_0
.end method

.method public static deleteWordAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)V
    .locals 5
    .parameter "connection"
    .parameter "separators"

    .prologue
    .line 97
    const/4 v2, 0x0

    invoke-static {p0, p1, v2}, Lcom/android/inputmethod/latin/EditingUtil;->getWordRangeAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Lcom/android/inputmethod/latin/EditingUtil$Range;)Lcom/android/inputmethod/latin/EditingUtil$Range;

    move-result-object v1

    .line 98
    .local v1, range:Lcom/android/inputmethod/latin/EditingUtil$Range;
    if-nez v1, :cond_0

    .line 106
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-interface {p0}, Landroid/view/inputmethod/InputConnection;->finishComposingText()Z

    .line 103
    invoke-static {p0}, Lcom/android/inputmethod/latin/EditingUtil;->getCursorPosition(Landroid/view/inputmethod/InputConnection;)I

    move-result v2

    iget v3, v1, Lcom/android/inputmethod/latin/EditingUtil$Range;->charsBefore:I

    sub-int v0, v2, v3

    .line 104
    .local v0, newCursor:I
    invoke-interface {p0, v0, v0}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 105
    const/4 v2, 0x0

    iget v3, v1, Lcom/android/inputmethod/latin/EditingUtil$Range;->charsBefore:I

    iget v4, v1, Lcom/android/inputmethod/latin/EditingUtil$Range;->charsAfter:I

    add-int/2addr v3, v4

    invoke-interface {p0, v2, v3}, Landroid/view/inputmethod/InputConnection;->deleteSurroundingText(II)Z

    goto :goto_0
.end method

.method private static getCursorPosition(Landroid/view/inputmethod/InputConnection;)I
    .locals 3
    .parameter "connection"

    .prologue
    .line 68
    new-instance v1, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v1}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v2, 0x0

    invoke-interface {p0, v1, v2}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v0

    .line 70
    .local v0, extracted:Landroid/view/inputmethod/ExtractedText;
    if-nez v0, :cond_0

    .line 71
    const/4 v1, -0x1

    .line 73
    :goto_0
    return v1

    :cond_0
    iget v1, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    iget v2, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    add-int/2addr v1, v2

    goto :goto_0
.end method

.method public static getPreviousWord(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 8
    .parameter "connection"
    .parameter "sentenceSeperators"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 179
    const/16 v3, 0xf

    const/4 v4, 0x0

    invoke-interface {p0, v3, v4}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 180
    .local v1, prev:Ljava/lang/CharSequence;
    if-nez v1, :cond_0

    move-object v3, v7

    .line 191
    :goto_0
    return-object v3

    .line 183
    :cond_0
    sget-object v3, Lcom/android/inputmethod/latin/EditingUtil;->spaceRegex:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, w:[Ljava/lang/String;
    array-length v3, v2

    if-lt v3, v6, :cond_2

    array-length v3, v2

    sub-int/2addr v3, v6

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 185
    array-length v3, v2

    sub-int/2addr v3, v6

    aget-object v3, v2, v3

    array-length v4, v2

    sub-int/2addr v4, v6

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 186
    .local v0, lastChar:C
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v7

    .line 187
    goto :goto_0

    .line 189
    :cond_1
    array-length v3, v2

    sub-int/2addr v3, v6

    aget-object v3, v2, v3

    goto :goto_0

    .end local v0           #lastChar:C
    :cond_2
    move-object v3, v7

    .line 191
    goto :goto_0
.end method

.method private static getSelectedText(Landroid/view/inputmethod/InputConnection;II)Ljava/lang/CharSequence;
    .locals 7
    .parameter "ic"
    .parameter "selStart"
    .parameter "selEnd"

    .prologue
    const/4 v6, 0x0

    .line 289
    const/4 v0, 0x0

    .line 290
    .local v0, result:Ljava/lang/CharSequence;
    sget-boolean v2, Lcom/android/inputmethod/latin/EditingUtil;->sMethodsInitialized:Z

    if-nez v2, :cond_0

    .line 291
    invoke-static {}, Lcom/android/inputmethod/latin/EditingUtil;->initializeMethodsForReflection()V

    .line 293
    :cond_0
    sget-object v2, Lcom/android/inputmethod/latin/EditingUtil;->sMethodGetSelectedText:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 295
    :try_start_0
    sget-object v2, Lcom/android/inputmethod/latin/EditingUtil;->sMethodGetSelectedText:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #result:Ljava/lang/CharSequence;
    check-cast v0, Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v0       #result:Ljava/lang/CharSequence;
    move-object v1, v0

    .line 312
    .end local v0           #result:Ljava/lang/CharSequence;
    .local v1, result:Ljava/lang/CharSequence;
    :goto_0
    return-object v1

    .line 301
    .end local v1           #result:Ljava/lang/CharSequence;
    :catch_0
    move-exception v2

    .line 309
    :cond_1
    :goto_1
    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    .line 310
    sub-int v2, p2, p1

    invoke-interface {p0, v2, v6}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 311
    .restart local v0       #result:Ljava/lang/CharSequence;
    invoke-interface {p0, p1, p2}, Landroid/view/inputmethod/InputConnection;->setSelection(II)Z

    move-object v1, v0

    .line 312
    .end local v0           #result:Ljava/lang/CharSequence;
    .restart local v1       #result:Ljava/lang/CharSequence;
    goto :goto_0

    .line 299
    .end local v1           #result:Ljava/lang/CharSequence;
    :catch_1
    move-exception v2

    goto :goto_1

    .line 297
    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method public static getWordAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Lcom/android/inputmethod/latin/EditingUtil$Range;)Ljava/lang/String;
    .locals 2
    .parameter "connection"
    .parameter "separators"
    .parameter "range"

    .prologue
    .line 86
    invoke-static {p0, p1, p2}, Lcom/android/inputmethod/latin/EditingUtil;->getWordRangeAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Lcom/android/inputmethod/latin/EditingUtil$Range;)Lcom/android/inputmethod/latin/EditingUtil$Range;

    move-result-object v0

    .line 87
    .local v0, r:Lcom/android/inputmethod/latin/EditingUtil$Range;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/android/inputmethod/latin/EditingUtil$Range;->word:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getWordAtCursorOrSelection(Landroid/view/inputmethod/InputConnection;IILjava/lang/String;)Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;
    .locals 11
    .parameter "ic"
    .parameter "selStart"
    .parameter "selEnd"
    .parameter "wordSeparators"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 224
    if-ne p1, p2, :cond_0

    .line 226
    new-instance v4, Lcom/android/inputmethod/latin/EditingUtil$Range;

    invoke-direct {v4}, Lcom/android/inputmethod/latin/EditingUtil$Range;-><init>()V

    .line 227
    .local v4, range:Lcom/android/inputmethod/latin/EditingUtil$Range;
    invoke-static {p0, p3, v4}, Lcom/android/inputmethod/latin/EditingUtil;->getWordAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Lcom/android/inputmethod/latin/EditingUtil$Range;)Ljava/lang/String;

    move-result-object v6

    .line 228
    .local v6, touching:Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 229
    new-instance v5, Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;

    invoke-direct {v5}, Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;-><init>()V

    .line 230
    .local v5, selWord:Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;
    iput-object v6, v5, Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    .line 231
    iget v7, v4, Lcom/android/inputmethod/latin/EditingUtil$Range;->charsBefore:I

    sub-int v7, p1, v7

    iput v7, v5, Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;->start:I

    .line 232
    iget v7, v4, Lcom/android/inputmethod/latin/EditingUtil$Range;->charsAfter:I

    add-int/2addr v7, p2

    iput v7, v5, Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;->end:I

    move-object v7, v5

    .line 265
    .end local v4           #range:Lcom/android/inputmethod/latin/EditingUtil$Range;
    .end local v5           #selWord:Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;
    .end local v6           #touching:Ljava/lang/CharSequence;
    :goto_0
    return-object v7

    .line 237
    :cond_0
    invoke-interface {p0, v10, v9}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 238
    .local v1, charsBefore:Ljava/lang/CharSequence;
    invoke-static {v1, p3}, Lcom/android/inputmethod/latin/EditingUtil;->isWordBoundary(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_1

    move-object v7, v8

    .line 239
    goto :goto_0

    .line 243
    :cond_1
    invoke-interface {p0, v10, v9}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 244
    .local v0, charsAfter:Ljava/lang/CharSequence;
    invoke-static {v0, p3}, Lcom/android/inputmethod/latin/EditingUtil;->isWordBoundary(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2

    move-object v7, v8

    .line 245
    goto :goto_0

    .line 249
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/android/inputmethod/latin/EditingUtil;->getSelectedText(Landroid/view/inputmethod/InputConnection;II)Ljava/lang/CharSequence;

    move-result-object v6

    .line 250
    .restart local v6       #touching:Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v8

    goto :goto_0

    .line 252
    :cond_3
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 253
    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_5

    .line 254
    add-int/lit8 v7, v2, 0x1

    invoke-interface {v6, v2, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v8

    .line 255
    goto :goto_0

    .line 253
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 259
    :cond_5
    new-instance v5, Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;

    invoke-direct {v5}, Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;-><init>()V

    .line 260
    .restart local v5       #selWord:Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;
    iput p1, v5, Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;->start:I

    .line 261
    iput p2, v5, Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;->end:I

    .line 262
    iput-object v6, v5, Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;->word:Ljava/lang/CharSequence;

    move-object v7, v5

    .line 263
    goto :goto_0

    .end local v0           #charsAfter:Ljava/lang/CharSequence;
    .end local v1           #charsBefore:Ljava/lang/CharSequence;
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v5           #selWord:Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;
    .restart local v4       #range:Lcom/android/inputmethod/latin/EditingUtil$Range;
    :cond_6
    move-object v7, v8

    .line 265
    goto :goto_0
.end method

.method private static getWordRangeAtCursor(Landroid/view/inputmethod/InputConnection;Ljava/lang/String;Lcom/android/inputmethod/latin/EditingUtil$Range;)Lcom/android/inputmethod/latin/EditingUtil$Range;
    .locals 12
    .parameter "connection"
    .parameter "sep"
    .parameter "range"

    .prologue
    const/16 v7, 0x3e8

    const/4 v11, 0x0

    const/4 v10, 0x0

    .line 138
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v7, v11

    .line 167
    :goto_0
    return-object v7

    .line 141
    :cond_1
    invoke-interface {p0, v7, v10}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 142
    .local v1, before:Ljava/lang/CharSequence;
    invoke-interface {p0, v7, v10}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 143
    .local v0, after:Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    :cond_2
    move-object v7, v11

    .line 144
    goto :goto_0

    .line 148
    :cond_3
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 149
    .local v5, start:I
    :goto_1
    if-lez v5, :cond_4

    const/4 v7, 0x1

    sub-int v7, v5, v7

    invoke-interface {v1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7, p1}, Lcom/android/inputmethod/latin/EditingUtil;->isWhitespace(ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_4

    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 152
    :cond_4
    const/4 v3, -0x1

    .line 153
    .local v3, end:I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-ge v3, v7, :cond_6

    invoke-interface {v0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7, p1}, Lcom/android/inputmethod/latin/EditingUtil;->isWhitespace(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 155
    :cond_6
    invoke-static {p0}, Lcom/android/inputmethod/latin/EditingUtil;->getCursorPosition(Landroid/view/inputmethod/InputConnection;)I

    move-result v2

    .line 156
    .local v2, cursor:I
    if-ltz v5, :cond_8

    add-int v7, v2, v3

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    add-int/2addr v8, v9

    if-gt v7, v8, :cond_8

    .line 157
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-virtual {v8, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 160
    .local v6, word:Ljava/lang/String;
    if-eqz p2, :cond_7

    move-object v4, p2

    .line 161
    .local v4, returnRange:Lcom/android/inputmethod/latin/EditingUtil$Range;
    :goto_2
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sub-int/2addr v7, v5

    iput v7, v4, Lcom/android/inputmethod/latin/EditingUtil$Range;->charsBefore:I

    .line 162
    iput v3, v4, Lcom/android/inputmethod/latin/EditingUtil$Range;->charsAfter:I

    .line 163
    iput-object v6, v4, Lcom/android/inputmethod/latin/EditingUtil$Range;->word:Ljava/lang/String;

    move-object v7, v4

    .line 164
    goto :goto_0

    .line 160
    .end local v4           #returnRange:Lcom/android/inputmethod/latin/EditingUtil$Range;
    :cond_7
    new-instance v7, Lcom/android/inputmethod/latin/EditingUtil$Range;

    invoke-direct {v7}, Lcom/android/inputmethod/latin/EditingUtil$Range;-><init>()V

    move-object v4, v7

    goto :goto_2

    .end local v6           #word:Ljava/lang/String;
    :cond_8
    move-object v7, v11

    .line 167
    goto/16 :goto_0
.end method

.method private static initializeMethodsForReflection()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const-class v0, Landroid/view/inputmethod/InputConnection;

    .line 275
    :try_start_0
    const-class v0, Landroid/view/inputmethod/InputConnection;

    const-string v1, "getSelectedText"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/EditingUtil;->sMethodGetSelectedText:Ljava/lang/reflect/Method;

    .line 276
    const-class v0, Landroid/view/inputmethod/InputConnection;

    const-string v1, "setComposingRegion"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/android/inputmethod/latin/EditingUtil;->sMethodSetComposingRegion:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    :goto_0
    sput-boolean v5, Lcom/android/inputmethod/latin/EditingUtil;->sMethodsInitialized:Z

    .line 282
    return-void

    .line 278
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static isWhitespace(ILjava/lang/String;)Z
    .locals 1
    .parameter "code"
    .parameter "whitespace"

    .prologue
    .line 171
    int-to-char v0, p0

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static isWordBoundary(Ljava/lang/CharSequence;Ljava/lang/String;)Z
    .locals 1
    .parameter "singleChar"
    .parameter "wordSeparators"

    .prologue
    .line 209
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static underlineWord(Landroid/view/inputmethod/InputConnection;Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;)V
    .locals 4
    .parameter "ic"
    .parameter "word"

    .prologue
    .line 322
    sget-boolean v0, Lcom/android/inputmethod/latin/EditingUtil;->sMethodsInitialized:Z

    if-nez v0, :cond_0

    .line 323
    invoke-static {}, Lcom/android/inputmethod/latin/EditingUtil;->initializeMethodsForReflection()V

    .line 325
    :cond_0
    sget-object v0, Lcom/android/inputmethod/latin/EditingUtil;->sMethodSetComposingRegion:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 327
    :try_start_0
    sget-object v0, Lcom/android/inputmethod/latin/EditingUtil;->sMethodSetComposingRegion:Ljava/lang/reflect/Method;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p1, Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;->start:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p1, Lcom/android/inputmethod/latin/EditingUtil$SelectedWord;->end:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    :cond_1
    :goto_0
    return-void

    .line 332
    :catch_0
    move-exception v0

    goto :goto_0

    .line 330
    :catch_1
    move-exception v0

    goto :goto_0

    .line 328
    :catch_2
    move-exception v0

    goto :goto_0
.end method
