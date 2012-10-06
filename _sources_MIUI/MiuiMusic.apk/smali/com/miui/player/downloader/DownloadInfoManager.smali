.class public Lcom/miui/player/downloader/DownloadInfoManager;
.super Ljava/lang/Object;
.source "DownloadInfoManager.java"


# static fields
.field private static mNameActionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miui/player/downloader/DownloadInfoManager;->mNameActionMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getCandidates(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    const-class v0, Lcom/miui/player/downloader/DownloadInfoManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/player/downloader/DownloadInfoManager;->mNameActionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized isDownloading(Ljava/lang/String;)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 25
    const-class v0, Lcom/miui/player/downloader/DownloadInfoManager;

    monitor-enter v0

    if-eqz p0, :cond_0

    :try_start_0
    sget-object v1, Lcom/miui/player/downloader/DownloadInfoManager;->mNameActionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized registerDownload(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .parameter "id"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p1, candidates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-class v0, Lcom/miui/player/downloader/DownloadInfoManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/player/downloader/DownloadInfoManager;->mNameActionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    monitor-exit v0

    return-void

    .line 13
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized unregisterDownload(Ljava/lang/String;)V
    .locals 2
    .parameter "id"

    .prologue
    .line 21
    const-class v0, Lcom/miui/player/downloader/DownloadInfoManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/miui/player/downloader/DownloadInfoManager;->mNameActionMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    monitor-exit v0

    return-void

    .line 21
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
