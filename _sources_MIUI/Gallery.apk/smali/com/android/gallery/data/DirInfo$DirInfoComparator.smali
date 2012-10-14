.class public Lcom/android/gallery/data/DirInfo$DirInfoComparator;
.super Lcom/android/gallery/data/BaseMeta$BaseMetaComparator;
.source "DirInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery/data/DirInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DirInfoComparator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/android/gallery/data/BaseMeta$BaseMetaComparator;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDiff(Lcom/android/gallery/data/BaseMeta;Lcom/android/gallery/data/BaseMeta;)I
    .locals 3
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 184
    move-object v0, p1

    check-cast v0, Lcom/android/gallery/data/DirInfo;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/android/gallery/data/DirInfo;->isCamera()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    .line 191
    .end local p1
    .end local p2
    :goto_0
    return v1

    .line 185
    .restart local p1
    .restart local p2
    :cond_0
    move-object v0, p2

    check-cast v0, Lcom/android/gallery/data/DirInfo;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/android/gallery/data/DirInfo;->isCamera()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 187
    :cond_1
    iget v1, p0, Lcom/android/gallery/data/BaseMeta$BaseMetaComparator;->mSortMethod:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 188
    check-cast p1, Lcom/android/gallery/data/DirInfo;

    .end local p1
    invoke-virtual {p1}, Lcom/android/gallery/data/DirInfo;->getFrequency()I

    move-result v1

    check-cast p2, Lcom/android/gallery/data/DirInfo;

    .end local p2
    invoke-virtual {p2}, Lcom/android/gallery/data/DirInfo;->getFrequency()I

    move-result v2

    sub-int/2addr v1, v2

    goto :goto_0

    .line 191
    .restart local p1
    .restart local p2
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/gallery/data/BaseMeta$BaseMetaComparator;->getDiff(Lcom/android/gallery/data/BaseMeta;Lcom/android/gallery/data/BaseMeta;)I

    move-result v1

    goto :goto_0
.end method
