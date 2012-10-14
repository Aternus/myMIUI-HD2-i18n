.class public Lcom/android/browser/controller/WebStorageSizeManager;
.super Ljava/lang/Object;
.source "WebStorageSizeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/controller/WebStorageSizeManager$WebKitAppCacheInfo;,
        Lcom/android/browser/controller/WebStorageSizeManager$AppCacheInfo;,
        Lcom/android/browser/controller/WebStorageSizeManager$StatFsDiskInfo;,
        Lcom/android/browser/controller/WebStorageSizeManager$DiskInfo;
    }
.end annotation


# static fields
.field public static final APPCACHE_MAXSIZE_PADDING:J = 0x80000L

.field private static final LOGTAG:Ljava/lang/String; = "browser"

.field private static final NOTIFICATION_INTERVAL:J = 0x493e0L

.field public static final ORIGIN_DEFAULT_QUOTA:J = 0x300000L

.field private static final OUT_OF_SPACE_ID:I = 0x1

.field public static final QUOTA_INCREASE_STEP:J = 0x100000L

.field private static final RESET_NOTIFICATION_INTERVAL:J = 0xbb8L

.field private static mLastOutOfSpaceNotificationTime:J


# instance fields
.field private mAppCacheMaxSize:J

.field private final mContext:Landroid/content/Context;

.field private mDiskInfo:Lcom/android/browser/controller/WebStorageSizeManager$DiskInfo;

.field private final mGlobalLimit:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 101
    const-wide/16 v0, -0x1

    sput-wide v0, Lcom/android/browser/controller/WebStorageSizeManager;->mLastOutOfSpaceNotificationTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/browser/controller/WebStorageSizeManager$DiskInfo;Lcom/android/browser/controller/WebStorageSizeManager$AppCacheInfo;)V
    .locals 4
    .parameter "ctx"
    .parameter "diskInfo"
    .parameter "appCacheInfo"

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p1, p0, Lcom/android/browser/controller/WebStorageSizeManager;->mContext:Landroid/content/Context;

    .line 189
    iput-object p2, p0, Lcom/android/browser/controller/WebStorageSizeManager;->mDiskInfo:Lcom/android/browser/controller/WebStorageSizeManager$DiskInfo;

    .line 190
    invoke-direct {p0}, Lcom/android/browser/controller/WebStorageSizeManager;->getGlobalLimit()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/browser/controller/WebStorageSizeManager;->mGlobalLimit:J

    .line 193
    iget-wide v0, p0, Lcom/android/browser/controller/WebStorageSizeManager;->mGlobalLimit:J

    const-wide/16 v2, 0x4

    div-long/2addr v0, v2

    invoke-interface {p3}, Lcom/android/browser/controller/WebStorageSizeManager$AppCacheInfo;->getAppCacheSizeBytes()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/browser/controller/WebStorageSizeManager;->mAppCacheMaxSize:J

    .line 195
    return-void
.end method

