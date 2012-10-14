.class Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntryComparator;
.super Ljava/lang/Object;
.source "MiRenUrlDataProvider.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/model/MiRenUrlDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HistorySuggestionEntryComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;",
        ">;"
    }
.end annotation


# instance fields
.field private mQuery:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "query"

    .prologue
    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 420
    iput-object p1, p0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntryComparator;->mQuery:Ljava/lang/String;

    .line 421
    iget-object v0, p0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntryComparator;->mQuery:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntryComparator;->mQuery:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntryComparator;->mQuery:Ljava/lang/String;

    .line 423
    :cond_0
    return-void
.end method

.method private findEnMatchingIndex(Ljava/lang/String;)I
    .locals 3
    .parameter "str"

    .prologue
    .line 516
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 517
    const/4 v1, -0x1

    .line 526
    :goto_0
    return v1

    .line 519
    :cond_0
    iget-object v1, p0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntryComparator;->mQuery:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 520
    .local v0, index:I
    :goto_1
    if-lez v0, :cond_1

    .line 521
    const/4 v1, 0x1

    sub-int v1, v0, v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    move v1, v0

    .line 526
    goto :goto_0

    .line 524
    :cond_2
    iget-object v1, p0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntryComparator;->mQuery:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntryComparator;->mQuery:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    goto :goto_1
.end method

