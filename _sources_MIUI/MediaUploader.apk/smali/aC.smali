.class final LaC;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Ln;


# direct methods
.method constructor <init>(Ln;)V
    .locals 0

    iput-object p1, p0, LaC;->a:Ln;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, LaC;->a:Ln;

    iget-object v0, v0, Ln;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, LaC;->a:Ln;

    iget-wide v3, v3, Ln;->d:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    iget-object v1, p0, LaC;->a:Ln;

    iget-object v1, v1, Ln;->e:Lab;

    iget-object v2, p0, LaC;->a:Ln;

    iget-wide v2, v2, Ln;->d:J

    invoke-virtual {v1, v2, v3}, Lab;->b(J)V

    iget-object v1, p0, LaC;->a:Ln;

    iget-object v1, v1, Ln;->e:Lab;

    invoke-virtual {v1}, Lab;->d()V

    monitor-exit v0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, LaC;->a:Ln;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Ln;->d:J

    iget-object v1, p0, LaC;->a:Ln;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Ln;->c:J

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, LaC;->a:Ln;

    invoke-static {v0}, Ln;->a(Ln;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
