.class public Lcom/google/android/apps/uploader/a;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/google/android/apps/uploader/r;

.field final synthetic b:Lcom/google/android/apps/uploader/UploadService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lcom/google/android/apps/uploader/UploadService;Lcom/google/android/apps/uploader/r;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/uploader/a;->b:Lcom/google/android/apps/uploader/UploadService;

    iput-object p2, p0, Lcom/google/android/apps/uploader/a;->a:Lcom/google/android/apps/uploader/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 8

    const/4 v7, 0x0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "\r\n"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    move v3, v7

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    aget-object v5, v4, v7

    const/4 v6, 0x1

    aget-object v4, v4, v6

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/uploader/a;->b:Lcom/google/android/apps/uploader/UploadService;

    monitor-enter v0

    :try_start_0
    const-string v1, "MediaUploader"

    const-string v2, "UploadListener.uploadComplete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/android/apps/uploader/a;->a:Lcom/google/android/apps/uploader/r;

    sget-object v2, Lcom/google/android/apps/uploader/F;->f:Lcom/google/android/apps/uploader/F;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/uploader/r;->a(Lcom/google/android/apps/uploader/F;)V

    iget-object v1, p0, Lcom/google/android/apps/uploader/a;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadService;->a(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/H;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/a;->a:Lcom/google/android/apps/uploader/r;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/uploader/H;->b(Lcom/google/android/apps/uploader/r;)V

    iget-object v1, p0, Lcom/google/android/apps/uploader/a;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadService;->c(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/c;->b()V

    iget-object v1, p0, Lcom/google/android/apps/uploader/a;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadService;->d(Lcom/google/android/apps/uploader/UploadService;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    iget-object v1, p0, Lcom/google/android/apps/uploader/a;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadService;->e(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/UploaderApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/UploaderApplication;->f()LT;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/a;->a:Lcom/google/android/apps/uploader/r;

    invoke-virtual {v1, v2}, LT;->c(Lcom/google/android/apps/uploader/r;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(J)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/uploader/a;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/apps/uploader/UploadService;->a(Lcom/google/android/apps/uploader/UploadService;J)J

    iget-object v0, p0, Lcom/google/android/apps/uploader/a;->a:Lcom/google/android/apps/uploader/r;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/apps/uploader/r;->a(J)V

    iget-object v0, p0, Lcom/google/android/apps/uploader/a;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v0}, Lcom/google/android/apps/uploader/UploadService;->a(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/H;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/a;->a:Lcom/google/android/apps/uploader/r;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/uploader/H;->c(Lcom/google/android/apps/uploader/r;)V

    iget-object v0, p0, Lcom/google/android/apps/uploader/a;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v0}, Lcom/google/android/apps/uploader/UploadService;->b(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/uploader/a;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v0}, Lcom/google/android/apps/uploader/UploadService;->b(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/uploader/a;->a:Lcom/google/android/apps/uploader/r;

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/r;->o()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/apps/uploader/b;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/uploader/a;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v0}, Lcom/google/android/apps/uploader/UploadService;->c(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/uploader/c;->b()V

    return-void
.end method

.method public a(Lcom/google/android/apps/uploader/g;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/uploader/a;->b:Lcom/google/android/apps/uploader/UploadService;

    monitor-enter v0

    :try_start_0
    const-string v1, "MediaUploader"

    const-string v2, "UploadListener.applicationFailure"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lcom/google/android/apps/uploader/a;->a:Lcom/google/android/apps/uploader/r;

    sget-object v2, Lcom/google/android/apps/uploader/F;->g:Lcom/google/android/apps/uploader/F;

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/g;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/uploader/r;->a(Lcom/google/android/apps/uploader/F;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/apps/uploader/a;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadService;->a(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/H;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/a;->a:Lcom/google/android/apps/uploader/r;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/uploader/H;->b(Lcom/google/android/apps/uploader/r;)V

    iget-object v1, p0, Lcom/google/android/apps/uploader/a;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadService;->h(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/s;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/a;->a:Lcom/google/android/apps/uploader/r;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/uploader/s;->a(Lcom/google/android/apps/uploader/r;)V

    iget-object v1, p0, Lcom/google/android/apps/uploader/a;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadService;->c(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/c;->b()V

    iget-object v1, p0, Lcom/google/android/apps/uploader/a;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadService;->d(Lcom/google/android/apps/uploader/UploadService;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    iget-object v1, p0, Lcom/google/android/apps/uploader/a;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadService;->e(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/UploaderApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/UploaderApplication;->f()LT;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/a;->a:Lcom/google/android/apps/uploader/r;

    invoke-virtual {p1}, Lcom/google/android/apps/uploader/g;->b()I

    move-result v3

    invoke-virtual {v1, v2, v3}, LT;->a(Lcom/google/android/apps/uploader/r;I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public a(Lcom/google/android/apps/uploader/h;)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/apps/uploader/a;->b:Lcom/google/android/apps/uploader/UploadService;

    monitor-enter v0

    :try_start_0
    const-string v1, "MediaUploader"

    const-string v2, "UploadListener.networkFailure"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/apps/uploader/a;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v2}, Lcom/google/android/apps/uploader/UploadService;->f(Lcom/google/android/apps/uploader/UploadService;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/apps/uploader/a;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v2}, Lcom/google/android/apps/uploader/UploadService;->g(Lcom/google/android/apps/uploader/UploadService;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_0
    iget-object v2, p0, Lcom/google/android/apps/uploader/a;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v2}, Lcom/google/android/apps/uploader/UploadService;->c(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/apps/uploader/c;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/google/android/apps/uploader/F;->c:Lcom/google/android/apps/uploader/F;

    iget-object v3, p0, Lcom/google/android/apps/uploader/a;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v3}, Lcom/google/android/apps/uploader/UploadService;->c(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/uploader/c;->f()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    iget-object v1, p0, Lcom/google/android/apps/uploader/a;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-virtual {v1, v3}, Lcom/google/android/apps/uploader/UploadService;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/google/android/apps/uploader/a;->a:Lcom/google/android/apps/uploader/r;

    invoke-virtual {v3, v2, v1}, Lcom/google/android/apps/uploader/r;->a(Lcom/google/android/apps/uploader/F;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/apps/uploader/a;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadService;->a(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/H;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/a;->a:Lcom/google/android/apps/uploader/r;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/uploader/H;->b(Lcom/google/android/apps/uploader/r;)V

    iget-object v1, p0, Lcom/google/android/apps/uploader/a;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadService;->h(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/s;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/apps/uploader/a;->a:Lcom/google/android/apps/uploader/r;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/uploader/s;->a(Lcom/google/android/apps/uploader/r;)V

    iget-object v1, p0, Lcom/google/android/apps/uploader/a;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadService;->i(Lcom/google/android/apps/uploader/UploadService;)V

    iget-object v1, p0, Lcom/google/android/apps/uploader/a;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadService;->d(Lcom/google/android/apps/uploader/UploadService;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    monitor-exit v0

    return-void

    :cond_2
    sget-object v1, Lcom/google/android/apps/uploader/F;->g:Lcom/google/android/apps/uploader/F;

    iget-object v2, p0, Lcom/google/android/apps/uploader/a;->b:Lcom/google/android/apps/uploader/UploadService;

    const v3, 0x7f06002c

    invoke-virtual {v2, v3}, Lcom/google/android/apps/uploader/UploadService;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/apps/uploader/a;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v3}, Lcom/google/android/apps/uploader/UploadService;->c(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/uploader/c;->b()V

    iget-object v3, p0, Lcom/google/android/apps/uploader/a;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v3}, Lcom/google/android/apps/uploader/UploadService;->e(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/UploaderApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/apps/uploader/UploaderApplication;->f()LT;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/uploader/a;->a:Lcom/google/android/apps/uploader/r;

    const/4 v5, 0x3

    invoke-virtual {v3, v4, v5}, LT;->a(Lcom/google/android/apps/uploader/r;I)V

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/uploader/a;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadService;->c(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/c;->e()V

    sget-object v1, Lcom/google/android/apps/uploader/F;->c:Lcom/google/android/apps/uploader/F;

    iget-object v2, p0, Lcom/google/android/apps/uploader/a;->b:Lcom/google/android/apps/uploader/UploadService;

    const v3, 0x7f060029

    invoke-virtual {v2, v3}, Lcom/google/android/apps/uploader/UploadService;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v6

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/apps/uploader/a;->b:Lcom/google/android/apps/uploader/UploadService;

    monitor-enter v0

    :try_start_0
    const-string v1, "MediaUploader"

    const-string v2, "UploadListener.retry"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/android/apps/uploader/a;->b:Lcom/google/android/apps/uploader/UploadService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/apps/uploader/UploadService;->a(Lcom/google/android/apps/uploader/UploadService;Z)Z

    iget-object v1, p0, Lcom/google/android/apps/uploader/a;->a:Lcom/google/android/apps/uploader/r;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/apps/uploader/r;->a(J)V

    iget-object v1, p0, Lcom/google/android/apps/uploader/a;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadService;->c(Lcom/google/android/apps/uploader/UploadService;)Lcom/google/android/apps/uploader/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/apps/uploader/c;->b()V

    iget-object v1, p0, Lcom/google/android/apps/uploader/a;->b:Lcom/google/android/apps/uploader/UploadService;

    invoke-static {v1}, Lcom/google/android/apps/uploader/UploadService;->d(Lcom/google/android/apps/uploader/UploadService;)Landroid/os/ConditionVariable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->open()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