.method private getPositionNumber(Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;Z)J
    .locals 8
    .parameter "entry"
    .parameter "domainOnly"

    .prologue
    const/16 v7, 0x200

    .line 475
    const/4 v3, -0x1

    .line 476
    .local v3, titleIndex:I
    const/4 v0, -0x1

    .line 477
    .local v0, domainIndex:I
    const/4 v4, -0x1

    .line 479
    .local v4, urlIndex:I
    iget-object v5, p0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntryComparator;->mQuery:Ljava/lang/String;

    #calls: Lcom/android/browser/model/MiRenUrlDataProvider;->isLetterOrDigitalOnly(Ljava/lang/String;)Z
    invoke-static {v5}, Lcom/android/browser/model/MiRenUrlDataProvider;->access$000(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 481
    invoke-virtual {p1}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntryComparator;->findEnMatchingIndex(Ljava/lang/String;)I

    move-result v3

    .line 482
    invoke-virtual {p1}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->getSearchableUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntryComparator;->findEnMatchingIndex(Ljava/lang/String;)I

    move-result v0

    .line 483
    if-nez p2, :cond_0

    .line 484
    invoke-virtual {p1}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntryComparator;->findEnMatchingIndex(Ljava/lang/String;)I

    move-result v4

    .line 502
    :cond_0
    :goto_0
    const-wide/32 v1, 0xc350

    .line 503
    .local v1, result:J
    if-ltz v3, :cond_1

    .line 504
    sub-int v5, v7, v3

    mul-int/lit8 v5, v5, 0x64

    int-to-long v5, v5

    sub-long/2addr v1, v5

    .line 505
    :cond_1
    if-ltz v0, :cond_2

    .line 506
    sub-int v5, v7, v0

    mul-int/lit8 v5, v5, 0x64

    int-to-long v5, v5

    sub-long/2addr v1, v5

    .line 507
    :cond_2
    if-nez p2, :cond_3

    .line 508
    if-ltz v4, :cond_3

    .line 509
    const/16 v5, 0x1000

    sub-int/2addr v5, v4

    int-to-long v5, v5

    sub-long/2addr v1, v5

    .line 512
    :cond_3
    return-wide v1

    .line 488
    .end local v1           #result:J
    :cond_4
    invoke-virtual {p1}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 489
    invoke-virtual {p1}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->getTitle()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntryComparator;->mQuery:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 490
    :cond_5
    invoke-virtual {p1}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->getSearchableUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 491
    invoke-virtual {p1}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->getSearchableUrl()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntryComparator;->mQuery:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 492
    :cond_6
    if-nez p2, :cond_0

    .line 493
    invoke-virtual {p1}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 494
    invoke-virtual {p1}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->getUrl()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntryComparator;->mQuery:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    goto :goto_0
.end method


# virtual methods
.method public compare(Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;)I
    .locals 19
    .parameter "one"
    .parameter "another"

    .prologue
    .line 427
    if-eqz p1, :cond_0

    if-nez p2, :cond_3

    .line 428
    :cond_0
    if-nez p1, :cond_2

    .line 429
    if-nez p2, :cond_1

    const/4 v15, 0x0

    .line 471
    :goto_0
    return v15

    .line 429
    :cond_1
    const/4 v15, -0x1

    goto :goto_0

    .line 431
    :cond_2
    const/4 v15, 0x1

    goto :goto_0

    .line 435
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntryComparator;->mQuery:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->getIndex()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    .line 436
    .local v9, matchOneIndex:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntryComparator;->mQuery:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual/range {p2 .. p2}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->getIndex()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    .line 437
    .local v8, matchAnotherIndex:Z
    if-eq v9, v8, :cond_5

    .line 438
    if-eqz v9, :cond_4

    const/4 v15, -0x1

    goto :goto_0

    :cond_4
    const/4 v15, 0x1

    goto :goto_0

    .line 442
    :cond_5
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    invoke-direct {v0, v1, v2}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntryComparator;->getPositionNumber(Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;Z)J

    move-result-wide v10

    .line 443
    .local v10, oneDomainPosition:J
    const/4 v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v15

    invoke-direct {v0, v1, v2}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntryComparator;->getPositionNumber(Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;Z)J

    move-result-wide v3

    .line 444
    .local v3, anotherDomainPosition:J
    cmp-long v15, v10, v3

    if-eqz v15, :cond_7

    .line 445
    cmp-long v15, v10, v3

    if-gez v15, :cond_6

    const/4 v15, -0x1

    goto :goto_0

    :cond_6
    const/4 v15, 0x1

    goto :goto_0

    .line 448
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->getVisits()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->getVisits()I

    move-result v16

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_8

    .line 449
    invoke-virtual/range {p2 .. p2}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->getVisits()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->getVisits()I

    move-result v16

    sub-int v15, v15, v16

    goto :goto_0

    .line 452
    :cond_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->getBookmarks()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->getBookmarks()I

    move-result v16

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_9

    .line 453
    invoke-virtual/range {p2 .. p2}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->getBookmarks()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->getBookmarks()I

    move-result v16

    sub-int v15, v15, v16

    goto :goto_0

    .line 456
    :cond_9
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v15

    invoke-direct {v0, v1, v2}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntryComparator;->getPositionNumber(Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;Z)J

    move-result-wide v13

    .line 457
    .local v13, onePosition:J
    const/4 v15, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move v2, v15

    invoke-direct {v0, v1, v2}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntryComparator;->getPositionNumber(Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;Z)J

    move-result-wide v6

    .line 458
    .local v6, anotherPosition:J
    cmp-long v15, v13, v6

    if-eqz v15, :cond_b

    .line 459
    cmp-long v15, v13, v6

    if-gez v15, :cond_a

    const/4 v15, -0x1

    goto/16 :goto_0

    :cond_a
    const/4 v15, 0x1

    goto/16 :goto_0

    .line 462
    :cond_b
    invoke-virtual/range {p2 .. p2}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->getDate()J

    move-result-wide v15

    invoke-virtual/range {p1 .. p1}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->getDate()J

    move-result-wide v17

    cmp-long v15, v15, v17

    if-eqz v15, :cond_d

    .line 463
    invoke-virtual/range {p2 .. p2}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->getDate()J

    move-result-wide v15

    invoke-virtual/range {p1 .. p1}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->getDate()J

    move-result-wide v17

    cmp-long v15, v15, v17

    if-lez v15, :cond_c

    const/4 v15, 0x1

    goto/16 :goto_0

    :cond_c
    const/4 v15, -0x1

    goto/16 :goto_0

    .line 466
    :cond_d
    invoke-virtual/range {p1 .. p1}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->getUrl()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_e

    const/4 v15, 0x0

    move v12, v15

    .line 467
    .local v12, oneLength:I
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->getUrl()Ljava/lang/String;

    move-result-object v15

    if-nez v15, :cond_f

    const/4 v15, 0x0

    move v5, v15

    .line 468
    .local v5, anotherLength:I
    :goto_2
    if-eq v12, v5, :cond_10

    .line 469
    sub-int v15, v12, v5

    goto/16 :goto_0

    .line 466
    .end local v5           #anotherLength:I
    .end local v12           #oneLength:I
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->getUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    move v12, v15

    goto :goto_1

    .line 467
    .restart local v12       #oneLength:I
    :cond_f
    invoke-virtual/range {p2 .. p2}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->getUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    move v5, v15

    goto :goto_2

    .line 471
    .restart local v5       #anotherLength:I
    :cond_10
    const/4 v15, 0x0

    goto/16 :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 416
    check-cast p1, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;

    .end local p1
    check-cast p2, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntryComparator;->compare(Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;)I

    move-result v0

    return v0
.end method
