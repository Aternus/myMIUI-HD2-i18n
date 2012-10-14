.class Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;
.super Ljava/lang/Object;
.source "BufferedMediaPlayer.java"

# interfaces
.implements Lcom/miui/player/helper/BufferedMediaPlayer$RemovableRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/player/helper/BufferedMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadNextRunnable"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable$TryNextRunnable;,
        Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable$NextContentObserver;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGotoDownload:Z

.field private mNextContentObserver:Landroid/database/ContentObserver;

.field private mNextDownloadUri:Landroid/net/Uri;

.field private mNextInfo:Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;

.field private final mNextTempDir:Ljava/lang/String;

.field private mNextTempName:Ljava/lang/String;

.field private final mRunnableList:Lcom/miui/player/helper/BufferedMediaPlayer$RunnableList;


# direct methods
.method public constructor <init>(Lcom/miui/player/helper/BufferedMediaPlayer$RunnableList;Ljava/lang/String;)V
    .locals 1
    .parameter "runnableList"
    .parameter "nextTempDir"

    .prologue
    .line 1127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mGotoDownload:Z

    .line 1128
    iput-object p2, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mNextTempDir:Ljava/lang/String;

    .line 1129
    iput-object p1, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mRunnableList:Lcom/miui/player/helper/BufferedMediaPlayer$RunnableList;

    .line 1130
    return-void
.end method

.method static synthetic access$2800(Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 1117
    iget-boolean v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mGotoDownload:Z

    return v0
.end method

.method static synthetic access$2900(Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;)Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mNextInfo:Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;)Lcom/miui/player/helper/BufferedMediaPlayer$RunnableList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mRunnableList:Lcom/miui/player/helper/BufferedMediaPlayer$RunnableList;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mNextDownloadUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1117
    invoke-direct {p0}, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->tryToDownload()V

    return-void
.end method

.method private tryToDownload()V
    .locals 15

    .prologue
    const/4 v1, 0x0

    .line 1189
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mNextInfo:Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;

    iget-object v12, v0, Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;->mCandidateUrls:Ljava/util/ArrayList;

    .line 1190
    .local v12, candidates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v12, :cond_0

    .line 1215
    :goto_0
    return-void

    .line 1193
    :cond_0
    iput-object v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mNextDownloadUri:Landroid/net/Uri;

    .line 1201
    invoke-static {}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$3200()Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 1202
    const/4 v13, 0x0

    .line 1203
    .local v13, isSuccess:Z
    :goto_1
    if-nez v13, :cond_1

    :try_start_0
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mGotoDownload:Z

    if-eqz v0, :cond_1

    .line 1204
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mNextTempName:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mNextInfo:Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;

    iget-object v3, v3, Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;->mDetails:Ljava/lang/String;

    iget-object v4, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mNextTempDir:Ljava/lang/String;

    iget-object v5, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mNextTempName:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/16 v8, 0xbe

    const-wide/16 v9, 0x1388

    const/4 v11, 0x1

    invoke-static/range {v0 .. v11}, Lcom/miui/player/downloader/DownloadProvider;->start(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IIJZ)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mNextDownloadUri:Landroid/net/Uri;

    .line 1210
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mNextDownloadUri:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mNextContentObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v1, v2, v3}, Lcom/miui/player/downloader/DownloadProvider;->registerDownloadObserver(Landroid/content/Context;Landroid/net/Uri;ZLandroid/database/ContentObserver;)Z

    move-result v13

    .line 1203
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1213
    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    monitor-exit v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method


