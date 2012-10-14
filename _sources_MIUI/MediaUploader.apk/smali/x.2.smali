.class final Lx;
.super LP;

# interfaces
.implements LaF;
.implements Ljava/lang/Runnable;


# instance fields
.field private a:J

.field private b:LaX;

.field private c:LaH;

.field private d:Ljava/io/InputStream;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/io/DataInputStream;

.field private i:Ljava/lang/String;

.field private j:J

.field private k:I


# direct methods
.method public constructor <init>(LaX;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, LP;-><init>()V

    const-wide/16 v0, 0x4e20

    iput-wide v0, p0, Lx;->a:J

    const-string v0, "GET"

    iput-object v0, p0, Lx;->e:Ljava/lang/String;

    iput-object p1, p0, Lx;->b:LaX;

    iput-object p2, p0, Lx;->g:Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized n()J
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lx;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lx;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lx;->h:Ljava/io/DataInputStream;

    invoke-static {v0}, Lat;->a(Ljava/io/InputStream;)V

    iget-object v0, p0, Lx;->c:LaH;

    invoke-static {v0}, Lat;->a(LaH;)V

    invoke-super {p0}, LP;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(J)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lx;->a:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/io/InputStream;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lx;->d:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lx;->e:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final a(Ll;)V
    .locals 1

    invoke-virtual {p0, p1}, Lx;->b(Ll;)V

    iget-object v0, p0, Lx;->b:LaX;

    invoke-static {v0, p0}, LaX;->a(LaX;Lx;)Z

    return-void
.end method

.method public final declared-synchronized b()I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lx;->g()V

    iget v0, p0, Lx;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lx;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()J
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lx;->g()V

    iget-wide v0, p0, Lx;->j:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lx;->g()V

    iget-object v0, p0, Lx;->i:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()Ljava/io/DataInputStream;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lx;->g()V

    iget-object v0, p0, Lx;->h:Ljava/io/DataInputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lx;->j()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lp;

    invoke-direct {v0}, Lp;-><init>()V

    invoke-virtual {p0, v0}, Lx;->a(Ljava/lang/Exception;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 9

    const/4 v8, 0x1

    iget-object v0, p0, Lx;->b:LaX;

    invoke-static {v0}, LaX;->a(LaX;)Lbg;

    move-result-object v0

    new-instance v1, Las;

    invoke-direct {v1, v0}, Las;-><init>(Lbg;)V

    iput-object p0, v1, Las;->b:Lx;

    invoke-direct {p0}, Lx;->n()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Las;->a(J)V

    invoke-virtual {v1}, Las;->d()V

    const/4 v0, 0x0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Lx;->l()V

    iget-object v2, p0, Lx;->e:Ljava/lang/String;

    const-string v3, "POST"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lx;->b:LaX;

    iget-object v4, p0, Lx;->g:Ljava/lang/String;

    invoke-static {v3, v4, v2}, LaX;->a(LaX;Ljava/lang/String;Z)LaH;

    move-result-object v2

    iput-object v2, p0, Lx;->c:LaH;

    iget-object v2, p0, Lx;->f:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lx;->c:LaH;

    const-string v3, "Content-Type"

    iget-object v4, p0, Lx;->f:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, LaH;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lx;->d:Ljava/io/InputStream;

    if-eqz v2, :cond_1

    iget-object v0, p0, Lx;->c:LaH;

    invoke-interface {v0}, LaH;->a_()Ljava/io/DataOutputStream;

    move-result-object v0

    :cond_1
    iget-object v2, p0, Lx;->c:LaH;

    iget-object v3, p0, Lx;->d:Ljava/io/InputStream;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    :try_start_2
    invoke-static {v3, v0}, Lat;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-static {v0}, Lat;->a(Ljava/io/OutputStream;)V

    :cond_2
    invoke-interface {v2}, LaH;->d()I

    move-result v0

    invoke-interface {v2}, LaH;->c()J

    move-result-wide v3

    invoke-interface {v2}, LaH;->b()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2}, LaH;->e()Ljava/io/DataInputStream;

    move-result-object v2

    const/16 v6, 0xc8

    if-ne v0, v6, :cond_3

    iget-object v6, p0, Lx;->b:LaX;

    invoke-static {v6}, LaX;->b(LaX;)LC;

    move-result-object v6

    const/4 v7, 0x1

    invoke-interface {v6, v7}, LC;->a(Z)Z

    :cond_3
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    invoke-virtual {p0}, Lx;->j()I

    move-result v6

    if-ne v6, v8, :cond_4

    iput v0, p0, Lx;->k:I

    iput-wide v3, p0, Lx;->j:J

    iput-object v5, p0, Lx;->i:Ljava/lang/String;

    iput-object v2, p0, Lx;->h:Ljava/io/DataInputStream;

    invoke-virtual {p0}, Lx;->m()V

    :cond_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    invoke-virtual {v1}, Las;->a()I

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v0

    :try_start_7
    monitor-enter p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    invoke-virtual {p0}, Lx;->j()I

    move-result v2

    if-ne v2, v8, :cond_5

    invoke-virtual {p0, v0}, Lx;->a(Ljava/lang/Exception;)V

    :cond_5
    invoke-virtual {p0}, Lx;->j()I

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    invoke-virtual {v1}, Las;->a()I

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_9
    invoke-static {v0}, Lat;->a(Ljava/io/OutputStream;)V

    throw v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :catchall_2
    move-exception v0

    invoke-virtual {v1}, Las;->a()I

    throw v0

    :catchall_3
    move-exception v0

    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    :catchall_4
    move-exception v0

    :try_start_c
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :try_start_d
    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2
.end method
