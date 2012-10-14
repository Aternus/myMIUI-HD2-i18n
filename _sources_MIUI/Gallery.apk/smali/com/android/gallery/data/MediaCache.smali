.class public final Lcom/android/gallery/data/MediaCache;
.super Ljava/lang/Object;
.source "MediaCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery/data/MediaCache$MediaContentObserver;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/gallery/data/MediaCache;


# instance fields
.field private external_image_observer:Lcom/android/gallery/data/MediaCache$MediaContentObserver;

.field private external_video_observer:Lcom/android/gallery/data/MediaCache$MediaContentObserver;

.field private internal_image_observer:Lcom/android/gallery/data/MediaCache$MediaContentObserver;

.field private internal_video_observer:Lcom/android/gallery/data/MediaCache$MediaContentObserver;

.field private mContext:Landroid/content/Context;

.field private mCurDataVersion:J

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsMediaEjected:Z

.field private mIsScanning:Z

.field private mLastScanningRefresh:J

.field private mLatestDataVersion:J

.field private mParameters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery/data/NotificationParameter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Lcom/android/gallery/data/MediaCache;

    invoke-direct {v0}, Lcom/android/gallery/data/MediaCache;-><init>()V

    sput-object v0, Lcom/android/gallery/data/MediaCache;->sInstance:Lcom/android/gallery/data/MediaCache;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery/data/MediaCache;->mLatestDataVersion:J

    .line 51
    iput-wide v2, p0, Lcom/android/gallery/data/MediaCache;->mCurDataVersion:J

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery/data/MediaCache;->mIsScanning:Z

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery/data/MediaCache;->mParameters:Ljava/util/ArrayList;

    .line 214
    iput-wide v2, p0, Lcom/android/gallery/data/MediaCache;->mLastScanningRefresh:J

    .line 45
    const-string v0, "Gallery/MediaCache"

    const-string v1, "MIUI gallery is started"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    sget-object v0, Lcom/android/gallery/app/GalleryApplication;->sContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/gallery/data/MediaCache;->mContext:Landroid/content/Context;

    .line 47
    invoke-virtual {p0}, Lcom/android/gallery/data/MediaCache;->start()Z

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/android/gallery/data/MediaCache;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/gallery/data/MediaCache;->mParameters:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/gallery/data/MediaCache;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/android/gallery/data/MediaCache;->mIsScanning:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/gallery/data/MediaCache;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 23
    iget-wide v0, p0, Lcom/android/gallery/data/MediaCache;->mLastScanningRefresh:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/gallery/data/MediaCache;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-wide p1, p0, Lcom/android/gallery/data/MediaCache;->mLastScanningRefresh:J

    return-wide p1
.end method

.method public static getInstance()Lcom/android/gallery/data/MediaCache;
    .locals 1

    .prologue
    .line 90
    sget-object v0, Lcom/android/gallery/data/MediaCache;->sInstance:Lcom/android/gallery/data/MediaCache;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized increaseLatestVersion()V
    .locals 4

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/gallery/data/MediaCache;->mLatestDataVersion:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/gallery/data/MediaCache;->mLatestDataVersion:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    monitor-exit p0

    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isDataChangedAndSet()Z
    .locals 4

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/gallery/data/MediaCache;->mCurDataVersion:J

    iget-wide v2, p0, Lcom/android/gallery/data/MediaCache;->mLatestDataVersion:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 59
    iget-wide v0, p0, Lcom/android/gallery/data/MediaCache;->mLatestDataVersion:J

    iput-wide v0, p0, Lcom/android/gallery/data/MediaCache;->mCurDataVersion:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    const/4 v0, 0x1

    .line 62
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isMediaEjected()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/gallery/data/MediaCache;->mIsMediaEjected:Z

    return v0
.end method

.method public isScanning()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/android/gallery/data/MediaCache;->mIsScanning:Z

    return v0
.end method

