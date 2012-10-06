.class public Lcom/google/android/apps/uploader/UploadService;
.super Landroid/app/Service;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/google/android/apps/uploader/UploaderApplication;

.field private b:Lcom/google/android/apps/uploader/s;

.field private c:Lb;

.field private d:Lcom/google/android/apps/uploader/H;

.field private e:Ljava/lang/Thread;

.field private f:Lcom/google/android/apps/uploader/D;

.field private g:Lcom/google/android/apps/uploader/c;

.field private h:Landroid/os/ConditionVariable;

.field private i:Lcom/google/android/apps/uploader/y;

.field private j:Z

.field private k:Z

.field private l:Landroid/net/wifi/WifiManager$WifiLock;

.field private m:Landroid/os/IBinder;

.field private n:Lcom/google/android/apps/uploader/b;

.field private o:Landroid/os/ConditionVariable;

.field private p:J

.field private q:Z

.field private r:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->o:Landroid/os/ConditionVariable;

    return-void
.end method

.method static synthetic a(Lcom/google/android/apps/uploader/UploadService;J)J
    .locals 0

    iput-wide p1, p0, Lcom/google/android/apps/uploader/UploadService;->p:J

    return-wide p1
.end method

.method static synthetic a(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/H;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->d:Lcom/google/android/apps/uploader/H;

    return-object v0
.end method

.method static synthetic a(Lcom/google/android/apps/uploader/UploadService;Z)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/uploader/UploadService;->q:Z

    return v0
.end method

.method static synthetic b(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/b;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->n:Lcom/google/android/apps/uploader/b;

    return-object v0
.end method

.method private b(Lcom/google/android/apps/uploader/r;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->a:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/UploaderApplication;->a(Lcom/google/android/apps/uploader/r;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/uploader/UploadService;->k:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/android/apps/uploader/F;->e:Lcom/google/android/apps/uploader/F;

    invoke-virtual {p1, v0}, Lcom/google/android/apps/uploader/r;->a(Lcom/google/android/apps/uploader/F;)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/google/android/apps/uploader/F;->d:Lcom/google/android/apps/uploader/F;

    invoke-virtual {p1, v0}, Lcom/google/android/apps/uploader/r;->a(Lcom/google/android/apps/uploader/F;)V

    goto :goto_0
.end method

.method static synthetic b(Lcom/google/android/apps/uploader/UploadService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/apps/uploader/UploadService;->j:Z

    return p1
.end method

.method static synthetic c(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/c;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->g:Lcom/google/android/apps/uploader/c;

    return-object v0
.end method

.method private c(Lcom/google/android/apps/uploader/r;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/google/android/apps/uploader/UploadService;->b(Lcom/google/android/apps/uploader/r;)V

    monitor-enter p0

    :try_start_0
    const-string v0, "MediaUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UploadService adding "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->d:Lcom/google/android/apps/uploader/H;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/H;->a(Lcom/google/android/apps/uploader/r;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->a:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploaderApplication;->f()LT;

    move-result-object v0

    invoke-virtual {v0, p1}, LT;->a(Lcom/google/android/apps/uploader/r;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic d(Lcom/google/android/apps/uploader/UploadService;)Landroid/os/ConditionVariable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->o:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->e:Ljava/lang/Thread;

    if-nez v0, :cond_0

    const-string v0, "MediaUploader"

    const-string v1, "UploadService starting new thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->e:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->e:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private d(Lcom/google/android/apps/uploader/r;)V
    .locals 12

    const-wide/32 v10, 0xea60

    const-string v9, "MediaUploader"

    move-object v1, p1

    move-object v6, p0

    :goto_0
    invoke-virtual {v6}, Lcom/google/android/apps/uploader/UploadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/r;->c()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    new-instance v5, Lcom/google/android/apps/uploader/a;

    invoke-direct {v5, v6, v1}, Lcom/google/android/apps/uploader/a;-><init>(Lcom/google/android/apps/uploader/UploadService;Lcom/google/android/apps/uploader/r;)V

    monitor-enter v6

    sget-object v0, Lcom/google/android/apps/uploader/F;->b:Lcom/google/android/apps/uploader/F;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/uploader/r;->a(Lcom/google/android/apps/uploader/F;)V

    iget-object v0, v6, Lcom/google/android/apps/uploader/UploadService;->d:Lcom/google/android/apps/uploader/H;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/H;->b(Lcom/google/android/apps/uploader/r;)V

    iget-object v0, v6, Lcom/google/android/apps/uploader/UploadService;->b:Lcom/google/android/apps/uploader/s;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/s;->a(Lcom/google/android/apps/uploader/r;)V

    iget-object v0, v6, Lcom/google/android/apps/uploader/UploadService;->o:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    iget-object v0, v6, Lcom/google/android/apps/uploader/UploadService;->f:Lcom/google/android/apps/uploader/D;

    iget-object v3, v6, Lcom/google/android/apps/uploader/UploadService;->a:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/r;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/apps/uploader/UploaderApplication;->a(Ljava/lang/String;)Lcom/google/android/apps/uploader/m;

    move-result-object v3

    iget-boolean v4, v6, Lcom/google/android/apps/uploader/UploadService;->q:Z

    invoke-interface/range {v0 .. v5}, Lcom/google/android/apps/uploader/D;->a(Lcom/google/android/apps/uploader/r;Ljava/io/InputStream;Lcom/google/android/apps/uploader/m;ZLcom/google/android/apps/uploader/a;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v6, Lcom/google/android/apps/uploader/UploadService;->p:J

    const/4 v0, 0x0

    iput-boolean v0, v6, Lcom/google/android/apps/uploader/UploadService;->q:Z

    iget-object v0, v6, Lcom/google/android/apps/uploader/UploadService;->a:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploaderApplication;->f()LT;

    move-result-object v0

    invoke-virtual {v0, v1}, LT;->b(Lcom/google/android/apps/uploader/r;)V

    monitor-exit v6

    const-string v0, "MediaUploader"

    const-string v0, "Waiting for upload request ..."

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, v6, Lcom/google/android/apps/uploader/UploadService;->o:Landroid/os/ConditionVariable;

    invoke-virtual {v0, v10, v11}, Landroid/os/ConditionVariable;->block(J)Z

    move-result v0

    if-nez v0, :cond_0

    monitor-enter v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v7, v6, Lcom/google/android/apps/uploader/UploadService;->p:J

    sub-long/2addr v3, v7

    cmp-long v0, v3, v10

    if-lez v0, :cond_2

    const-string v0, "MediaUploader"

    const-string v0, "Progress update timed out, notifying as a network failure"

    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/google/android/apps/uploader/a;->a(Lcom/google/android/apps/uploader/h;)V

    monitor-exit v6

    :cond_0
    const-string v0, "MediaUploader"

    const-string v0, "... continuing after upload request"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_1
    iget-boolean v0, v6, Lcom/google/android/apps/uploader/UploadService;->q:Z

    if-eqz v0, :cond_3

    const-string v0, "MediaUploader"

    const-string v0, "Going for a second chance"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    monitor-exit v6

    goto :goto_1

    :cond_3
    return-void
.end method

.method static synthetic e(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/UploaderApplication;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->a:Lcom/google/android/apps/uploader/UploaderApplication;

    return-object v0
.end method

.method private declared-synchronized e()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->f:Lcom/google/android/apps/uploader/D;

    invoke-interface {v0}, Lcom/google/android/apps/uploader/D;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized f()V
    .locals 2

    const-string v0, "MediaUploader"

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->a:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploaderApplication;->g()Z

    move-result v0

    iget-boolean v1, p0, Lcom/google/android/apps/uploader/UploadService;->k:Z

    if-eq v0, v1, :cond_0

    iput-boolean v0, p0, Lcom/google/android/apps/uploader/UploadService;->k:Z

    iget-boolean v0, p0, Lcom/google/android/apps/uploader/UploadService;->k:Z

    if-eqz v0, :cond_1

    const-string v0, "MediaUploader"

    const-string v1, "Acquring WiFi lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->l:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->acquire()V

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->d:Lcom/google/android/apps/uploader/H;

    iget-boolean v1, p0, Lcom/google/android/apps/uploader/UploadService;->k:Z

    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/H;->a(Z)V

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->o:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v0, "MediaUploader"

    const-string v1, "Releasing WiFi lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->l:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    invoke-direct {p0}, Lcom/google/android/apps/uploader/UploadService;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic f(Lcom/google/android/apps/uploader/UploadService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/apps/uploader/UploadService;->j:Z

    return v0
.end method

.method static synthetic g(Lcom/google/android/apps/uploader/UploadService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/apps/uploader/UploadService;->k:Z

    return v0
.end method

.method static synthetic h(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/s;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->b:Lcom/google/android/apps/uploader/s;

    return-object v0
.end method

.method static synthetic i(Lcom/google/android/apps/uploader/UploadService;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/uploader/UploadService;->e()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "MediaUploader"

    const-string v1, "Pause on"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/uploader/UploadService;->r:Z

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->h:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    invoke-direct {p0}, Lcom/google/android/apps/uploader/UploadService;->e()V

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->o:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->g:Lcom/google/android/apps/uploader/c;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/c;->c()V

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->b:Lcom/google/android/apps/uploader/s;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/s;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Lcom/google/android/apps/uploader/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/uploader/UploadService;->n:Lcom/google/android/apps/uploader/b;

    return-void
.end method

.method public final declared-synchronized a(Lcom/google/android/apps/uploader/r;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "MediaUploader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canceling upload "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->d:Lcom/google/android/apps/uploader/H;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/uploader/H;->d(Lcom/google/android/apps/uploader/r;)V

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/r;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/apps/uploader/UploadService;->e()V

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->o:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->g:Lcom/google/android/apps/uploader/c;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/c;->c()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->d:Lcom/google/android/apps/uploader/H;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/H;->b()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->b:Lcom/google/android/apps/uploader/s;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/s;->c()V

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/UploadService;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/UploadService;->b()V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->a:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploaderApplication;->f()LT;

    move-result-object v0

    invoke-virtual {v0, p1}, LT;->d(Lcom/google/android/apps/uploader/r;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/apps/uploader/UploadService;->d()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "MediaUploader"

    const-string v1, "Pause off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/uploader/UploadService;->r:Z

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->h:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    invoke-direct {p0}, Lcom/google/android/apps/uploader/UploadService;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/apps/uploader/UploadService;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->m:Landroid/os/IBinder;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/apps/uploader/G;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/G;-><init>(Lcom/google/android/apps/uploader/UploadService;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->m:Landroid/os/IBinder;

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->m:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    const-string v2, "MediaUploader"

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "MediaUploader"

    const-string v0, "UploadService.onCreate"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/UploadService;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/UploaderApplication;

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->a:Lcom/google/android/apps/uploader/UploaderApplication;

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->a:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploaderApplication;->a()V

    new-instance v0, Lb;

    invoke-direct {v0, p0}, Lb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->c:Lb;

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->a:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploaderApplication;->b()Lcom/google/android/apps/uploader/H;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->d:Lcom/google/android/apps/uploader/H;

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->a:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploaderApplication;->d()Lcom/google/android/apps/uploader/s;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->b:Lcom/google/android/apps/uploader/s;

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->a:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/UploaderApplication;->c()Lcom/google/android/apps/uploader/D;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->f:Lcom/google/android/apps/uploader/D;

    new-instance v0, Lcom/google/android/apps/uploader/c;

    invoke-direct {v0}, Lcom/google/android/apps/uploader/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->g:Lcom/google/android/apps/uploader/c;

    new-instance v0, Lcom/google/android/apps/uploader/y;

    invoke-direct {v0, p0}, Lcom/google/android/apps/uploader/y;-><init>(Lcom/google/android/apps/uploader/UploadService;)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->i:Lcom/google/android/apps/uploader/y;

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->i:Lcom/google/android/apps/uploader/y;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/y;->a()V

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/uploader/UploadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const-string v1, "MediaUploader"

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->createWifiLock(Ljava/lang/String;)Landroid/net/wifi/WifiManager$WifiLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->l:Landroid/net/wifi/WifiManager$WifiLock;

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->l:Landroid/net/wifi/WifiManager$WifiLock;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager$WifiLock;->setReferenceCounted(Z)V

    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->h:Landroid/os/ConditionVariable;

    invoke-direct {p0}, Lcom/google/android/apps/uploader/UploadService;->f()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "MediaUploader"

    const-string v1, "UploadService.onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 5

    const/4 v4, 0x1

    const-string v2, "MediaUploader"

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    const-string v0, "MediaUploader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadService.onStart "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Lb;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->c:Lb;

    invoke-virtual {v0, p1}, Lb;->c(Landroid/content/Intent;)Lcom/google/android/apps/uploader/r;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/r;->a()Lcom/google/android/apps/uploader/F;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/uploader/F;->a:Lcom/google/android/apps/uploader/F;

    if-ne v1, v2, :cond_4

    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/UploadService;->c(Lcom/google/android/apps/uploader/r;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->a:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/uploader/UploaderApplication;->a(Z)V

    :cond_2
    :goto_2
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/google/android/apps/uploader/UploadService;->f()V

    :cond_3
    invoke-direct {p0}, Lcom/google/android/apps/uploader/UploadService;->d()V

    iget-boolean v0, p0, Lcom/google/android/apps/uploader/UploadService;->r:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->b:Lcom/google/android/apps/uploader/s;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/s;->b()V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/UploadService;->b(Lcom/google/android/apps/uploader/r;)V

    monitor-enter p0

    :try_start_0
    const-string v1, "MediaUploader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UploadService will retry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadService;->d:Lcom/google/android/apps/uploader/H;

    invoke-virtual {v1, v0}, Lcom/google/android/apps/uploader/H;->b(Lcom/google/android/apps/uploader/r;)V

    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadService;->g:Lcom/google/android/apps/uploader/c;

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/c;->c()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadService;->a:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/UploaderApplication;->f()LT;

    move-result-object v1

    invoke-virtual {v1, v0}, LT;->a(Lcom/google/android/apps/uploader/r;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    invoke-static {p1}, Lb;->b(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->c:Lb;

    invoke-virtual {v0, p1}, Lb;->d(Landroid/content/Intent;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/uploader/r;

    invoke-direct {p0, v0}, Lcom/google/android/apps/uploader/UploadService;->c(Lcom/google/android/apps/uploader/r;)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->a:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/uploader/UploaderApplication;->a(Z)V

    goto :goto_2
.end method

.method public run()V
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v5, "MediaUploader"

    move v0, v3

    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadService;->g:Lcom/google/android/apps/uploader/c;

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/c;->a()V

    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadService;->h:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    iget-object v1, p0, Lcom/google/android/apps/uploader/UploadService;->d:Lcom/google/android/apps/uploader/H;

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/H;->a()Lcom/google/android/apps/uploader/r;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/google/android/apps/uploader/UploadService;->a:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/uploader/UploaderApplication;->a(Lcom/google/android/apps/uploader/r;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/google/android/apps/uploader/UploadService;->k:Z

    if-eqz v2, :cond_2

    :cond_0
    invoke-direct {p0, v1}, Lcom/google/android/apps/uploader/UploadService;->d(Lcom/google/android/apps/uploader/r;)V

    add-int/lit8 v0, v0, 0x1

    move-object v6, v1

    move v1, v0

    move-object v0, v6

    :goto_1
    iget-object v2, p0, Lcom/google/android/apps/uploader/UploadService;->a:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v2}, Lcom/google/android/apps/uploader/UploaderApplication;->f()LT;

    move-result-object v2

    invoke-virtual {v2}, LT;->b()V

    if-nez v0, :cond_3

    iput-object v4, p0, Lcom/google/android/apps/uploader/UploadService;->e:Ljava/lang/Thread;

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->d:Lcom/google/android/apps/uploader/H;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/H;->b()I

    move-result v0

    if-nez v0, :cond_1

    if-lez v1, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->b:Lcom/google/android/apps/uploader/s;

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/s;->a()V

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->a:Lcom/google/android/apps/uploader/UploaderApplication;

    invoke-virtual {v0, v3}, Lcom/google/android/apps/uploader/UploaderApplication;->a(Z)V

    :cond_1
    const-string v0, "MediaUploader"

    const-string v0, "Releasing WiFi lock"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/google/android/apps/uploader/UploadService;->l:Landroid/net/wifi/WifiManager$WifiLock;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager$WifiLock;->release()V

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/UploadService;->stopSelf()V

    const-string v0, "MediaUploader"

    const-string v0, "UploadService stopping self"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v2, p0, Lcom/google/android/apps/uploader/UploadService;->b:Lcom/google/android/apps/uploader/s;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/uploader/s;->a(Lcom/google/android/apps/uploader/r;)V

    move v1, v0

    move-object v0, v4

    goto :goto_1

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    move-object v6, v1

    move v1, v0

    move-object v0, v6

    goto :goto_1
.end method
