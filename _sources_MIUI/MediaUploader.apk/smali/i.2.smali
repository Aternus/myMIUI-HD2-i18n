.class public final Li;
.super LE;


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, LE;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method private k()V
    .locals 2

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Li;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, LaZ;

    invoke-direct {v1, p0, v0}, LaZ;-><init>(Li;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Li;->a(Lbh;)V

    invoke-virtual {p0}, Li;->j()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Li;->h()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Li;->i()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_1
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Li;->k()V

    invoke-super {p0, p1}, LE;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Li;->k()V

    invoke-super {p0}, LE;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c()J
    .locals 2

    invoke-direct {p0}, Li;->k()V

    invoke-super {p0}, LE;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()I
    .locals 1

    invoke-direct {p0}, Li;->k()V

    invoke-super {p0}, LE;->d()I

    move-result v0

    return v0
.end method

.method public final e()Ljava/io/DataInputStream;
    .locals 1

    invoke-direct {p0}, Li;->k()V

    invoke-super {p0}, LE;->e()Ljava/io/DataInputStream;

    move-result-object v0

    return-object v0
.end method