.method public declared-synchronized notifyAllMediaEjected()V
    .locals 4

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    const-string v2, "Gallery/MediaCache"

    const-string v3, "media is ejected"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p0}, Lcom/android/gallery/data/MediaCache;->increaseLatestVersion()V

    .line 193
    iget-object v2, p0, Lcom/android/gallery/data/MediaCache;->mParameters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery/data/NotificationParameter;

    .line 194
    .local v1, p:Lcom/android/gallery/data/NotificationParameter;
    invoke-virtual {v1}, Lcom/android/gallery/data/NotificationParameter;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 191
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #p:Lcom/android/gallery/data/NotificationParameter;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 196
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized notifyAllMediaMounted()V
    .locals 4

    .prologue
    .line 199
    monitor-enter p0

    :try_start_0
    const-string v2, "Gallery/MediaCache"

    const-string v3, "media is mounted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    invoke-virtual {p0}, Lcom/android/gallery/data/MediaCache;->increaseLatestVersion()V

    .line 201
    iget-object v2, p0, Lcom/android/gallery/data/MediaCache;->mParameters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery/data/NotificationParameter;

    .line 202
    .local v1, p:Lcom/android/gallery/data/NotificationParameter;
    invoke-virtual {v1}, Lcom/android/gallery/data/NotificationParameter;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 199
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #p:Lcom/android/gallery/data/NotificationParameter;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 204
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized notifyAllMediaUnmounted()V
    .locals 4

    .prologue
    .line 207
    monitor-enter p0

    :try_start_0
    const-string v2, "Gallery/MediaCache"

    const-string v3, "media is unmounted"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {p0}, Lcom/android/gallery/data/MediaCache;->increaseLatestVersion()V

    .line 209
    iget-object v2, p0, Lcom/android/gallery/data/MediaCache;->mParameters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery/data/NotificationParameter;

    .line 210
    .local v1, p:Lcom/android/gallery/data/NotificationParameter;
    invoke-virtual {v1}, Lcom/android/gallery/data/NotificationParameter;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 207
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #p:Lcom/android/gallery/data/NotificationParameter;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 212
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized notifyAllScanFinished()V
    .locals 4

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    const-string v2, "Gallery/MediaCache"

    const-string v3, "media scan is finished"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-virtual {p0}, Lcom/android/gallery/data/MediaCache;->increaseLatestVersion()V

    .line 185
    iget-object v2, p0, Lcom/android/gallery/data/MediaCache;->mParameters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery/data/NotificationParameter;

    .line 186
    .local v1, p:Lcom/android/gallery/data/NotificationParameter;
    invoke-virtual {v1}, Lcom/android/gallery/data/NotificationParameter;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 183
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #p:Lcom/android/gallery/data/NotificationParameter;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 188
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized registerChange(Lcom/android/gallery/data/NotificationParameter;)V
    .locals 1
    .parameter "para"

    .prologue
    .line 159
    monitor-enter p0

    if-nez p1, :cond_0

    .line 164
    :goto_0
    monitor-exit p0

    return-void

    .line 160
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery/data/MediaCache;->mParameters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 161
    invoke-virtual {p0}, Lcom/android/gallery/data/MediaCache;->start()Z

    .line 163
    :cond_1
    iget-object v0, p0, Lcom/android/gallery/data/MediaCache;->mParameters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMediaEjectedFlag(Z)V
    .locals 0
    .parameter "is_media_ejected"

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/android/gallery/data/MediaCache;->mIsMediaEjected:Z

    .line 87
    return-void
.end method

.method public setScanningFlag(Z)V
    .locals 0
    .parameter "is_scanning"

    .prologue
    .line 76
    iput-boolean p1, p0, Lcom/android/gallery/data/MediaCache;->mIsScanning:Z

    .line 77
    return-void
.end method

