.class public final LaA;
.super LG;


# instance fields
.field private final a:LR;

.field private final b:[LR;

.field private final c:I


# direct methods
.method public constructor <init>(IILR;[LR;)V
    .locals 1

    invoke-direct {p0, p1, p2}, LG;-><init>(II)V

    iput-object p3, p0, LaA;->a:LR;

    iput-object p4, p0, LaA;->b:[LR;

    array-length v0, p4

    iput v0, p0, LaA;->c:I

    return-void
.end method

.method public constructor <init>(LaW;)V
    .locals 4

    invoke-direct {p0, p1}, LG;-><init>(LaW;)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-static {v0}, LR;->a(Ljava/io/InputStream;)LR;

    move-result-object v1

    iput-object v1, p0, LaA;->a:LR;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readShort()S

    move-result v1

    iput v1, p0, LaA;->c:I

    iget v1, p0, LaA;->c:I

    new-array v1, v1, [LR;

    iput-object v1, p0, LaA;->b:[LR;

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, LaA;->c:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, LaA;->b:[LR;

    invoke-static {v0}, LR;->a(Ljava/io/InputStream;)LR;

    move-result-object v3

    aput-object v3, v2, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    throw v0

    :cond_0
    return-void
.end method


# virtual methods
.method public final b_()I
    .locals 1

    iget-object v0, p0, LaA;->a:LR;

    invoke-virtual {v0}, LR;->d()LH;

    move-result-object v0

    invoke-interface {v0}, LH;->b_()I

    move-result v0

    return v0
.end method

.method public final c_()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, LaA;->a:LR;

    invoke-virtual {v0}, LR;->d()LH;

    move-result-object v0

    invoke-interface {v0}, LH;->c_()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final f()LR;
    .locals 1

    iget-object v0, p0, LaA;->a:LR;

    return-object v0
.end method

.method public final h()[LR;
    .locals 1

    iget-object v0, p0, LaA;->b:[LR;

    return-object v0
.end method
