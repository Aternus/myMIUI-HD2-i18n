.class public final LT;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/LinkedList;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, LT;->a:Ljava/util/LinkedList;

    invoke-direct {p0}, LT;->c()V

    return-void
.end method

.method private declared-synchronized a(LM;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LT;->a:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static b(Lcom/google/android/apps/uploader/r;I)LM;
    .locals 4

    new-instance v0, LM;

    sget-object v1, Lu;->a:Lbl;

    invoke-direct {v0, v1}, LM;-><init>(Lbl;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, LM;->a(II)V

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/r;->j()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, LM;->a(IJ)V

    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/apps/uploader/r;->m()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, LM;->a(II)V

    return-object v0
.end method

.method private declared-synchronized c()V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-static {}, LN;->a()LN;

    move-result-object v0

    invoke-virtual {v0}, LN;->g()Lt;

    move-result-object v0

    const-string v1, "UploadEventInfoLogs"

    invoke-interface {v0, v1}, Lt;->a(Ljava/lang/String;)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    new-instance v2, LM;

    sget-object v3, Lu;->a:Lbl;

    invoke-direct {v2, v3}, LM;-><init>(Lbl;)V

    :goto_1
    if-lez v1, :cond_0

    iget-object v3, p0, LT;->a:Ljava/util/LinkedList;

    invoke-virtual {v2, v0}, LM;->a(Ljava/io/InputStream;)LM;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private declared-synchronized d()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lbi;->a()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    iget-object v2, p0, LT;->a:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    add-int/2addr v1, v2

    if-nez v1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v3, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laj;

    iget-object v0, v0, Laj;->a:[B

    invoke-virtual {v3, v0}, Ljava/io/DataOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v0, p0, LT;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    :try_start_3
    iget-object v0, p0, LT;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM;

    invoke-virtual {v0, v3}, LM;->a(Ljava/io/OutputStream;)V

    goto :goto_2

    :cond_2
    invoke-static {}, LN;->a()LN;

    move-result-object v0

    invoke-virtual {v0}, LN;->g()Lt;

    move-result-object v0

    const-string v1, "UploadEventInfoLogs"

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lt;->a(Ljava/lang/String;[B)Z

    invoke-interface {v0}, Lt;->a()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-direct {p0}, LT;->d()V

    return-void
.end method

.method public final a(Lcom/google/android/apps/uploader/r;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, LT;->b(Lcom/google/android/apps/uploader/r;I)LM;

    move-result-object v0

    invoke-direct {p0, v0}, LT;->a(LM;)V

    return-void
.end method

.method public final a(Lcom/google/android/apps/uploader/r;I)V
    .locals 2

    const/4 v1, 0x5

    invoke-static {p1, v1}, LT;->b(Lcom/google/android/apps/uploader/r;I)LM;

    move-result-object v0

    invoke-virtual {v0, v1, p2}, LM;->a(II)V

    invoke-direct {p0, v0}, LT;->a(LM;)V

    return-void
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LT;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LM;

    invoke-static {v0}, Lbi;->a(LM;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, LT;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    invoke-static {}, Ln;->b()Ln;

    move-result-object v0

    invoke-virtual {v0}, Ln;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method public final b(Lcom/google/android/apps/uploader/r;)V
    .locals 1

    const/4 v0, 0x2

    invoke-static {p1, v0}, LT;->b(Lcom/google/android/apps/uploader/r;I)LM;

    move-result-object v0

    invoke-direct {p0, v0}, LT;->a(LM;)V

    return-void
.end method

.method public final c(Lcom/google/android/apps/uploader/r;)V
    .locals 1

    const/4 v0, 0x4

    invoke-static {p1, v0}, LT;->b(Lcom/google/android/apps/uploader/r;I)LM;

    move-result-object v0

    invoke-direct {p0, v0}, LT;->a(LM;)V

    return-void
.end method

.method public final d(Lcom/google/android/apps/uploader/r;)V
    .locals 1

    const/4 v0, 0x3

    invoke-static {p1, v0}, LT;->b(Lcom/google/android/apps/uploader/r;I)LM;

    move-result-object v0

    invoke-direct {p0, v0}, LT;->a(LM;)V

    return-void
.end method