.method static calculateGlobalLimit(JJ)J
    .locals 4
    .parameter "fileSystemSizeBytes"
    .parameter "freeSpaceBytes"

    .prologue
    .line 327
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    cmp-long v0, p2, p0

    if-lez v0, :cond_1

    .line 330
    :cond_0
    const-wide/16 p0, 0x0

    .line 346
    .end local p0
    .end local p2
    :goto_0
    return-wide p0

    .line 333
    .restart local p0
    .restart local p2
    :cond_1
    const/4 v0, 0x2

    const-wide/32 v1, 0x100000

    div-long v1, p0, v1

    long-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->log10(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    shl-int/2addr v0, v1

    int-to-long v0, v0

    .line 336
    .local v0, fileSystemSizeRatio:J
    div-long/2addr p0, v0

    .end local p0
    long-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    const-wide/16 v0, 0x2

    div-long/2addr p2, v0

    .end local v0           #fileSystemSizeRatio:J
    .end local p2
    long-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    double-to-long p0, p0

    .line 341
    .local p0, maxSizeBytes:J
    const-wide/32 p2, 0x100000

    .line 342
    .local p2, maxSizeStepBytes:J
    cmp-long v0, p0, p2

    if-gez v0, :cond_2

    .line 343
    const-wide/16 p0, 0x0

    goto :goto_0

    .line 345
    :cond_2
    rem-long v0, p0, p2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const-wide/16 v0, 0x0

    .line 346
    .local v0, roundingExtra:J
    :goto_1
    div-long/2addr p0, p2

    .end local p0           #maxSizeBytes:J
    add-long/2addr p0, v0

    mul-long/2addr p0, p2

    goto :goto_0

    .line 345
    .end local v0           #roundingExtra:J
    .restart local p0       #maxSizeBytes:J
    :cond_3
    const-wide/16 v0, 0x1

    goto :goto_1
.end method

.method private getGlobalLimit()J
    .locals 6

    .prologue
    .line 320
    iget-object v4, p0, Lcom/android/browser/controller/WebStorageSizeManager;->mDiskInfo:Lcom/android/browser/controller/WebStorageSizeManager$DiskInfo;

    invoke-interface {v4}, Lcom/android/browser/controller/WebStorageSizeManager$DiskInfo;->getFreeSpaceSizeBytes()J

    move-result-wide v2

    .line 321
    .local v2, freeSpace:J
    iget-object v4, p0, Lcom/android/browser/controller/WebStorageSizeManager;->mDiskInfo:Lcom/android/browser/controller/WebStorageSizeManager$DiskInfo;

    invoke-interface {v4}, Lcom/android/browser/controller/WebStorageSizeManager$DiskInfo;->getTotalSizeBytes()J

    move-result-wide v0

    .line 322
    .local v0, fileSystemSize:J
    invoke-static {v0, v1, v2, v3}, Lcom/android/browser/controller/WebStorageSizeManager;->calculateGlobalLimit(JJ)J

    move-result-wide v4

    return-wide v4
.end method

.method static resetLastOutOfSpaceNotificationTime()V
    .locals 4

    .prologue
    .line 313
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x493e0

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    sput-wide v0, Lcom/android/browser/controller/WebStorageSizeManager;->mLastOutOfSpaceNotificationTime:J

    .line 315
    return-void
.end method

.method private scheduleOutOfSpaceNotification()V
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/browser/controller/WebStorageSizeManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 381
    :cond_0
    return-void
.end method


# virtual methods
.method public getAppCacheMaxSize()J
    .locals 2

    .prologue
    .line 201
    iget-wide v0, p0, Lcom/android/browser/controller/WebStorageSizeManager;->mAppCacheMaxSize:J

    return-wide v0
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 13
    .parameter "url"
    .parameter "databaseIdentifier"
    .parameter "currentQuota"
    .parameter "estimatedSize"
    .parameter "totalUsedQuota"
    .parameter "quotaUpdater"

    .prologue
    .line 221
    iget-wide v9, p0, Lcom/android/browser/controller/WebStorageSizeManager;->mGlobalLimit:J

    sub-long v9, v9, p7

    iget-wide v11, p0, Lcom/android/browser/controller/WebStorageSizeManager;->mAppCacheMaxSize:J

    sub-long v7, v9, v11

    .line 223
    .local v7, totalUnusedQuota:J
    const-wide/16 v9, 0x0

    cmp-long v9, v7, v9

    if-gtz v9, :cond_1

    .line 226
    const-wide/16 v9, 0x0

    cmp-long v9, p7, v9

    if-lez v9, :cond_0

    .line 233
    invoke-direct {p0}, Lcom/android/browser/controller/WebStorageSizeManager;->scheduleOutOfSpaceNotification()V

    .line 235
    :cond_0
    move-object/from16 v0, p9

    move-wide/from16 v1, p3

    invoke-interface {v0, v1, v2}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 272
    :goto_0
    return-void

    .line 241
    :cond_1
    move-wide/from16 v3, p3

    .line 242
    .local v3, newOriginQuota:J
    const-wide/16 v9, 0x0

    cmp-long v9, v3, v9

    if-nez v9, :cond_4

    .line 247
    cmp-long v9, v7, p5

    if-ltz v9, :cond_3

    .line 248
    move-wide/from16 v3, p5

    .line 271
    :cond_2
    :goto_1
    move-object/from16 v0, p9

    move-wide v1, v3

    invoke-interface {v0, v1, v2}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    goto :goto_0

    .line 251
    :cond_3
    const-wide/16 v3, 0x0

    goto :goto_1

    .line 260
    :cond_4
    const-wide/16 v9, 0x0

    cmp-long v9, p5, v9

    if-nez v9, :cond_5

    const-wide/32 v9, 0x100000

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v9

    move-wide v5, v9

    .line 263
    .local v5, quotaIncrease:J
    :goto_2
    add-long/2addr v3, v5

    .line 265
    cmp-long v9, v5, v7

    if-lez v9, :cond_2

    .line 267
    move-wide/from16 v3, p3

    goto :goto_1

    .end local v5           #quotaIncrease:J
    :cond_5
    move-wide/from16 v5, p5

    .line 260
    goto :goto_2
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 10
    .parameter "spaceNeeded"
    .parameter "totalUsedQuota"
    .parameter "quotaUpdater"

    .prologue
    const-wide/32 v8, 0x80000

    const-wide/16 v6, 0x0

    .line 286
    iget-wide v2, p0, Lcom/android/browser/controller/WebStorageSizeManager;->mGlobalLimit:J

    sub-long/2addr v2, p3

    iget-wide v4, p0, Lcom/android/browser/controller/WebStorageSizeManager;->mAppCacheMaxSize:J

    sub-long v0, v2, v4

    .line 288
    .local v0, totalUnusedQuota:J
    add-long v2, p1, v8

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 291
    cmp-long v2, p3, v6

    if-lez v2, :cond_0

    .line 298
    invoke-direct {p0}, Lcom/android/browser/controller/WebStorageSizeManager;->scheduleOutOfSpaceNotification()V

    .line 300
    :cond_0
    invoke-interface {p5, v6, v7}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 307
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-wide v2, p0, Lcom/android/browser/controller/WebStorageSizeManager;->mAppCacheMaxSize:J

    add-long v4, p1, v8

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/browser/controller/WebStorageSizeManager;->mAppCacheMaxSize:J

    .line 305
    iget-wide v2, p0, Lcom/android/browser/controller/WebStorageSizeManager;->mAppCacheMaxSize:J

    invoke-interface {p5, v2, v3}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    goto :goto_0
.end method
