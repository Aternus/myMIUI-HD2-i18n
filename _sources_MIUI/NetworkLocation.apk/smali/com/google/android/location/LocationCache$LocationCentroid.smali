.class public Lcom/google/android/location/LocationCache$LocationCentroid;
.super Ljava/lang/Object;
.source "LocationCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/location/LocationCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocationCentroid"
.end annotation


# instance fields
.field mCentroidLat:D

.field mCentroidLng:D

.field mConfidence:I

.field mLatSum:D

.field mLats:[D

.field mLngSum:D

.field mLngs:[D

.field mNumber:I

.field mRadii:[I


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0xa

    const-wide/16 v0, 0x0

    .line 628
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 614
    iput-wide v0, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mLatSum:D

    .line 615
    iput-wide v0, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mLngSum:D

    .line 616
    iput v3, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mNumber:I

    .line 617
    iput v3, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mConfidence:I

    .line 619
    iput-wide v0, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mCentroidLat:D

    .line 620
    iput-wide v0, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mCentroidLng:D

    .line 624
    new-array v0, v2, [D

    iput-object v0, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mLats:[D

    .line 625
    new-array v0, v2, [D

    iput-object v0, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mLngs:[D

    .line 626
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mRadii:[I

    .line 629
    invoke-virtual {p0}, Lcom/google/android/location/LocationCache$LocationCentroid;->reset()V

    .line 630
    return-void
.end method


# virtual methods
.method public addLocation(DDII)V
    .locals 2
    .parameter "lat"
    .parameter "lng"
    .parameter "accuracy"
    .parameter "confidence"

    .prologue
    .line 649
    iget v0, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mNumber:I

    const/16 v1, 0xa

    if-ge v0, v1, :cond_1

    const/16 v0, 0x1388

    if-gt p5, v0, :cond_1

    .line 650
    iget-wide v0, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mLatSum:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mLatSum:D

    .line 651
    iget-wide v0, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mLngSum:D

    add-double/2addr v0, p3

    iput-wide v0, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mLngSum:D

    .line 652
    iget v0, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mConfidence:I

    if-le p6, v0, :cond_0

    .line 653
    iput p6, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mConfidence:I

    .line 656
    :cond_0
    iget-object v0, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mLats:[D

    iget v1, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mNumber:I

    aput-wide p1, v0, v1

    .line 657
    iget-object v0, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mLngs:[D

    iget v1, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mNumber:I

    aput-wide p3, v0, v1

    .line 658
    iget-object v0, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mRadii:[I

    iget v1, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mNumber:I

    aput p5, v0, v1

    .line 659
    iget v0, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mNumber:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mNumber:I

    .line 661
    :cond_1
    return-void
.end method

.method public getAccuracy()I
    .locals 15

    .prologue
    const/4 v5, 0x1

    const/4 v14, 0x0

    .line 686
    iget v4, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mNumber:I

    if-nez v4, :cond_0

    move v4, v14

    .line 718
    :goto_0
    return v4

    .line 690
    :cond_0
    iget v4, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mNumber:I

    if-ne v4, v5, :cond_1

    .line 691
    iget-object v4, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mRadii:[I

    aget v4, v4, v14

    goto :goto_0

    .line 694
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/location/LocationCache$LocationCentroid;->getCentroidLat()D

    move-result-wide v0

    .line 695
    .local v0, cLat:D
    invoke-virtual {p0}, Lcom/google/android/location/LocationCache$LocationCentroid;->getCentroidLng()D

    move-result-wide v2

    .line 697
    .local v2, cLng:D
    const/4 v10, 0x0

    .line 698
    .local v10, meanDistanceSum:I
    const/16 v12, 0x1388

    .line 699
    .local v12, smallestCircle:I
    const/16 v13, 0x1388

    .line 700
    .local v13, smallestCircleDistance:I
    new-array v8, v5, [F

    .line 701
    .local v8, distance:[F
    const/4 v11, 0x0

    .line 703
    .local v11, outlierExists:Z
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    iget v4, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mNumber:I

    if-ge v9, v4, :cond_4

    .line 704
    iget-object v4, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mLats:[D

    aget-wide v4, v4, v9

    iget-object v6, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mLngs:[D

    aget-wide v6, v6, v9

    invoke-static/range {v0 .. v8}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 705
    aget v4, v8, v14

    float-to-int v4, v4

    add-int/2addr v10, v4

    .line 706
    aget v4, v8, v14

    iget-object v5, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mRadii:[I

    aget v5, v5, v9

    int-to-float v5, v5

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 707
    const/4 v11, 0x1

    .line 709
    :cond_2
    iget-object v4, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mRadii:[I

    aget v4, v4, v9

    if-ge v4, v12, :cond_3

    .line 710
    iget-object v4, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mRadii:[I

    aget v12, v4, v9

    .line 711
    aget v4, v8, v14

    float-to-int v13, v4

    .line 703
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 715
    :cond_4
    if-eqz v11, :cond_5

    .line 716
    iget v4, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mNumber:I

    div-int v4, v10, v4

    goto :goto_0

    .line 718
    :cond_5
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_0
.end method

.method public getCentroidLat()D
    .locals 4

    .prologue
    .line 668
    iget-wide v0, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mCentroidLat:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mNumber:I

    if-eqz v0, :cond_0

    .line 669
    iget-wide v0, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mLatSum:D

    iget v2, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mNumber:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mCentroidLat:D

    .line 671
    :cond_0
    iget-wide v0, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mCentroidLat:D

    return-wide v0
.end method

.method public getCentroidLng()D
    .locals 4

    .prologue
    .line 675
    iget-wide v0, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mCentroidLng:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mNumber:I

    if-eqz v0, :cond_0

    .line 676
    iget-wide v0, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mLngSum:D

    iget v2, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mNumber:I

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mCentroidLng:D

    .line 678
    :cond_0
    iget-wide v0, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mCentroidLng:D

    return-wide v0
.end method

.method public getConfidence()I
    .locals 1

    .prologue
    .line 682
    iget v0, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mConfidence:I

    return v0
.end method

.method public getNumber()I
    .locals 1

    .prologue
    .line 664
    iget v0, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mNumber:I

    return v0
.end method

.method public reset()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-wide/16 v2, 0x0

    .line 633
    iput-wide v2, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mLatSum:D

    .line 634
    iput-wide v2, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mLngSum:D

    .line 635
    iput v4, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mNumber:I

    .line 636
    iput v4, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mConfidence:I

    .line 638
    iput-wide v2, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mCentroidLat:D

    .line 639
    iput-wide v2, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mCentroidLng:D

    .line 641
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 642
    iget-object v1, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mLats:[D

    aput-wide v2, v1, v0

    .line 643
    iget-object v1, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mLngs:[D

    aput-wide v2, v1, v0

    .line 644
    iget-object v1, p0, Lcom/google/android/location/LocationCache$LocationCentroid;->mRadii:[I

    aput v4, v1, v0

    .line 641
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 646
    :cond_0
    return-void
.end method
