.class final LaD;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:LaE;

.field private synthetic b:Z

.field private synthetic c:Ln;


# direct methods
.method constructor <init>(Ln;LaE;Z)V
    .locals 0

    iput-object p1, p0, LaD;->c:Ln;

    iput-object p2, p0, LaD;->a:LaE;

    iput-boolean p3, p0, LaD;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, LaD;->c:Ln;

    iget-object v1, p0, LaD;->a:LaE;

    iget-boolean v2, p0, LaD;->b:Z

    invoke-virtual {v0, v1, v2}, Ln;->a(LaE;Z)V

    return-void
.end method
