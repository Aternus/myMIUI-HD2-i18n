.class public final LaJ;
.super Lq;


# instance fields
.field private a:Ljava/util/Vector;

.field private b:Ljava/lang/Object;

.field private c:Ln;

.field private d:LaS;

.field private e:Lbg;

.field private f:Lac;

.field private g:I


# direct methods
.method public constructor <init>(Ln;Lbg;LaS;)V
    .locals 2

    invoke-direct {p0}, Lq;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, LaJ;->a:Ljava/util/Vector;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, LaJ;->b:Ljava/lang/Object;

    const/16 v0, 0x4000

    iput v0, p0, LaJ;->g:I

    iput-object p1, p0, LaJ;->c:Ln;

    iput-object p2, p0, LaJ;->e:Lbg;

    iput-object p3, p0, LaJ;->d:LaS;

    new-instance v0, Lac;

    new-instance v1, LV;

    invoke-direct {v1, p0}, LV;-><init>(LaJ;)V

    invoke-direct {v0, p2, v1}, Lac;-><init>(Lbg;Ljava/lang/Runnable;)V

    iput-object v0, p0, LaJ;->f:Lac;

    return-void
.end method

.method static synthetic a(LaJ;)LaS;
    .locals 1

    iget-object v0, p0, LaJ;->d:LaS;

    return-object v0
.end method

.method static synthetic b(LaJ;)I
    .locals 1

    iget v0, p0, LaJ;->g:I

    return v0
.end method

.method static synthetic c(LaJ;)Ln;
    .locals 1

    iget-object v0, p0, LaJ;->c:Ln;

    return-object v0
.end method

.method static synthetic c(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lg;->a()V

    return-void
.end method

.method static synthetic d(LaJ;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LaJ;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic e(LaJ;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, LaJ;->a:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic f(LaJ;)Lbg;
    .locals 1

    iget-object v0, p0, LaJ;->e:Lbg;

    return-object v0
.end method

.method static synthetic g(LaJ;)Lac;
    .locals 1

    iget-object v0, p0, LaJ;->f:Lac;

    return-object v0
.end method


# virtual methods
.method public final a(LB;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowResumeService.submitRequest("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lg;->a()V

    iget-object v1, p0, LaJ;->b:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, LaJ;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    iget-object v0, p0, LaJ;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LW;

    iget-object v0, v0, LW;->a:LB;

    if-ne v0, p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "request is already submitted"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object v0, p0, LaJ;->a:Ljava/util/Vector;

    new-instance v2, LW;

    invoke-direct {v2, p0, p1}, LW;-><init>(LaJ;LB;)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v0, p0, LaJ;->f:Lac;

    invoke-virtual {v0}, Lac;->d()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public final b(LB;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowResumeService.cancelRequest("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-static {}, Lg;->a()V

    iget-object v1, p0, LaJ;->b:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    :try_start_0
    iget-object v0, p0, LaJ;->a:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, LaJ;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LW;

    iget-object v0, v0, LW;->a:LB;

    if-ne v0, p1, :cond_1

    iget-object v0, p0, LaJ;->a:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->removeElementAt(I)V

    new-instance v0, Lac;

    iget-object v2, p0, LaJ;->e:Lbg;

    new-instance v3, LaY;

    invoke-direct {v3, p1}, LaY;-><init>(LB;)V

    invoke-direct {v0, v2, v3}, Lac;-><init>(Lbg;Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lac;->d()V

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
