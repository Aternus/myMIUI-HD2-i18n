.class final LaT;
.super Ljava/lang/Object;

# interfaces
.implements Lar;


# instance fields
.field private synthetic a:LS;


# direct methods
.method constructor <init>(LS;)V
    .locals 0

    iput-object p1, p0, LaT;->a:LS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LaE;LG;)V
    .locals 4

    invoke-static {}, LS;->a()LS;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-virtual {p2}, LG;->d()I

    move-result v1

    invoke-virtual {p2}, LG;->b_()I

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, LG;->c_()Ljava/io/InputStream;

    move-result-object v1

    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iget-object v1, p0, LaT;->a:LS;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, LS;->a(LS;J)J

    iget-object v1, p0, LaT;->a:LS;

    const/4 v2, 0x0

    invoke-static {v1, v2}, LS;->a(LS;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v1, p0, LaT;->a:LS;

    const/4 v2, 0x0

    invoke-static {v1, v2}, LS;->b(LS;Z)Z

    iget-object v1, p0, LaT;->a:LS;

    invoke-static {v1}, LS;->a(LS;)V

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_0
    :try_start_2
    iget-object v1, p0, LaT;->a:LS;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, LS;->a(LS;J)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    iget-object v1, p0, LaT;->a:LS;

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3}, LS;->a(LS;J)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v1, p0, LaT;->a:LS;

    const/4 v2, 0x0

    invoke-static {v1, v2}, LS;->b(LS;Z)Z

    iget-object v1, p0, LaT;->a:LS;

    invoke-static {v1}, LS;->a(LS;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    :catchall_1
    move-exception v1

    :try_start_5
    iget-object v2, p0, LaT;->a:LS;

    const/4 v3, 0x0

    invoke-static {v2, v3}, LS;->b(LS;Z)Z

    iget-object v2, p0, LaT;->a:LS;

    invoke-static {v2}, LS;->a(LS;)V

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
.end method

.method public final a(LaE;Ljava/lang/Exception;)V
    .locals 3

    invoke-static {}, LS;->a()LS;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, LaT;->a:LS;

    const/4 v2, 0x0

    invoke-static {v1, v2}, LS;->b(LS;Z)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
