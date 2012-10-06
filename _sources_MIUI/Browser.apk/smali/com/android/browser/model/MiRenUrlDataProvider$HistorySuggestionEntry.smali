.class Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;
.super Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;
.source "MiRenUrlDataProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/browser/model/MiRenUrlDataProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HistorySuggestionEntry"
.end annotation


# instance fields
.field public mBookmarks:I

.field public mDate:J

.field public mIndex:Ljava/lang/String;

.field public mSearchableUrl:Ljava/lang/String;

.field public mTitle:Ljava/lang/String;

.field public mUrl:Ljava/lang/String;

.field public mVisits:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/android/browser/model/ArrayListSuggestionCursor$SuggestionEntry;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/browser/model/MiRenUrlDataProvider$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 369
    invoke-direct {p0}, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getBookmarks()I
    .locals 1

    .prologue
    .line 379
    iget v0, p0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->mBookmarks:I

    return v0
.end method

.method public getDate()J
    .locals 2

    .prologue
    .line 384
    iget-wide v0, p0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->mDate:J

    return-wide v0
.end method

.method public getIndex()Ljava/lang/String;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->mIndex:Ljava/lang/String;

    return-object v0
.end method

.method public getSearchableUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->mSearchableUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVisits()I
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->mVisits:I

    return v0
.end method

.method public setBookmarks(I)Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;
    .locals 0
    .parameter "value"

    .prologue
    .line 387
    iput p1, p0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->mBookmarks:I

    return-object p0
.end method

.method public setDate(J)Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;
    .locals 0
    .parameter "value"

    .prologue
    .line 388
    iput-wide p1, p0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->mDate:J

    return-object p0
.end method

.method public setIndex(Ljava/lang/String;)Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;
    .locals 1
    .parameter "value"

    .prologue
    .line 391
    iput-object p1, p0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->mIndex:Ljava/lang/String;

    .line 392
    iget-object v0, p0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->mIndex:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->mIndex:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->mIndex:Ljava/lang/String;

    .line 394
    :cond_0
    return-object p0
.end method

.method public setSearchableUrl(Ljava/lang/String;)Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;
    .locals 1
    .parameter "value"

    .prologue
    .line 397
    iput-object p1, p0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->mSearchableUrl:Ljava/lang/String;

    .line 398
    iget-object v0, p0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->mSearchableUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->mSearchableUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->mSearchableUrl:Ljava/lang/String;

    .line 400
    :cond_0
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;
    .locals 1
    .parameter "value"

    .prologue
    .line 409
    iput-object p1, p0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->mTitle:Ljava/lang/String;

    .line 410
    iget-object v0, p0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->mTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->mTitle:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->mTitle:Ljava/lang/String;

    .line 412
    :cond_0
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;
    .locals 1
    .parameter "value"

    .prologue
    .line 403
    iput-object p1, p0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->mUrl:Ljava/lang/String;

    .line 404
    iget-object v0, p0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->mUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->mUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->mUrl:Ljava/lang/String;

    .line 406
    :cond_0
    return-object p0
.end method

.method public setVisits(I)Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;
    .locals 0
    .parameter "value"

    .prologue
    .line 386
    iput p1, p0, Lcom/android/browser/model/MiRenUrlDataProvider$HistorySuggestionEntry;->mVisits:I

    return-object p0
.end method
