.class public Lac;
.super Ll;


# instance fields
.field private b:I


# direct methods
.method public constructor <init>(Lbg;Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p1}, Lbg;->a()I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lac;-><init>(Lbg;Ljava/lang/Runnable;I)V

    return-void
.end method

.method private constructor <init>(Lbg;Ljava/lang/Runnable;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ll;-><init>(Lbg;Ljava/lang/Runnable;)V

    iput p3, p0, Lac;->b:I

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    iget-object v0, p0, Lac;->a:Lbg;

    invoke-virtual {v0, p0}, Lbg;->c(Ll;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected e()V
    .locals 1

    iget-object v0, p0, Lac;->a:Lbg;

    invoke-virtual {v0, p0}, Lbg;->a(Lac;)V

    return-void
.end method

.method public final declared-synchronized i()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lac;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
