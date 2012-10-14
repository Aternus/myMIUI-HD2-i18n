.class public final LO;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, LO;->a:I

    iput v0, p0, LO;->b:I

    return-void
.end method

.method private declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, LO;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LO;->a:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic a(LO;)V
    .locals 0

    invoke-direct {p0}, LO;->a()V

    return-void
.end method

.method private declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, LO;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LO;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic b(LO;)V
    .locals 0

    invoke-direct {p0}, LO;->b()V

    return-void
.end method

.method private declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, LO;->b:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, LO;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic c(LO;)V
    .locals 0

    invoke-direct {p0}, LO;->c()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    new-instance v0, Lax;

    invoke-direct {v0, p0, p1, p2}, Lax;-><init>(LO;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-object v0
.end method
