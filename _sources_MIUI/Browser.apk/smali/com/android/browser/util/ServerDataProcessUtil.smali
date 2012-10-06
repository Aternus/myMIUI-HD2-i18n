.class public Lcom/android/browser/util/ServerDataProcessUtil;
.super Ljava/lang/Object;
.source "ServerDataProcessUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getXPathTagPairsFromString(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 12
    .parameter "data"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/browser/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 8
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .local v6, xPathTagPairs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/browser/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-string v7, "\n"

    invoke-virtual {p0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 12
    .local v1, lines:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v7, v1

    if-ge v0, v7, :cond_0

    .line 13
    aget-object v7, v1, v0

    const-string v8, ";"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 14
    .local v2, pair:[Ljava/lang/String;
    aget-object v7, v2, v10

    aget-object v8, v2, v10

    const-string v9, "XPath:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const-string v9, "XPath"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 16
    .local v4, xPath:Ljava/lang/String;
    aget-object v7, v2, v11

    aget-object v8, v2, v11

    const-string v9, "tag:"

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const-string v9, "tag"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 18
    .local v3, tag:Ljava/lang/String;
    new-instance v5, Lcom/android/browser/util/Pair;

    invoke-direct {v5, v4, v3}, Lcom/android/browser/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .local v5, xPathTagPair:Lcom/android/browser/util/Pair;,"Lcom/android/browser/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22
    .end local v2           #pair:[Ljava/lang/String;
    .end local v3           #tag:Ljava/lang/String;
    .end local v4           #xPath:Ljava/lang/String;
    .end local v5           #xPathTagPair:Lcom/android/browser/util/Pair;,"Lcom/android/browser/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    return-object v6
.end method
