.class Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;
.super Landroid/database/AbstractCursor;
.source "BrowserProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/model/BrowserProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MySuggestionCursor"
.end annotation


# instance fields
.field private mHistoryCount:I

.field private mHistoryCursor:Landroid/database/Cursor;

.field private mIncludeWebSearch:Z

.field private mString:Ljava/lang/String;

.field private mSuggestCursor:Landroid/database/Cursor;

.field private mSuggestIntentExtraDataId:I

.field private mSuggestQueryId:I

.field private mSuggestText1Id:I

.field private mSuggestText2Id:I

.field private mSuggestText2UrlId:I

.field private mSuggestionCount:I

.field final synthetic this$0:Lcom/android/browser/model/BrowserProvider;


# direct methods
.method public constructor <init>(Lcom/android/browser/model/BrowserProvider;Landroid/database/Cursor;Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter "hc"
    .parameter "sc"
    .parameter "string"

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 311
    iput-object p1, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->this$0:Lcom/android/browser/model/BrowserProvider;

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 312
    iput-object p2, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    .line 313
    iput-object p3, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    .line 314
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iput v0, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    .line 315
    if-eqz p3, :cond_1

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestionCount:I

    .line 316
    iget v0, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestionCount:I

    iget v1, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    sub-int v1, v4, v1

    if-le v0, v1, :cond_0

    .line 317
    iget v0, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    sub-int v0, v4, v0

    iput v0, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestionCount:I

    .line 319
    :cond_0
    iput-object p4, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mString:Ljava/lang/String;

    .line 320
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mIncludeWebSearch:Z

    .line 325
    iget-object v0, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    if-nez v0, :cond_3

    .line 326
    iput v2, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestText1Id:I

    .line 327
    iput v2, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestText2Id:I

    .line 328
    iput v2, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestText2UrlId:I

    .line 329
    iput v2, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestQueryId:I

    .line 330
    iput v2, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestIntentExtraDataId:I

    .line 343
    :goto_2
    return-void

    :cond_1
    move v0, v3

    .line 315
    goto :goto_0

    :cond_2
    move v0, v3

    .line 320
    goto :goto_1

    .line 332
    :cond_3
    iget-object v0, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    const-string v1, "suggest_text_1"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestText1Id:I

    .line 334
    iget-object v0, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    const-string v1, "suggest_text_2"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestText2Id:I

    .line 336
    iget-object v0, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    const-string v1, "suggest_text_2_url"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestText2UrlId:I

    .line 338
    iget-object v0, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    const-string v1, "suggest_intent_query"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestQueryId:I

    .line 340
    iget-object v0, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    const-string v1, "suggest_intent_extra_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestIntentExtraDataId:I

    goto :goto_2
.end method

.method private getHistoryTitle()Ljava/lang/String;
    .locals 3

    .prologue
    .line 566
    iget-object v1, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 567
    .local v0, title:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-nez v1, :cond_1

    .line 568
    :cond_0
    iget-object v1, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/browser/model/BrowserProvider;->stripUrl(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/browser/model/BrowserProvider;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 570
    :cond_1
    return-object v0
.end method

.method private getHistoryUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 581
    iget-object v1, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 582
    .local v0, title:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-nez v1, :cond_1

    .line 583
    :cond_0
    const/4 v1, 0x0

    .line 585
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    #calls: Lcom/android/browser/model/BrowserProvider;->stripUrl(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v1}, Lcom/android/browser/model/BrowserProvider;->access$200(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 548
    invoke-super {p0}, Landroid/database/AbstractCursor;->close()V

    .line 549
    iget-object v0, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 550
    iget-object v0, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 551
    iput-object v1, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    .line 553
    :cond_0
    iget-object v0, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 554
    iget-object v0, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 555
    iput-object v1, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    .line 557
    :cond_1
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 532
    iget-object v0, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 533
    iget-object v0, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 535
    :cond_0
    iget-object v0, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 536
    iget-object v0, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->deactivate()V

    .line 538
    :cond_1
    invoke-super {p0}, Landroid/database/AbstractCursor;->deactivate()V

    .line 539
    return-void
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    invoke-static {}, Lcom/android/browser/model/BrowserProvider;->access$100()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mIncludeWebSearch:Z

    if-eqz v0, :cond_0

    .line 374
    iget v0, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    iget v1, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestionCount:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 376
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    iget v1, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestionCount:I

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public getDouble(I)D
    .locals 1
    .parameter "column"

    .prologue
    .line 499
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getFloat(I)F
    .locals 1
    .parameter "column"

    .prologue
    .line 504
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getInt(I)I
    .locals 1
    .parameter "column"

    .prologue
    .line 509
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getLong(I)J
    .locals 2
    .parameter "column"

    .prologue
    .line 514
    iget v0, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mPos:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-nez p1, :cond_0

    .line 515
    iget v0, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mPos:I

    int-to-long v0, v0

    return-wide v0

    .line 517
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getShort(I)S
    .locals 1
    .parameter "column"

    .prologue
    .line 522
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 8
    .parameter "columnIndex"

    .prologue
    const v7, 0x7f020045

    const/4 v6, 0x2

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 387
    iget v1, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mPos:I

    if-eq v1, v5, :cond_2

    iget-object v1, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_2

    .line 388
    const/4 v0, -0x1

    .line 389
    .local v0, type:I
    iget-boolean v1, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mIncludeWebSearch:Z

    if-eqz v1, :cond_6

    .line 390
    iget v1, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    if-nez v1, :cond_3

    iget v1, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mPos:I

    if-nez v1, :cond_3

    .line 391
    const/4 v0, 0x0

    .line 399
    :cond_0
    :goto_0
    if-ne v0, v5, :cond_1

    iget v1, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mPos:I

    sub-int/2addr v1, v3

    iget v2, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    if-ge v1, v2, :cond_5

    move v0, v3

    .line 404
    :cond_1
    :goto_1
    packed-switch p1, :pswitch_data_0

    .end local v0           #type:I
    :cond_2
    move-object v1, v4

    .line 494
    :goto_2
    return-object v1

    .line 392
    .restart local v0       #type:I
    :cond_3
    iget v1, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    if-lez v1, :cond_0

    .line 393
    iget v1, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mPos:I

    if-nez v1, :cond_4

    .line 394
    const/4 v0, 0x1

    goto :goto_0

    .line 395
    :cond_4
    iget v1, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mPos:I

    if-ne v1, v3, :cond_0

    .line 396
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    move v0, v6

    .line 399
    goto :goto_1

    .line 401
    :cond_6
    iget v1, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mPos:I

    iget v2, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    if-ge v1, v2, :cond_7

    move v0, v3

    :goto_3
    goto :goto_1

    :cond_7
    move v0, v6

    goto :goto_3

    .line 406
    :pswitch_0
    if-ne v0, v3, :cond_8

    .line 407
    const-string v1, "android.intent.action.VIEW"

    goto :goto_2

    .line 409
    :cond_8
    const-string v1, "android.intent.action.SEARCH"

    goto :goto_2

    .line 413
    :pswitch_1
    if-ne v0, v3, :cond_9

    .line 414
    iget-object v1, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_9
    move-object v1, v4

    .line 416
    goto :goto_2

    .line 420
    :pswitch_2
    if-nez v0, :cond_a

    .line 421
    iget-object v1, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mString:Ljava/lang/String;

    goto :goto_2

    .line 422
    :cond_a
    if-ne v0, v3, :cond_b

    .line 423
    invoke-direct {p0}, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->getHistoryTitle()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 425
    :cond_b
    iget v1, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestText1Id:I

    if-ne v1, v5, :cond_c

    move-object v1, v4

    goto :goto_2

    .line 426
    :cond_c
    iget-object v1, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestText1Id:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 430
    :pswitch_3
    if-nez v0, :cond_d

    .line 431
    iget-object v1, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->this$0:Lcom/android/browser/model/BrowserProvider;

    invoke-virtual {v1}, Lcom/android/browser/model/BrowserProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090022

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 432
    :cond_d
    if-ne v0, v3, :cond_e

    move-object v1, v4

    .line 433
    goto :goto_2

    .line 435
    :cond_e
    iget v1, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestText2Id:I

    if-ne v1, v5, :cond_f

    move-object v1, v4

    goto :goto_2

    .line 436
    :cond_f
    iget-object v1, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestText2Id:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 440
    :pswitch_4
    if-nez v0, :cond_10

    move-object v1, v4

    .line 441
    goto :goto_2

    .line 442
    :cond_10
    if-ne v0, v3, :cond_11

    .line 443
    invoke-direct {p0}, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->getHistoryUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 445
    :cond_11
    iget v1, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestText2UrlId:I

    if-ne v1, v5, :cond_12

    move-object v1, v4

    goto :goto_2

    .line 446
    :cond_12
    iget-object v1, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestText2UrlId:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 450
    :pswitch_5
    if-ne v0, v3, :cond_14

    .line 451
    iget-object v1, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v3, :cond_13

    .line 452
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 456
    :cond_13
    const v1, 0x7f020047

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 461
    :cond_14
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 467
    :pswitch_6
    const-string v1, "0"

    goto/16 :goto_2

    .line 470
    :pswitch_7
    if-nez v0, :cond_15

    .line 471
    iget-object v1, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mString:Ljava/lang/String;

    goto/16 :goto_2

    .line 472
    :cond_15
    if-ne v0, v3, :cond_16

    .line 477
    iget-object v1, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 479
    :cond_16
    iget v1, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestQueryId:I

    if-ne v1, v5, :cond_17

    move-object v1, v4

    goto/16 :goto_2

    .line 480
    :cond_17
    iget-object v1, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestQueryId:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 484
    :pswitch_8
    if-nez v0, :cond_18

    move-object v1, v4

    .line 485
    goto/16 :goto_2

    .line 486
    :cond_18
    if-ne v0, v3, :cond_19

    move-object v1, v4

    .line 487
    goto/16 :goto_2

    .line 489
    :cond_19
    iget v1, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestIntentExtraDataId:I

    if-ne v1, v5, :cond_1a

    move-object v1, v4

    goto/16 :goto_2

    .line 490
    :cond_1a
    iget-object v1, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    iget v2, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestIntentExtraDataId:I

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2

    .line 404
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public isNull(I)Z
    .locals 1
    .parameter "column"

    .prologue
    .line 527
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public onMove(II)Z
    .locals 3
    .parameter "oldPosition"
    .parameter "newPosition"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 347
    iget-object v0, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    move v0, v1

    .line 368
    :goto_0
    return v0

    .line 350
    :cond_0
    iget-boolean v0, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mIncludeWebSearch:Z

    if-eqz v0, :cond_4

    .line 351
    iget v0, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    if-nez v0, :cond_1

    if-nez p2, :cond_1

    move v0, v2

    .line 352
    goto :goto_0

    .line 353
    :cond_1
    iget v0, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    if-lez v0, :cond_3

    .line 354
    if-nez p2, :cond_2

    .line 355
    iget-object v0, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move v0, v2

    .line 356
    goto :goto_0

    .line 357
    :cond_2
    if-ne p2, v2, :cond_3

    move v0, v2

    .line 358
    goto :goto_0

    .line 361
    :cond_3
    add-int/lit8 p2, p2, -0x1

    .line 363
    :cond_4
    iget v0, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    if-le v0, p2, :cond_5

    .line 364
    iget-object v0, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    invoke-interface {v0, p2}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_1
    move v0, v2

    .line 368
    goto :goto_0

    .line 366
    :cond_5
    iget-object v0, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    iget v1, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mHistoryCount:I

    sub-int v1, p2, v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_1
.end method

.method public requery()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 542
    iget-object v0, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mHistoryCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->requery()Z

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/browser/model/BrowserProvider$MySuggestionCursor;->mSuggestCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->requery()Z

    move-result v1

    :goto_1
    or-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method
