.class public abstract LG;
.super Laa;

# interfaces
.implements LH;


# instance fields
.field private a:LaW;

.field private b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Laa;-><init>()V

    invoke-virtual {p0, p1}, LG;->a(I)V

    iput p2, p0, LG;->b:I

    return-void
.end method

.method public constructor <init>(LaW;)V
    .locals 2

    invoke-direct {p0}, Laa;-><init>()V

    iput-object p1, p0, LG;->a:LaW;

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v1

    invoke-virtual {p0, v1}, LG;->a(I)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v0

    iput v0, p0, LG;->b:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 0

    return-void
.end method

.method public abstract b_()I
.end method

.method public abstract c_()Ljava/io/InputStream;
.end method

.method public final d()I
    .locals 1

    iget v0, p0, LG;->b:I

    return v0
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, LG;->a:LaW;

    if-eqz v0, :cond_0

    iget-object v0, p0, LG;->a:LaW;

    invoke-virtual {v0}, LaW;->b()V

    :cond_0
    return-void
.end method
