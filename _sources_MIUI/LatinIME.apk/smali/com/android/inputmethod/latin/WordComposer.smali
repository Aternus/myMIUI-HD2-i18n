.class public Lcom/android/inputmethod/latin/WordComposer;
.super Ljava/lang/Object;
.source "WordComposer.java"


# instance fields
.field private mAutoCapitalized:Z

.field private mCapsCount:I

.field private final mCodes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end field

.field private mIsFirstCharCapitalized:Z

.field private mPreferredWord:Ljava/lang/String;

.field private final mTypedWord:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    .line 49
    return-void
.end method

.method constructor <init>(Lcom/android/inputmethod/latin/WordComposer;)V
    .locals 2
    .parameter "copy"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    .line 53
    iget-object v0, p1, Lcom/android/inputmethod/latin/WordComposer;->mPreferredWord:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mPreferredWord:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    .line 55
    iget v0, p1, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    iput v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    .line 56
    iget-boolean v0, p1, Lcom/android/inputmethod/latin/WordComposer;->mAutoCapitalized:Z

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mAutoCapitalized:Z

    .line 57
    iget-boolean v0, p1, Lcom/android/inputmethod/latin/WordComposer;->mIsFirstCharCapitalized:Z

    iput-boolean v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsFirstCharCapitalized:Z

    .line 58
    return-void
.end method

.method private correctPrimaryJuxtapos(I[I)V
    .locals 4
    .parameter "primaryCode"
    .parameter "codes"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 108
    array-length v0, p2

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    aget v0, p2, v2

    if-lez v0, :cond_0

    aget v0, p2, v3

    if-lez v0, :cond_0

    aget v0, p2, v2

    if-eq v0, p1, :cond_0

    aget v0, p2, v3

    if-ne v0, p1, :cond_0

    .line 110
    aget v0, p2, v2

    aput v0, p2, v3

    .line 111
    aput p1, p2, v2

    goto :goto_0
.end method


# virtual methods
.method public add(I[I)V
    .locals 2
    .parameter "primaryCode"
    .parameter "codes"

    .prologue
    .line 94
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    invoke-direct {p0, p1, p2}, Lcom/android/inputmethod/latin/WordComposer;->correctPrimaryJuxtapos(I[I)V

    .line 96
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    int-to-char v0, p1

    invoke-static {v0}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    .line 98
    :cond_0
    return-void
.end method

.method public deleteLast()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 119
    iget-object v3, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 120
    .local v0, codesSize:I
    if-lez v0, :cond_0

    .line 121
    iget-object v3, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    sub-int v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 122
    iget-object v3, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    sub-int v2, v3, v5

    .line 123
    .local v2, lastPos:I
    iget-object v3, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    .line 124
    .local v1, last:C
    iget-object v3, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 125
    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    sub-int/2addr v3, v5

    iput v3, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    .line 127
    .end local v1           #last:C
    .end local v2           #lastPos:I
    :cond_0
    return-void
.end method

.method public getCodesAt(I)[I
    .locals 1
    .parameter "index"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [I

    return-object p0
.end method

.method public getPreferredWord()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mPreferredWord:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mPreferredWord:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/inputmethod/latin/WordComposer;->getTypedWord()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0
.end method

.method public getTypedWord()Ljava/lang/CharSequence;
    .locals 2

    .prologue
    .line 134
    iget-object v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 135
    .local v0, wordSize:I
    if-nez v0, :cond_0

    .line 136
    const/4 v1, 0x0

    .line 138
    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public isAllUpperCase()Z
    .locals 2

    .prologue
    .line 158
    iget v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    invoke-virtual {p0}, Lcom/android/inputmethod/latin/WordComposer;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAutoCapitalized()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mAutoCapitalized:Z

    return v0
.end method

.method public isFirstCharCapitalized()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsFirstCharCapitalized:Z

    return v0
.end method

.method public isMostlyCaps()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 181
    iget v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 64
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 65
    iput-boolean v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsFirstCharCapitalized:Z

    .line 66
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mPreferredWord:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mTypedWord:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 68
    iput v1, p0, Lcom/android/inputmethod/latin/WordComposer;->mCapsCount:I

    .line 69
    return-void
.end method

.method public setAutoCapitalized(Z)V
    .locals 0
    .parameter "auto"

    .prologue
    .line 190
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/WordComposer;->mAutoCapitalized:Z

    .line 191
    return-void
.end method

.method public setFirstCharCapitalized(Z)V
    .locals 0
    .parameter "capitalized"

    .prologue
    .line 142
    iput-boolean p1, p0, Lcom/android/inputmethod/latin/WordComposer;->mIsFirstCharCapitalized:Z

    .line 143
    return-void
.end method

.method public setPreferredWord(Ljava/lang/String;)V
    .locals 0
    .parameter "preferred"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/inputmethod/latin/WordComposer;->mPreferredWord:Ljava/lang/String;

    .line 167
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/inputmethod/latin/WordComposer;->mCodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