.method public declared-synchronized start()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 119
    monitor-enter p0

    :try_start_0
    const-string v1, "MediaCache Handler Thread"

    .line 120
    .local v1, name:Ljava/lang/String;
    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "MediaCache Handler Thread"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/gallery/data/MediaCache;->mHandlerThread:Landroid/os/HandlerThread;

    .line 121
    iget-object v2, p0, Lcom/android/gallery/data/MediaCache;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 122
    iget-object v2, p0, Lcom/android/gallery/data/MediaCache;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 127
    .local v0, looper:Landroid/os/Looper;
    new-instance v2, Lcom/android/gallery/data/MediaCache$MediaContentObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v4, 0x1

    invoke-direct {v2, p0, v3, v4}, Lcom/android/gallery/data/MediaCache$MediaContentObserver;-><init>(Lcom/android/gallery/data/MediaCache;Landroid/os/Handler;Z)V

    iput-object v2, p0, Lcom/android/gallery/data/MediaCache;->internal_image_observer:Lcom/android/gallery/data/MediaCache$MediaContentObserver;

    .line 128
    iget-object v2, p0, Lcom/android/gallery/data/MediaCache;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/gallery/data/MediaCache;->internal_image_observer:Lcom/android/gallery/data/MediaCache$MediaContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 131
    new-instance v2, Lcom/android/gallery/data/MediaCache$MediaContentObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v4, 0x1

    invoke-direct {v2, p0, v3, v4}, Lcom/android/gallery/data/MediaCache$MediaContentObserver;-><init>(Lcom/android/gallery/data/MediaCache;Landroid/os/Handler;Z)V

    iput-object v2, p0, Lcom/android/gallery/data/MediaCache;->internal_video_observer:Lcom/android/gallery/data/MediaCache$MediaContentObserver;

    .line 132
    iget-object v2, p0, Lcom/android/gallery/data/MediaCache;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/gallery/data/MediaCache;->internal_video_observer:Lcom/android/gallery/data/MediaCache$MediaContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 136
    new-instance v2, Lcom/android/gallery/data/MediaCache$MediaContentObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/android/gallery/data/MediaCache$MediaContentObserver;-><init>(Lcom/android/gallery/data/MediaCache;Landroid/os/Handler;Z)V

    iput-object v2, p0, Lcom/android/gallery/data/MediaCache;->external_image_observer:Lcom/android/gallery/data/MediaCache$MediaContentObserver;

    .line 137
    iget-object v2, p0, Lcom/android/gallery/data/MediaCache;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/gallery/data/MediaCache;->external_image_observer:Lcom/android/gallery/data/MediaCache$MediaContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 140
    new-instance v2, Lcom/android/gallery/data/MediaCache$MediaContentObserver;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/android/gallery/data/MediaCache$MediaContentObserver;-><init>(Lcom/android/gallery/data/MediaCache;Landroid/os/Handler;Z)V

    iput-object v2, p0, Lcom/android/gallery/data/MediaCache;->external_video_observer:Lcom/android/gallery/data/MediaCache$MediaContentObserver;

    .line 141
    iget-object v2, p0, Lcom/android/gallery/data/MediaCache;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/gallery/data/MediaCache;->external_video_observer:Lcom/android/gallery/data/MediaCache$MediaContentObserver;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit p0

    return v6

    .line 119
    .end local v0           #looper:Landroid/os/Looper;
    .end local v1           #name:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized stop()Z
    .locals 2

    .prologue
    .line 148
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery/data/MediaCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery/data/MediaCache;->internal_image_observer:Lcom/android/gallery/data/MediaCache$MediaContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 149
    iget-object v0, p0, Lcom/android/gallery/data/MediaCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery/data/MediaCache;->external_image_observer:Lcom/android/gallery/data/MediaCache$MediaContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 151
    iget-object v0, p0, Lcom/android/gallery/data/MediaCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery/data/MediaCache;->internal_video_observer:Lcom/android/gallery/data/MediaCache$MediaContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 152
    iget-object v0, p0, Lcom/android/gallery/data/MediaCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery/data/MediaCache;->external_video_observer:Lcom/android/gallery/data/MediaCache$MediaContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 154
    iget-object v0, p0, Lcom/android/gallery/data/MediaCache;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 148
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public triggerMediaMounted()V
    .locals 4

    .prologue
    const-string v3, "file://"

    .line 105
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.providers.media"

    const-string v2, "com.android.providers.media.MediaScannerReceiver"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/gallery/util/StorageUtils;->INTERNAL_SD_CARD_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 110
    iget-object v1, p0, Lcom/android/gallery/data/MediaCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/gallery/util/StorageUtils;->SD_CARD_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 113
    iget-object v1, p0, Lcom/android/gallery/data/MediaCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 114
    return-void
.end method

.method public declared-synchronized unregisterChange(Lcom/android/gallery/data/NotificationParameter;)V
    .locals 1
    .parameter "para"

    .prologue
    .line 167
    monitor-enter p0

    if-nez p1, :cond_1

    .line 172
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 168
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery/data/MediaCache;->mParameters:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 169
    iget-object v0, p0, Lcom/android/gallery/data/MediaCache;->mParameters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/android/gallery/data/MediaCache;->stop()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
