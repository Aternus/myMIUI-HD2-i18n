.class public final LX;
.super LY;


# instance fields
.field private a:LH;

.field private b:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LY;-><init>(Ljava/lang/String;I)V

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, LX;->b(I)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILH;)V
    .locals 1

    invoke-direct {p0, p1, p2}, LY;-><init>(Ljava/lang/String;I)V

    const/16 v0, 0x100

    invoke-virtual {p0, v0}, LX;->b(I)V

    iput-object p3, p0, LX;->a:LH;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[B)V
    .locals 2

    const/4 v0, 0x1

    new-instance v1, Law;

    invoke-direct {v1, p3}, Law;-><init>([B)V

    invoke-direct {p0, p1, v0, v1}, LX;-><init>(Ljava/lang/String;ILH;)V

    return-void
.end method

.method private k()V
    .locals 3

    iget-object v0, p0, LX;->b:[B

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0}, LX;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {p0}, LX;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {p0}, LX;->f()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v2, p0, LX;->a:LH;

    if-eqz v2, :cond_1

    iget-object v2, p0, LX;->a:LH;

    invoke-interface {v2}, LH;->b_()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    :goto_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    iput-object v0, p0, LX;->b:[B

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, LY;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, LX;->b:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, LY;->a(I)V

    const/4 v0, 0x0

    iput-object v0, p0, LX;->b:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized b()I
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, LX;->k()V

    iget-object v0, p0, LX;->b:[B

    array-length v0, v0

    iget-object v1, p0, LX;->a:LH;

    if-eqz v1, :cond_0

    iget-object v1, p0, LX;->a:LH;

    invoke-interface {v1}, LH;->b_()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized c()Ljava/io/InputStream;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, LX;->k()V

    iget-object v0, p0, LX;->a:LH;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, LX;->b:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lav;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, LX;->b:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v2, p0, LX;->a:LH;

    invoke-interface {v2}, LH;->c_()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lav;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()[B
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, LX;->a:LH;

    invoke-interface {v0}, LH;->c_()Ljava/io/InputStream;

    move-result-object v0

    iget-object v1, p0, LX;->a:LH;

    invoke-interface {v1}, LH;->b_()I

    move-result v1

    invoke-static {v0, v1}, Lat;->a(Ljava/io/InputStream;I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
