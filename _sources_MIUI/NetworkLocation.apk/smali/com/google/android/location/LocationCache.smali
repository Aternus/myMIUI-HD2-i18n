.class public Lcom/google/android/location/LocationCache;
.super Ljava/lang/Object;
.source "LocationCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/location/LocationCache$LocationCentroid;,
        Lcom/google/android/location/LocationCache$Cache;,
        Lcom/google/android/location/LocationCache$Record;
    }
.end annotation


# instance fields
.field private final EXTRA_KEY_LOCATION_TYPE:Ljava/lang/String;

.field private final EXTRA_VALUE_LOCATION_TYPE_CELL:Ljava/lang/String;

.field private final EXTRA_VALUE_LOCATION_TYPE_WIFI:Ljava/lang/String;

.field private final mCellCache:Lcom/google/android/location/LocationCache$Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/location/LocationCache$Cache",
            "<",
            "Lcom/google/android/location/LocationCache$Record;",
            ">;"
        }
    .end annotation
.end field

.field private final mCellCentroid:Lcom/google/android/location/LocationCache$LocationCentroid;

.field private final mWifiCache:Lcom/google/android/location/LocationCache$Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/location/LocationCache$Cache",
            "<",
            "Lcom/google/android/location/LocationCache$Record;",
            ">;"
        }
    .end annotation
.end field

