.class public Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;
.super Lcom/miui/android/resourcebrowser/ZipResourceCache;
.source "ThemeInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/thememanager/ThemeInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ThemeInfoCacheNode"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mCoverThumbnailPath:Ljava/lang/String;

.field private previewIndex:[I

.field final synthetic this$0:Lcom/android/thememanager/ThemeInfo;

.field private thumbnailIndex:[I

.field private tmpPreview:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tmpThumbnail:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/thememanager/ThemeInfo;)V
    .locals 1
    .parameter

    .prologue
    .line 643
    iput-object p1, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->this$0:Lcom/android/thememanager/ThemeInfo;

    invoke-direct {p0}, Lcom/miui/android/resourcebrowser/ZipResourceCache;-><init>()V

    .line 647
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->sPreviewCacheOrder:[J

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->thumbnailIndex:[I

    .line 648
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->sPreviewCacheOrder:[J

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->previewIndex:[I

    .line 652
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->sPreviewCacheOrder:[J

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->tmpThumbnail:[Ljava/util/ArrayList;

    .line 653
    sget-object v0, Lcom/android/thememanager/ThemeHelper;->sPreviewCacheOrder:[J

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->tmpPreview:[Ljava/util/ArrayList;

    return-void
.end method

.method private buildIndex()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 699
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->thumbnailIndex:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 700
    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->tmpThumbnail:[Ljava/util/ArrayList;

    sub-int v2, v0, v4

    aget-object v1, v1, v2

    if-eqz v1, :cond_0

    .line 701
    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->thumbnails:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->tmpThumbnail:[Ljava/util/ArrayList;

    sub-int v3, v0, v4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 703
    :cond_0
    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->tmpPreview:[Ljava/util/ArrayList;

    sub-int v2, v0, v4

    aget-object v1, v1, v2

    if-eqz v1, :cond_1

    .line 704
    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->previews:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->tmpPreview:[Ljava/util/ArrayList;

    sub-int v3, v0, v4

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 706
    :cond_1
    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->thumbnailIndex:[I

    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->thumbnails:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    aput v2, v1, v0

    .line 707
    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->previewIndex:[I

    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->previews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    aput v2, v1, v0

    .line 699
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 709
    :cond_2
    iput-object v5, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->tmpThumbnail:[Ljava/util/ArrayList;

    .line 710
    iput-object v5, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->tmpPreview:[Ljava/util/ArrayList;

    .line 711
    return-void
.end method

.method private getCacheImage(JZZ)Ljava/util/ArrayList;
    .locals 11
    .parameter "flag"
    .parameter "forThumbnail"
    .parameter "loadCoverThumbnail"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 743
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 744
    .local v6, retList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz p3, :cond_1

    iget-object v7, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->thumbnails:Ljava/util/ArrayList;

    move-object v3, v7

    .line 746
    .local v3, imageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    iget-object v7, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->mCoverThumbnailPath:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 747
    iget-object v7, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->mCoverThumbnailPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    sget-object v7, Lcom/android/thememanager/ThemeHelper;->sPreviewShowingOrder:[J

    array-length v7, v7

    if-ge v2, v7, :cond_3

    .line 751
    sget-object v7, Lcom/android/thememanager/ThemeHelper;->sPreviewShowingOrder:[J

    aget-wide v0, v7, v2

    .line 752
    .local v0, componentFlag:J
    and-long v7, p1, v0

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-eqz v7, :cond_2

    .line 753
    invoke-direct {p0, v0, v1, p3}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getCacheIndex(JZ)Landroid/util/Pair;

    move-result-object v4

    .line 754
    .local v4, index:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v7, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .local v5, j:I
    :goto_2
    iget-object v7, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ge v5, v7, :cond_2

    .line 755
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 754
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 744
    .end local v0           #componentFlag:J
    .end local v2           #i:I
    .end local v3           #imageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #index:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v5           #j:I
    :cond_1
    iget-object v7, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->previews:Ljava/util/ArrayList;

    move-object v3, v7

    goto :goto_0

    .line 750
    .restart local v0       #componentFlag:J
    .restart local v2       #i:I
    .restart local v3       #imageList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 760
    .end local v0           #componentFlag:J
    :cond_3
    return-object v6
.end method

.method private getCacheIndex(JZ)Landroid/util/Pair;
    .locals 5
    .parameter "flag"
    .parameter "forThumbnail"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 718
    invoke-direct {p0, p1, p2}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getIndexOfFlagInStoredOrder(J)I

    move-result v1

    .line 719
    .local v1, startIndex:I
    add-int/lit8 v0, v1, 0x1

    .line 721
    .local v0, endIndex:I
    if-ltz v1, :cond_2

    .line 722
    if-eqz p3, :cond_0

    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->thumbnailIndex:[I

    aget v2, v2, v1

    move v1, v2

    .line 723
    :goto_0
    if-eqz p3, :cond_1

    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->thumbnailIndex:[I

    aget v2, v2, v0

    move v0, v2

    .line 728
    :goto_1
    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 722
    :cond_0
    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->previewIndex:[I

    aget v2, v2, v1

    move v1, v2

    goto :goto_0

    .line 723
    :cond_1
    iget-object v2, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->previewIndex:[I

    aget v2, v2, v0

    move v0, v2

    goto :goto_1

    .line 725
    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private getIndexOfFlagInStoredOrder(J)I
    .locals 3
    .parameter "flag"

    .prologue
    .line 732
    sget-object v1, Lcom/android/thememanager/ThemeHelper;->sPreviewCacheOrder:[J

    array-length v1, v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 733
    sget-object v1, Lcom/android/thememanager/ThemeHelper;->sPreviewCacheOrder:[J

    aget-wide v1, v1, v0

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    move v1, v0

    .line 737
    :goto_1
    return v1

    .line 732
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 737
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 678
    invoke-virtual {p0, p1}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->readCache(Ljava/io/ObjectInputStream;)V

    .line 679
    return-void
.end method

.method private reduceThumbnail(Ljava/util/ArrayList;J)V
    .locals 4
    .parameter
    .parameter "flag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x1

    .line 686
    if-eqz p1, :cond_1

    .line 687
    const-wide/16 v1, 0x20

    cmp-long v1, p2, v1

    if-eqz v1, :cond_0

    .line 688
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int v0, v1, v3

    .local v0, i:I
    :goto_0
    if-lez v0, :cond_1

    .line 689
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 688
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 691
    .end local v0           #i:I
    :cond_0
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 692
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 696
    :cond_1
    return-void
.end method

.method private setCacheImage(JLjava/util/ArrayList;Z)V
    .locals 2
    .parameter "flag"
    .parameter
    .parameter "forThumbnail"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 764
    .local p3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, p1, p2}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getIndexOfFlagInStoredOrder(J)I

    move-result v0

    .line 765
    .local v0, storedOrder:I
    if-ltz v0, :cond_0

    .line 766
    if-eqz p4, :cond_1

    .line 767
    invoke-direct {p0, p3, p1, p2}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->reduceThumbnail(Ljava/util/ArrayList;J)V

    .line 768
    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->tmpThumbnail:[Ljava/util/ArrayList;

    aput-object p3, v1, v0

    .line 773
    :cond_0
    :goto_0
    return-void

    .line 770
    :cond_1
    iget-object v1, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->tmpPreview:[Ljava/util/ArrayList;

    aput-object p3, v1, v0

    goto :goto_0
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 674
    invoke-virtual {p0, p1}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->writeCache(Ljava/io/ObjectOutputStream;)V

    .line 675
    return-void
.end method


# virtual methods
.method public finishCached()V
    .locals 0

    .prologue
    .line 714
    invoke-direct {p0}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->buildIndex()V

    .line 715
    return-void
.end method

.method public getCacheImageNumber(JZ)I
    .locals 9
    .parameter "flag"
    .parameter "forThumbnail"

    .prologue
    .line 796
    const/4 v4, 0x0

    .line 797
    .local v4, sum:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    sget-object v5, Lcom/android/thememanager/ThemeHelper;->sPreviewCacheOrder:[J

    array-length v5, v5

    if-ge v2, v5, :cond_1

    .line 798
    sget-object v5, Lcom/android/thememanager/ThemeHelper;->sPreviewCacheOrder:[J

    aget-wide v0, v5, v2

    .line 799
    .local v0, componentFlag:J
    and-long v5, p1, v0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 800
    invoke-direct {p0, v0, v1, p3}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getCacheIndex(JZ)Landroid/util/Pair;

    move-result-object v3

    .line 801
    .local v3, index:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v5, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v5, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    sub-int v5, v6, v5

    add-int/2addr v4, v5

    .line 797
    .end local v3           #index:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 804
    .end local v0           #componentFlag:J
    :cond_1
    return v4
.end method

.method public getCachePreview(J)Ljava/util/ArrayList;
    .locals 1
    .parameter "flag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 780
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getCacheImage(JZZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getCacheThumbnail(JZ)Ljava/util/ArrayList;
    .locals 1
    .parameter "flag"
    .parameter "loadCoverThumbnail"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 776
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->getCacheImage(JZZ)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method protected readImageInformation(Ljava/io/ObjectInputStream;)V
    .locals 1
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 667
    invoke-super {p0, p1}, Lcom/miui/android/resourcebrowser/ZipResourceCache;->readImageInformation(Ljava/io/ObjectInputStream;)V

    .line 668
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->thumbnailIndex:[I

    .line 669
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->previewIndex:[I

    .line 670
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->mCoverThumbnailPath:Ljava/lang/String;

    .line 671
    return-void
.end method

.method public setCachePreview(JLjava/util/ArrayList;)V
    .locals 1
    .parameter "flag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 792
    .local p3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->setCacheImage(JLjava/util/ArrayList;Z)V

    .line 793
    return-void
.end method

.method public setCacheThumbnail(JLjava/util/ArrayList;)V
    .locals 1
    .parameter "flag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 784
    .local p3, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->setCacheImage(JLjava/util/ArrayList;Z)V

    .line 785
    return-void
.end method

.method public setCoverThumbnail(Ljava/lang/String;)V
    .locals 0
    .parameter "thumbnailPath"

    .prologue
    .line 788
    iput-object p1, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->mCoverThumbnailPath:Ljava/lang/String;

    .line 789
    return-void
.end method

.method protected writeImageInformation(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 658
    invoke-super {p0, p1}, Lcom/miui/android/resourcebrowser/ZipResourceCache;->writeImageInformation(Ljava/io/ObjectOutputStream;)V

    .line 659
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->thumbnailIndex:[I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 660
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->previewIndex:[I

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 661
    iget-object v0, p0, Lcom/android/thememanager/ThemeInfo$ThemeInfoCacheNode;->mCoverThumbnailPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 662
    return-void
.end method
