.class Lcom/android/providers/downloads/Helpers$Lexer;
.super Ljava/lang/Object;
.source "Helpers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/Helpers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Lexer"
.end annotation


# instance fields
.field private final mAllowedColumns:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mChars:[C

.field private mCurrentToken:I

.field private mOffset:I

.field private final mSelection:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .locals 4
    .parameter "selection"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, allowedColumns:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 744
    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    .line 745
    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mCurrentToken:I

    .line 749
    iput-object p1, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mSelection:Ljava/lang/String;

    .line 750
    iput-object p2, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mAllowedColumns:Ljava/util/Set;

    .line 751
    iget-object v0, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mSelection:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mChars:[C

    .line 752
    iget-object v0, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mSelection:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mChars:[C

    array-length v1, v1

    iget-object v2, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mChars:[C

    invoke-virtual {v0, v3, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 753
    invoke-virtual {p0}, Lcom/android/providers/downloads/Helpers$Lexer;->advance()V

    .line 754
    return-void
.end method

.method private static final isIdentifierChar(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 901
    const/16 v0, 0x5f

    if-eq p0, v0, :cond_2

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_2

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_1

    const/16 v0, 0x7a

    if-le p0, v0, :cond_2

    :cond_1
    const/16 v0, 0x30

    if-lt p0, v0, :cond_3

    const/16 v0, 0x39

    if-gt p0, v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static final isIdentifierStart(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 895
    const/16 v0, 0x5f

    if-eq p0, v0, :cond_1

    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x61

    if-lt p0, v0, :cond_2

    const/16 v0, 0x7a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public advance()V
    .locals 10

    .prologue
    const/4 v9, 0x6

    const/4 v8, 0x4

    const/16 v7, 0x27

    const/4 v6, 0x5

    const/16 v5, 0x3d

    .line 761
    iget-object v0, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mChars:[C

    .line 764
    .local v0, chars:[C
    :goto_0
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    array-length v4, v0

    if-ge v3, v4, :cond_0

    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    aget-char v3, v0, v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_0

    .line 765
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    goto :goto_0

    .line 769
    :cond_0
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    array-length v4, v0

    if-ne v3, v4, :cond_2

    .line 770
    const/16 v3, 0x9

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mCurrentToken:I

    .line 887
    :cond_1
    :goto_1
    return-void

    .line 775
    :cond_2
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    aget-char v3, v0, v3

    const/16 v4, 0x28

    if-ne v3, v4, :cond_3

    .line 776
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    .line 777
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mCurrentToken:I

    goto :goto_1

    .line 782
    :cond_3
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    aget-char v3, v0, v3

    const/16 v4, 0x29

    if-ne v3, v4, :cond_4

    .line 783
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    .line 784
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mCurrentToken:I

    goto :goto_1

    .line 789
    :cond_4
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    aget-char v3, v0, v3

    const/16 v4, 0x3f

    if-ne v3, v4, :cond_5

    .line 790
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    .line 791
    iput v9, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mCurrentToken:I

    goto :goto_1

    .line 796
    :cond_5
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    aget-char v3, v0, v3

    if-ne v3, v5, :cond_6

    .line 797
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    .line 798
    iput v6, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mCurrentToken:I

    .line 799
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    array-length v4, v0

    if-ge v3, v4, :cond_1

    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    aget-char v3, v0, v3

    if-ne v3, v5, :cond_1

    .line 800
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    goto :goto_1

    .line 806
    :cond_6
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    aget-char v3, v0, v3

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_7

    .line 807
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    .line 808
    iput v6, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mCurrentToken:I

    .line 809
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    array-length v4, v0

    if-ge v3, v4, :cond_1

    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    aget-char v3, v0, v3

    if-ne v3, v5, :cond_1

    .line 810
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    goto :goto_1

    .line 816
    :cond_7
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    aget-char v3, v0, v3

    const/16 v4, 0x3c

    if-ne v3, v4, :cond_9

    .line 817
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    .line 818
    iput v6, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mCurrentToken:I

    .line 819
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    array-length v4, v0

    if-ge v3, v4, :cond_1

    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    aget-char v3, v0, v3

    if-eq v3, v5, :cond_8

    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    aget-char v3, v0, v3

    const/16 v4, 0x3e

    if-ne v3, v4, :cond_1

    .line 820
    :cond_8
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    goto/16 :goto_1

    .line 826
    :cond_9
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    aget-char v3, v0, v3

    const/16 v4, 0x21

    if-ne v3, v4, :cond_b

    .line 827
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    .line 828
    iput v6, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mCurrentToken:I

    .line 829
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    array-length v4, v0

    if-ge v3, v4, :cond_a

    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    aget-char v3, v0, v3

    if-ne v3, v5, :cond_a

    .line 830
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    goto/16 :goto_1

    .line 833
    :cond_a
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unexpected character after !"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 841
    :cond_b
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    aget-char v3, v0, v3

    invoke-static {v3}, Lcom/android/providers/downloads/Helpers$Lexer;->isIdentifierStart(C)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 842
    iget v1, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    .line 843
    .local v1, startOffset:I
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    .line 844
    :goto_2
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    array-length v4, v0

    if-ge v3, v4, :cond_c

    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    aget-char v3, v0, v3

    invoke-static {v3}, Lcom/android/providers/downloads/Helpers$Lexer;->isIdentifierChar(C)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 845
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    goto :goto_2

    .line 847
    :cond_c
    iget-object v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mSelection:Ljava/lang/String;

    iget v4, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 848
    .local v2, word:Ljava/lang/String;
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    sub-int/2addr v3, v1

    if-gt v3, v8, :cond_10

    .line 849
    const-string v3, "IS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 850
    const/4 v3, 0x7

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mCurrentToken:I

    goto/16 :goto_1

    .line 853
    :cond_d
    const-string v3, "OR"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "AND"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 854
    :cond_e
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mCurrentToken:I

    goto/16 :goto_1

    .line 857
    :cond_f
    const-string v3, "NULL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 858
    const/16 v3, 0x8

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mCurrentToken:I

    goto/16 :goto_1

    .line 862
    :cond_10
    iget-object v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mAllowedColumns:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 863
    iput v8, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mCurrentToken:I

    goto/16 :goto_1

    .line 866
    :cond_11
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "unrecognized column or keyword"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 870
    .end local v1           #startOffset:I
    .end local v2           #word:Ljava/lang/String;
    :cond_12
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    aget-char v3, v0, v3

    if-ne v3, v7, :cond_16

    .line 871
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    .line 872
    :goto_3
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    array-length v4, v0

    if-ge v3, v4, :cond_14

    .line 873
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    aget-char v3, v0, v3

    if-ne v3, v7, :cond_13

    .line 874
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    add-int/lit8 v3, v3, 0x1

    array-length v4, v0

    if-ge v3, v4, :cond_14

    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    add-int/lit8 v3, v3, 0x1

    aget-char v3, v0, v3

    if-ne v3, v7, :cond_14

    .line 875
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    .line 880
    :cond_13
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    goto :goto_3

    .line 882
    :cond_14
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    array-length v4, v0

    if-ne v3, v4, :cond_15

    .line 883
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "unterminated string"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 885
    :cond_15
    iget v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    .line 886
    iput v9, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mCurrentToken:I

    goto/16 :goto_1

    .line 891
    :cond_16
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "illegal character: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mOffset:I

    aget-char v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public currentToken()I
    .locals 1

    .prologue
    .line 757
    iget v0, p0, Lcom/android/providers/downloads/Helpers$Lexer;->mCurrentToken:I

    return v0
.end method
