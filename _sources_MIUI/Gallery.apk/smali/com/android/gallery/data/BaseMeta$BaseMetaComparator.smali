.class public Lcom/android/gallery/data/BaseMeta$BaseMetaComparator;
.super Ljava/lang/Object;
.source "BaseMeta.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery/data/BaseMeta;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BaseMetaComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/gallery/data/BaseMeta;",
        ">;"
    }
.end annotation


# instance fields
.field protected mReverse:Z

.field protected mSortMethod:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/gallery/data/BaseMeta$BaseMetaComparator;->mSortMethod:I

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/gallery/data/BaseMeta;Lcom/android/gallery/data/BaseMeta;)I
    .locals 3
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 251
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 257
    :goto_0
    return v1

    .line 253
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery/data/BaseMeta$BaseMetaComparator;->getDiff(Lcom/android/gallery/data/BaseMeta;Lcom/android/gallery/data/BaseMeta;)I

    move-result v0

    .line 254
    .local v0, diff:I
    if-nez v0, :cond_1

    .line 255
    iget-object v1, p1, Lcom/android/gallery/data/BaseMeta;->mTitle:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/gallery/data/BaseMeta;->mTitle:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/gallery/util/Utils;->compareIgnoreCase(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 257
    :cond_1
    iget-boolean v1, p0, Lcom/android/gallery/data/BaseMeta$BaseMetaComparator;->mReverse:Z

    if-eqz v1, :cond_2

    neg-int v1, v0

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 245
    check-cast p1, Lcom/android/gallery/data/BaseMeta;

    .end local p1
    check-cast p2, Lcom/android/gallery/data/BaseMeta;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/gallery/data/BaseMeta$BaseMetaComparator;->compare(Lcom/android/gallery/data/BaseMeta;Lcom/android/gallery/data/BaseMeta;)I

    move-result v0

    return v0
.end method

.method protected getDiff(Lcom/android/gallery/data/BaseMeta;Lcom/android/gallery/data/BaseMeta;)I
    .locals 4
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 261
    iget v0, p0, Lcom/android/gallery/data/BaseMeta$BaseMetaComparator;->mSortMethod:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 262
    iget-wide v0, p1, Lcom/android/gallery/data/BaseMeta;->mDateModified:J

    iget-wide v2, p2, Lcom/android/gallery/data/BaseMeta;->mDateModified:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/android/gallery/util/Utils;->sign(J)I

    move-result v0

    .line 266
    :goto_0
    return v0

    .line 263
    :cond_0
    iget v0, p0, Lcom/android/gallery/data/BaseMeta$BaseMetaComparator;->mSortMethod:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 264
    iget-wide v0, p1, Lcom/android/gallery/data/BaseMeta;->mSize:J

    iget-wide v2, p2, Lcom/android/gallery/data/BaseMeta;->mSize:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/android/gallery/util/Utils;->sign(J)I

    move-result v0

    goto :goto_0

    .line 266
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSortMethod()I
    .locals 1

    .prologue
    .line 275
    iget-boolean v0, p0, Lcom/android/gallery/data/BaseMeta$BaseMetaComparator;->mReverse:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/gallery/data/BaseMeta$BaseMetaComparator;->mSortMethod:I

    neg-int v0, v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/gallery/data/BaseMeta$BaseMetaComparator;->mSortMethod:I

    goto :goto_0
.end method

.method public setSortMethod(I)V
    .locals 1
    .parameter "method"

    .prologue
    .line 270
    if-gez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/gallery/data/BaseMeta$BaseMetaComparator;->mReverse:Z

    .line 271
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iput v0, p0, Lcom/android/gallery/data/BaseMeta$BaseMetaComparator;->mSortMethod:I

    .line 272
    return-void

    .line 270
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
