.class public final Lbd;
.super LG;


# instance fields
.field private a:Lbj;


# direct methods
.method public constructor <init>(LaW;)V
    .locals 3

    invoke-direct {p0, p1}, LG;-><init>(LaW;)V

    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    new-instance v2, Lbj;

    invoke-direct {v2, v1, v0, p1}, Lbj;-><init>(Ljava/lang/String;ILaW;)V

    iput-object v2, p0, Lbd;->a:Lbj;

    return-void
.end method


# virtual methods
.method public final b_()I
    .locals 1

    iget-object v0, p0, Lbd;->a:Lbj;

    invoke-virtual {v0}, Lbj;->b_()I

    move-result v0

    return v0
.end method

.method public final c_()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lbd;->a:Lbj;

    invoke-virtual {v0}, Lbj;->c_()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