# virtual methods
.method public abort()V
    .locals 4

    .prologue
    .line 1221
    iget-boolean v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mGotoDownload:Z

    if-nez v0, :cond_0

    .line 1226
    :goto_0
    return-void

    .line 1224
    :cond_0
    invoke-virtual {p0}, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->detach()V

    .line 1225
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mNextTempName:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mNextTempDir:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mRunnableList:Lcom/miui/player/helper/BufferedMediaPlayer$RunnableList;

    #calls: Lcom/miui/player/helper/BufferedMediaPlayer;->deleteRecordAndFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/player/helper/BufferedMediaPlayer$RunnableList;)V
    invoke-static {v0, v1, v2, v3}, Lcom/miui/player/helper/BufferedMediaPlayer;->access$3300(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/miui/player/helper/BufferedMediaPlayer$RunnableList;)V

    goto :goto_0
.end method

.method public detach()V
    .locals 2

    .prologue
    .line 1229
    iget-boolean v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mGotoDownload:Z

    if-nez v0, :cond_1

    .line 1237
    :cond_0
    :goto_0
    return-void

    .line 1233
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mGotoDownload:Z

    .line 1234
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mNextContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 1235
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mNextContentObserver:Landroid/database/ContentObserver;

    invoke-static {v0, v1}, Lcom/miui/player/downloader/DownloadProvider;->unregisterDownloadObserver(Landroid/content/Context;Landroid/database/ContentObserver;)V

    goto :goto_0
.end method

.method public initialize(Landroid/content/Context;Landroid/os/Handler;JLjava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "handler"
    .parameter "nextId"
    .parameter "nextName"

    .prologue
    .line 1133
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mNextInfo:Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;

    .line 1135
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_0

    .line 1136
    iput-object p5, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mNextTempName:Ljava/lang/String;

    .line 1137
    iput-object p1, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mContext:Landroid/content/Context;

    .line 1138
    new-instance v0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable$NextContentObserver;

    invoke-direct {v0, p0, p2}, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable$NextContentObserver;-><init>(Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mNextContentObserver:Landroid/database/ContentObserver;

    .line 1139
    invoke-static {p1, p3, p4}, Lcom/miui/player/helper/OnlinePlayHelper;->getRemoteMediaInfo(Landroid/content/Context;J)Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mNextInfo:Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;

    .line 1142
    :cond_0
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mNextInfo:Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mGotoDownload:Z

    .line 1143
    return-void

    .line 1142
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRemovable()Z
    .locals 1

    .prologue
    .line 1185
    iget-boolean v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mGotoDownload:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needDownload()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1146
    iget-boolean v2, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mGotoDownload:Z

    if-nez v2, :cond_0

    move v2, v4

    .line 1153
    :goto_0
    return v2

    .line 1150
    :cond_0
    iget-object v2, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mNextInfo:Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;

    iget-object v2, v2, Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;->mAppointName:Ljava/lang/String;

    const-string v3, "music/mp3"

    invoke-static {v2, v3}, Lcom/miui/player/helper/MusicMetaManager;->getFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 1151
    .local v0, localMedia:Ljava/io/File;
    iget-object v2, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mNextInfo:Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;

    iget-object v3, v3, Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;->mId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/miui/player/downloader/DownloadProvider;->queryRunning(Landroid/content/Context;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1153
    .local v1, uri:Landroid/net/Uri;
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 1161
    invoke-virtual {p0}, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->needDownload()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1181
    :goto_0
    return-void

    .line 1165
    :cond_0
    iget-object v0, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;->mNextInfo:Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;

    iget-object v1, v1, Lcom/miui/player/helper/BufferedMediaPlayer$RemoteMediaInfo;->mId:Ljava/lang/String;

    new-instance v2, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable$1;

    invoke-direct {v2, p0}, Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable$1;-><init>(Lcom/miui/player/helper/BufferedMediaPlayer$DownloadNextRunnable;)V

    invoke-static {v0, v1, v2}, Lcom/miui/player/helper/OnlinePlayHelper;->requestCandidateUrlsAsync(Landroid/content/Context;Ljava/lang/String;Lcom/miui/player/helper/NetworkUtils$HttpGetSyncRunnable;)V

    goto :goto_0
.end method
