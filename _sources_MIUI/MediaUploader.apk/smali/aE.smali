.class public abstract LaE;
.super Laa;

# interfaces
.implements LH;


# instance fields
.field private a:Lar;

.field private b:J

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Laa;-><init>()V

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, LaE;->b:J

    const/4 v0, 0x1

    iput v0, p0, LaE;->c:I

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public final declared-synchronized a(Lar;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, LaE;->a:Lar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract b_()I
.end method

.method public abstract c_()Ljava/io/InputStream;
.end method

.method public final declared-synchronized d(I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, LaE;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h()Lar;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LaE;->a:Lar;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized i()J
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, LaE;->b:J

    iget-wide v2, p0, LaE;->b:J

    const-wide/16 v4, 0x2

    mul-long/2addr v2, v4

    iput-wide v2, p0, LaE;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized j()Z
    .locals 3

    const/4 v2, 0x1

    monitor-enter p0

    :try_start_0
    iget v0, p0, LaE;->c:I

    sub-int v1, v0, v2

    iput v1, p0, LaE;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    move v0, v2

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
