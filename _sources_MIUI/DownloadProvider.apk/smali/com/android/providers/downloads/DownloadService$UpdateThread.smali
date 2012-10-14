.class Lcom/android/providers/downloads/DownloadService$UpdateThread;
.super Ljava/lang/Thread;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/DownloadService;


# direct methods
.method public constructor <init>(Lcom/android/providers/downloads/DownloadService;)V
    .locals 1
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    .line 327
    const-string v0, "Download Service"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 328
    return-void
.end method

.method private bindMediaScanner()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 468
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    #getter for: Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnecting:Z
    invoke-static {v1}, Lcom/android/providers/downloads/DownloadService;->access$100(Lcom/android/providers/downloads/DownloadService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 469
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 470
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.providers.media"

    const-string v2, "com.android.providers.media.MediaScannerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 472
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    #setter for: Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnecting:Z
    invoke-static {v1, v3}, Lcom/android/providers/downloads/DownloadService;->access$102(Lcom/android/providers/downloads/DownloadService;Z)Z

    .line 473
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    #getter for: Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnection:Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;
    invoke-static {v2}, Lcom/android/providers/downloads/DownloadService;->access$1300(Lcom/android/providers/downloads/DownloadService;)Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;

    move-result-object v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/providers/downloads/DownloadService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 475
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private scheduleAlarm(J)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const-string v3, "DownloadManager"

    .line 478
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Lcom/android/providers/downloads/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 479
    if-nez v0, :cond_0

    .line 480
    const-string v0, "DownloadManager"

    const-string v0, "couldn\'t get alarm manager"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :goto_0
    return-void

    .line 484
    :cond_0
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v1, :cond_1

    .line 485
    const-string v1, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduling retry in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DOWNLOAD_WAKEUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 489
    const-string v2, "com.android.providers.downloads"

    const-class v3, Lcom/android/providers/downloads/DownloadReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 491
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    iget-object v2, v2, Lcom/android/providers/downloads/DownloadService;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v2}, Lcom/android/providers/downloads/SystemFacade;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    iget-object v4, p0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    const/high16 v5, 0x4000

    invoke-static {v4, v6, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v6, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 28

    .prologue
    .line 331
    const/16 v5, 0xa

    invoke-static {v5}, Landroid/os/Process;->setThreadPriority(I)V

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    #calls: Lcom/android/providers/downloads/DownloadService;->trimDatabase()V
    invoke-static {v5}, Lcom/android/providers/downloads/DownloadService;->access$300(Lcom/android/providers/downloads/DownloadService;)V

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    #calls: Lcom/android/providers/downloads/DownloadService;->removeSpuriousFiles()V
    invoke-static {v5}, Lcom/android/providers/downloads/DownloadService;->access$400(Lcom/android/providers/downloads/DownloadService;)V

    .line 336
    const/16 v19, 0x0

    .line 339
    .local v19, keepService:Z
    const-wide v26, 0x7fffffffffffffffL

    .line 341
    .local v26, wakeUp:J
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    monitor-enter v5

    .line 342
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/providers/downloads/DownloadService;->mUpdateThread:Lcom/android/providers/downloads/DownloadService$UpdateThread;

    move-object v0, v6

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_1

    .line 343
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "multiple UpdateThreads in DownloadService"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 357
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 346
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v6, v0

    #getter for: Lcom/android/providers/downloads/DownloadService;->mPendingUpdate:Z
    invoke-static {v6}, Lcom/android/providers/downloads/DownloadService;->access$500(Lcom/android/providers/downloads/DownloadService;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/providers/downloads/DownloadService;->mUpdateThread:Lcom/android/providers/downloads/DownloadService$UpdateThread;

    .line 348
    if-nez v19, :cond_2

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/providers/downloads/DownloadService;->stopSelf()V

    .line 351
    :cond_2
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v6, v26, v6

    if-eqz v6, :cond_3

    .line 352
    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    invoke-direct {v0, v1, v2}, Lcom/android/providers/downloads/DownloadService$UpdateThread;->scheduleAlarm(J)V

    .line 354
    :cond_3
    monitor-exit v5

    return-void

    .line 356
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v6, v0

    const/4 v7, 0x0

    #setter for: Lcom/android/providers/downloads/DownloadService;->mPendingUpdate:Z
    invoke-static {v6, v7}, Lcom/android/providers/downloads/DownloadService;->access$502(Lcom/android/providers/downloads/DownloadService;Z)Z

    .line 357
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/providers/downloads/DownloadService;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v5}, Lcom/android/providers/downloads/SystemFacade;->currentTimeMillis()J

    move-result-wide v23

    .line 360
    .local v23, now:J
    const/16 v20, 0x0

    .line 361
    .local v20, mustScan:Z
    const/16 v19, 0x0

    .line 362
    const-wide v26, 0x7fffffffffffffffL

    .line 363
    new-instance v17, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    #getter for: Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/providers/downloads/DownloadService;->access$600(Lcom/android/providers/downloads/DownloadService;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 365
    .local v17, idsNoLongerInDatabase:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    #calls: Lcom/android/providers/downloads/DownloadService;->handleNetworkStatusChange()V
    invoke-static {v5}, Lcom/android/providers/downloads/DownloadService;->access$700(Lcom/android/providers/downloads/DownloadService;)V

    .line 367
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Downloads$Impl;->ALL_DOWNLOADS_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 369
    .local v12, cursor:Landroid/database/Cursor;
    if-eqz v12, :cond_0

    .line 373
    :try_start_2
    new-instance v25, Lcom/android/providers/downloads/DownloadInfo$Reader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, v25

    move-object v1, v5

    move-object v2, v12

    invoke-direct {v0, v1, v2}, Lcom/android/providers/downloads/DownloadInfo$Reader;-><init>(Landroid/content/ContentResolver;Landroid/database/Cursor;)V

    .line 375
    .local v25, reader:Lcom/android/providers/downloads/DownloadInfo$Reader;
    const-string v5, "_id"

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 377
    .local v16, idColumn:I
    const/4 v11, 0x0

    .line 378
    .local v11, countDownloadingTasks:I
    sget-object v5, Lcom/android/providers/downloads/Helpers;->sDownloadsDomainCountMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    .line 379
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    .line 380
    :goto_0
    invoke-interface {v12}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_b

    sget v5, Lcom/android/providers/downloads/Helpers;->sMaxDownloadsCount:I

    if-ge v11, v5, :cond_b

    .line 381
    move-object v0, v12

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    .line 382
    .local v14, id:J
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    #getter for: Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/providers/downloads/DownloadService;->access$600(Lcom/android/providers/downloads/DownloadService;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/providers/downloads/DownloadInfo;

    .line 384
    .local v18, info:Lcom/android/providers/downloads/DownloadInfo;
    if-eqz v18, :cond_9

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    move-wide/from16 v3, v23

    #calls: Lcom/android/providers/downloads/DownloadService;->updateDownload(Lcom/android/providers/downloads/DownloadInfo$Reader;Lcom/android/providers/downloads/DownloadInfo;J)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/providers/downloads/DownloadService;->access$800(Lcom/android/providers/downloads/DownloadService;Lcom/android/providers/downloads/DownloadInfo$Reader;Lcom/android/providers/downloads/DownloadInfo;J)V

    .line 390
    :goto_1
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    move v5, v0

    const/16 v6, 0xc0

    if-ne v5, v6, :cond_5

    .line 391
    add-int/lit8 v11, v11, 0x1

    .line 394
    :cond_5
    invoke-virtual/range {v18 .. v18}, Lcom/android/providers/downloads/DownloadInfo;->shouldScanFile()Z

    move-result v5

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, v18

    move v2, v6

    move v3, v7

    #calls: Lcom/android/providers/downloads/DownloadService;->scanFile(Lcom/android/providers/downloads/DownloadInfo;ZZ)Z
    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/downloads/DownloadService;->access$1000(Lcom/android/providers/downloads/DownloadService;Lcom/android/providers/downloads/DownloadInfo;ZZ)Z

    move-result v5

    if-nez v5, :cond_6

    .line 395
    const/16 v20, 0x1

    .line 396
    const/16 v19, 0x1

    .line 398
    :cond_6
    invoke-virtual/range {v18 .. v18}, Lcom/android/providers/downloads/DownloadInfo;->hasCompletionNotification()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 399
    const/16 v19, 0x1

    .line 401
    :cond_7
    move-object/from16 v0, v18

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/downloads/DownloadInfo;->nextAction(J)J

    move-result-wide v21

    .line 402
    .local v21, next:J
    const-wide/16 v5, 0x0

    cmp-long v5, v21, v5

    if-nez v5, :cond_a

    .line 403
    const/16 v19, 0x1

    .line 380
    :cond_8
    :goto_2
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_0

    .line 409
    .end local v11           #countDownloadingTasks:I
    .end local v14           #id:J
    .end local v16           #idColumn:I
    .end local v18           #info:Lcom/android/providers/downloads/DownloadInfo;
    .end local v21           #next:J
    .end local v25           #reader:Lcom/android/providers/downloads/DownloadInfo$Reader;
    :catchall_1
    move-exception v5

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v5

    .line 387
    .restart local v11       #countDownloadingTasks:I
    .restart local v14       #id:J
    .restart local v16       #idColumn:I
    .restart local v18       #info:Lcom/android/providers/downloads/DownloadInfo;
    .restart local v25       #reader:Lcom/android/providers/downloads/DownloadInfo$Reader;
    :cond_9
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v25

    move-wide/from16 v2, v23

    #calls: Lcom/android/providers/downloads/DownloadService;->insertDownload(Lcom/android/providers/downloads/DownloadInfo$Reader;J)Lcom/android/providers/downloads/DownloadInfo;
    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/downloads/DownloadService;->access$900(Lcom/android/providers/downloads/DownloadService;Lcom/android/providers/downloads/DownloadInfo$Reader;J)Lcom/android/providers/downloads/DownloadInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v18

    goto :goto_1

    .line 404
    .restart local v21       #next:J
    :cond_a
    const-wide/16 v5, 0x0

    cmp-long v5, v21, v5

    if-lez v5, :cond_8

    cmp-long v5, v21, v26

    if-gez v5, :cond_8

    .line 405
    move-wide/from16 v26, v21

    goto :goto_2

    .line 409
    .end local v14           #id:J
    .end local v18           #info:Lcom/android/providers/downloads/DownloadInfo;
    .end local v21           #next:J
    :cond_b
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 412
    invoke-interface/range {v17 .. v17}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    .line 413
    .local v14, id:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    #calls: Lcom/android/providers/downloads/DownloadService;->deleteDownload(J)V
    invoke-static {v5, v6, v7}, Lcom/android/providers/downloads/DownloadService;->access$1100(Lcom/android/providers/downloads/DownloadService;J)V

    goto :goto_3

    .line 418
    .end local v14           #id:Ljava/lang/Long;
    :cond_c
    if-nez v20, :cond_e

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    #getter for: Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/providers/downloads/DownloadService;->access$600(Lcom/android/providers/downloads/DownloadService;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_d
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/providers/downloads/DownloadInfo;

    .line 420
    .restart local v18       #info:Lcom/android/providers/downloads/DownloadInfo;
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mDeleted:Z

    move v5, v0

    if-eqz v5, :cond_d

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mMediaProviderUri:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 421
    const/16 v20, 0x1

    .line 422
    const/16 v19, 0x1

    .line 427
    .end local v18           #info:Lcom/android/providers/downloads/DownloadInfo;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    #getter for: Lcom/android/providers/downloads/DownloadService;->mNotifier:Lcom/android/providers/downloads/DownloadNotification;
    invoke-static {v5}, Lcom/android/providers/downloads/DownloadService;->access$1200(Lcom/android/providers/downloads/DownloadService;)Lcom/android/providers/downloads/DownloadNotification;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v6, v0

    #getter for: Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;
    invoke-static {v6}, Lcom/android/providers/downloads/DownloadService;->access$600(Lcom/android/providers/downloads/DownloadService;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/providers/downloads/DownloadNotification;->updateNotification(Ljava/util/Collection;)V

    .line 428
    if-eqz v20, :cond_10

    .line 429
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadService$UpdateThread;->bindMediaScanner()V

    .line 436
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    #getter for: Lcom/android/providers/downloads/DownloadService;->mDownloads:Ljava/util/Map;
    invoke-static {v5}, Lcom/android/providers/downloads/DownloadService;->access$600(Lcom/android/providers/downloads/DownloadService;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_f
    :goto_5
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/providers/downloads/DownloadInfo;

    .line 437
    .restart local v18       #info:Lcom/android/providers/downloads/DownloadInfo;
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mDeleted:Z

    move v5, v0

    if-eqz v5, :cond_f

    .line 440
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mMediaProviderUri:Ljava/lang/String;

    move-object v5, v0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 441
    invoke-virtual/range {v18 .. v18}, Lcom/android/providers/downloads/DownloadInfo;->shouldScanFile()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, v5

    move-object/from16 v1, v18

    move v2, v6

    move v3, v7

    #calls: Lcom/android/providers/downloads/DownloadService;->scanFile(Lcom/android/providers/downloads/DownloadInfo;ZZ)Z
    invoke-static {v0, v1, v2, v3}, Lcom/android/providers/downloads/DownloadService;->access$1000(Lcom/android/providers/downloads/DownloadService;Lcom/android/providers/downloads/DownloadInfo;ZZ)Z

    move-result v5

    if-nez v5, :cond_f

    .line 445
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "scanFile failed!"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 431
    .end local v18           #info:Lcom/android/providers/downloads/DownloadInfo;
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    #getter for: Lcom/android/providers/downloads/DownloadService;->mMediaScannerConnection:Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;
    invoke-static {v5}, Lcom/android/providers/downloads/DownloadService;->access$1300(Lcom/android/providers/downloads/DownloadService;)Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/providers/downloads/DownloadService$MediaScannerConnection;->disconnectMediaScanner()V

    goto :goto_4

    .line 449
    .restart local v18       #info:Lcom/android/providers/downloads/DownloadInfo;
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    move-wide v6, v0

    invoke-static/range {v18 .. v18}, Lcom/android/providers/downloads/Helpers;->getDestinationFilePath(Lcom/android/providers/downloads/DownloadInfo;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mMimeType:Ljava/lang/String;

    move-object v9, v0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/providers/downloads/Helpers;->deleteFile(Landroid/content/ContentResolver;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 456
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mMediaProviderUri:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadService$UpdateThread;->this$0:Lcom/android/providers/downloads/DownloadService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/providers/downloads/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    move-wide v6, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mFileName:Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mMimeType:Ljava/lang/String;

    move-object v9, v0

    invoke-static {v5, v6, v7, v8, v9}, Lcom/android/providers/downloads/Helpers;->deleteFile(Landroid/content/ContentResolver;JLjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5
.end method
