.class public Lcom/android/contacts/TextHighlightingAnimation$TextWithHighlighting;
.super Ljava/lang/Object;
.source "TextHighlightingAnimation.java"

# interfaces
.implements Landroid/text/Spanned;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/TextHighlightingAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextWithHighlighting"
.end annotation


# instance fields
.field private mDimmingEnabled:Z

.field private mDimmingSpanEnd:I

.field private mDimmingSpanStart:I

.field private final mSpans:[Lcom/android/contacts/TextHighlightingAnimation$DimmingSpan;

.field private mString:Ljava/lang/String;

.field private mText:Landroid/database/CharArrayBuffer;

.field final synthetic this$0:Lcom/android/contacts/TextHighlightingAnimation;


# direct methods
.method public constructor <init>(Lcom/android/contacts/TextHighlightingAnimation;)V
    .locals 3
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/contacts/TextHighlightingAnimation$TextWithHighlighting;->this$0:Lcom/android/contacts/TextHighlightingAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/contacts/TextHighlightingAnimation$DimmingSpan;

    const/4 v1, 0x0

    #getter for: Lcom/android/contacts/TextHighlightingAnimation;->mDimmingSpan:Lcom/android/contacts/TextHighlightingAnimation$DimmingSpan;
    invoke-static {p1}, Lcom/android/contacts/TextHighlightingAnimation;->access$000(Lcom/android/contacts/TextHighlightingAnimation;)Lcom/android/contacts/TextHighlightingAnimation$DimmingSpan;

    move-result-object v2

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/contacts/TextHighlightingAnimation$TextWithHighlighting;->mSpans:[Lcom/android/contacts/TextHighlightingAnimation$DimmingSpan;

    .line 68
    return-void
.end method

.method private indexOf(Landroid/database/CharArrayBuffer;Landroid/database/CharArrayBuffer;)I
    .locals 10
    .parameter "buffer1"
    .parameter "buffer2"

    .prologue
    const/4 v9, 0x1

    .line 92
    iget-object v5, p1, Landroid/database/CharArrayBuffer;->data:[C

    .line 93
    .local v5, string1:[C
    iget-object v6, p2, Landroid/database/CharArrayBuffer;->data:[C

    .line 94
    .local v6, string2:[C
    iget v0, p1, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 95
    .local v0, count1:I
    iget v1, p2, Landroid/database/CharArrayBuffer;->sizeCopied:I

    .line 98
    .local v1, count2:I
    :goto_0
    if-lez v0, :cond_0

    if-lez v1, :cond_0

    sub-int v7, v0, v9

    aget-char v7, v5, v7

    sub-int v8, v1, v9

    aget-char v8, v6, v8

    if-ne v7, v8, :cond_0

    .line 99
    add-int/lit8 v0, v0, -0x1

    .line 100
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 103
    :cond_0
    move v4, v1

    .line 104
    .local v4, size:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_5

    .line 105
    add-int v7, v2, v4

    if-le v7, v0, :cond_1

    .line 106
    sub-int v4, v0, v2

    .line 109
    :cond_1
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    if-ge v3, v4, :cond_2

    .line 110
    add-int v7, v2, v3

    aget-char v7, v5, v7

    aget-char v8, v6, v3

    if-eq v7, v8, :cond_3

    .line 114
    :cond_2
    if-ne v3, v4, :cond_4

    move v7, v2

    .line 119
    .end local v3           #j:I
    :goto_3
    return v7

    .line 109
    .restart local v3       #j:I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 104
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 119
    .end local v3           #j:I
    :cond_5
    const/4 v7, -0x1

    goto :goto_3
.end method


# virtual methods
.method public charAt(I)C
    .locals 1
    .parameter "index"

    .prologue
    .line 153
    iget-object v0, p0, Lcom/android/contacts/TextHighlightingAnimation$TextWithHighlighting;->mText:Landroid/database/CharArrayBuffer;

    iget-object v0, v0, Landroid/database/CharArrayBuffer;->data:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public getSpanEnd(Ljava/lang/Object;)I
    .locals 1
    .parameter "tag"

    .prologue
    .line 139
    iget v0, p0, Lcom/android/contacts/TextHighlightingAnimation$TextWithHighlighting;->mDimmingSpanEnd:I

    return v0
.end method

.method public getSpanFlags(Ljava/lang/Object;)I
    .locals 1
    .parameter "tag"

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public getSpanStart(Ljava/lang/Object;)I
    .locals 1
    .parameter "tag"

    .prologue
    .line 134
    iget v0, p0, Lcom/android/contacts/TextHighlightingAnimation$TextWithHighlighting;->mDimmingSpanStart:I

    return v0
.end method

.method public getSpans(IILjava/lang/Class;)[Ljava/lang/Object;
    .locals 1
    .parameter "start"
    .parameter "end"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(II",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 125
    .local p3, type:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    iget-boolean v0, p0, Lcom/android/contacts/TextHighlightingAnimation$TextWithHighlighting;->mDimmingEnabled:Z

    if-eqz v0, :cond_0

    .line 126
    iget-object p0, p0, Lcom/android/contacts/TextHighlightingAnimation$TextWithHighlighting;->mSpans:[Lcom/android/contacts/TextHighlightingAnimation$DimmingSpan;

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    .line 128
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    invoke-static {}, Lcom/android/contacts/TextHighlightingAnimation;->access$100()[Lcom/android/contacts/TextHighlightingAnimation$DimmingSpan;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/Object;

    move-object v0, p0

    goto :goto_0
.end method

.method public length()I
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/contacts/TextHighlightingAnimation$TextWithHighlighting;->mText:Landroid/database/CharArrayBuffer;

    iget v0, v0, Landroid/database/CharArrayBuffer;->sizeCopied:I

    return v0
.end method

.method public nextSpanTransition(IILjava/lang/Class;)I
    .locals 1
    .parameter "start"
    .parameter "limit"
    .parameter "type"

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public setText(Landroid/database/CharArrayBuffer;Landroid/database/CharArrayBuffer;)V
    .locals 5
    .parameter "baseText"
    .parameter "highlightedText"

    .prologue
    const/4 v4, 0x0

    .line 71
    iput-object p1, p0, Lcom/android/contacts/TextHighlightingAnimation$TextWithHighlighting;->mText:Landroid/database/CharArrayBuffer;

    .line 74
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/TextHighlightingAnimation$TextWithHighlighting;->mText:Landroid/database/CharArrayBuffer;

    iget-object v2, v2, Landroid/database/CharArrayBuffer;->data:[C

    iget-object v3, p0, Lcom/android/contacts/TextHighlightingAnimation$TextWithHighlighting;->mText:Landroid/database/CharArrayBuffer;

    iget v3, v3, Landroid/database/CharArrayBuffer;->sizeCopied:I

    invoke-direct {v1, v2, v4, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v1, p0, Lcom/android/contacts/TextHighlightingAnimation$TextWithHighlighting;->mString:Ljava/lang/String;

    .line 76
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/TextHighlightingAnimation$TextWithHighlighting;->indexOf(Landroid/database/CharArrayBuffer;Landroid/database/CharArrayBuffer;)I

    move-result v0

    .line 78
    .local v0, index:I
    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 79
    :cond_0
    iput-boolean v4, p0, Lcom/android/contacts/TextHighlightingAnimation$TextWithHighlighting;->mDimmingEnabled:Z

    .line 85
    :goto_0
    return-void

    .line 81
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/contacts/TextHighlightingAnimation$TextWithHighlighting;->mDimmingEnabled:Z

    .line 82
    iput v4, p0, Lcom/android/contacts/TextHighlightingAnimation$TextWithHighlighting;->mDimmingSpanStart:I

    .line 83
    iput v0, p0, Lcom/android/contacts/TextHighlightingAnimation$TextWithHighlighting;->mDimmingSpanEnd:I

    goto :goto_0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 162
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/contacts/TextHighlightingAnimation$TextWithHighlighting;->mText:Landroid/database/CharArrayBuffer;

    iget-object v1, v1, Landroid/database/CharArrayBuffer;->data:[C

    invoke-direct {v0, v1, p1, p2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/android/contacts/TextHighlightingAnimation$TextWithHighlighting;->mString:Ljava/lang/String;

    return-object v0
.end method
