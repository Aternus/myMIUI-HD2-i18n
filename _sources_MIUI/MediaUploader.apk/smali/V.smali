.class final LV;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:LaJ;


# direct methods
.method synthetic constructor <init>(LaJ;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LV;-><init>(LaJ;B)V

    return-void
.end method

.method private constructor <init>(LaJ;B)V
    .locals 0

    iput-object p1, p0, LV;->a:LaJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, LV;->a:LaJ;

    invoke-static {v1}, LaJ;->d(LaJ;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, LV;->a:LaJ;

    invoke-static {v2}, LaJ;->e(LaJ;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v0, p0, LV;->a:LaJ;

    invoke-static {v0}, LaJ;->e(LaJ;)Ljava/util/Vector;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LW;

    move-object v0, p0

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, LW;->a()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
