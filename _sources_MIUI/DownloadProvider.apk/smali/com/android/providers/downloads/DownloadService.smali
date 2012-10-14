.class public Lcom/android/providers/downloads/DownloadService;
.super Landroid/app/Service;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/DownloadService$UpdateThread;,
        Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;,
        Lcom/android/providers/downloads/DownloadService$SystemSettingContentObserver;,
        Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;
    }
.end annotation


# instance fields
.field private mDownloads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/providers/downloads/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mMediaScannerConnecting:Z

.field private mMediaScannerConnection:Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;

.field private mMediaScannerService:Landroid/media/IMediaScannerService;

.field private mNotifier:Lcom/android/providers/downloads/DownloadNotification;

.field private mObserver:Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;

.field private mPendingUpdate:Z

.field private mSettingObserver:Lcom/android/providers/downloads/DownloadService$SystemSettingContentObserver;

.field mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

.field mUpdateThread:Lcom/android/providers/downloads/DownloadService$UpdateThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 76
    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;

    .line 325
    return-void
.end method

.method static synthetic access$000(Lcom/android/providers/downloads/DownloadService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadService;->updateFromProvider()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/providers/downloads/DownloadService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnecting:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/providers/downloads/DownloadService;Lcom/android/providers/downloads/DownloadInfo;ZZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/downloads/DownloadService;->scanFile(Lcom/android/providers/downloads/DownloadInfo;ZZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/android/providers/downloads/DownloadService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnecting:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/providers/downloads/DownloadService;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/DownloadService;->deleteDownload(J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/providers/downloads/DownloadService;)Lcom/android/providers/downloads/DownloadNotification;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mNotifier:Lcom/android/providers/downloads/DownloadNotification;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/providers/downloads/DownloadService;)Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnection:Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/providers/downloads/DownloadService;)Landroid/media/IMediaScannerService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/providers/downloads/DownloadService;Landroid/media/IMediaScannerService;)Landroid/media/IMediaScannerService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/providers/downloads/DownloadService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadService;->trimDatabase()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/providers/downloads/DownloadService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadService;->removeSpuriousFiles()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/providers/downloads/DownloadService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/android/providers/downloads/DownloadService;->mPendingUpdate:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/providers/downloads/DownloadService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/android/providers/downloads/DownloadService;->mPendingUpdate:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/providers/downloads/DownloadService;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/providers/downloads/DownloadService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadService;->handleNetworkStatusChange()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/providers/downloads/DownloadService;Lcom/android/providers/downloads/DownloadInfo$Reader;Lcom/android/providers/downloads/DownloadInfo;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/downloads/DownloadService;->updateDownload(Lcom/android/providers/downloads/DownloadInfo$Reader;Lcom/android/providers/downloads/DownloadInfo;J)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/providers/downloads/DownloadService;Lcom/android/providers/downloads/DownloadInfo$Reader;J)Lcom/android/providers/downloads/DownloadInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/downloads/DownloadService;->insertDownload(Lcom/android/providers/downloads/DownloadInfo$Reader;J)Lcom/android/providers/downloads/DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method private deleteDownload(J)V
    .locals 4
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 612
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/downloads/DownloadInfo;

    .line 613
    .local v0, info:Lcom/android/providers/downloads/DownloadInfo;
    invoke-virtual {v0}, Lcom/android/providers/downloads/DownloadInfo;->shouldScanFile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 614
    invoke-direct {p0, v0, v3, v3}, Lcom/android/providers/downloads/DownloadService;->scanFile(Lcom/android/providers/downloads/DownloadInfo;ZZ)Z

    .line 616
    :cond_0
    iget v1, v0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    const/16 v2, 0xc0

    if-ne v1, v2, :cond_1

    .line 617
    const/16 v1, 0x1ea

    iput v1, v0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    .line 619
    :cond_1
    iget v1, v0, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    if-eqz v1, :cond_2

    iget v1, v0, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    iget-object v1, v0, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 622
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 624
    :cond_2
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    iget-wide v2, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-interface {v1, v2, v3}, Lcom/android/providers/downloads/SystemFacade;->cancelNotification(J)V

    .line 625
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    iget-object v2, v0, Lcom/android/providers/downloads/DownloadInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v1, v2, v3}, Lcom/android/providers/downloads/SystemFacade;->cancelNotification(J)V

    .line 626
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;

    iget-wide v2, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    return-void
.end method

