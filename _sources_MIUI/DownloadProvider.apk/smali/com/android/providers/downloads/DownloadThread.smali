.class public Lcom/android/providers/downloads/DownloadThread;
.super Ljava/lang/Thread;
.source "DownloadThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/DownloadThread$1;,
        Lcom/android/providers/downloads/DownloadThread$RetryDownload;,
        Lcom/android/providers/downloads/DownloadThread$StopRequest;,
        Lcom/android/providers/downloads/DownloadThread$InnerState;,
        Lcom/android/providers/downloads/DownloadThread$State;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInfo:Lcom/android/providers/downloads/DownloadInfo;

.field private mSystemFacade:Lcom/android/providers/downloads/SystemFacade;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/providers/downloads/SystemFacade;Lcom/android/providers/downloads/DownloadInfo;)V
    .locals 0
    .parameter "context"
    .parameter "systemFacade"
    .parameter "info"

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/android/providers/downloads/DownloadThread;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    .line 61
    iput-object p3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    .line 62
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 52
    invoke-static {p0}, Lcom/android/providers/downloads/DownloadThread;->sanitizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private addRequestHeaders(Lcom/android/providers/downloads/DownloadThread$InnerState;Lorg/apache/http/client/methods/HttpGet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 897
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v0}, Lcom/android/providers/downloads/DownloadInfo;->getHeaders()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Pair;

    .line 898
    iget-object v0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p2, v0, p0}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 901
    :cond_0
    iget-boolean v0, p1, Lcom/android/providers/downloads/DownloadThread$InnerState;->mContinuingDownload:Z

    if-eqz v0, :cond_3

    .line 902
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 903
    const-string v0, "If-Match"

    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    :cond_1
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderIfRangeId:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 906
    const-string v0, "If-Range"

    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderIfRangeId:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    :cond_2
    const-string v0, "Range"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bytes="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/providers/downloads/DownloadThread$InnerState;->mBytesSoFar:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    :cond_3
    return-void
.end method

.method private cannotResume(Lcom/android/providers/downloads/DownloadThread$InnerState;)Z
    .locals 1
    .parameter "innerState"

    .prologue
    .line 511
    iget v0, p1, Lcom/android/providers/downloads/DownloadThread$InnerState;->mBytesSoFar:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-boolean v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mNoIntegrity:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderIfRangeId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkConnectivity(Lcom/android/providers/downloads/DownloadThread$State;)V
    .locals 4
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/DownloadThread$StopRequest;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 254
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v2}, Lcom/android/providers/downloads/DownloadInfo;->checkCanUseNetwork()I

    move-result v0

    .line 255
    .local v0, networkUsable:I
    if-eq v0, v3, :cond_2

    .line 256
    const/16 v1, 0xc3

    .line 257
    .local v1, status:I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 258
    const/16 v1, 0xc4

    .line 259
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v2, v3}, Lcom/android/providers/downloads/DownloadInfo;->notifyPauseDueToSize(Z)V

    .line 264
    :cond_0
    :goto_0
    new-instance v2, Lcom/android/providers/downloads/DownloadThread$StopRequest;

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v3, v0}, Lcom/android/providers/downloads/DownloadInfo;->getLogMessageForNetworkError(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v1, v3}, Lcom/android/providers/downloads/DownloadThread$StopRequest;-><init>(Lcom/android/providers/downloads/DownloadThread;ILjava/lang/String;)V

    throw v2

    .line 260
    :cond_1
    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 261
    const/16 v1, 0xc4

    .line 262
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/providers/downloads/DownloadInfo;->notifyPauseDueToSize(Z)V

    goto :goto_0

    .line 266
    .end local v1           #status:I
    :cond_2
    return-void
.end method

.method private checkPausedOrCanceled(Lcom/android/providers/downloads/DownloadThread$State;)V
    .locals 4
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/DownloadThread$StopRequest;
        }
    .end annotation

    .prologue
    const/16 v3, 0x1ea

    .line 407
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    monitor-enter v0

    .line 408
    :try_start_0
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v1, v1, Lcom/android/providers/downloads/DownloadInfo;->mControl:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v1, v1, Lcom/android/providers/downloads/DownloadInfo;->mControl:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 410
    :cond_0
    new-instance v1, Lcom/android/providers/downloads/DownloadThread$StopRequest;

    const/16 v2, 0xc1

    const-string v3, "download paused by owner"

    invoke-direct {v1, p0, v2, v3}, Lcom/android/providers/downloads/DownloadThread$StopRequest;-><init>(Lcom/android/providers/downloads/DownloadThread;ILjava/lang/String;)V

    throw v1

    .line 413
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 414
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    if-ne v0, v3, :cond_2

    .line 415
    new-instance v0, Lcom/android/providers/downloads/DownloadThread$StopRequest;

    const-string v1, "download canceled"

    invoke-direct {v0, p0, v3, v1}, Lcom/android/providers/downloads/DownloadThread$StopRequest;-><init>(Lcom/android/providers/downloads/DownloadThread;ILjava/lang/String;)V

    throw v0

    .line 417
    :cond_2
    return-void
.end method

.method private cleanupDestination(Lcom/android/providers/downloads/DownloadThread$State;I)V
    .locals 2
    .parameter "state"
    .parameter "finalStatus"

    .prologue
    .line 324
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->closeDestination(Lcom/android/providers/downloads/DownloadThread$State;)V

    .line 325
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 327
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    .line 329
    :cond_0
    return-void
.end method

