.class public final Lbi;
.super Ljava/lang/Object;

# interfaces
.implements Lar;


# static fields
.field private static a:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lbi;->a:Ljava/util/Vector;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/Vector;
    .locals 4

    sget-object v0, Lbi;->a:Ljava/util/Vector;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/Vector;

    sget-object v2, Lbi;->a:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    sget-object v2, Lbi;->a:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lb;->a(Ljava/util/Vector;ILjava/util/Vector;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static a(LM;)V
    .locals 5

    invoke-static {}, Ln;->b()Ln;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    invoke-virtual {p0, v1}, LM;->a(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    sget-object v2, Lbi;->a:Ljava/util/Vector;

    monitor-enter v2

    :try_start_1
    sget-object v3, Lbi;->a:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    const/16 v4, 0x14

    if-ge v3, v4, :cond_1

    sget-object v3, Lbi;->a:Ljava/util/Vector;

    new-instance v4, Laj;

    invoke-direct {v4, v1}, Laj;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    new-instance v2, LX;

    const-string v3, "g:log:ev"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v1}, LX;-><init>(Ljava/lang/String;I[B)V

    new-instance v1, Lbi;

    invoke-direct {v1}, Lbi;-><init>()V

    invoke-virtual {v2, v1}, LaE;->a(Lar;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Ln;->a(LaE;Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a(LaE;LG;)V
    .locals 4

    :try_start_0
    check-cast p1, LX;

    invoke-virtual {p1}, LX;->d()[B

    move-result-object v0

    sget-object v1, Lbi;->a:Ljava/util/Vector;

    monitor-enter v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v2, Lbi;->a:Ljava/util/Vector;

    new-instance v3, Laj;

    invoke-direct {v3, v0}, Laj;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/util/Vector;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    sget-object v2, Lbi;->a:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->removeElementAt(I)V

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(LaE;Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method
