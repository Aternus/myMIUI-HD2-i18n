.class public Lcom/android/settings/fuelgauge/PowerUsageSummary;
.super Landroid/preference/PreferenceActivity;
.source "PowerUsageSummary.java"


# static fields
.field private static sBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field private static sBatteryLock:Ljava/lang/Object;

.field private static sBatteryStats:Lcom/android/internal/os/BatteryStatsImpl;


# instance fields
.field private mAppListGroup:Landroid/preference/PreferenceGroup;

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field private mStatsPeriod:J

.field private mStatsType:I

.field private mUsageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sBatteryLock:Ljava/lang/Object;

    .line 56
    sput-object v1, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 57
    sput-object v1, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sBatteryStats:Lcom/android/internal/os/BatteryStatsImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 61
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsPeriod:J

    return-void
.end method

.method public static getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;
    .locals 13

    .prologue
    .line 237
    sget-object v9, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sBatteryStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 238
    .local v9, stats:Lcom/android/internal/os/BatteryStatsImpl;
    if-nez v9, :cond_3

    .line 239
    sget-object v10, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sBatteryLock:Ljava/lang/Object;

    monitor-enter v10

    .line 240
    :try_start_0
    sget-object v11, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sBatteryStats:Lcom/android/internal/os/BatteryStatsImpl;

    if-nez v11, :cond_2

    .line 241
    invoke-static {}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->initBatteryInfo()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 243
    const/4 v4, 0x0

    .line 244
    .local v4, nextSlice:[B
    const/4 v3, 0x0

    .line 245
    .local v3, length:I
    :try_start_1
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v8, slices:Ljava/util/List;,"Ljava/util/List<[B>;"
    sget-object v11, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v11}, Lcom/android/internal/app/IBatteryStats;->getFirstDataSlice()[B

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    array-length v11, v4

    add-int/2addr v3, v11

    .line 248
    :goto_0
    sget-object v11, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v11}, Lcom/android/internal/app/IBatteryStats;->getNextDataSlice()[B

    move-result-object v4

    if-eqz v4, :cond_0

    .line 249
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    array-length v11, v4

    add-int/2addr v3, v11

    goto :goto_0

    .line 253
    :cond_0
    new-array v0, v3, [B

    .line 254
    .local v0, data:[B
    const/4 v7, 0x0

    .line 255
    .local v7, sliceStart:I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    .line 256
    .local v6, slice:[B
    const/4 v11, 0x0

    array-length v12, v6

    invoke-static {v6, v11, v0, v7, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 257
    array-length v11, v6

    add-int/2addr v7, v11

    goto :goto_1

    .line 260
    .end local v6           #slice:[B
    :cond_1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    .line 262
    .local v5, parcel:Landroid/os/Parcel;
    const/4 v11, 0x0

    :try_start_2
    array-length v12, v0

    invoke-virtual {v5, v0, v11, v12}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 263
    const/4 v11, 0x0

    invoke-virtual {v5, v11}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 264
    sget-object v11, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, v5}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #data:[B
    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl;

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sBatteryStats:Lcom/android/internal/os/BatteryStatsImpl;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 267
    :try_start_3
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    .line 270
    sget-object v11, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sBatteryStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/internal/os/BatteryStatsImpl;->distributeWorkLocked(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 276
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #length:I
    .end local v4           #nextSlice:[B
    .end local v5           #parcel:Landroid/os/Parcel;
    .end local v7           #sliceStart:I
    .end local v8           #slices:Ljava/util/List;,"Ljava/util/List<[B>;"
    :cond_2
    :goto_2
    :try_start_4
    sget-object v9, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sBatteryStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 277
    monitor-exit v10
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 280
    :cond_3
    return-object v9

    .line 267
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #length:I
    .restart local v4       #nextSlice:[B
    .restart local v5       #parcel:Landroid/os/Parcel;
    .restart local v7       #sliceStart:I
    .restart local v8       #slices:Ljava/util/List;,"Ljava/util/List<[B>;"
    :catchall_0
    move-exception v11

    :try_start_5
    invoke-virtual {v5}, Landroid/os/Parcel;->recycle()V

    throw v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 271
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v5           #parcel:Landroid/os/Parcel;
    .end local v7           #sliceStart:I
    .end local v8           #slices:Ljava/util/List;,"Ljava/util/List<[B>;"
    :catch_0
    move-exception v11

    move-object v1, v11

    .line 272
    .local v1, e:Landroid/os/RemoteException;
    :try_start_6
    const-string v11, "PowerUsageSummary"

    const-string v12, "RemoteException:"

    invoke-static {v11, v12, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 277
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v3           #length:I
    .end local v4           #nextSlice:[B
    :catchall_1
    move-exception v11

    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v11
.end method

.method private static initBatteryInfo()V
    .locals 2

    .prologue
    .line 65
    sget-object v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    if-nez v0, :cond_1

    .line 66
    sget-object v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sBatteryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_0
    sget-object v1, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    if-nez v1, :cond_0

    .line 68
    const-string v1, "batteryinfo"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    sput-object v1, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 71
    :cond_0
    monitor-exit v0

    .line 73
    :cond_1
    return-void

    .line 71
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private processAppUsage(Lcom/android/internal/os/BatteryStatsImpl;)V
    .locals 6
    .parameter "stats"

    .prologue
    .line 214
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v2

    .line 215
    .local v2, uidStats:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 216
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 217
    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    new-instance v5, Lcom/android/settings/fuelgauge/AppSipper;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/BatteryStats$Uid;

    invoke-direct {v5, v3}, Lcom/android/settings/fuelgauge/AppSipper;-><init>(Landroid/os/BatteryStats$Uid;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 216
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 219
    :cond_0
    return-void
.end method

.method private processMiscUsage()V
    .locals 2

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    new-instance v1, Lcom/android/settings/fuelgauge/PhoneSipper;

    invoke-direct {v1}, Lcom/android/settings/fuelgauge/PhoneSipper;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    new-instance v1, Lcom/android/settings/fuelgauge/ScreenSipper;

    invoke-direct {v1}, Lcom/android/settings/fuelgauge/ScreenSipper;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 224
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    new-instance v1, Lcom/android/settings/fuelgauge/WifiSipper;

    invoke-direct {v1}, Lcom/android/settings/fuelgauge/WifiSipper;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    new-instance v1, Lcom/android/settings/fuelgauge/BluetoothSipper;

    invoke-direct {v1}, Lcom/android/settings/fuelgauge/BluetoothSipper;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 226
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    new-instance v1, Lcom/android/settings/fuelgauge/IdleSipper;

    invoke-direct {v1}, Lcom/android/settings/fuelgauge/IdleSipper;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 227
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    new-instance v1, Lcom/android/settings/fuelgauge/RadioSipper;

    invoke-direct {v1}, Lcom/android/settings/fuelgauge/RadioSipper;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    return-void
.end method

.method private refreshStats()V
    .locals 23

    .prologue
    .line 162
    invoke-static {}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v12

    .line 163
    .local v12, stats:Lcom/android/internal/os/BatteryStatsImpl;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    mul-long v15, v17, v19

    .line 164
    .local v15, uSecTime:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v17, v0

    move-object v0, v12

    move-wide v1, v15

    move/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v13

    .line 165
    .local v13, uSecNow:J
    move-wide v0, v13

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsPeriod:J

    .line 167
    const-string v17, "PowerUsageSummary"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Uptime since last unplugged = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsPeriod:J

    move-wide/from16 v19, v0

    const-wide/16 v21, 0x3e8

    div-long v19, v19, v21

    invoke-virtual/range {v18 .. v20}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->clear()V

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object v2, v12

    move/from16 v3, v18

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/fuelgauge/BatterySipper;->setup(Landroid/content/Context;Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/BatteryStatsImpl;I)V

    .line 172
    move-object/from16 v0, p0

    move-object v1, v12

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->processAppUsage(Lcom/android/internal/os/BatteryStatsImpl;)V

    .line 173
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->processMiscUsage()V

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 177
    new-instance v4, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    move-object v0, v4

    move-object/from16 v1, p0

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;-><init>(Landroid/content/Context;Landroid/os/BatteryStats;)V

    .line 178
    .local v4, hist:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;
    const/16 v17, -0x1

    move-object v0, v4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->setOrder(I)V

    .line 179
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/fuelgauge/BatterySipper;

    .line 182
    .local v11, sipper:Lcom/android/settings/fuelgauge/BatterySipper;
    invoke-virtual {v11, v13, v14}, Lcom/android/settings/fuelgauge/BatterySipper;->compute(J)V

    goto :goto_0

    .line 184
    .end local v11           #sipper:Lcom/android/settings/fuelgauge/BatterySipper;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settings/fuelgauge/BatterySipper;

    .line 187
    .restart local v11       #sipper:Lcom/android/settings/fuelgauge/BatterySipper;
    move-object v0, v11

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mPower:D

    move-wide/from16 v17, v0

    const-wide/16 v19, 0x0

    cmpg-double v17, v17, v19

    if-ltz v17, :cond_1

    .line 188
    move-object v0, v11

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mPower:D

    move-wide/from16 v17, v0

    sget-wide v19, Lcom/android/settings/fuelgauge/BatterySipper;->mTotalPower:D

    div-double v17, v17, v19

    const-wide/high16 v19, 0x4059

    mul-double v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    .line 189
    .local v8, percentOfTotal:D
    const-wide v17, 0x3f1a36e2eb1c432dL

    cmpg-double v17, v8, v17

    if-ltz v17, :cond_1

    .line 191
    new-instance v10, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    move-object v0, v11

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mIcon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v17, v0

    move-object v0, v10

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object v3, v11

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/android/settings/fuelgauge/BatterySipper;)V

    .line 192
    .local v10, pref:Lcom/android/settings/fuelgauge/PowerGaugePreference;
    move-object v0, v11

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mPower:D

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4059

    mul-double v17, v17, v19

    sget-wide v19, Lcom/android/settings/fuelgauge/BatterySipper;->mMaxPower:D

    div-double v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    .line 194
    .local v6, percentOfMax:D
    move-object v0, v11

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object v0, v10

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 195
    invoke-virtual {v10, v8, v9}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setPercent(D)V

    .line 196
    const v17, 0x7fffffff

    move-object v0, v11

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/BatterySipper;->mPower:D

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move/from16 v18, v0

    sub-int v17, v17, v18

    move-object v0, v10

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setOrder(I)V

    .line 197
    invoke-virtual {v10, v6, v7}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setGaugeValue(D)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v17

    const/16 v18, 0x28

    move/from16 v0, v17

    move/from16 v1, v18

    if-le v0, v1, :cond_1

    .line 203
    .end local v6           #percentOfMax:D
    .end local v8           #percentOfTotal:D
    .end local v10           #pref:Lcom/android/settings/fuelgauge/PowerGaugePreference;
    .end local v11           #sipper:Lcom/android/settings/fuelgauge/BatterySipper;
    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsPeriod:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    move-object v1, v12

    move-wide/from16 v2, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->updateStatsPeriod(Lcom/android/internal/os/BatteryStatsImpl;J)V

    .line 204
    return-void
.end method

.method public static resetBatteryStats()V
    .locals 2

    .prologue
    .line 231
    sget-object v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sBatteryLock:Ljava/lang/Object;

    monitor-enter v0

    .line 232
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/settings/fuelgauge/PowerUsageSummary;->sBatteryStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 233
    monitor-exit v0

    .line 234
    return-void

    .line 233
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateStatsPeriod(Lcom/android/internal/os/BatteryStatsImpl;J)V
    .locals 6
    .parameter "stats"
    .parameter "duration"

    .prologue
    .line 207
    sget-wide v2, Lcom/android/settings/fuelgauge/BatterySipper;->mTotalPower:D

    const-wide v4, 0x408f400000000000L

    mul-double/2addr v2, v4

    const-wide v4, 0x40ac200000000000L

    div-double/2addr v2, v4

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 208
    .local v1, powerUsageString:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f090332

    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 210
    .local v0, label:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->setTitle(Ljava/lang/CharSequence;)V

    .line 211
    return-void

    .line 208
    .end local v0           #label:Ljava/lang/String;
    :cond_0
    const v2, 0x7f090333

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 77
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const v0, 0x7f040024

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addPreferencesFromResource(I)V

    .line 80
    invoke-static {}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->initBatteryInfo()V

    .line 81
    const-string v0, "app_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    .line 82
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    invoke-direct {v0, p0}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 83
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 121
    const v0, 0x7f09035f

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080041

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x74

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 125
    const/4 v0, 0x2

    const v1, 0x7f090360

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x1080414

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 128
    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 143
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 157
    :goto_0
    return v0

    .line 145
    :pswitch_0
    iget v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 150
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    move v0, v2

    .line 151
    goto :goto_0

    .line 148
    :cond_0
    iput v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    goto :goto_1

    .line 153
    :pswitch_1
    invoke-static {}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->resetBatteryStats()V

    .line 154
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    move v0, v2

    .line 155
    goto :goto_0

    .line 143
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 93
    invoke-static {}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->resetBatteryStats()V

    .line 94
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 95
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 99
    instance-of v1, p2, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    if-eqz v1, :cond_0

    .line 100
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 101
    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->startActivity(Landroid/content/Intent;)V

    .line 102
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    .line 115
    :goto_0
    return v1

    .line 104
    :cond_0
    instance-of v1, p2, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    if-nez v1, :cond_1

    .line 105
    const/4 v1, 0x0

    goto :goto_0

    .line 108
    :cond_1
    move-object v0, p2

    check-cast v0, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    move-object v1, v0

    .line 109
    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->getInfo()Lcom/android/settings/fuelgauge/BatterySipper;

    move-result-object v1

    .line 110
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/fuelgauge/PowerUsageDetail;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 111
    const-string v3, "usage_since"

    iget-wide v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsPeriod:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 112
    const-string v3, "battery_sipper"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 113
    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->startActivity(Landroid/content/Intent;)V

    .line 115
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    .line 134
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    if-nez v1, :cond_0

    const v1, 0x7f09035e

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 138
    return v2

    .line 134
    :cond_0
    const v1, 0x7f09035f

    goto :goto_0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 87
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 88
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    .line 89
    return-void
.end method