.field private final mWifiCentroid:Lcom/google/android/location/LocationCache$LocationCentroid;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .parameter "cacheDir"

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/google/android/location/LocationCache$LocationCentroid;

    invoke-direct {v0}, Lcom/google/android/location/LocationCache$LocationCentroid;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/LocationCache;->mCellCentroid:Lcom/google/android/location/LocationCache$LocationCentroid;

    .line 78
    new-instance v0, Lcom/google/android/location/LocationCache$LocationCentroid;

    invoke-direct {v0}, Lcom/google/android/location/LocationCache$LocationCentroid;-><init>()V

    iput-object v0, p0, Lcom/google/android/location/LocationCache;->mWifiCentroid:Lcom/google/android/location/LocationCache$LocationCentroid;

    .line 81
    const-string v0, "networkLocationType"

    iput-object v0, p0, Lcom/google/android/location/LocationCache;->EXTRA_KEY_LOCATION_TYPE:Ljava/lang/String;

    .line 82
    const-string v0, "cell"

    iput-object v0, p0, Lcom/google/android/location/LocationCache;->EXTRA_VALUE_LOCATION_TYPE_CELL:Ljava/lang/String;

    .line 83
    const-string v0, "wifi"

    iput-object v0, p0, Lcom/google/android/location/LocationCache;->EXTRA_VALUE_LOCATION_TYPE_WIFI:Ljava/lang/String;

    .line 86
    new-instance v0, Lcom/google/android/location/LocationCache$Cache;

    const-string v3, "cache.cell"

    const/16 v4, 0x32

    const-wide/32 v5, 0x2932e00

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/location/LocationCache$Cache;-><init>(Lcom/google/android/location/LocationCache;Ljava/lang/String;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/google/android/location/LocationCache;->mCellCache:Lcom/google/android/location/LocationCache$Cache;

    .line 88
    new-instance v0, Lcom/google/android/location/LocationCache$Cache;

    const-string v3, "cache.wifi"

    const/16 v4, 0xc8

    const-wide/32 v5, 0xa4cb800

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/google/android/location/LocationCache$Cache;-><init>(Lcom/google/android/location/LocationCache;Ljava/lang/String;Ljava/lang/String;IJ)V

    iput-object v0, p0, Lcom/google/android/location/LocationCache;->mWifiCache:Lcom/google/android/location/LocationCache$Cache;

    .line 90
    return-void
.end method

.method private getCellCacheKey(IIII)Ljava/lang/String;
    .locals 3
    .parameter "mcc"
    .parameter "mnc"
    .parameter "lac"
    .parameter "cid"

    .prologue
    const-string v2, ":"

    .line 725
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    .prologue
    .line 347
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/LocationCache;->mCellCache:Lcom/google/android/location/LocationCache$Cache;

    invoke-virtual {v0}, Lcom/google/android/location/LocationCache$Cache;->clear()V

    .line 348
    iget-object v0, p0, Lcom/google/android/location/LocationCache;->mWifiCache:Lcom/google/android/location/LocationCache$Cache;

    invoke-virtual {v0}, Lcom/google/android/location/LocationCache$Cache;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    monitor-exit p0

    return-void

    .line 347
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insert(IIIIDDIIJ)V
    .locals 11
    .parameter "mcc"
    .parameter "mnc"
    .parameter "lac"
    .parameter "cid"
    .parameter "lat"
    .parameter "lng"
    .parameter "accuracy"
    .parameter "confidence"
    .parameter "time"

    .prologue
    .line 324
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/location/LocationCache;->getCellCacheKey(IIII)Ljava/lang/String;

    move-result-object v9

    .line 325
    .local v9, key:Ljava/lang/String;
    if-gtz p9, :cond_0

    .line 326
    iget-object v0, p0, Lcom/google/android/location/LocationCache;->mCellCache:Lcom/google/android/location/LocationCache$Cache;

    new-instance v1, Lcom/google/android/location/LocationCache$Record;

    invoke-direct {v1}, Lcom/google/android/location/LocationCache$Record;-><init>()V

    #calls: Lcom/google/android/location/LocationCache$Cache;->insert(Ljava/lang/String;Lcom/google/android/location/LocationCache$Record;)V
    invoke-static {v0, v9, v1}, Lcom/google/android/location/LocationCache$Cache;->access$200(Lcom/google/android/location/LocationCache$Cache;Ljava/lang/String;Lcom/google/android/location/LocationCache$Record;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    :goto_0
    monitor-exit p0

    return-void

    .line 328
    :cond_0
    :try_start_1
    iget-object v10, p0, Lcom/google/android/location/LocationCache;->mCellCache:Lcom/google/android/location/LocationCache$Cache;

    new-instance v0, Lcom/google/android/location/LocationCache$Record;

    move/from16 v1, p9

    move/from16 v2, p10

    move-wide/from16 v3, p5

    move-wide/from16 v5, p7

    move-wide/from16 v7, p11

    invoke-direct/range {v0 .. v8}, Lcom/google/android/location/LocationCache$Record;-><init>(IIDDJ)V

    #calls: Lcom/google/android/location/LocationCache$Cache;->insert(Ljava/lang/String;Lcom/google/android/location/LocationCache$Record;)V
    invoke-static {v10, v9, v0}, Lcom/google/android/location/LocationCache$Cache;->access$200(Lcom/google/android/location/LocationCache$Cache;Ljava/lang/String;Lcom/google/android/location/LocationCache$Record;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 324
    .end local v9           #key:Ljava/lang/String;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized insert(Ljava/lang/String;DDIIJ)V
    .locals 10
    .parameter "bssid"
    .parameter "lat"
    .parameter "lng"
    .parameter "accuracy"
    .parameter "confidence"
    .parameter "time"

    .prologue
    .line 334
    monitor-enter p0

    if-gtz p6, :cond_0

    .line 335
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/LocationCache;->mWifiCache:Lcom/google/android/location/LocationCache$Cache;

    new-instance v1, Lcom/google/android/location/LocationCache$Record;

    invoke-direct {v1}, Lcom/google/android/location/LocationCache$Record;-><init>()V

    #calls: Lcom/google/android/location/LocationCache$Cache;->insert(Ljava/lang/String;Lcom/google/android/location/LocationCache$Record;)V
    invoke-static {v0, p1, v1}, Lcom/google/android/location/LocationCache$Cache;->access$200(Lcom/google/android/location/LocationCache$Cache;Ljava/lang/String;Lcom/google/android/location/LocationCache$Record;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 339
    :goto_0
    monitor-exit p0

    return-void

    .line 337
    :cond_0
    :try_start_1
    iget-object v9, p0, Lcom/google/android/location/LocationCache;->mWifiCache:Lcom/google/android/location/LocationCache$Cache;

    new-instance v0, Lcom/google/android/location/LocationCache$Record;

    move/from16 v1, p6

    move/from16 v2, p7

    move-wide v3, p2

    move-wide v5, p4

    move-wide/from16 v7, p8

    invoke-direct/range {v0 .. v8}, Lcom/google/android/location/LocationCache$Record;-><init>(IIDDJ)V

    #calls: Lcom/google/android/location/LocationCache$Cache;->insert(Ljava/lang/String;Lcom/google/android/location/LocationCache$Record;)V
    invoke-static {v9, p1, v0}, Lcom/google/android/location/LocationCache$Cache;->access$200(Lcom/google/android/location/LocationCache$Cache;Ljava/lang/String;Lcom/google/android/location/LocationCache$Record;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 334
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized lookup(Lcom/google/android/location/CellState;Ljava/util/List;Ljava/util/List;Landroid/location/Location;Lcom/google/common/io/protocol/ProtoBuf;)Z
    .locals 35
    .parameter "cellState"
    .parameter
    .parameter
    .parameter "result"
    .parameter "debugProfile"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/location/CellState;",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/location/CellState;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Landroid/location/Location;",
            "Lcom/google/common/io/protocol/ProtoBuf;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 106
    .local p2, cellHistory:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/location/CellState;>;"
    .local p3, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    monitor-enter p0

    :try_start_0
    const-string v5, "LocationCache"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 107
    const-string v5, "LocationCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "including cell:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p1, :cond_3

    const/4 v7, 0x1

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", wifi:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p3, :cond_4

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    .line 113
    .local v25, now:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCache;->mCellCentroid:Lcom/google/android/location/LocationCache$LocationCentroid;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/location/LocationCache$LocationCentroid;->reset()V

    .line 114
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCache;->mWifiCentroid:Lcom/google/android/location/LocationCache$LocationCentroid;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/location/LocationCache$LocationCentroid;->reset()V

    .line 116
    if-eqz p1, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/location/CellState;->isValid()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 117
    const/16 v18, 0x0

    .line 118
    .local v18, deviceLocation:Lcom/google/common/io/protocol/ProtoBuf;
    if-eqz p5, :cond_1

    .line 119
    new-instance v18, Lcom/google/common/io/protocol/ProtoBuf;

    .end local v18           #deviceLocation:Lcom/google/common/io/protocol/ProtoBuf;
    sget-object v5, Lcom/google/android/location/protocol/GlocationMessageTypes;->GDEVICE_LOCATION:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 120
    .restart local v18       #deviceLocation:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v5, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/location/CellState;->gcell()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v6

    move-object/from16 v0, v18

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 123
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/location/CellState;->getMcc()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/location/CellState;->getMnc()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/location/CellState;->getLac()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/location/CellState;->getCid()I

    move-result v8

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/location/LocationCache;->getCellCacheKey(IIII)Ljava/lang/String;

    move-result-object v27

    .line 125
    .local v27, primaryCellKey:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCache;->mCellCache:Lcom/google/android/location/LocationCache$Cache;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v27

    #calls: Lcom/google/android/location/LocationCache$Cache;->lookup(Ljava/lang/String;)Lcom/google/android/location/LocationCache$Record;
    invoke-static {v0, v1}, Lcom/google/android/location/LocationCache$Cache;->access$000(Lcom/google/android/location/LocationCache$Cache;Ljava/lang/String;)Lcom/google/android/location/LocationCache$Record;

    move-result-object v28

    .line 128
    .local v28, record:Lcom/google/android/location/LocationCache$Record;
    if-nez v28, :cond_2

    .line 129
    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/location/CellState;->getLac()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/location/CellState;->getCid()I

    move-result v8

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/location/LocationCache;->getCellCacheKey(IIII)Ljava/lang/String;

    move-result-object v27

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCache;->mCellCache:Lcom/google/android/location/LocationCache$Cache;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v27

    #calls: Lcom/google/android/location/LocationCache$Cache;->lookup(Ljava/lang/String;)Lcom/google/android/location/LocationCache$Record;
    invoke-static {v0, v1}, Lcom/google/android/location/LocationCache$Cache;->access$000(Lcom/google/android/location/LocationCache$Cache;Ljava/lang/String;)Lcom/google/android/location/LocationCache$Record;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v28

    .line 133
    :cond_2
    if-nez v28, :cond_5

    .line 135
    const/4 v5, 0x0

    .line 319
    .end local v18           #deviceLocation:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v27           #primaryCellKey:Ljava/lang/String;
    .end local v28           #record:Lcom/google/android/location/LocationCache$Record;
    :goto_2
    monitor-exit p0

    return v5

    .line 107
    .end local v25           #now:J
    :cond_3
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_4
    :try_start_1
    const-string v7, "null"

    goto/16 :goto_1

    .line 138
    .restart local v18       #deviceLocation:Lcom/google/common/io/protocol/ProtoBuf;
    .restart local v25       #now:J
    .restart local v27       #primaryCellKey:Ljava/lang/String;
    .restart local v28       #record:Lcom/google/android/location/LocationCache$Record;
    :cond_5
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/location/LocationCache$Record;->isValid()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 139
    if-eqz p5, :cond_6

    .line 140
    const/4 v5, 0x1

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/location/LocationCache$Record;->glocation()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v6

    move-object/from16 v0, v18

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 142
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCache;->mCellCentroid:Lcom/google/android/location/LocationCache$LocationCentroid;

    move-object v5, v0

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/location/LocationCache$Record;->getLat()D

    move-result-wide v6

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/location/LocationCache$Record;->getLng()D

    move-result-wide v8

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/location/LocationCache$Record;->getAccuracy()I

    move-result v10

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/location/LocationCache$Record;->getConfidence()I

    move-result v11

    invoke-virtual/range {v5 .. v11}, Lcom/google/android/location/LocationCache$LocationCentroid;->addLocation(DDII)V

    .line 145
    :cond_7
    if-eqz p5, :cond_8

    .line 146
    const/4 v5, 0x3

    move-object/from16 v0, p5

    move v1, v5

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 150
    .end local v18           #deviceLocation:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v27           #primaryCellKey:Ljava/lang/String;
    .end local v28           #record:Lcom/google/android/location/LocationCache$Record;
    :cond_8
    if-eqz p2, :cond_f

    .line 151
    monitor-enter p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 152
    :try_start_2
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .local v22, i$:Ljava/util/Iterator;
    :cond_9
    :goto_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/google/android/location/CellState;

    .line 154
    .local v20, historicalCell:Lcom/google/android/location/CellState;
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/location/CellState;->getTime()J

    move-result-wide v5

    sub-long v5, v25, v5

    const-wide/16 v7, 0x7530

    cmp-long v5, v5, v7

    if-gez v5, :cond_9

    .line 155
    const/16 v18, 0x0

    .line 156
    .restart local v18       #deviceLocation:Lcom/google/common/io/protocol/ProtoBuf;
    if-eqz p5, :cond_a

    .line 157
    new-instance v18, Lcom/google/common/io/protocol/ProtoBuf;

    .end local v18           #deviceLocation:Lcom/google/common/io/protocol/ProtoBuf;
    sget-object v5, Lcom/google/android/location/protocol/GlocationMessageTypes;->GDEVICE_LOCATION:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 158
    .restart local v18       #deviceLocation:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v5, 0x2

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/location/CellState;->gcell()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v6

    move-object/from16 v0, v18

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 161
    :cond_a
    invoke-virtual/range {v20 .. v20}, Lcom/google/android/location/CellState;->getMcc()I

    move-result v5

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/location/CellState;->getMnc()I

    move-result v6

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/location/CellState;->getLac()I

    move-result v7

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/location/CellState;->getCid()I

    move-result v8

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/location/LocationCache;->getCellCacheKey(IIII)Ljava/lang/String;

    move-result-object v21

    .line 164
    .local v21, historicalCellKey:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCache;->mCellCache:Lcom/google/android/location/LocationCache$Cache;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v21

    #calls: Lcom/google/android/location/LocationCache$Cache;->lookup(Ljava/lang/String;)Lcom/google/android/location/LocationCache$Record;
    invoke-static {v0, v1}, Lcom/google/android/location/LocationCache$Cache;->access$000(Lcom/google/android/location/LocationCache$Cache;Ljava/lang/String;)Lcom/google/android/location/LocationCache$Record;

    move-result-object v28

    .line 167
    .restart local v28       #record:Lcom/google/android/location/LocationCache$Record;
    if-nez v28, :cond_b

    .line 168
    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/location/CellState;->getLac()I

    move-result v7

    invoke-virtual/range {v20 .. v20}, Lcom/google/android/location/CellState;->getCid()I

    move-result v8

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/location/LocationCache;->getCellCacheKey(IIII)Ljava/lang/String;

    move-result-object v21

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCache;->mCellCache:Lcom/google/android/location/LocationCache$Cache;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v21

    #calls: Lcom/google/android/location/LocationCache$Cache;->lookup(Ljava/lang/String;)Lcom/google/android/location/LocationCache$Record;
    invoke-static {v0, v1}, Lcom/google/android/location/LocationCache$Cache;->access$000(Lcom/google/android/location/LocationCache$Cache;Ljava/lang/String;)Lcom/google/android/location/LocationCache$Record;

    move-result-object v28

    .line 173
    :cond_b
    if-eqz v28, :cond_d

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/location/LocationCache$Record;->isValid()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 174
    if-eqz p5, :cond_c

    .line 175
    const/4 v5, 0x1

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/location/LocationCache$Record;->glocation()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v6

    move-object/from16 v0, v18

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 178
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCache;->mCellCentroid:Lcom/google/android/location/LocationCache$LocationCentroid;

    move-object v5, v0

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/location/LocationCache$Record;->getLat()D

    move-result-wide v6

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/location/LocationCache$Record;->getLng()D

    move-result-wide v8

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/location/LocationCache$Record;->getAccuracy()I

    move-result v10

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/location/LocationCache$Record;->getConfidence()I

    move-result v11

    invoke-virtual/range {v5 .. v11}, Lcom/google/android/location/LocationCache$LocationCentroid;->addLocation(DDII)V

    .line 181
    :cond_d
    if-eqz p5, :cond_9

    .line 182
    const/4 v5, 0x3

    move-object/from16 v0, p5

    move v1, v5

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    goto/16 :goto_3

    .line 186
    .end local v18           #deviceLocation:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v20           #historicalCell:Lcom/google/android/location/CellState;
    .end local v21           #historicalCellKey:Ljava/lang/String;
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v28           #record:Lcom/google/android/location/LocationCache$Record;
    :catchall_0
    move-exception v5

    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 106
    .end local v25           #now:J
    :catchall_1
    move-exception v5

    monitor-exit p0

    throw v5

    .line 186
    .restart local v22       #i$:Ljava/util/Iterator;
    .restart local v25       #now:J
    :cond_e
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 189
    .end local v22           #i$:Ljava/util/Iterator;
    :cond_f
    if-eqz p3, :cond_16

    .line 190
    const/16 v24, 0x0

    .line 191
    .local v24, miss:I
    :try_start_5
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    .restart local v22       #i$:Ljava/util/Iterator;
    :cond_10
    :goto_4
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Landroid/net/wifi/ScanResult;

    .line 192
    .local v29, scanResult:Landroid/net/wifi/ScanResult;
    move-object/from16 v0, v29

    iget-object v0, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    move-object/from16 v33, v0

    .line 193
    .local v33, wifiKey:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCache;->mWifiCache:Lcom/google/android/location/LocationCache$Cache;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v33

    #calls: Lcom/google/android/location/LocationCache$Cache;->lookup(Ljava/lang/String;)Lcom/google/android/location/LocationCache$Record;
    invoke-static {v0, v1}, Lcom/google/android/location/LocationCache$Cache;->access$000(Lcom/google/android/location/LocationCache$Cache;Ljava/lang/String;)Lcom/google/android/location/LocationCache$Record;

    move-result-object v28

    .line 194
    .restart local v28       #record:Lcom/google/android/location/LocationCache$Record;
    if-nez v28, :cond_11

    .line 195
    add-int/lit8 v24, v24, 0x1

    goto :goto_4

    .line 197
    :cond_11
    const/16 v18, 0x0

    .line 198
    .restart local v18       #deviceLocation:Lcom/google/common/io/protocol/ProtoBuf;
    if-eqz p5, :cond_12

    .line 199
    new-instance v18, Lcom/google/common/io/protocol/ProtoBuf;

    .end local v18           #deviceLocation:Lcom/google/common/io/protocol/ProtoBuf;
    sget-object v5, Lcom/google/android/location/protocol/GlocationMessageTypes;->GDEVICE_LOCATION:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 200
    .restart local v18       #deviceLocation:Lcom/google/common/io/protocol/ProtoBuf;
    const/4 v5, 0x3

    invoke-static/range {v29 .. v29}, Lcom/google/android/location/LocationMasfClient;->wifiDeviceProto(Landroid/net/wifi/ScanResult;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v6

    move-object/from16 v0, v18

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 203
    :cond_12
    invoke-virtual/range {v28 .. v28}, Lcom/google/android/location/LocationCache$Record;->isValid()Z

    move-result v5

    if-eqz v5, :cond_14

    .line 204
    if-eqz p5, :cond_13

    .line 205
    const/4 v5, 0x1

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/location/LocationCache$Record;->glocation()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v6

    move-object/from16 v0, v18

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 208
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCache;->mWifiCentroid:Lcom/google/android/location/LocationCache$LocationCentroid;

    move-object v5, v0

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/location/LocationCache$Record;->getLat()D

    move-result-wide v6

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/location/LocationCache$Record;->getLng()D

    move-result-wide v8

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/location/LocationCache$Record;->getAccuracy()I

    move-result v10

    invoke-virtual/range {v28 .. v28}, Lcom/google/android/location/LocationCache$Record;->getConfidence()I

    move-result v11

    invoke-virtual/range {v5 .. v11}, Lcom/google/android/location/LocationCache$LocationCentroid;->addLocation(DDII)V

    .line 211
    :cond_14
    if-eqz p5, :cond_10

    .line 212
    const/4 v5, 0x3

    move-object/from16 v0, p5

    move v1, v5

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    goto :goto_4

    .line 217
    .end local v18           #deviceLocation:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v28           #record:Lcom/google/android/location/LocationCache$Record;
    .end local v29           #scanResult:Landroid/net/wifi/ScanResult;
    .end local v33           #wifiKey:Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCache;->mWifiCentroid:Lcom/google/android/location/LocationCache$LocationCentroid;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/location/LocationCache$LocationCentroid;->getNumber()I

    move-result v5

    const/4 v6, 0x1

    if-lt v5, v6, :cond_1b

    .line 229
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v24           #miss:I
    :cond_16
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCache;->mCellCentroid:Lcom/google/android/location/LocationCache$LocationCentroid;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/location/LocationCache$LocationCentroid;->getNumber()I

    move-result v5

    if-lez v5, :cond_17

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCache;->mCellCache:Lcom/google/android/location/LocationCache$Cache;

    move-object v5, v0

    #calls: Lcom/google/android/location/LocationCache$Cache;->save()V
    invoke-static {v5}, Lcom/google/android/location/LocationCache$Cache;->access$100(Lcom/google/android/location/LocationCache$Cache;)V

    .line 232
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCache;->mWifiCentroid:Lcom/google/android/location/LocationCache$LocationCentroid;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/location/LocationCache$LocationCentroid;->getNumber()I

    move-result v5

    if-lez v5, :cond_18

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCache;->mWifiCache:Lcom/google/android/location/LocationCache$Cache;

    move-object v5, v0

    #calls: Lcom/google/android/location/LocationCache$Cache;->save()V
    invoke-static {v5}, Lcom/google/android/location/LocationCache$Cache;->access$100(Lcom/google/android/location/LocationCache$Cache;)V

    .line 236
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCache;->mCellCentroid:Lcom/google/android/location/LocationCache$LocationCentroid;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/location/LocationCache$LocationCentroid;->getAccuracy()I

    move-result v14

    .line 237
    .local v14, cellAccuracy:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCache;->mWifiCentroid:Lcom/google/android/location/LocationCache$LocationCentroid;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/location/LocationCache$LocationCentroid;->getAccuracy()I

    move-result v31

    .line 239
    .local v31, wifiAccuracy:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCache;->mCellCentroid:Lcom/google/android/location/LocationCache$LocationCentroid;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/location/LocationCache$LocationCentroid;->getConfidence()I

    move-result v15

    .line 240
    .local v15, cellConfidence:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCache;->mWifiCentroid:Lcom/google/android/location/LocationCache$LocationCentroid;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/location/LocationCache$LocationCentroid;->getConfidence()I

    move-result v32

    .line 242
    .local v32, wifiConfidence:I
    const-string v5, "LocationCache"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 243
    const-string v5, "LocationCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cellAccuracy:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", wifiAccuracy:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCache;->mCellCentroid:Lcom/google/android/location/LocationCache$LocationCentroid;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/location/LocationCache$LocationCentroid;->getNumber()I

    move-result v5

    if-lez v5, :cond_1d

    const/16 v5, 0x1388

    if-gt v14, v5, :cond_1d

    const/4 v5, 0x1

    move/from16 v16, v5

    .line 247
    .local v16, cellValid:Z
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCache;->mWifiCentroid:Lcom/google/android/location/LocationCache$LocationCentroid;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/location/LocationCache$LocationCentroid;->getNumber()I

    move-result v5

    if-lez v5, :cond_1e

    const/16 v5, 0x1388

    move/from16 v0, v31

    move v1, v5

    if-gt v0, v1, :cond_1e

    const/4 v5, 0x1

    move/from16 v34, v5

    .line 248
    .local v34, wifiValid:Z
    :goto_7
    if-nez v16, :cond_1f

    if-nez v34, :cond_1f

    .line 250
    const/high16 v5, -0x4080

    move-object/from16 v0, p4

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    .line 253
    if-eqz p5, :cond_1a

    .line 254
    new-instance v18, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v5, Lcom/google/android/location/protocol/GlocationMessageTypes;->GDEVICE_LOCATION:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 255
    .restart local v18       #deviceLocation:Lcom/google/common/io/protocol/ProtoBuf;
    new-instance v5, Lcom/google/android/location/CollectedLocation;

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move-object/from16 v1, p4

    move-wide v2, v6

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/location/CollectedLocation;-><init>(Landroid/location/Location;JZ)V

    invoke-static {v5}, Lcom/google/android/location/LocationMasfClient;->createLocationProto(Lcom/google/android/location/CollectedLocation;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v23

    .line 257
    .local v23, lpb:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v5, 0x8

    const/4 v6, 0x1

    move-object/from16 v0, v23

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 258
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move v1, v5

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 259
    const/4 v5, 0x3

    move-object/from16 v0, p5

    move v1, v5

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 261
    .end local v18           #deviceLocation:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v23           #lpb:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_1a
    const/4 v5, 0x1

    goto/16 :goto_2

    .line 219
    .end local v14           #cellAccuracy:I
    .end local v15           #cellConfidence:I
    .end local v16           #cellValid:Z
    .end local v31           #wifiAccuracy:I
    .end local v32           #wifiConfidence:I
    .end local v34           #wifiValid:Z
    .restart local v22       #i$:Ljava/util/Iterator;
    .restart local v24       #miss:I
    :cond_1b
    const/4 v5, 0x5

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    div-int/lit8 v6, v6, 0x2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    move/from16 v0, v24

    move v1, v5

    if-le v0, v1, :cond_1c

    .line 221
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 224
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCache;->mWifiCache:Lcom/google/android/location/LocationCache$Cache;

    move-object v5, v0

    #calls: Lcom/google/android/location/LocationCache$Cache;->save()V
    invoke-static {v5}, Lcom/google/android/location/LocationCache$Cache;->access$100(Lcom/google/android/location/LocationCache$Cache;)V

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCache;->mWifiCentroid:Lcom/google/android/location/LocationCache$LocationCentroid;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/location/LocationCache$LocationCentroid;->reset()V

    goto/16 :goto_5

    .line 246
    .end local v22           #i$:Ljava/util/Iterator;
    .end local v24           #miss:I
    .restart local v14       #cellAccuracy:I
    .restart local v15       #cellConfidence:I
    .restart local v31       #wifiAccuracy:I
    .restart local v32       #wifiConfidence:I
    :cond_1d
    const/4 v5, 0x0

    move/from16 v16, v5

    goto/16 :goto_6

    .line 247
    .restart local v16       #cellValid:Z
    :cond_1e
    const/4 v5, 0x0

    move/from16 v34, v5

    goto :goto_7

    .line 264
    .restart local v34       #wifiValid:Z
    :cond_1f
    const/16 v30, 0x1

    .line 267
    .local v30, useCell:Z
    if-eqz v16, :cond_25

    if-eqz v34, :cond_25

    .line 268
    const/4 v5, 0x1

    new-array v13, v5, [F

    .line 269
    .local v13, distance:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCache;->mCellCentroid:Lcom/google/android/location/LocationCache$LocationCentroid;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/location/LocationCache$LocationCentroid;->getCentroidLat()D

    move-result-wide v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCache;->mCellCentroid:Lcom/google/android/location/LocationCache$LocationCentroid;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/google/android/location/LocationCache$LocationCentroid;->getCentroidLng()D

    move-result-wide v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCache;->mWifiCentroid:Lcom/google/android/location/LocationCache$LocationCentroid;

    move-object v9, v0

    invoke-virtual {v9}, Lcom/google/android/location/LocationCache$LocationCentroid;->getCentroidLat()D

    move-result-wide v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCache;->mWifiCentroid:Lcom/google/android/location/LocationCache$LocationCentroid;

    move-object v11, v0

    invoke-virtual {v11}, Lcom/google/android/location/LocationCache$LocationCentroid;->getCentroidLng()D

    move-result-wide v11

    invoke-static/range {v5 .. v13}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 273
    const/4 v5, 0x0

    aget v5, v13, v5

    add-int v6, v14, v31

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_21

    const/4 v5, 0x1

    move/from16 v17, v5

    .line 275
    .local v17, consistent:Z
    :goto_8
    if-eqz v17, :cond_23

    .line 277
    move v0, v14

    move/from16 v1, v31

    if-gt v0, v1, :cond_22

    const/4 v5, 0x1

    move/from16 v30, v5

    .line 286
    .end local v13           #distance:[F
    .end local v17           #consistent:Z
    :goto_9
    if-eqz v30, :cond_27

    .line 288
    int-to-float v5, v14

    move-object/from16 v0, p4

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCache;->mCellCentroid:Lcom/google/android/location/LocationCache$LocationCentroid;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/location/LocationCache$LocationCentroid;->getCentroidLat()D

    move-result-wide v5

    move-object/from16 v0, p4

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCache;->mCellCentroid:Lcom/google/android/location/LocationCache$LocationCentroid;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/location/LocationCache$LocationCentroid;->getCentroidLng()D

    move-result-wide v5

    move-object/from16 v0, p4

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 291
    move-object/from16 v0, p4

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setTime(J)V

    .line 293
    invoke-virtual/range {p4 .. p4}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_26

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v19, v5

    .line 294
    .local v19, extras:Landroid/os/Bundle;
    :goto_a
    const-string v5, "networkLocationType"

    const-string v6, "cell"

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 311
    :goto_b
    if-eqz p5, :cond_20

    .line 312
    new-instance v18, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v5, Lcom/google/android/location/protocol/GlocationMessageTypes;->GDEVICE_LOCATION:Lcom/google/common/io/protocol/ProtoBufType;

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 313
    .restart local v18       #deviceLocation:Lcom/google/common/io/protocol/ProtoBuf;
    new-instance v5, Lcom/google/android/location/CollectedLocation;

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move-object/from16 v1, p4

    move-wide v2, v6

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/location/CollectedLocation;-><init>(Landroid/location/Location;JZ)V

    invoke-static {v5}, Lcom/google/android/location/LocationMasfClient;->createLocationProto(Lcom/google/android/location/CollectedLocation;)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v23

    .line 315
    .restart local v23       #lpb:Lcom/google/common/io/protocol/ProtoBuf;
    const/16 v5, 0x8

    const/4 v6, 0x1

    move-object/from16 v0, v23

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 316
    const/4 v5, 0x1

    move-object/from16 v0, v18

    move v1, v5

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 317
    const/4 v5, 0x3

    move-object/from16 v0, p5

    move v1, v5

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/common/io/protocol/ProtoBuf;)V

    .line 319
    .end local v18           #deviceLocation:Lcom/google/common/io/protocol/ProtoBuf;
    .end local v23           #lpb:Lcom/google/common/io/protocol/ProtoBuf;
    :cond_20
    const/4 v5, 0x1

    goto/16 :goto_2

    .line 273
    .end local v19           #extras:Landroid/os/Bundle;
    .restart local v13       #distance:[F
    :cond_21
    const/4 v5, 0x0

    move/from16 v17, v5

    goto/16 :goto_8

    .line 277
    .restart local v17       #consistent:Z
    :cond_22
    const/4 v5, 0x0

    move/from16 v30, v5

    goto/16 :goto_9

    .line 280
    :cond_23
    move v0, v15

    move/from16 v1, v32

    if-lt v0, v1, :cond_24

    const/4 v5, 0x1

    move/from16 v30, v5

    :goto_c
    goto/16 :goto_9

    :cond_24
    const/4 v5, 0x0

    move/from16 v30, v5

    goto :goto_c

    .line 283
    .end local v13           #distance:[F
    .end local v17           #consistent:Z
    :cond_25
    move/from16 v30, v16

    goto/16 :goto_9

    .line 293
    :cond_26
    invoke-virtual/range {p4 .. p4}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    move-object/from16 v19, v5

    goto :goto_a

    .line 299
    :cond_27
    move/from16 v0, v31

    int-to-float v0, v0

    move v5, v0

    move-object/from16 v0, p4

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCache;->mWifiCentroid:Lcom/google/android/location/LocationCache$LocationCentroid;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/location/LocationCache$LocationCentroid;->getCentroidLat()D

    move-result-wide v5

    move-object/from16 v0, p4

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/location/LocationCache;->mWifiCentroid:Lcom/google/android/location/LocationCache$LocationCentroid;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/location/LocationCache$LocationCentroid;->getCentroidLng()D

    move-result-wide v5

    move-object/from16 v0, p4

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLongitude(D)V

    .line 302
    move-object/from16 v0, p4

    move-wide/from16 v1, v25

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setTime(J)V

    .line 304
    invoke-virtual/range {p4 .. p4}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-nez v5, :cond_28

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object/from16 v19, v5

    .line 305
    .restart local v19       #extras:Landroid/os/Bundle;
    :goto_d
    const-string v5, "networkLocationType"

    const-string v6, "wifi"

    move-object/from16 v0, v19

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    move-object/from16 v0, p4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    goto/16 :goto_b

    .line 304
    .end local v19           #extras:Landroid/os/Bundle;
    :cond_28
    invoke-virtual/range {p4 .. p4}, Landroid/location/Location;->getExtras()Landroid/os/Bundle;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v5

    move-object/from16 v19, v5

    goto :goto_d
.end method

.method public declared-synchronized save()V
    .locals 1

    .prologue
    .line 342
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/LocationCache;->mCellCache:Lcom/google/android/location/LocationCache$Cache;

    #calls: Lcom/google/android/location/LocationCache$Cache;->save()V
    invoke-static {v0}, Lcom/google/android/location/LocationCache$Cache;->access$100(Lcom/google/android/location/LocationCache$Cache;)V

    .line 343
    iget-object v0, p0, Lcom/google/android/location/LocationCache;->mWifiCache:Lcom/google/android/location/LocationCache$Cache;

    #calls: Lcom/google/android/location/LocationCache$Cache;->save()V
    invoke-static {v0}, Lcom/google/android/location/LocationCache$Cache;->access$100(Lcom/google/android/location/LocationCache$Cache;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    monitor-exit p0

    return-void

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
