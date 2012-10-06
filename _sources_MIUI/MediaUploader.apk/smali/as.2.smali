.class final Las;
.super Lab;


# instance fields
.field b:Lx;


# direct methods
.method constructor <init>(Lbg;)V
    .locals 0

    invoke-direct {p0, p1}, Lab;-><init>(Lbg;)V

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 1

    iget-object v0, p0, Las;->b:Lx;

    invoke-virtual {v0}, Lx;->f()V

    return-void
.end method