.method private declared-synchronized handleNetworkStatusChange()V
    .locals 1

    .prologue
    .line 288
    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/android/providers/downloads/Helpers;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    invoke-static {p0}, Lcom/android/providers/downloads/Helpers;->isWifiAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadService;->restartDownloadsWhenNetworkOk()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 291
    :cond_1
    :try_start_1
    sget-boolean v0, Lcom/android/providers/downloads/Helpers;->sDownloadOnlyOnWifi:Z

    if-eqz v0, :cond_2

    .line 292
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadService;->queuedDownloadsForWifi()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 288
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 294
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadService;->restartDownloadsWhenNetworkOk()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private insertDownload(Lcom/android/providers/downloads/DownloadInfo$Reader;J)Lcom/android/providers/downloads/DownloadInfo;
    .locals 4
    .parameter "reader"
    .parameter "now"

    .prologue
    .line 574
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-virtual {p1, p0, v1}, Lcom/android/providers/downloads/DownloadInfo$Reader;->newDownloadInfo(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;)Lcom/android/providers/downloads/DownloadInfo;

    move-result-object v0

    .line 575
    .local v0, info:Lcom/android/providers/downloads/DownloadInfo;
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;

    iget-wide v2, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 577
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_0

    .line 578
    invoke-virtual {v0}, Lcom/android/providers/downloads/DownloadInfo;->logVerboseInfo()V

    .line 581
    :cond_0
    invoke-virtual {v0, p2, p3}, Lcom/android/providers/downloads/DownloadInfo;->startIfReady(J)V

    .line 582
    return-object v0
.end method

.method private queuedDownloadsForWifi()V
    .locals 6

    .prologue
    .line 300
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 301
    .local v0, map:Landroid/content/ContentValues;
    const-string v2, "status"

    const/16 v3, 0xc4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 302
    const-string v2, "control"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 303
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "((control IS NULL OR (control != \'1\') AND (control != \'2\')) AND (status >= \'100\') AND (status <= \'199\') AND (visibility IS NULL OR visibility == \'0\' OR visibility == \'1\'))"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 305
    .local v1, updatedRowCount:I
    if-lez v1, :cond_0

    .line 306
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handle network status chage, pause row count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :cond_0
    return-void
.end method

