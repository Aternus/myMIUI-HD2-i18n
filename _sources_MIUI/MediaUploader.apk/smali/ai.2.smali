.class final Lai;
.super Ljava/lang/Object;

# interfaces
.implements Lar;


# instance fields
.field private synthetic a:LaJ;


# direct methods
.method synthetic constructor <init>(LaJ;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lai;-><init>(LaJ;B)V

    return-void
.end method

.method private constructor <init>(LaJ;B)V
    .locals 0

    iput-object p1, p0, Lai;->a:LaJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(LaE;LG;)V
    .locals 3

    const-string v2, "WindowResumeService.Listener.requestCompleted(): finally block"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowResumeService.Listener.requestCompleted("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LaJ;->c(Ljava/lang/String;)V

    check-cast p1, LZ;

    :try_start_0
    const-string v0, "WindowResumeService.Listener.requestCompleted(): try block"

    invoke-static {v0}, LaJ;->c(Ljava/lang/String;)V

    new-instance v0, Lao;

    invoke-direct {v0, p2}, Lao;-><init>(LG;)V

    invoke-virtual {p1, v0}, LZ;->a(Lao;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "WindowResumeService.Listener.requestCompleted(): finally block"

    invoke-static {v2}, LaJ;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lai;->a:LaJ;

    invoke-static {v0}, LaJ;->g(LaJ;)Lac;

    move-result-object v0

    invoke-virtual {v0}, Lac;->d()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "WindowResumeService.Listener.requestCompleted(): catch block"

    invoke-static {v1}, LaJ;->c(Ljava/lang/String;)V

    new-instance v1, Lao;

    invoke-direct {v1, v0}, Lao;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p1, v1}, LZ;->a(Lao;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "WindowResumeService.Listener.requestCompleted(): finally block"

    invoke-static {v2}, LaJ;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lai;->a:LaJ;

    invoke-static {v0}, LaJ;->g(LaJ;)Lac;

    move-result-object v0

    invoke-virtual {v0}, Lac;->d()V

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "WindowResumeService.Listener.requestCompleted(): finally block"

    invoke-static {v2}, LaJ;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lai;->a:LaJ;

    invoke-static {v1}, LaJ;->g(LaJ;)Lac;

    move-result-object v1

    invoke-virtual {v1}, Lac;->d()V

    throw v0
.end method

.method public final a(LaE;Ljava/lang/Exception;)V
    .locals 3

    const-string v2, "WindowResumeService.Listener.requestFailed(): finally block"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowResumeService.Listener.requestFailed("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, LaJ;->c(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "WindowResumeService.Listener.requestFailed(): try block"

    invoke-static {v0}, LaJ;->c(Ljava/lang/String;)V

    check-cast p1, LZ;

    new-instance v0, Lao;

    invoke-direct {v0, p2}, Lao;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {p1, v0}, LZ;->a(Lao;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "WindowResumeService.Listener.requestFailed(): finally block"

    invoke-static {v2}, LaJ;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lai;->a:LaJ;

    invoke-static {v0}, LaJ;->g(LaJ;)Lac;

    move-result-object v0

    invoke-virtual {v0}, Lac;->d()V

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "WindowResumeService.Listener.requestFailed(): finally block"

    invoke-static {v2}, LaJ;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lai;->a:LaJ;

    invoke-static {v1}, LaJ;->g(LaJ;)Lac;

    move-result-object v1

    invoke-virtual {v1}, Lac;->d()V

    throw v0
.end method