.method private closeDestination(Lcom/android/providers/downloads/DownloadThread$State;)V
    .locals 4
    .parameter "state"

    .prologue
    .line 390
    :try_start_0
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_0

    .line 391
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 392
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 394
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 395
    .local v0, ex:Ljava/io/IOException;
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v1, :cond_0

    .line 396
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception when closing the file after download : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private executeDownload(Lcom/android/providers/downloads/DownloadThread$State;Landroid/net/http/AndroidHttpClient;Lorg/apache/http/client/methods/HttpGet;)V
    .locals 7
    .parameter "state"
    .parameter "client"
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/DownloadThread$StopRequest;,
            Lcom/android/providers/downloads/DownloadThread$RetryDownload;
        }
    .end annotation

    .prologue
    .line 229
    new-instance v2, Lcom/android/providers/downloads/DownloadThread$InnerState;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/android/providers/downloads/DownloadThread$InnerState;-><init>(Lcom/android/providers/downloads/DownloadThread$1;)V

    .line 230
    .local v2, innerState:Lcom/android/providers/downloads/DownloadThread$InnerState;
    const/16 v4, 0x1000

    new-array v0, v4, [B

    .line 232
    .local v0, data:[B
    invoke-direct {p0, p1, v2}, Lcom/android/providers/downloads/DownloadThread;->setupDestinationFile(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;)V

    .line 233
    invoke-direct {p0, v2, p3}, Lcom/android/providers/downloads/DownloadThread;->addRequestHeaders(Lcom/android/providers/downloads/DownloadThread$InnerState;Lorg/apache/http/client/methods/HttpGet;)V

    .line 236
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->checkConnectivity(Lcom/android/providers/downloads/DownloadThread$State;)V

    .line 238
    invoke-direct {p0, p1, p2, p3}, Lcom/android/providers/downloads/DownloadThread;->sendRequest(Lcom/android/providers/downloads/DownloadThread$State;Landroid/net/http/AndroidHttpClient;Lorg/apache/http/client/methods/HttpGet;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 239
    .local v3, response:Lorg/apache/http/HttpResponse;
    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/downloads/DownloadThread;->handleExceptionalStatus(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V

    .line 241
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v4, :cond_0

    .line 242
    const-string v4, "DownloadManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "received response for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v6, v6, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :cond_0
    invoke-direct {p0, p1, v2, v3}, Lcom/android/providers/downloads/DownloadThread;->processResponseHeaders(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V

    .line 246
    invoke-direct {p0, p1, v3}, Lcom/android/providers/downloads/DownloadThread;->openResponseEntity(Lcom/android/providers/downloads/DownloadThread$State;Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;

    move-result-object v1

    .line 247
    .local v1, entityStream:Ljava/io/InputStream;
    invoke-direct {p0, p1, v2, v0, v1}, Lcom/android/providers/downloads/DownloadThread;->transferData(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;[BLjava/io/InputStream;)V

    .line 248
    return-void
.end method

.method private finalizeDestinationFile(Lcom/android/providers/downloads/DownloadThread$State;)V
    .locals 6
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/DownloadThread$StopRequest;
        }
    .end annotation

    .prologue
    const/4 v5, -0x1

    .line 300
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->isDrmFile(Lcom/android/providers/downloads/DownloadThread$State;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 301
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->transferToDrm(Lcom/android/providers/downloads/DownloadThread$State;)V

    .line 308
    :goto_0
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mAppointName:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 309
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mAppointName:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 310
    .local v2, oldFile:Ljava/io/File;
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mHint:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 311
    .local v1, newPath:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 312
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 313
    .local v0, newFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 314
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 317
    .end local v0           #newFile:Ljava/io/File;
    .end local v1           #newPath:Ljava/lang/String;
    .end local v2           #oldFile:Ljava/io/File;
    :cond_0
    return-void

    .line 304
    :cond_1
    iget-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    const/16 v4, 0x1ff

    invoke-static {v3, v4, v5, v5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 305
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->syncDestination(Lcom/android/providers/downloads/DownloadThread$State;)V

    goto :goto_0
.end method

.method private getFinalStatusForHttpError(Lcom/android/providers/downloads/DownloadThread$State;)I
    .locals 4
    .parameter

    .prologue
    .line 832
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-static {v0}, Lcom/android/providers/downloads/Helpers;->isNetworkAvailable(Lcom/android/providers/downloads/SystemFacade;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 833
    const/16 v0, 0xc3

    .line 839
    :goto_0
    return v0

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mNumFailed:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 835
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCountRetry:Z

    .line 836
    const/16 v0, 0xc2

    goto :goto_0

    .line 838
    :cond_1
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reached max retries for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    const/16 v0, 0x1ef

    goto :goto_0
.end method

.method private handleEndOfStream(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;)V
    .locals 5
    .parameter "state"
    .parameter "innerState"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/DownloadThread$StopRequest;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 490
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 491
    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "current_bytes"

    iget v3, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mBytesSoFar:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 492
    iget-object v2, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 493
    const-string v2, "total_bytes"

    iget v3, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mBytesSoFar:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 495
    :cond_0
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v3}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 497
    iget-object v2, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget v2, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mBytesSoFar:I

    iget-object v3, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_1

    const/4 v2, 0x1

    move v0, v2

    .line 499
    .local v0, lengthMismatched:Z
    :goto_0
    if-eqz v0, :cond_3

    .line 500
    invoke-direct {p0, p2}, Lcom/android/providers/downloads/DownloadThread;->cannotResume(Lcom/android/providers/downloads/DownloadThread$InnerState;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 501
    new-instance v2, Lcom/android/providers/downloads/DownloadThread$StopRequest;

    const/16 v3, 0x1e9

    const-string v4, "mismatched content length"

    invoke-direct {v2, p0, v3, v4}, Lcom/android/providers/downloads/DownloadThread$StopRequest;-><init>(Lcom/android/providers/downloads/DownloadThread;ILjava/lang/String;)V

    throw v2

    .line 497
    .end local v0           #lengthMismatched:Z
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 504
    .restart local v0       #lengthMismatched:Z
    :cond_2
    new-instance v2, Lcom/android/providers/downloads/DownloadThread$StopRequest;

    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->getFinalStatusForHttpError(Lcom/android/providers/downloads/DownloadThread$State;)I

    move-result v3

    const-string v4, "closed socket before end of file"

    invoke-direct {v2, p0, v3, v4}, Lcom/android/providers/downloads/DownloadThread$StopRequest;-><init>(Lcom/android/providers/downloads/DownloadThread;ILjava/lang/String;)V

    throw v2

    .line 508
    :cond_3
    return-void
.end method

.method private handleExceptionalStatus(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V
    .locals 4
    .parameter "state"
    .parameter "innerState"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/DownloadThread$StopRequest;,
            Lcom/android/providers/downloads/DownloadThread$RetryDownload;
        }
    .end annotation

    .prologue
    .line 709
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 710
    .local v1, statusCode:I
    const/16 v2, 0x1f7

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mNumFailed:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    .line 711
    invoke-direct {p0, p1, p3}, Lcom/android/providers/downloads/DownloadThread;->handleServiceUnavailable(Lcom/android/providers/downloads/DownloadThread$State;Lorg/apache/http/HttpResponse;)V

    .line 713
    :cond_0
    const/16 v2, 0x12d

    if-eq v1, v2, :cond_1

    const/16 v2, 0x12e

    if-eq v1, v2, :cond_1

    const/16 v2, 0x12f

    if-eq v1, v2, :cond_1

    const/16 v2, 0x133

    if-ne v1, v2, :cond_2

    .line 714
    :cond_1
    invoke-direct {p0, p1, p3, v1}, Lcom/android/providers/downloads/DownloadThread;->handleRedirect(Lcom/android/providers/downloads/DownloadThread$State;Lorg/apache/http/HttpResponse;I)V

    .line 717
    :cond_2
    iget-boolean v2, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mContinuingDownload:Z

    if-eqz v2, :cond_4

    const/16 v2, 0xce

    move v0, v2

    .line 718
    .local v0, expectedStatus:I
    :goto_0
    if-eq v1, v0, :cond_3

    .line 719
    invoke-direct {p0, p1, p2, v1}, Lcom/android/providers/downloads/DownloadThread;->handleOtherStatus(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;I)V

    .line 721
    :cond_3
    return-void

    .line 717
    .end local v0           #expectedStatus:I
    :cond_4
    const/16 v2, 0xc8

    move v0, v2

    goto :goto_0
.end method

.method private handleOtherStatus(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;I)V
    .locals 4
    .parameter "state"
    .parameter "innerState"
    .parameter "statusCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/DownloadThread$StopRequest;
        }
    .end annotation

    .prologue
    .line 729
    invoke-static {p3}, Landroid/provider/Downloads$Impl;->isStatusError(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 730
    move v0, p3

    .line 738
    .local v0, finalStatus:I
    :goto_0
    new-instance v1, Lcom/android/providers/downloads/DownloadThread$StopRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v0, v2}, Lcom/android/providers/downloads/DownloadThread$StopRequest;-><init>(Lcom/android/providers/downloads/DownloadThread;ILjava/lang/String;)V

    throw v1

    .line 731
    .end local v0           #finalStatus:I
    :cond_0
    const/16 v1, 0x12c

    if-lt p3, v1, :cond_1

    const/16 v1, 0x190

    if-ge p3, v1, :cond_1

    .line 732
    const/16 v0, 0x1ed

    .restart local v0       #finalStatus:I
    goto :goto_0

    .line 733
    .end local v0           #finalStatus:I
    :cond_1
    iget-boolean v1, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mContinuingDownload:Z

    if-eqz v1, :cond_2

    const/16 v1, 0xc8

    if-ne p3, v1, :cond_2

    .line 734
    const/16 v0, 0x1e9

    .restart local v0       #finalStatus:I
    goto :goto_0

    .line 736
    .end local v0           #finalStatus:I
    :cond_2
    const/16 v0, 0x1ee

    .restart local v0       #finalStatus:I
    goto :goto_0
.end method

.method private handleRedirect(Lcom/android/providers/downloads/DownloadThread$State;Lorg/apache/http/HttpResponse;I)V
    .locals 7
    .parameter "state"
    .parameter "response"
    .parameter "statusCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/DownloadThread$StopRequest;,
            Lcom/android/providers/downloads/DownloadThread$RetryDownload;
        }
    .end annotation

    .prologue
    const-string v6, "DownloadManager"

    .line 746
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v3, :cond_0

    .line 747
    const-string v3, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got HTTP redirect "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_0
    iget v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRedirectCount:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_1

    .line 750
    new-instance v3, Lcom/android/providers/downloads/DownloadThread$StopRequest;

    const/16 v4, 0x1f1

    const-string v5, "too many redirects"

    invoke-direct {v3, p0, v4, v5}, Lcom/android/providers/downloads/DownloadThread$StopRequest;-><init>(Lcom/android/providers/downloads/DownloadThread;ILjava/lang/String;)V

    throw v3

    .line 752
    :cond_1
    const-string v3, "Location"

    invoke-interface {p2, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    .line 753
    .local v1, header:Lorg/apache/http/Header;
    if-nez v1, :cond_2

    .line 754
    return-void

    .line 756
    :cond_2
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v3, :cond_3

    .line 757
    const-string v3, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Location :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_3
    :try_start_0
    new-instance v3, Ljava/net/URI;

    iget-object v4, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v4, v4, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/net/URI;

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 771
    .local v2, newUri:Ljava/lang/String;
    iget v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRedirectCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRedirectCount:I

    .line 772
    iput-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRequestUri:Ljava/lang/String;

    .line 773
    const/16 v3, 0x12d

    if-eq p3, v3, :cond_4

    const/16 v3, 0x12f

    if-ne p3, v3, :cond_5

    .line 775
    :cond_4
    iput-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mNewUri:Ljava/lang/String;

    .line 777
    :cond_5
    new-instance v3, Lcom/android/providers/downloads/DownloadThread$RetryDownload;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/providers/downloads/DownloadThread$RetryDownload;-><init>(Lcom/android/providers/downloads/DownloadThread;Lcom/android/providers/downloads/DownloadThread$1;)V

    throw v3

    .line 763
    .end local v2           #newUri:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 764
    .local v0, ex:Ljava/net/URISyntaxException;
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v3, :cond_6

    .line 765
    const-string v3, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t resolve redirect URI "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v4, v4, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    :cond_6
    new-instance v3, Lcom/android/providers/downloads/DownloadThread$StopRequest;

    const/16 v4, 0x1ef

    const-string v5, "Couldn\'t resolve redirect URI"

    invoke-direct {v3, p0, v4, v5}, Lcom/android/providers/downloads/DownloadThread$StopRequest;-><init>(Lcom/android/providers/downloads/DownloadThread;ILjava/lang/String;)V

    throw v3
.end method

.method private handleServiceUnavailable(Lcom/android/providers/downloads/DownloadThread$State;Lorg/apache/http/HttpResponse;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/DownloadThread$StopRequest;
        }
    .end annotation

    .prologue
    const v5, 0x15180

    const/16 v4, 0x1e

    const-string v1, "DownloadManager"

    .line 784
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v0, :cond_0

    .line 785
    const-string v0, "DownloadManager"

    const-string v0, "got HTTP response code 503"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 787
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mCountRetry:Z

    .line 788
    const-string v0, "Retry-After"

    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 789
    if-eqz v0, :cond_2

    .line 791
    :try_start_0
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_1

    .line 792
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Retry-After :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_1
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    .line 795
    iget v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    if-gez v0, :cond_3

    .line 796
    const/4 v0, 0x0

    iput v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 810
    :cond_2
    :goto_0
    new-instance v0, Lcom/android/providers/downloads/DownloadThread$StopRequest;

    const/16 v1, 0xc2

    const-string v2, "got 503 Service Unavailable, will retry later"

    invoke-direct {v0, p0, v1, v2}, Lcom/android/providers/downloads/DownloadThread$StopRequest;-><init>(Lcom/android/providers/downloads/DownloadThread;ILjava/lang/String;)V

    throw v0

    .line 798
    :cond_3
    :try_start_1
    iget v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    if-ge v0, v4, :cond_5

    .line 799
    const/16 v0, 0x1e

    iput v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    .line 803
    :cond_4
    :goto_1
    iget v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    sget-object v1, Lcom/android/providers/downloads/Helpers;->sRandom:Ljava/util/Random;

    const/16 v2, 0x1f

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    .line 804
    iget v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    goto :goto_0

    .line 806
    :catch_0
    move-exception v0

    goto :goto_0

    .line 800
    :cond_5
    iget v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    if-le v0, v5, :cond_4

    .line 801
    const v0, 0x15180

    iput v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private isDrmFile(Lcom/android/providers/downloads/DownloadThread$State;)Z
    .locals 2
    .parameter "state"

    .prologue
    .line 364
    const-string v0, "application/vnd.oma.drm.message"

    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private logNetworkState()V
    .locals 0

    .prologue
    .line 562
    return-void
.end method

.method private notifyDownloadCompleted(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "status"
    .parameter "countRetry"
    .parameter "retryAfter"
    .parameter "gotData"
    .parameter "filename"
    .parameter "uri"
    .parameter "mimeType"

    .prologue
    .line 918
    invoke-direct/range {p0 .. p7}, Lcom/android/providers/downloads/DownloadThread;->notifyThroughDatabase(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    invoke-static {p1}, Landroid/provider/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 921
    sget-object v0, Lcom/android/providers/downloads/Constants;->sDownloadSetNeedToUpdateProgress:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v1, v1, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 922
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iput p1, v0, Lcom/android/providers/downloads/DownloadInfo;->mStatus:I

    .line 923
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 924
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v1, v1, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    iput-wide v1, v0, Lcom/android/providers/downloads/DownloadInfo;->mCurrentBytes:J

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v0}, Lcom/android/providers/downloads/DownloadInfo;->sendDownloadProgressUpdateIntent()V

    .line 927
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v0}, Lcom/android/providers/downloads/DownloadInfo;->sendIntentIfRequested()V

    .line 929
    :cond_1
    return-void
.end method

.method private notifyThroughDatabase(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const-string v4, "numfailed"

    .line 934
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 935
    const-string v1, "status"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 936
    const-string v1, "_data"

    invoke-virtual {v0, v1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    if-eqz p6, :cond_0

    .line 938
    const-string v1, "uri"

    invoke-virtual {v0, v1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    :cond_0
    const-string v1, "mimetype"

    invoke-virtual {v0, v1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    const-string v1, "lastmod"

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v2}, Lcom/android/providers/downloads/SystemFacade;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 942
    const-string v1, "method"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 943
    if-nez p2, :cond_1

    .line 944
    const-string v1, "numfailed"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 951
    :goto_0
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v2}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 952
    return-void

    .line 945
    :cond_1
    if-eqz p4, :cond_2

    .line 946
    const-string v1, "numfailed"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 948
    :cond_2
    const-string v1, "numfailed"

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v1, v1, Lcom/android/providers/downloads/DownloadInfo;->mNumFailed:I

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method private openResponseEntity(Lcom/android/providers/downloads/DownloadThread$State;Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;
    .locals 5
    .parameter "state"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/DownloadThread$StopRequest;
        }
    .end annotation

    .prologue
    .line 549
    :try_start_0
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 550
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 551
    .local v0, ex:Ljava/io/IOException;
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadThread;->logNetworkState()V

    .line 552
    new-instance v1, Lcom/android/providers/downloads/DownloadThread$StopRequest;

    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->getFinalStatusForHttpError(Lcom/android/providers/downloads/DownloadThread$State;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "while getting entity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/providers/downloads/DownloadThread$StopRequest;-><init>(Lcom/android/providers/downloads/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private processResponseHeaders(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V
    .locals 13
    .parameter "state"
    .parameter "innerState"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/DownloadThread$StopRequest;
        }
    .end annotation

    .prologue
    .line 570
    iget-boolean v0, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mContinuingDownload:Z

    if-eqz v0, :cond_0

    .line 611
    :goto_0
    return-void

    .line 575
    :cond_0
    invoke-direct/range {p0 .. p3}, Lcom/android/providers/downloads/DownloadThread;->readResponseHeaders(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V

    .line 578
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v1, v1, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mHint:Ljava/lang/String;

    iget-object v3, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentDisposition:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLocation:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v6, v6, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    iget-object v7, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    if-eqz v7, :cond_3

    iget-object v7, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    :goto_1
    iget-object v9, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-boolean v9, v9, Lcom/android/providers/downloads/DownloadInfo;->mIsPublicApi:Z

    iget-object v10, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v10, v10, Lcom/android/providers/downloads/DownloadInfo;->mSubDirectory:Ljava/lang/String;

    iget-object v11, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v11, v11, Lcom/android/providers/downloads/DownloadInfo;->mAppointName:Ljava/lang/String;

    invoke-static/range {v0 .. v11}, Lcom/android/providers/downloads/Helpers;->generateSaveFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/providers/downloads/Helpers$GenerateSaveFileError; {:try_start_0 .. :try_end_0} :catch_0

    .line 595
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    .line 596
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->isDrmFile(Lcom/android/providers/downloads/DownloadThread$State;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 598
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    const/16 v1, 0x1ff

    const/4 v2, -0x1

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 604
    :cond_1
    sget-boolean v0, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v0, :cond_2

    .line 605
    const-string v0, "DownloadManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/DownloadThread;->updateDatabaseFromHeaders(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;)V

    .line 610
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->checkConnectivity(Lcom/android/providers/downloads/DownloadThread$State;)V

    goto :goto_0

    .line 578
    :cond_3
    const-wide/16 v7, 0x0

    goto :goto_1

    .line 591
    :catch_0
    move-exception v0

    move-object v12, v0

    .line 592
    .local v12, exc:Lcom/android/providers/downloads/Helpers$GenerateSaveFileError;
    new-instance v0, Lcom/android/providers/downloads/DownloadThread$StopRequest;

    iget v1, v12, Lcom/android/providers/downloads/Helpers$GenerateSaveFileError;->mStatus:I

    iget-object v2, v12, Lcom/android/providers/downloads/Helpers$GenerateSaveFileError;->mMessage:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/providers/downloads/DownloadThread$StopRequest;-><init>(Lcom/android/providers/downloads/DownloadThread;ILjava/lang/String;)V

    throw v0

    .line 600
    .end local v12           #exc:Lcom/android/providers/downloads/Helpers$GenerateSaveFileError;
    :catch_1
    move-exception v0

    move-object v12, v0

    .line 601
    .local v12, exc:Ljava/io/FileNotFoundException;
    new-instance v0, Lcom/android/providers/downloads/DownloadThread$StopRequest;

    const/16 v1, 0x1ec

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "while opening destination file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2, v12}, Lcom/android/providers/downloads/DownloadThread$StopRequest;-><init>(Lcom/android/providers/downloads/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private readFromResponse(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;[BLjava/io/InputStream;)I
    .locals 8
    .parameter "state"
    .parameter "innerState"
    .parameter "data"
    .parameter "entityStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/DownloadThread$StopRequest;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const-string v7, "while reading response: "

    .line 524
    :try_start_0
    invoke-virtual {p4, p3}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 525
    :catch_0
    move-exception v0

    .line 526
    .local v0, ex:Ljava/io/IOException;
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadThread;->logNetworkState()V

    .line 527
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 528
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "current_bytes"

    iget v4, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mBytesSoFar:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 529
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v4}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 530
    invoke-direct {p0, p2}, Lcom/android/providers/downloads/DownloadThread;->cannotResume(Lcom/android/providers/downloads/DownloadThread$InnerState;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 531
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "while reading response: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", can\'t resume interrupted download with no ETag"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 533
    .local v1, message:Ljava/lang/String;
    new-instance v3, Lcom/android/providers/downloads/DownloadThread$StopRequest;

    const/16 v4, 0x1e9

    invoke-direct {v3, p0, v4, v1, v0}, Lcom/android/providers/downloads/DownloadThread$StopRequest;-><init>(Lcom/android/providers/downloads/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 536
    .end local v1           #message:Ljava/lang/String;
    :cond_0
    new-instance v3, Lcom/android/providers/downloads/DownloadThread$StopRequest;

    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->getFinalStatusForHttpError(Lcom/android/providers/downloads/DownloadThread$State;)I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "while reading response: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p0, v4, v5, v0}, Lcom/android/providers/downloads/DownloadThread$StopRequest;-><init>(Lcom/android/providers/downloads/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method private readResponseHeaders(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V
    .locals 7
    .parameter "state"
    .parameter "innerState"
    .parameter "response"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/DownloadThread$StopRequest;
        }
    .end annotation

    .prologue
    const-string v6, "DownloadManager"

    .line 639
    const-string v3, "Content-Disposition"

    invoke-interface {p3, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 640
    .local v0, header:Lorg/apache/http/Header;
    if-eqz v0, :cond_0

    .line 641
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentDisposition:Ljava/lang/String;

    .line 643
    :cond_0
    const-string v3, "Content-Location"

    invoke-interface {p3, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 644
    if-eqz v0, :cond_1

    .line 645
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLocation:Ljava/lang/String;

    .line 647
    :cond_1
    iget-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 648
    const-string v3, "Content-Type"

    invoke-interface {p3, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 649
    if-eqz v0, :cond_2

    .line 650
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/providers/downloads/DownloadThread;->sanitizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    .line 653
    :cond_2
    const-string v3, "ETag"

    invoke-interface {p3, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 654
    if-eqz v0, :cond_3

    .line 655
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    .line 657
    :cond_3
    const-string v3, "Last-Modified"

    invoke-interface {p3, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 658
    if-eqz v0, :cond_4

    .line 659
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderLastModified:Ljava/lang/String;

    .line 661
    :cond_4
    const-string v3, "Accept-Ranges"

    invoke-interface {p3, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 662
    if-eqz v0, :cond_5

    .line 663
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderAcceptRanges:Ljava/lang/String;

    .line 665
    :cond_5
    const/4 v1, 0x0

    .line 666
    .local v1, headerTransferEncoding:Ljava/lang/String;
    const-string v3, "Transfer-Encoding"

    invoke-interface {p3, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 667
    if-eqz v0, :cond_6

    .line 668
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 670
    :cond_6
    if-nez v1, :cond_a

    .line 671
    const-string v3, "Content-Length"

    invoke-interface {p3, v3}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    .line 672
    if-eqz v0, :cond_7

    .line 673
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    .line 674
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v4, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    .line 683
    :cond_7
    :goto_0
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v3, :cond_8

    .line 684
    const-string v3, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content-Disposition: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentDisposition:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    const-string v3, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content-Length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const-string v3, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content-Location: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLocation:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const-string v3, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content-Type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 689
    const-string v3, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ETag: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const-string v3, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Last-Modified: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderLastModified:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    const-string v3, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Accept-Ranges: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderAcceptRanges:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    const-string v3, "DownloadManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transfer-Encoding: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    :cond_8
    iget-object v3, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    if-nez v3, :cond_b

    if-eqz v1, :cond_9

    const-string v3, "chunked"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_9
    const/4 v3, 0x1

    move v2, v3

    .line 698
    .local v2, noSizeInfo:Z
    :goto_1
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-boolean v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mNoIntegrity:Z

    if-nez v3, :cond_c

    if-eqz v2, :cond_c

    .line 699
    new-instance v3, Lcom/android/providers/downloads/DownloadThread$StopRequest;

    const/16 v4, 0x1ef

    const-string v5, "can\'t know size of download, giving up"

    invoke-direct {v3, p0, v4, v5}, Lcom/android/providers/downloads/DownloadThread$StopRequest;-><init>(Lcom/android/providers/downloads/DownloadThread;ILjava/lang/String;)V

    throw v3

    .line 678
    .end local v2           #noSizeInfo:Z
    :cond_a
    sget-boolean v3, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v3, :cond_7

    .line 679
    const-string v3, "DownloadManager"

    const-string v3, "ignoring content-length because of xfer-encoding"

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 695
    :cond_b
    const/4 v3, 0x0

    move v2, v3

    goto :goto_1

    .line 702
    .restart local v2       #noSizeInfo:Z
    :cond_c
    return-void
.end method

.method private reportProgress(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;)V
    .locals 8
    .parameter "state"
    .parameter "innerState"

    .prologue
    const/4 v7, 0x0

    .line 423
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mSystemFacade:Lcom/android/providers/downloads/SystemFacade;

    invoke-interface {v3}, Lcom/android/providers/downloads/SystemFacade;->currentTimeMillis()J

    move-result-wide v0

    .line 424
    .local v0, now:J
    iget v3, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mBytesSoFar:I

    iget v4, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mBytesNotified:I

    sub-int/2addr v3, v4

    const/16 v4, 0x1000

    if-le v3, v4, :cond_0

    iget-wide v3, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mTimeLastNotification:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x5dc

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    .line 428
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 429
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "current_bytes"

    iget v4, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mBytesSoFar:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 430
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v4}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4, v2, v7, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 431
    iget v3, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mBytesSoFar:I

    iput v3, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mBytesNotified:I

    .line 432
    iput-wide v0, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mTimeLastNotification:J

    .line 433
    sget-object v3, Lcom/android/providers/downloads/Constants;->sDownloadSetNeedToUpdateProgress:Ljava/util/HashSet;

    iget-object v4, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v4, v4, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 434
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v3}, Lcom/android/providers/downloads/DownloadInfo;->sendDownloadProgressUpdateIntent()V

    .line 437
    .end local v2           #values:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private static sanitizeMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "mimeType"

    .prologue
    .line 963
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 965
    const/16 v2, 0x3b

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 966
    .local v1, semicolonIndex:I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 967
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    :cond_0
    move-object v2, p0

    .line 971
    .end local v1           #semicolonIndex:I
    :goto_0
    return-object v2

    .line 970
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 971
    .local v0, npe:Ljava/lang/NullPointerException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private sendRequest(Lcom/android/providers/downloads/DownloadThread$State;Landroid/net/http/AndroidHttpClient;Lorg/apache/http/client/methods/HttpGet;)Lorg/apache/http/HttpResponse;
    .locals 6
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/DownloadThread$StopRequest;
        }
    .end annotation

    .prologue
    const-string v5, "while trying to execute request: "

    .line 820
    :try_start_0
    invoke-virtual {p2, p3}, Landroid/net/http/AndroidHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 821
    :catch_0
    move-exception v0

    .line 822
    new-instance v1, Lcom/android/providers/downloads/DownloadThread$StopRequest;

    const/16 v2, 0x1ef

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "while trying to execute request: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/providers/downloads/DownloadThread$StopRequest;-><init>(Lcom/android/providers/downloads/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 824
    :catch_1
    move-exception v0

    .line 825
    invoke-direct {p0}, Lcom/android/providers/downloads/DownloadThread;->logNetworkState()V

    .line 826
    new-instance v1, Lcom/android/providers/downloads/DownloadThread$StopRequest;

    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->getFinalStatusForHttpError(Lcom/android/providers/downloads/DownloadThread$State;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "while trying to execute request: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3, v0}, Lcom/android/providers/downloads/DownloadThread$StopRequest;-><init>(Lcom/android/providers/downloads/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private setupDestinationFile(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;)V
    .locals 7
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/DownloadThread$StopRequest;
        }
    .end annotation

    .prologue
    const/16 v6, 0x1ec

    const/4 v5, 0x1

    .line 849
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 850
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/providers/downloads/Helpers;->isFilenameValid(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 852
    new-instance v0, Lcom/android/providers/downloads/DownloadThread$StopRequest;

    const-string v1, "found invalid internal destination filename"

    invoke-direct {v0, p0, v6, v1}, Lcom/android/providers/downloads/DownloadThread$StopRequest;-><init>(Lcom/android/providers/downloads/DownloadThread;ILjava/lang/String;)V

    throw v0

    .line 856
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 857
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 858
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    .line 859
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_3

    .line 861
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 862
    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    .line 887
    :cond_1
    :goto_0
    iget-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->isDrmFile(Lcom/android/providers/downloads/DownloadThread$State;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 889
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->closeDestination(Lcom/android/providers/downloads/DownloadThread$State;)V

    .line 891
    :cond_2
    return-void

    .line 863
    :cond_3
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mETag:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mIfRange:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-boolean v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mNoIntegrity:Z

    if-nez v3, :cond_4

    .line 865
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 866
    new-instance v0, Lcom/android/providers/downloads/DownloadThread$StopRequest;

    const/16 v1, 0x1e9

    const-string v2, "Trying to resume a download that can\'t be resumed"

    invoke-direct {v0, p0, v1, v2}, Lcom/android/providers/downloads/DownloadThread$StopRequest;-><init>(Lcom/android/providers/downloads/DownloadThread;ILjava/lang/String;)V

    throw v0

    .line 871
    :cond_4
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p1, Lcom/android/providers/downloads/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 876
    long-to-int v0, v1

    iput v0, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mBytesSoFar:I

    .line 877
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 878
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    .line 880
    :cond_5
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mETag:Ljava/lang/String;

    iput-object v0, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    .line 881
    iget-object v0, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadInfo;->mIfRange:Ljava/lang/String;

    iput-object v0, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderIfRangeId:Ljava/lang/String;

    .line 882
    iput-boolean v5, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mContinuingDownload:Z

    goto :goto_0

    .line 872
    :catch_0
    move-exception v0

    .line 873
    new-instance v1, Lcom/android/providers/downloads/DownloadThread$StopRequest;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "while opening destination for resuming: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v6, v2, v0}, Lcom/android/providers/downloads/DownloadThread$StopRequest;-><init>(Lcom/android/providers/downloads/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private syncDestination(Lcom/android/providers/downloads/DownloadThread$State;)V
    .locals 9
    .parameter "state"

    .prologue
    const-string v3, "file "

    const-string v8, "exception while closing file: "

    const-string v7, "IOException while closing synced file: "

    const-string v6, "DownloadManager"

    .line 335
    const/4 v0, 0x0

    .line 337
    .local v0, downloadedFileStream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/SyncFailedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6

    .line 338
    .end local v0           #downloadedFileStream:Ljava/io/FileOutputStream;
    .local v1, downloadedFileStream:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_13
    .catch Ljava/io/SyncFailedException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_10

    .line 348
    if-eqz v1, :cond_0

    .line 350
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_f

    :cond_0
    :goto_0
    move-object v0, v1

    .line 358
    .end local v1           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v0       #downloadedFileStream:Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return-void

    .line 339
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 340
    .local v2, ex:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 348
    if-eqz v0, :cond_1

    .line 350
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_a

    goto :goto_1

    .line 351
    :catch_1
    move-exception v2

    .line 352
    .local v2, ex:Ljava/io/IOException;
    const-string v3, "DownloadManager"

    const-string v3, "IOException while closing synced file: "

    :goto_3
    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 341
    .end local v2           #ex:Ljava/io/IOException;
    :catch_2
    move-exception v3

    move-object v2, v3

    .line 342
    .local v2, ex:Ljava/io/SyncFailedException;
    :goto_4
    :try_start_5
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sync failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 348
    if-eqz v0, :cond_1

    .line 350
    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_b

    goto :goto_1

    .line 351
    :catch_3
    move-exception v2

    .line 352
    .local v2, ex:Ljava/io/IOException;
    const-string v3, "DownloadManager"

    const-string v3, "IOException while closing synced file: "

    goto :goto_3

    .line 343
    .end local v2           #ex:Ljava/io/IOException;
    :catch_4
    move-exception v3

    move-object v2, v3

    .line 344
    .restart local v2       #ex:Ljava/io/IOException;
    :goto_5
    :try_start_7
    const-string v3, "DownloadManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException trying to sync "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 348
    if-eqz v0, :cond_1

    .line 350
    :try_start_8
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_c

    goto/16 :goto_1

    .line 351
    :catch_5
    move-exception v2

    .line 352
    const-string v3, "DownloadManager"

    const-string v3, "IOException while closing synced file: "

    goto :goto_3

    .line 345
    .end local v2           #ex:Ljava/io/IOException;
    :catch_6
    move-exception v3

    move-object v2, v3

    .line 346
    .local v2, ex:Ljava/lang/RuntimeException;
    :goto_6
    :try_start_9
    const-string v3, "DownloadManager"

    const-string v4, "exception while syncing file: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 348
    if-eqz v0, :cond_1

    .line 350
    :try_start_a
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_d

    goto/16 :goto_1

    .line 351
    :catch_7
    move-exception v2

    .line 352
    .local v2, ex:Ljava/io/IOException;
    const-string v3, "DownloadManager"

    const-string v3, "IOException while closing synced file: "

    goto :goto_3

    .line 348
    .end local v2           #ex:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_7
    if-eqz v0, :cond_2

    .line 350
    :try_start_b
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_9

    .line 348
    :cond_2
    :goto_8
    throw v3

    .line 351
    :catch_8
    move-exception v2

    .line 352
    .restart local v2       #ex:Ljava/io/IOException;
    const-string v4, "DownloadManager"

    const-string v4, "IOException while closing synced file: "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 353
    .end local v2           #ex:Ljava/io/IOException;
    :catch_9
    move-exception v2

    .line 354
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v4, "DownloadManager"

    const-string v4, "exception while closing file: "

    invoke-static {v6, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 353
    .local v2, ex:Ljava/io/FileNotFoundException;
    :catch_a
    move-exception v2

    .line 354
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v3, "DownloadManager"

    const-string v3, "exception while closing file: "

    :goto_9
    invoke-static {v6, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 353
    .local v2, ex:Ljava/io/SyncFailedException;
    :catch_b
    move-exception v2

    .line 354
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v3, "DownloadManager"

    const-string v3, "exception while closing file: "

    goto :goto_9

    .line 353
    .local v2, ex:Ljava/io/IOException;
    :catch_c
    move-exception v2

    .line 354
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v3, "DownloadManager"

    const-string v3, "exception while closing file: "

    goto :goto_9

    .line 353
    :catch_d
    move-exception v2

    .line 354
    const-string v3, "DownloadManager"

    const-string v3, "exception while closing file: "

    goto :goto_9

    .line 351
    .end local v0           #downloadedFileStream:Ljava/io/FileOutputStream;
    .end local v2           #ex:Ljava/lang/RuntimeException;
    .restart local v1       #downloadedFileStream:Ljava/io/FileOutputStream;
    :catch_e
    move-exception v2

    .line 352
    .local v2, ex:Ljava/io/IOException;
    const-string v3, "DownloadManager"

    const-string v3, "IOException while closing synced file: "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 353
    .end local v2           #ex:Ljava/io/IOException;
    :catch_f
    move-exception v2

    .line 354
    .local v2, ex:Ljava/lang/RuntimeException;
    const-string v3, "DownloadManager"

    const-string v3, "exception while closing file: "

    invoke-static {v6, v8, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 348
    .end local v2           #ex:Ljava/lang/RuntimeException;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v0       #downloadedFileStream:Ljava/io/FileOutputStream;
    goto :goto_7

    .line 345
    .end local v0           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v1       #downloadedFileStream:Ljava/io/FileOutputStream;
    :catch_10
    move-exception v3

    move-object v2, v3

    move-object v0, v1

    .end local v1           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v0       #downloadedFileStream:Ljava/io/FileOutputStream;
    goto :goto_6

    .line 343
    .end local v0           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v1       #downloadedFileStream:Ljava/io/FileOutputStream;
    :catch_11
    move-exception v3

    move-object v2, v3

    move-object v0, v1

    .end local v1           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v0       #downloadedFileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_5

    .line 341
    .end local v0           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v1       #downloadedFileStream:Ljava/io/FileOutputStream;
    :catch_12
    move-exception v3

    move-object v2, v3

    move-object v0, v1

    .end local v1           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v0       #downloadedFileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_4

    .line 339
    .end local v0           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v1       #downloadedFileStream:Ljava/io/FileOutputStream;
    :catch_13
    move-exception v3

    move-object v2, v3

    move-object v0, v1

    .end local v1           #downloadedFileStream:Ljava/io/FileOutputStream;
    .restart local v0       #downloadedFileStream:Ljava/io/FileOutputStream;
    goto/16 :goto_2
.end method

.method private transferData(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;[BLjava/io/InputStream;)V
    .locals 4
    .parameter "state"
    .parameter "innerState"
    .parameter "data"
    .parameter "entityStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/DownloadThread$StopRequest;
        }
    .end annotation

    .prologue
    .line 276
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/providers/downloads/DownloadThread;->readFromResponse(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;[BLjava/io/InputStream;)I

    move-result v0

    .line 277
    .local v0, bytesRead:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 278
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/DownloadThread;->handleEndOfStream(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;)V

    .line 279
    return-void

    .line 282
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mGotData:Z

    .line 283
    invoke-direct {p0, p1, p3, v0}, Lcom/android/providers/downloads/DownloadThread;->writeDataToDestination(Lcom/android/providers/downloads/DownloadThread$State;[BI)V

    .line 284
    iget v1, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mBytesSoFar:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mBytesSoFar:I

    .line 285
    invoke-direct {p0, p1, p2}, Lcom/android/providers/downloads/DownloadThread;->reportProgress(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;)V

    .line 287
    sget-boolean v1, Lcom/android/providers/downloads/Constants;->LOGVV:Z

    if-eqz v1, :cond_1

    .line 288
    const-string v1, "DownloadManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downloaded "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mBytesSoFar:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->checkPausedOrCanceled(Lcom/android/providers/downloads/DownloadThread$State;)V

    goto :goto_0
.end method

.method private transferToDrm(Lcom/android/providers/downloads/DownloadThread$State;)V
    .locals 5
    .parameter "state"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/DownloadThread$StopRequest;
        }
    .end annotation

    .prologue
    .line 371
    new-instance v0, Ljava/io/File;

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 372
    .local v0, file:Ljava/io/File;
    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v0, v3}, Landroid/provider/DrmStore;->addDrmFile(Landroid/content/ContentResolver;Ljava/io/File;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 373
    .local v1, item:Landroid/content/Intent;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 375
    if-nez v1, :cond_0

    .line 376
    new-instance v2, Lcom/android/providers/downloads/DownloadThread$StopRequest;

    const/16 v3, 0x1eb

    const-string v4, "unable to add file to DrmProvider"

    invoke-direct {v2, p0, v3, v4}, Lcom/android/providers/downloads/DownloadThread$StopRequest;-><init>(Lcom/android/providers/downloads/DownloadThread;ILjava/lang/String;)V

    throw v2

    .line 379
    :cond_0
    invoke-virtual {v1}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    .line 380
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    .line 382
    return-void
.end method

.method private updateDatabaseFromHeaders(Lcom/android/providers/downloads/DownloadThread$State;Lcom/android/providers/downloads/DownloadThread$InnerState;)V
    .locals 5
    .parameter "state"
    .parameter "innerState"

    .prologue
    const/4 v4, 0x0

    .line 618
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 619
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "_data"

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    iget-object v1, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 621
    const-string v1, "etag"

    iget-object v2, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    :cond_0
    iget-object v1, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderAcceptRanges:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderAcceptRanges:Ljava/lang/String;

    const-string v2, "bytes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderLastModified:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 625
    const-string v1, "if_range_id"

    iget-object v2, p2, Lcom/android/providers/downloads/DownloadThread$InnerState;->mHeaderLastModified:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    :cond_1
    iget-object v1, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 628
    const-string v1, "mimetype"

    iget-object v2, p1, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    :cond_2
    const-string v1, "total_bytes"

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-wide v2, v2, Lcom/android/providers/downloads/DownloadInfo;->mTotalBytes:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 631
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v2}, Lcom/android/providers/downloads/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v0, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 632
    return-void
.end method

.method private userAgent()Ljava/lang/String;
    .locals 2

    .prologue
    .line 68
    iget-object v1, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget-object v0, v1, Lcom/android/providers/downloads/DownloadInfo;->mUserAgent:Ljava/lang/String;

    .line 69
    .local v0, userAgent:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 71
    :cond_0
    if-nez v0, :cond_1

    .line 72
    const-string v0, "AndroidDownloadManager"

    .line 74
    :cond_1
    return-object v0
.end method

.method private writeDataToDestination(Lcom/android/providers/downloads/DownloadThread$State;[BI)V
    .locals 8
    .parameter "state"
    .parameter "data"
    .parameter "bytesRead"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/downloads/DownloadThread$StopRequest;
        }
    .end annotation

    .prologue
    const/16 v7, 0x1ec

    .line 448
    :cond_0
    :try_start_0
    iget-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    if-nez v3, :cond_3

    .line 449
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    .line 450
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->isDrmFile(Lcom/android/providers/downloads/DownloadThread$State;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 452
    iget-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    const/16 v4, 0x1ff

    const/4 v5, -0x1

    const/4 v6, -0x1

    invoke-static {v3, v4, v5, v6}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 457
    :cond_1
    iget-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, p2, v4, p3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 458
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    iget v3, v3, Lcom/android/providers/downloads/DownloadInfo;->mDestination:I

    if-nez v3, :cond_2

    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->isDrmFile(Lcom/android/providers/downloads/DownloadThread$State;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 460
    invoke-direct {p0, p1}, Lcom/android/providers/downloads/DownloadThread;->closeDestination(Lcom/android/providers/downloads/DownloadThread$State;)V

    .line 462
    :cond_2
    return-void

    .line 454
    :cond_3
    new-instance v3, Ljava/io/File;

    iget-object v4, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    .line 455
    new-instance v3, Lcom/android/providers/downloads/DownloadThread$StopRequest;

    const/16 v4, 0x1ec

    const-string v5, "file not exists error"

    invoke-direct {v3, p0, v4, v5}, Lcom/android/providers/downloads/DownloadThread$StopRequest;-><init>(Lcom/android/providers/downloads/DownloadThread;ILjava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 463
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 464
    .local v2, ex:Ljava/io/IOException;
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    invoke-virtual {v3}, Lcom/android/providers/downloads/DownloadInfo;->isOnCache()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 465
    iget-object v3, p0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    const-wide/16 v4, 0x1000

    invoke-static {v3, v4, v5}, Lcom/android/providers/downloads/Helpers;->discardPurgeableFiles(Landroid/content/Context;J)Z

    move-result v3

    if-nez v3, :cond_0

    .line 473
    :cond_4
    iget-object v3, p1, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/providers/downloads/Helpers;->getFilesystemRoot(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/android/providers/downloads/Helpers;->getAvailableBytes(Ljava/io/File;)J

    move-result-wide v0

    .line 475
    .local v0, availableBytes:J
    int-to-long v3, p3

    cmp-long v3, v0, v3

    if-gez v3, :cond_6

    .line 476
    new-instance v3, Lcom/android/providers/downloads/DownloadThread$StopRequest;

    const/16 v4, 0x1f2

    const-string v5, "insufficient space while writing destination file"

    invoke-direct {v3, p0, v4, v5, v2}, Lcom/android/providers/downloads/DownloadThread$StopRequest;-><init>(Lcom/android/providers/downloads/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 468
    .end local v0           #availableBytes:J
    :cond_5
    invoke-static {}, Lcom/android/providers/downloads/Helpers;->isExternalMediaMounted()Z

    move-result v3

    if-nez v3, :cond_4

    .line 469
    new-instance v3, Lcom/android/providers/downloads/DownloadThread$StopRequest;

    const/16 v4, 0x1f3

    const-string v5, "external media not mounted while writing destination file"

    invoke-direct {v3, p0, v4, v5}, Lcom/android/providers/downloads/DownloadThread$StopRequest;-><init>(Lcom/android/providers/downloads/DownloadThread;ILjava/lang/String;)V

    throw v3

    .line 479
    .restart local v0       #availableBytes:J
    :cond_6
    new-instance v3, Lcom/android/providers/downloads/DownloadThread$StopRequest;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "while writing destination file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p0, v7, v4, v2}, Lcom/android/providers/downloads/DownloadThread$StopRequest;-><init>(Lcom/android/providers/downloads/DownloadThread;ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 147
    const/16 v4, 0xa

    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 149
    new-instance v18, Lcom/android/providers/downloads/DownloadThread$State;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v4, v0

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-direct {v0, v1}, Lcom/android/providers/downloads/DownloadThread$State;-><init>(Lcom/android/providers/downloads/DownloadInfo;)V

    .line 150
    .local v18, state:Lcom/android/providers/downloads/DownloadThread$State;
    const/4 v12, 0x0

    .line 151
    .local v12, client:Landroid/net/http/AndroidHttpClient;
    const/16 v19, 0x0

    .line 152
    .local v19, wakeLock:Landroid/os/PowerManager$WakeLock;
    const/16 v20, 0x0

    .line 153
    .local v20, wifiLock:Landroid/net/wifi/WifiManager$WifiLock;
    const/16 v5, 0x1eb

    .line 156
    .local v5, finalStatus:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v4, v0

    const-string v6, "power"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/PowerManager;

    .line 157
    .local v16, pm:Landroid/os/PowerManager;
    const/4 v4, 0x1

    const-string v6, "DownloadManager"

    move-object/from16 v0, v16

    move v1, v4

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v19

    .line 158
    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v4, v0

    const-string v6, "wifi"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/net/wifi/WifiManager;

    .line 161
    .local v21, wm:Landroid/net/wifi/WifiManager;
    const/4 v4, 0x3

    const-string v6, "DownloadManager"

    move-object/from16 v0, v21

    move v1, v4

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(ILjava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v20

    .line 162
    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    .line 164
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v4, :cond_0

    .line 165
    const-string v4, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initiating download for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/downloads/DownloadThread;->userAgent()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-static {v4, v6}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v12

    .line 170
    const/4 v15, 0x0

    .line 171
    .local v15, finished:Z
    :goto_0
    if-nez v15, :cond_4

    .line 172
    const-string v4, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Initiating request for download "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v7, v0

    iget-wide v7, v7, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v17, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mRequestUri:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-direct {v0, v1}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Lcom/android/providers/downloads/DownloadThread$StopRequest; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 175
    .local v17, request:Lorg/apache/http/client/methods/HttpGet;
    :try_start_1
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object v2, v12

    move-object/from16 v3, v17

    invoke-direct {v0, v1, v2, v3}, Lcom/android/providers/downloads/DownloadThread;->executeDownload(Lcom/android/providers/downloads/DownloadThread$State;Landroid/net/http/AndroidHttpClient;Lorg/apache/http/client/methods/HttpGet;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lcom/android/providers/downloads/DownloadThread$RetryDownload; {:try_start_1 .. :try_end_1} :catch_2

    .line 176
    const/4 v15, 0x1

    .line 180
    :try_start_2
    invoke-virtual/range {v17 .. v17}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 181
    :goto_1
    const/16 v17, 0x0

    goto :goto_0

    .line 180
    :catchall_0
    move-exception v4

    invoke-virtual/range {v17 .. v17}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 181
    const/16 v17, 0x0

    .line 180
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lcom/android/providers/downloads/DownloadThread$StopRequest; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 190
    .end local v15           #finished:Z
    .end local v16           #pm:Landroid/os/PowerManager;
    .end local v17           #request:Lorg/apache/http/client/methods/HttpGet;
    .end local v21           #wm:Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v4

    move-object v13, v4

    .line 192
    .local v13, error:Lcom/android/providers/downloads/DownloadThread$StopRequest;
    :try_start_3
    const-string v4, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Aborting request for download "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v7, v0

    iget-wide v7, v7, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v13}, Lcom/android/providers/downloads/DownloadThread$StopRequest;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget v5, v13, Lcom/android/providers/downloads/DownloadThread$StopRequest;->mFinalStatus:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 201
    if-eqz v19, :cond_1

    .line 202
    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 203
    const/16 v19, 0x0

    .line 206
    :cond_1
    if-eqz v20, :cond_2

    .line 207
    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 208
    const/16 v20, 0x0

    .line 211
    :cond_2
    if-eqz v12, :cond_3

    .line 212
    invoke-virtual {v12}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 213
    const/4 v12, 0x0

    .line 215
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/downloads/DownloadThread;->cleanupDestination(Lcom/android/providers/downloads/DownloadThread$State;I)V

    .line 216
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mCountRetry:Z

    move v6, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    move v7, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mGotData:Z

    move v8, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    move-object v9, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mNewUri:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    move-object v11, v0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/android/providers/downloads/DownloadThread;->notifyDownloadCompleted(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v4, v0

    .end local v13           #error:Lcom/android/providers/downloads/DownloadThread$StopRequest;
    :goto_2
    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/android/providers/downloads/DownloadInfo;->mHasActiveThread:Z

    .line 221
    return-void

    .line 185
    .restart local v15       #finished:Z
    .restart local v16       #pm:Landroid/os/PowerManager;
    .restart local v21       #wm:Landroid/net/wifi/WifiManager;
    :cond_4
    :try_start_4
    sget-boolean v4, Lcom/android/providers/downloads/Constants;->LOGV:Z

    if-eqz v4, :cond_5

    .line 186
    const-string v4, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "download completed for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/providers/downloads/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/providers/downloads/DownloadThread;->finalizeDestinationFile(Lcom/android/providers/downloads/DownloadThread$State;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Lcom/android/providers/downloads/DownloadThread$StopRequest; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 189
    const/16 v5, 0xc8

    .line 201
    if-eqz v19, :cond_6

    .line 202
    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 203
    const/16 v19, 0x0

    .line 206
    :cond_6
    if-eqz v20, :cond_7

    .line 207
    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 208
    const/16 v20, 0x0

    .line 211
    :cond_7
    if-eqz v12, :cond_8

    .line 212
    invoke-virtual {v12}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 213
    const/4 v12, 0x0

    .line 215
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/downloads/DownloadThread;->cleanupDestination(Lcom/android/providers/downloads/DownloadThread$State;I)V

    .line 216
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mCountRetry:Z

    move v6, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    move v7, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mGotData:Z

    move v8, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    move-object v9, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mNewUri:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    move-object v11, v0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/android/providers/downloads/DownloadThread;->notifyDownloadCompleted(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v4, v0

    goto :goto_2

    .line 196
    .end local v15           #finished:Z
    .end local v16           #pm:Landroid/os/PowerManager;
    .end local v21           #wm:Landroid/net/wifi/WifiManager;
    :catch_1
    move-exception v4

    move-object v14, v4

    .line 197
    .local v14, ex:Ljava/lang/Throwable;
    :try_start_5
    const-string v4, "DownloadManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception for id "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v7, v0

    iget-wide v7, v7, Lcom/android/providers/downloads/DownloadInfo;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 198
    const/16 v5, 0x1eb

    .line 201
    if-eqz v19, :cond_9

    .line 202
    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 203
    const/16 v19, 0x0

    .line 206
    :cond_9
    if-eqz v20, :cond_a

    .line 207
    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 208
    const/16 v20, 0x0

    .line 211
    :cond_a
    if-eqz v12, :cond_b

    .line 212
    invoke-virtual {v12}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 213
    const/4 v12, 0x0

    .line 215
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/downloads/DownloadThread;->cleanupDestination(Lcom/android/providers/downloads/DownloadThread$State;I)V

    .line 216
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mCountRetry:Z

    move v6, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    move v7, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mGotData:Z

    move v8, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    move-object v9, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mNewUri:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    move-object v11, v0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/android/providers/downloads/DownloadThread;->notifyDownloadCompleted(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v4, v0

    goto/16 :goto_2

    .line 201
    .end local v14           #ex:Ljava/lang/Throwable;
    :catchall_1
    move-exception v4

    move-object v13, v4

    if-eqz v19, :cond_c

    .line 202
    invoke-virtual/range {v19 .. v19}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 203
    const/16 v19, 0x0

    .line 206
    :cond_c
    if-eqz v20, :cond_d

    .line 207
    invoke-virtual/range {v20 .. v20}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    .line 208
    const/16 v20, 0x0

    .line 211
    :cond_d
    if-eqz v12, :cond_e

    .line 212
    invoke-virtual {v12}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 213
    const/4 v12, 0x0

    .line 215
    :cond_e
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/providers/downloads/DownloadThread;->cleanupDestination(Lcom/android/providers/downloads/DownloadThread$State;I)V

    .line 216
    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mCountRetry:Z

    move v6, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mRetryAfter:I

    move v7, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mGotData:Z

    move v8, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mFilename:Ljava/lang/String;

    move-object v9, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mNewUri:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread$State;->mMimeType:Ljava/lang/String;

    move-object v11, v0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v11}, Lcom/android/providers/downloads/DownloadThread;->notifyDownloadCompleted(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/downloads/DownloadThread;->mInfo:Lcom/android/providers/downloads/DownloadInfo;

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/android/providers/downloads/DownloadInfo;->mHasActiveThread:Z

    .line 201
    .end local v5           #finalStatus:I
    throw v13

    .line 177
    .restart local v5       #finalStatus:I
    .restart local v15       #finished:Z
    .restart local v16       #pm:Landroid/os/PowerManager;
    .restart local v17       #request:Lorg/apache/http/client/methods/HttpGet;
    .restart local v21       #wm:Landroid/net/wifi/WifiManager;
    :catch_2
    move-exception v4

    .line 180
    :try_start_6
    invoke-virtual/range {v17 .. v17}, Lorg/apache/http/client/methods/HttpGet;->abort()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Lcom/android/providers/downloads/DownloadThread$StopRequest; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1
.end method
