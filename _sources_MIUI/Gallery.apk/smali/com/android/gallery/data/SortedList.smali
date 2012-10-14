.class public Lcom/android/gallery/data/SortedList;
.super Ljava/util/ArrayList;
.source "SortedList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mComparator:Ljava/util/Comparator;


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .parameter "comparator"

    .prologue
    .line 12
    .local p0, this:Lcom/android/gallery/data/SortedList;,"Lcom/android/gallery/data/SortedList<TE;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/android/gallery/data/SortedList;->mComparator:Ljava/util/Comparator;

    .line 14
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/android/gallery/data/SortedList;,"Lcom/android/gallery/data/SortedList<TE;>;"
    .local p1, object:Ljava/lang/Object;,"TE;"
    const/4 v2, 0x1

    .line 29
    iget-object v1, p0, Lcom/android/gallery/data/SortedList;->mComparator:Ljava/util/Comparator;

    invoke-static {p0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 30
    .local v0, index:I
    if-gez v0, :cond_0

    .line 31
    neg-int v1, v0

    sub-int v0, v1, v2

    .line 33
    :cond_0
    invoke-super {p0, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 34
    return v2
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 2
    .parameter "object"

    .prologue
    .line 23
    .local p0, this:Lcom/android/gallery/data/SortedList;,"Lcom/android/gallery/data/SortedList<TE;>;"
    iget-object v1, p0, Lcom/android/gallery/data/SortedList;->mComparator:Ljava/util/Comparator;

    invoke-static {p0, p1, v1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 24
    .local v0, index:I
    if-ltz v0, :cond_0

    move v1, v0

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .parameter "object"

    .prologue
    .line 39
    .local p0, this:Lcom/android/gallery/data/SortedList;,"Lcom/android/gallery/data/SortedList<TE;>;"
    invoke-virtual {p0, p1}, Lcom/android/gallery/data/SortedList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 40
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 41
    invoke-super {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 43
    :cond_0
    if-ltz v0, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setComparator(Ljava/util/Comparator;)V
    .locals 1
    .parameter "comparator"

    .prologue
    .line 17
    .local p0, this:Lcom/android/gallery/data/SortedList;,"Lcom/android/gallery/data/SortedList<TE;>;"
    iput-object p1, p0, Lcom/android/gallery/data/SortedList;->mComparator:Ljava/util/Comparator;

    .line 18
    iget-object v0, p0, Lcom/android/gallery/data/SortedList;->mComparator:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 19
    return-void
.end method
