.class public final Lae;
.super LB;


# instance fields
.field private a:Lr;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lr;

    invoke-direct {v0, p1}, Lr;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lae;-><init>(Lr;)V

    return-void
.end method

.method private constructor <init>(Lr;)V
    .locals 0

    invoke-direct {p0}, LB;-><init>()V

    iput-object p1, p0, Lae;->a:Lr;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lae;->a:Lr;

    invoke-virtual {v0}, Lr;->a()V

    return-void
.end method

.method public final a(LR;)V
    .locals 1

    iget-object v0, p0, Lae;->a:Lr;

    invoke-virtual {v0, p1}, Lr;->a(LR;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lae;->a:Lr;

    invoke-virtual {v0, p1, p2}, Lr;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lae;->a:Lr;

    invoke-virtual {v0, p1}, Lr;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final b_()I
    .locals 1

    iget-object v0, p0, Lae;->a:Lr;

    invoke-virtual {v0}, Lr;->b_()I

    move-result v0

    return v0
.end method

.method public final c_()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Lae;->a:Lr;

    invoke-virtual {v0}, Lr;->c_()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method
