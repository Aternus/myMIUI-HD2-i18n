.class public final LS;
.super Ljava/lang/Object;


# static fields
.field private static d:LS;


# instance fields
.field private a:Z

.field private b:J

.field private c:Z


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, LS;->a:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, LS;->b:J

    const-string v0, "RequestNewInstallId"

    invoke-static {v0, v2}, Lf;->b(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, LS;->c:Z

    iget-boolean v0, p0, LS;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, LS;->c()V

    :cond_0
    return-void
.end method

.method static synthetic a(LS;J)J
    .locals 0

    iput-wide p1, p0, LS;->b:J

    return-wide p1
.end method

.method public static declared-synchronized a()LS;
    .locals 2

    const-class v0, LS;

    monitor-enter v0

    :try_start_0
    sget-object v1, LS;->d:LS;

    if-nez v1, :cond_0

    new-instance v1, LS;

    invoke-direct {v1}, LS;-><init>()V

    sput-object v1, LS;->d:LS;

    :cond_0
    sget-object v1, LS;->d:LS;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic a(LS;)V
    .locals 0

    invoke-direct {p0}, LS;->e()V

    return-void
.end method

.method static synthetic a(LS;Z)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, LS;->c:Z

    return v0
.end method

.method static synthetic b(LS;Z)Z
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, LS;->a:Z

    return v0
.end method

.method private declared-synchronized c()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LS;->a:Z

    if-nez v0, :cond_0

    invoke-static {}, Ln;->b()Ln;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, LS;->a:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, LS;->c:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, LS;->b:J

    invoke-direct {p0}, LS;->e()V

    new-instance v1, LX;

    const-string v2, "g:c"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, LX;-><init>(Ljava/lang/String;I)V

    new-instance v2, LaT;

    invoke-direct {v2, p0}, LaT;-><init>(LS;)V

    invoke-virtual {v1, v2}, LaE;->a(Lar;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ln;->a(LaE;Z)V
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

.method private declared-synchronized d()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, LS;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e()V
    .locals 3

    const-string v0, "InstallId"

    iget-wide v1, p0, LS;->b:J

    invoke-static {v0, v1, v2}, Lf;->a(Ljava/lang/String;J)V

    const-string v0, "RequestNewInstallId"

    iget-boolean v1, p0, LS;->c:Z

    invoke-static {v0, v1}, Lf;->a(Ljava/lang/String;Z)V

    invoke-static {}, LN;->a()LN;

    move-result-object v0

    invoke-virtual {v0}, LN;->g()Lt;

    move-result-object v0

    invoke-interface {v0}, Lt;->a()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized b()J
    .locals 5

    const-wide/16 v3, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, LS;->c:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, LS;->c()V

    iget-wide v0, p0, LS;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    iget-wide v0, p0, LS;->b:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_1

    const-string v0, "InstallId"

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lf;->b(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, LS;->b:J

    :cond_1
    iget-wide v0, p0, LS;->b:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_2

    invoke-direct {p0}, LS;->d()V

    :cond_2
    iget-wide v0, p0, LS;->b:J

    cmp-long v0, v0, v3

    if-nez v0, :cond_3

    invoke-direct {p0}, LS;->c()V

    :cond_3
    iget-wide v0, p0, LS;->b:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
