.class public Lcom/android/contacts/vcard/VCardService;
.super Landroid/app/Service;
.source "VCardService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/vcard/VCardService$MyBinder;,
        Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;
    }
.end annotation


# instance fields
.field private mBinder:Lcom/android/contacts/vcard/VCardService$MyBinder;

.field private mCurrentJobId:I

.field private mErrorReason:Ljava/lang/String;

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private mExtensionsToConsider:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFileIndexMaximum:I

.field private mFileIndexMinimum:I

.field private mFileNameExtension:Ljava/lang/String;

.field private mFileNamePrefix:Ljava/lang/String;

.field private mFileNameSuffix:Ljava/lang/String;

.field private final mRemainingScannerConnections:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;",
            ">;"
        }
    .end annotation
.end field

.field private final mReservedDestination:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRunningJobMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/contacts/vcard/ProcessorBase;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetDirectory:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 104
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 110
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Ljava/util/Map;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mRemainingScannerConnections:Ljava/util/List;

    .line 133
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mReservedDestination:Ljava/util/Set;

    .line 136
    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/vcard/VCardService;Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/android/contacts/vcard/VCardService;->removeConnectionClient(Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;)V

    return-void
.end method

.method private declared-synchronized cancelAllRequestsAndShutdown()V
    .locals 4

    .prologue
    .line 410
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 411
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/contacts/vcard/ProcessorBase;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/vcard/ProcessorBase;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/contacts/vcard/ProcessorBase;->cancel(Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 410
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/contacts/vcard/ProcessorBase;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 413
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 414
    iget-object v2, p0, Lcom/android/contacts/vcard/VCardService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 415
    monitor-exit p0

    return-void
.end method

.method private clearCache()V
    .locals 7

    .prologue
    .line 421
    invoke-virtual {p0}, Lcom/android/contacts/vcard/VCardService;->fileList()[Ljava/lang/String;

    move-result-object v0

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 422
    .local v1, fileName:Ljava/lang/String;
    const-string v4, "import_tmp_"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 424
    const-string v4, "VCardService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Remove a temporary file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-virtual {p0, v1}, Lcom/android/contacts/vcard/VCardService;->deleteFile(Ljava/lang/String;)Z

    .line 421
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 428
    .end local v1           #fileName:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private getAppropriateDestination(Ljava/lang/String;)Ljava/lang/String;
    .locals 21
    .parameter "destDirectory"

    .prologue
    .line 455
    const/4 v6, 0x0

    .line 459
    .local v6, fileIndexDigit:I
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/vcard/VCardService;->mFileIndexMaximum:I

    move v13, v0

    .local v13, tmp:I
    :goto_0
    if-lez v13, :cond_0

    .line 460
    add-int/lit8 v6, v6, 0x1

    div-int/lit8 v13, v13, 0xa

    goto :goto_0

    .line 465
    :cond_0
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "%s%0"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "d%s"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 468
    .local v4, bodyFormat:Ljava/lang/String;
    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/VCardService;->mFileNamePrefix:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/VCardService;->mFileNameSuffix:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-static {v4, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 470
    .local v11, possibleBody:Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    const/16 v15, 0x8

    if-gt v14, v15, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/VCardService;->mFileNameExtension:Ljava/lang/String;

    move-object v14, v0

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x3

    if-le v14, v15, :cond_2

    .line 471
    :cond_1
    const-string v14, "VCardService"

    const-string v15, "This code does not allow any long file name."

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const v14, 0x7f0b0097

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    const-string v17, "%s.%s"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v11, v18, v19

    const/16 v19, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/VCardService;->mFileNameExtension:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    move-object/from16 v0, p0

    move v1, v14

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/vcard/VCardService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/vcard/VCardService;->mErrorReason:Ljava/lang/String;

    .line 474
    const-string v14, "VCardService"

    const-string v15, "File name becomes too long."

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    const/4 v14, 0x0

    .line 508
    :goto_1
    return-object v14

    .line 479
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/vcard/VCardService;->mFileIndexMinimum:I

    move v7, v0

    .local v7, i:I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/vcard/VCardService;->mFileIndexMaximum:I

    move v14, v0

    if-gt v7, v14, :cond_7

    .line 480
    const/4 v9, 0x1

    .line 481
    .local v9, numberIsAvailable:Z
    const/4 v3, 0x0

    .line 482
    .local v3, body:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/VCardService;->mExtensionsToConsider:Ljava/util/Set;

    move-object v14, v0

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 483
    .local v12, possibleExtension:Ljava/lang/String;
    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/VCardService;->mFileNamePrefix:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    const/4 v15, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/VCardService;->mFileNameSuffix:Ljava/lang/String;

    move-object/from16 v16, v0

    aput-object v16, v14, v15

    invoke-static {v4, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 484
    const-string v14, "%s/%s.%s"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p1, v15, v16

    const/16 v16, 0x1

    aput-object v3, v15, v16

    const/16 v16, 0x2

    aput-object v12, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 486
    .local v10, path:Ljava/lang/String;
    monitor-enter p0

    .line 487
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/VCardService;->mReservedDestination:Ljava/util/Set;

    move-object v14, v0

    invoke-interface {v14, v10}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 491
    const/4 v9, 0x0

    .line 492
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    .end local v10           #path:Ljava/lang/String;
    .end local v12           #possibleExtension:Ljava/lang/String;
    :cond_4
    :goto_3
    if-eqz v9, :cond_6

    .line 502
    const-string v14, "%s/%s.%s"

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object p1, v15, v16

    const/16 v16, 0x1

    aput-object v3, v15, v16

    const/16 v16, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/vcard/VCardService;->mFileNameExtension:Ljava/lang/String;

    move-object/from16 v17, v0

    aput-object v17, v15, v16

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_1

    .line 494
    .restart local v10       #path:Ljava/lang/String;
    .restart local v12       #possibleExtension:Ljava/lang/String;
    :cond_5
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 495
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 496
    .local v5, file:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v14

    if-eqz v14, :cond_3

    .line 497
    const/4 v9, 0x0

    .line 498
    goto :goto_3

    .line 494
    .end local v5           #file:Ljava/io/File;
    :catchall_0
    move-exception v14

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v14

    .line 479
    .end local v10           #path:Ljava/lang/String;
    .end local v12           #possibleExtension:Ljava/lang/String;
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 506
    .end local v3           #body:Ljava/lang/String;
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v9           #numberIsAvailable:Z
    :cond_7
    const-string v14, "VCardService"

    const-string v15, "Reached vCard number limit. Maybe there are too many vCard in the storage"

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const v14, 0x7f0b0096

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/contacts/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/contacts/vcard/VCardService;->mErrorReason:Ljava/lang/String;

    .line 508
    const/4 v14, 0x0

    goto/16 :goto_1
.end method

.method private initExporterParams()V
    .locals 9

    .prologue
    .line 151
    const v7, 0x7f0b0002

    invoke-virtual {p0, v7}, Lcom/android/contacts/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/vcard/VCardService;->mTargetDirectory:Ljava/lang/String;

    .line 152
    const v7, 0x7f0b0003

    invoke-virtual {p0, v7}, Lcom/android/contacts/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/vcard/VCardService;->mFileNamePrefix:Ljava/lang/String;

    .line 153
    const v7, 0x7f0b0004

    invoke-virtual {p0, v7}, Lcom/android/contacts/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/vcard/VCardService;->mFileNameSuffix:Ljava/lang/String;

    .line 154
    const v7, 0x7f0b0005

    invoke-virtual {p0, v7}, Lcom/android/contacts/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/vcard/VCardService;->mFileNameExtension:Ljava/lang/String;

    .line 156
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, p0, Lcom/android/contacts/vcard/VCardService;->mExtensionsToConsider:Ljava/util/Set;

    .line 157
    iget-object v7, p0, Lcom/android/contacts/vcard/VCardService;->mExtensionsToConsider:Ljava/util/Set;

    iget-object v8, p0, Lcom/android/contacts/vcard/VCardService;->mFileNameExtension:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 159
    const v7, 0x7f0b0006

    invoke-virtual {p0, v7}, Lcom/android/contacts/vcard/VCardService;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 161
    .local v0, additionalExtensions:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 162
    const-string v7, ","

    invoke-virtual {v0, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v1, v3

    .line 163
    .local v2, extension:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 164
    .local v6, trimed:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    .line 165
    iget-object v7, p0, Lcom/android/contacts/vcard/VCardService;->mExtensionsToConsider:Ljava/util/Set;

    invoke-interface {v7, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 170
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #extension:Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v6           #trimed:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/android/contacts/vcard/VCardService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 171
    .local v5, resources:Landroid/content/res/Resources;
    const/high16 v7, 0x7f0c

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/contacts/vcard/VCardService;->mFileIndexMinimum:I

    .line 172
    const v7, 0x7f0c0001

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Lcom/android/contacts/vcard/VCardService;->mFileIndexMaximum:I

    .line 173
    return-void
.end method

.method private declared-synchronized removeConnectionClient(Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 366
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mRemainingScannerConnections:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 367
    invoke-direct {p0}, Lcom/android/contacts/vcard/VCardService;->stopServiceIfAppropriate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    monitor-exit p0

    return-void

    .line 366
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized stopServiceIfAppropriate()V
    .locals 9

    .prologue
    const-string v4, "VCardService"

    .line 322
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 323
    iget-object v4, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 324
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/contacts/vcard/ProcessorBase;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 325
    .local v2, jobId:I
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/vcard/ProcessorBase;

    .line 326
    .local v3, processor:Lcom/android/contacts/vcard/ProcessorBase;
    invoke-virtual {v3}, Lcom/android/contacts/vcard/ProcessorBase;->isDone()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 327
    iget-object v4, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 322
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/contacts/vcard/ProcessorBase;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #jobId:I
    .end local v3           #processor:Lcom/android/contacts/vcard/ProcessorBase;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 329
    .restart local v0       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/contacts/vcard/ProcessorBase;>;"
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #jobId:I
    .restart local v3       #processor:Lcom/android/contacts/vcard/ProcessorBase;
    :cond_0
    :try_start_1
    const-string v4, "VCardService"

    const-string v5, "Found unfinished job (id: %d)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 343
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/contacts/vcard/ProcessorBase;>;"
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #jobId:I
    .end local v3           #processor:Lcom/android/contacts/vcard/ProcessorBase;
    :goto_1
    monitor-exit p0

    return-void

    .line 335
    :cond_1
    :try_start_2
    iget-object v4, p0, Lcom/android/contacts/vcard/VCardService;->mRemainingScannerConnections:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 336
    const-string v4, "VCardService"

    const-string v5, "MediaScanner update is in progress."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 340
    :cond_2
    const-string v4, "VCardService"

    const-string v5, "No unfinished job. Stop this service."

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    iget-object v4, p0, Lcom/android/contacts/vcard/VCardService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v4}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 342
    invoke-virtual {p0}, Lcom/android/contacts/vcard/VCardService;->stopSelf()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private declared-synchronized tryExecute(Lcom/android/contacts/vcard/ProcessorBase;)Z
    .locals 3
    .parameter "processor"

    .prologue
    .line 261
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/vcard/VCardService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 262
    iget-object v1, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Ljava/util/Map;

    iget v2, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    const/4 v1, 0x1

    .line 266
    :goto_0
    monitor-exit p0

    return v1

    .line 264
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 265
    .local v0, e:Ljava/util/concurrent/RejectedExecutionException;
    :try_start_1
    const-string v1, "VCardService"

    const-string v2, "Failed to excetute a job."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    const/4 v1, 0x0

    goto :goto_0

    .line 261
    .end local v0           #e:Ljava/util/concurrent/RejectedExecutionException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public declared-synchronized handleCancelRequest(Lcom/android/contacts/vcard/CancelRequest;Lcom/android/contacts/vcard/VCardImportExportListener;)V
    .locals 9
    .parameter "request"
    .parameter "listener"

    .prologue
    const-string v4, "VCardService"

    .line 272
    monitor-enter p0

    :try_start_0
    iget v0, p1, Lcom/android/contacts/vcard/CancelRequest;->jobId:I

    .line 274
    .local v0, jobId:I
    iget-object v4, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/vcard/ProcessorBase;

    .line 276
    .local v2, processor:Lcom/android/contacts/vcard/ProcessorBase;
    if-eqz v2, :cond_2

    .line 277
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/contacts/vcard/ProcessorBase;->cancel(Z)Z

    .line 278
    invoke-virtual {v2}, Lcom/android/contacts/vcard/ProcessorBase;->getType()I

    move-result v3

    .line 279
    .local v3, type:I
    if-eqz p2, :cond_0

    .line 280
    invoke-interface {p2, p1, v3}, Lcom/android/contacts/vcard/VCardImportExportListener;->onCancelRequest(Lcom/android/contacts/vcard/CancelRequest;I)V

    .line 282
    :cond_0
    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 283
    check-cast v2, Lcom/android/contacts/vcard/ExportProcessor;

    .end local v2           #processor:Lcom/android/contacts/vcard/ProcessorBase;
    invoke-virtual {v2}, Lcom/android/contacts/vcard/ExportProcessor;->getRequest()Lcom/android/contacts/vcard/ExportRequest;

    move-result-object v4

    iget-object v4, v4, Lcom/android/contacts/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, path:Ljava/lang/String;
    const-string v4, "VCardService"

    const-string v5, "Cancel reservation for the path %s if appropriate"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v4, p0, Lcom/android/contacts/vcard/VCardService;->mReservedDestination:Ljava/util/Set;

    invoke-interface {v4, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 288
    const-string v4, "VCardService"

    const-string v5, "Not reserved."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    .end local v1           #path:Ljava/lang/String;
    .end local v3           #type:I
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/vcard/VCardService;->stopServiceIfAppropriate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    monitor-exit p0

    return-void

    .line 292
    .restart local v2       #processor:Lcom/android/contacts/vcard/ProcessorBase;
    :cond_2
    :try_start_1
    const-string v4, "VCardService"

    const-string v5, "Tried to remove unknown job (id: %d)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 272
    .end local v0           #jobId:I
    .end local v2           #processor:Lcom/android/contacts/vcard/ProcessorBase;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized handleExportRequest(Lcom/android/contacts/vcard/ExportRequest;Lcom/android/contacts/vcard/VCardImportExportListener;)V
    .locals 5
    .parameter "request"
    .parameter "listener"

    .prologue
    .line 227
    monitor-enter p0

    :try_start_0
    new-instance v1, Lcom/android/contacts/vcard/ExportProcessor;

    iget v2, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    invoke-direct {v1, p0, p1, v2}, Lcom/android/contacts/vcard/ExportProcessor;-><init>(Lcom/android/contacts/vcard/VCardService;Lcom/android/contacts/vcard/ExportRequest;I)V

    invoke-direct {p0, v1}, Lcom/android/contacts/vcard/VCardService;->tryExecute(Lcom/android/contacts/vcard/ProcessorBase;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 228
    iget-object v1, p1, Lcom/android/contacts/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v0

    .line 230
    .local v0, path:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/contacts/vcard/VCardService;->mReservedDestination:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 231
    const-string v1, "VCardService"

    const-string v2, "The path %s is already reserved. Reject export request"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    if-eqz p2, :cond_0

    .line 235
    invoke-interface {p2, p1}, Lcom/android/contacts/vcard/VCardImportExportListener;->onExportFailed(Lcom/android/contacts/vcard/ExportRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    .end local v0           #path:Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 240
    .restart local v0       #path:Ljava/lang/String;
    :cond_1
    if-eqz p2, :cond_2

    .line 241
    :try_start_1
    iget v1, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    invoke-interface {p2, p1, v1}, Lcom/android/contacts/vcard/VCardImportExportListener;->onExportProcessed(Lcom/android/contacts/vcard/ExportRequest;I)V

    .line 243
    :cond_2
    iget v1, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 227
    .end local v0           #path:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 245
    :cond_3
    if-eqz p2, :cond_0

    .line 246
    :try_start_2
    invoke-interface {p2, p1}, Lcom/android/contacts/vcard/VCardImportExportListener;->onExportFailed(Lcom/android/contacts/vcard/ExportRequest;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized handleFinishExportNotification(IZ)V
    .locals 7
    .parameter "jobId"
    .parameter "successful"

    .prologue
    const-string v2, "VCardService"

    .line 388
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/vcard/ProcessorBase;

    .line 389
    .local v0, job:Lcom/android/contacts/vcard/ProcessorBase;
    if-nez v0, :cond_0

    .line 390
    const-string v2, "VCardService"

    const-string v3, "Tried to remove unknown job (id: %d)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    .end local v0           #job:Lcom/android/contacts/vcard/ProcessorBase;
    :goto_0
    invoke-direct {p0}, Lcom/android/contacts/vcard/VCardService;->stopServiceIfAppropriate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    monitor-exit p0

    return-void

    .line 391
    .restart local v0       #job:Lcom/android/contacts/vcard/ProcessorBase;
    :cond_0
    :try_start_1
    instance-of v2, v0, Lcom/android/contacts/vcard/ExportProcessor;

    if-nez v2, :cond_1

    .line 392
    const-string v2, "VCardService"

    const-string v3, "Removed job (id: %s) isn\'t ExportProcessor"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 388
    .end local v0           #job:Lcom/android/contacts/vcard/ProcessorBase;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 395
    .restart local v0       #job:Lcom/android/contacts/vcard/ProcessorBase;
    :cond_1
    :try_start_2
    check-cast v0, Lcom/android/contacts/vcard/ExportProcessor;

    .end local v0           #job:Lcom/android/contacts/vcard/ProcessorBase;
    invoke-virtual {v0}, Lcom/android/contacts/vcard/ExportProcessor;->getRequest()Lcom/android/contacts/vcard/ExportRequest;

    move-result-object v2

    iget-object v2, v2, Lcom/android/contacts/vcard/ExportRequest;->destUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v1

    .line 397
    .local v1, path:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/contacts/vcard/VCardService;->mReservedDestination:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized handleFinishImportNotification(IZ)V
    .locals 5
    .parameter "jobId"
    .parameter "successful"

    .prologue
    .line 376
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mRunningJobMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 377
    const-string v0, "VCardService"

    const-string v1, "Tried to remove unknown job (id: %d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/vcard/VCardService;->stopServiceIfAppropriate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    monitor-exit p0

    return-void

    .line 376
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized handleImportRequest(Ljava/util/List;Lcom/android/contacts/vcard/VCardImportExportListener;)V
    .locals 5
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/vcard/ImportRequest;",
            ">;",
            "Lcom/android/contacts/vcard/VCardImportExportListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 206
    .local p1, requests:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/vcard/ImportRequest;>;"
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 207
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 208
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/vcard/ImportRequest;

    .line 210
    .local v1, request:Lcom/android/contacts/vcard/ImportRequest;
    new-instance v3, Lcom/android/contacts/vcard/ImportProcessor;

    iget v4, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    invoke-direct {v3, p0, p2, v1, v4}, Lcom/android/contacts/vcard/ImportProcessor;-><init>(Lcom/android/contacts/vcard/VCardService;Lcom/android/contacts/vcard/VCardImportExportListener;Lcom/android/contacts/vcard/ImportRequest;I)V

    invoke-direct {p0, v3}, Lcom/android/contacts/vcard/VCardService;->tryExecute(Lcom/android/contacts/vcard/ProcessorBase;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 211
    if-eqz p2, :cond_0

    .line 212
    iget v3, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    invoke-interface {p2, v1, v3, v0}, Lcom/android/contacts/vcard/VCardImportExportListener;->onImportProcessed(Lcom/android/contacts/vcard/ImportRequest;II)V

    .line 214
    :cond_0
    iget v3, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/contacts/vcard/VCardService;->mCurrentJobId:I

    .line 207
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 216
    :cond_1
    if-eqz p2, :cond_2

    .line 217
    invoke-interface {p2, v1}, Lcom/android/contacts/vcard/VCardImportExportListener;->onImportFailed(Lcom/android/contacts/vcard/ImportRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    .end local v1           #request:Lcom/android/contacts/vcard/ImportRequest;
    :cond_2
    monitor-exit p0

    return-void

    .line 206
    .end local v0           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized handleRequestAvailableExportDestination(Landroid/os/Messenger;)V
    .locals 8
    .parameter "messenger"

    .prologue
    .line 299
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/android/contacts/vcard/VCardService;->mTargetDirectory:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/contacts/vcard/VCardService;->getAppropriateDestination(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 301
    .local v2, path:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 302
    const/4 v3, 0x0

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 310
    .local v1, message:Landroid/os/Message;
    :goto_0
    :try_start_1
    invoke-virtual {p1, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 314
    :goto_1
    monitor-exit p0

    return-void

    .line 305
    .end local v1           #message:Landroid/os/Message;
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x5

    const v5, 0x7f07000c

    const/4 v6, 0x0

    :try_start_2
    iget-object v7, p0, Lcom/android/contacts/vcard/VCardService;->mErrorReason:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .restart local v1       #message:Landroid/os/Message;
    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "VCardService"

    const-string v4, "Failed to send reply for available export destination request."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 299
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #message:Landroid/os/Message;
    .end local v2           #path:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .parameter "intent"

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mBinder:Lcom/android/contacts/vcard/VCardService$MyBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 145
    new-instance v0, Lcom/android/contacts/vcard/VCardService$MyBinder;

    invoke-direct {v0, p0}, Lcom/android/contacts/vcard/VCardService$MyBinder;-><init>(Lcom/android/contacts/vcard/VCardService;)V

    iput-object v0, p0, Lcom/android/contacts/vcard/VCardService;->mBinder:Lcom/android/contacts/vcard/VCardService$MyBinder;

    .line 147
    invoke-direct {p0}, Lcom/android/contacts/vcard/VCardService;->initExporterParams()V

    .line 148
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 188
    invoke-direct {p0}, Lcom/android/contacts/vcard/VCardService;->cancelAllRequestsAndShutdown()V

    .line 189
    invoke-direct {p0}, Lcom/android/contacts/vcard/VCardService;->clearCache()V

    .line 190
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 191
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .parameter "intent"
    .parameter "flags"
    .parameter "id"

    .prologue
    .line 177
    const/4 v0, 0x1

    return v0
.end method

.method declared-synchronized updateMediaScanner(Ljava/lang/String;)V
    .locals 3
    .parameter "path"

    .prologue
    .line 350
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/contacts/vcard/VCardService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 351
    const-string v1, "VCardService"

    const-string v2, "MediaScanner update is requested after executor\'s being shut down. Ignoring the update request"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    :goto_0
    monitor-exit p0

    return-void

    .line 355
    :cond_0
    :try_start_1
    new-instance v0, Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;-><init>(Lcom/android/contacts/vcard/VCardService;Ljava/lang/String;)V

    .line 357
    .local v0, client:Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;
    iget-object v1, p0, Lcom/android/contacts/vcard/VCardService;->mRemainingScannerConnections:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 358
    invoke-virtual {v0}, Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 350
    .end local v0           #client:Lcom/android/contacts/vcard/VCardService$CustomMediaScannerConnectionClient;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
