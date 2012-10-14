.class final Laz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:LaF;

.field private synthetic b:[LaE;

.field private synthetic c:I

.field private synthetic d:Ln;


# direct methods
.method constructor <init>(Ln;LaF;[LaE;I)V
    .locals 0

    iput-object p1, p0, Laz;->d:Ln;

    iput-object p2, p0, Laz;->a:LaF;

    iput-object p3, p0, Laz;->b:[LaE;

    iput p4, p0, Laz;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Laz;->a:LaF;

    invoke-interface {v0}, LaF;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Laz;->d:Ln;

    iget-object v1, p0, Laz;->b:[LaE;

    iget-object v2, p0, Laz;->a:LaF;

    invoke-interface {v2}, LaF;->h()Ljava/lang/Exception;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ln;->a(Ln;[Ljava/lang/Object;Ljava/lang/Exception;)V

    :goto_0
    iget-object v0, p0, Laz;->d:Ln;

    iget-object v1, p0, Laz;->b:[LaE;

    invoke-static {v0, v1}, Ln;->a(Ln;[Ljava/lang/Object;)V

    iget-object v0, p0, Laz;->d:Ln;

    iget v1, v0, Ln;->b:I

    iget v2, p0, Laz;->c:I

    add-int/2addr v1, v2

    iput v1, v0, Ln;->b:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Laz;->a:LaF;

    invoke-interface {v0}, LaF;->a()V

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Laz;->d:Ln;

    iget-object v1, p0, Laz;->a:LaF;

    iget-object v2, p0, Laz;->b:[LaE;

    invoke-static {v0, v1, v2}, Ln;->a(Ln;LaF;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Laz;->a:LaF;

    invoke-interface {v1}, LaF;->a()V

    throw v0
.end method