.method private removeSpuriousFiles()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v3, 0x0

    .line 503
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v9

    .line 504
    .local v9, files:[Ljava/io/File;
    if-nez v9, :cond_1

    .line 538
    :cond_0
    return-void

    .line 509
    :cond_1
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 510
    .local v7, fileSet:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    array-length v0, v9

    if-ge v10, v0, :cond_4

    .line 511
    aget-object v0, v9, v10

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lost+found"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 510
    :cond_2
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 514
    :cond_3
    aget-object v0, v9, v10

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "recovery"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 517
    aget-object v0, v9, v10

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 520
    :cond_4
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_data"

    aput-object v4, v2, v12

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 522
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_7

    .line 523
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 525
    :cond_5
    invoke-interface {v6, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 526
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 528
    :cond_6
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 530
    :cond_7
    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 531
    .local v11, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 533
    .local v8, filename:Ljava/lang/String;
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v0, :cond_8

    .line 534
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deleting spurious file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2
.end method

.method private restartDownloadsWhenNetworkOk()V
    .locals 6

    .prologue
    .line 311
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 312
    .local v0, map:Landroid/content/ContentValues;
    const-string v2, "status"

    const/16 v3, 0xc0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 313
    const-string v2, "control"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 314
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const-string v4, "(control == \'2\')"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 319
    .local v1, updatedRowCount:I
    if-lez v1, :cond_0

    .line 320
    const-string v2, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handle network status chage, restart row count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    :cond_0
    return-void
.end method

.method private scanFile(Lcom/android/providers/downloads/DownloadInfo;ZZ)Z
    .locals 12
    .parameter "info"
    .parameter "updateDatabase"
    .parameter "deleteFile"

    .prologue
    .line 635
    monitor-enter p0

    .line 636
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;

    if-nez v0, :cond_0

    .line 639
    :goto_0
    iget-boolean v0, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnecting:Z

    if-eqz v0, :cond_0

    .line 640
    const-string v0, "DownloadManager"

    const-string v1, "waiting for mMediaScannerService service: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 642
    const-wide/16 v0, 0x2710

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 643
    :catch_0
    move-exception v10

    .line 644
    .local v10, e1:Ljava/lang/InterruptedException;
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "wait interrupted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 690
    .end local v10           #e1:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 649
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;

    if-nez v0, :cond_1

    .line 651
    const/4 v0, 0x0

    monitor-exit p0

    .line 688
    :goto_1
    return v0

    .line 653
    :cond_1
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v0, :cond_2

    .line 654
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scanning file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 657
    :cond_2
    :try_start_4
    invoke-virtual {p1}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v3

    .line 658
    .local v3, key:Landroid/net/Uri;
    iget-object v8, p1, Lcom/android/providers/downloads/DownloadInfo;->mMimeType:Ljava/lang/String;

    .line 659
    .local v8, mimeType:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 660
    .local v5, resolver:Landroid/content/ContentResolver;
    iget-wide v6, p1, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    .line 661
    .local v6, id:J
    iget-object v9, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;

    invoke-static {p1}, Lcom/android/providers/downloads/Helpers;->getDestinationFilePath(Lcom/android/providers/downloads/DownloadInfo;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p1, Lcom/android/providers/downloads/DownloadInfo;->mMimeType:Ljava/lang/String;

    new-instance v0, Lcom/android/providers/downloads/DownloadService$1;

    move-object v1, p0

    move v2, p2

    move v4, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/providers/downloads/DownloadService$1;-><init>(Lcom/android/providers/downloads/DownloadService;ZLandroid/net/Uri;ZLandroid/content/ContentResolver;JLjava/lang/String;)V

    invoke-interface {v9, v10, v11, v0}, Landroid/media/IMediaScannerService;->requestScanFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/IMediaScannerListener;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 685
    const/4 v0, 0x1

    :try_start_5
    monitor-exit p0

    goto :goto_1

    .line 686
    .end local v3           #key:Landroid/net/Uri;
    .end local v5           #resolver:Landroid/content/ContentResolver;
    .end local v6           #id:J
    .end local v8           #mimeType:Ljava/lang/String;
    :catch_1
    move-exception v0

    move-object v9, v0

    .line 687
    .local v9, e:Landroid/os/RemoteException;
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to scan file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const/4 v0, 0x0

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method private trimDatabase()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    const-string v10, "_id"

    .line 544
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v5, "_id"

    aput-object v10, v2, v3

    const-string v3, "status >= \'200\'"

    const-string v5, "lastmod"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 548
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 550
    const-string v0, "DownloadManager"

    const-string v1, "null cursor in trimDatabase"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :goto_0
    return-void

    .line 553
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 554
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/16 v1, 0x3e8

    sub-int v9, v0, v1

    .line 555
    .local v9, numDelete:I
    const-string v0, "_id"

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    .line 556
    .local v6, columnId:I
    :goto_1
    if-lez v9, :cond_1

    .line 557
    sget-object v0, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    .line 559
    .local v8, downloadUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v8, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 560
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 566
    .end local v6           #columnId:I
    .end local v8           #downloadUri:Landroid/net/Uri;
    .end local v9           #numDelete:I
    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 563
    .restart local v6       #columnId:I
    .restart local v8       #downloadUri:Landroid/net/Uri;
    .restart local v9       #numDelete:I
    :cond_2
    add-int/lit8 v9, v9, -0x1

    .line 564
    goto :goto_1
.end method

.method private updateDownload(Lcom/android/providers/downloads/DownloadInfo$Reader;Lcom/android/providers/downloads/DownloadInfo;J)V
    .locals 7
    .parameter "reader"
    .parameter "info"
    .parameter "now"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 589
    iget v3, p2, Lcom/android/providers/downloads/DownloadInfo;->mVisibility:I

    .line 590
    .local v3, oldVisibility:I
    iget v2, p2, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    .line 592
    .local v2, oldStatus:I
    invoke-virtual {p1, p2}, Lcom/android/providers/downloads/DownloadInfo$Reader;->updateFromDatabase(Lcom/android/providers/downloads/DownloadInfo;)V

    .line 594
    if-ne v3, v5, :cond_2

    iget v4, p2, Lcom/android/providers/downloads/DownloadInfo;->mVisibility:I

    if-eq v4, v5, :cond_2

    iget v4, p2, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-static {v4}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v5

    .line 598
    .local v1, lostVisibility:Z
    :goto_0
    invoke-static {v2}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v4

    if-nez v4, :cond_3

    iget v4, p2, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    invoke-static {v4}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v5

    .line 601
    .local v0, justCompleted:Z
    :goto_1
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    .line 602
    :cond_0
    iget-object v4, p0, Lcom/android/providers/downloads/DownloadService;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    iget-wide v5, p2, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-interface {v4, v5, v6}, Lcom/android/providers/downloads/SystemFacade;->cancelNotification(J)V

    .line 605
    :cond_1
    invoke-virtual {p2, p3, p4}, Lcom/android/providers/downloads/DownloadInfo;->startIfReady(J)V

    .line 606
    return-void

    .end local v0           #justCompleted:Z
    .end local v1           #lostVisibility:Z
    :cond_2
    move v1, v6

    .line 594
    goto :goto_0

    .restart local v1       #lostVisibility:Z
    :cond_3
    move v0, v6

    .line 598
    goto :goto_1
.end method

.method private updateFromProvider()V
    .locals 2

    .prologue
    .line 278
    monitor-enter p0

    .line 279
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/providers/downloads/DownloadService;->mPendingUpdate:Z

    .line 280
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mUpdateThread:Lcom/android/providers/downloads/DownloadService$UpdateThread;

    if-nez v0, :cond_0

    .line 281
    new-instance v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;

    invoke-direct {v0, p0}, Lcom/android/providers/downloads/DownloadService$UpdateThread;-><init>(Lcom/android/providers/downloads/DownloadService;)V

    iput-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mUpdateThread:Lcom/android/providers/downloads/DownloadService$UpdateThread;

    .line 282
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mUpdateThread:Lcom/android/providers/downloads/DownloadService$UpdateThread;

    invoke-interface {v0, v1}, Lcom/android/providers/downloads/SystemFacade;->startThread(Ljava/lang/Thread;)V

    .line 284
    :cond_0
    monitor-exit p0

    .line 285
    return-void

    .line 284
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .parameter "i"

    .prologue
    .line 215
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot bind to Download Manager Service"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 222
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 223
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_0

    .line 224
    const-string v1, "DownloadManager"

    const-string v2, "Service onCreate"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    if-nez v1, :cond_1

    .line 228
    new-instance v1, Lcom/android/providers/downloads/RealSystemFacade;

    invoke-direct {v1, p0}, Lcom/android/providers/downloads/RealSystemFacade;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    .line 231
    :cond_1
    new-instance v1, Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;

    invoke-direct {v1, p0}, Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;-><init>(Lcom/android/providers/downloads/DownloadService;)V

    iput-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mObserver:Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;

    .line 232
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadService;->mObserver:Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 234
    new-instance v1, Lcom/android/providers/downloads/DownloadService$SystemSettingContentObserver;

    invoke-direct {v1, p0}, Lcom/android/providers/downloads/DownloadService$SystemSettingContentObserver;-><init>(Lcom/android/providers/downloads/DownloadService;)V

    iput-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mSettingObserver:Lcom/android/providers/downloads/DownloadService$SystemSettingContentObserver;

    .line 235
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadService;->mSettingObserver:Lcom/android/providers/downloads/DownloadService$SystemSettingContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 238
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerService:Landroid/media/IMediaScannerService;

    .line 239
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnecting:Z

    .line 240
    new-instance v1, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;

    invoke-direct {v1, p0}, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;-><init>(Lcom/android/providers/downloads/DownloadService;)V

    iput-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnection:Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;

    .line 242
    new-instance v1, Lcom/android/providers/downloads/DownloadNotification;

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadService;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-direct {v1, p0, v2}, Lcom/android/providers/downloads/DownloadNotification;-><init>(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;)V

    iput-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mNotifier:Lcom/android/providers/downloads/DownloadNotification;

    .line 243
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v1}, Lcom/android/providers/downloads/SystemFacade;->cancelAllNotifications()V

    .line 245
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 246
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {v0}, Lcom/android/providers/downloads/Helpers;->getMaxDownloadsFromSetting(Landroid/content/ContentResolver;)I

    move-result v1

    sput v1, Lcom/android/providers/downloads/Helpers;->sMaxDownloadsCount:I

    .line 247
    invoke-static {v0}, Lcom/android/providers/downloads/Helpers;->getIsDownloadOnlyOnWifiFromSetting(Landroid/content/ContentResolver;)Z

    move-result v1

    sput-boolean v1, Lcom/android/providers/downloads/Helpers;->sDownloadOnlyOnWifi:Z

    .line 248
    invoke-static {v0}, Lcom/android/providers/downloads/Helpers;->getMaxDownloadsPerDomainFromSetting(Landroid/content/ContentResolver;)I

    move-result v1

    sput v1, Lcom/android/providers/downloads/Helpers;->sMaxDownloadsCountPerDomain:I

    .line 249
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadService;->updateFromProvider()V

    .line 250
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mObserver:Lcom/android/providers/downloads/DownloadService$DownloadManagerContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 267
    invoke-virtual {p0}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService;->mSettingObserver:Lcom/android/providers/downloads/DownloadService$SystemSettingContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 268
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v0, :cond_0

    .line 269
    const-string v0, "DownloadManager"

    const-string v1, "Service onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 272
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .parameter "intent"
    .parameter "flags"
    .parameter "startId"

    .prologue
    .line 254
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 255
    .local v0, returnValue:I
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_0

    .line 256
    const-string v1, "DownloadManager"

    const-string v2, "Service onStart"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_0
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadService;->updateFromProvider()V

    .line 259
    return v0
.end method
