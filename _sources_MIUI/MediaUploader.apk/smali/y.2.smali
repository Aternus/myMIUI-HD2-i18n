.class public final Ly;
.super Lbk;


# static fields
.field private static c:I

.field private static final d:Ljava/lang/Object;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:LaK;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ly;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lbk;-><init>()V

    iput-object p1, p0, Ly;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Ly;)LaK;
    .locals 1

    iget-object v0, p0, Ly;->b:LaK;

    return-object v0
.end method

.method static synthetic a()Ljava/lang/Object;
    .locals 1

    sget-object v0, Ly;->d:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b()I
    .locals 2

    sget v0, Ly;->c:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Ly;->c:I

    return v0
.end method

.method static synthetic c()I
    .locals 2

    sget v0, Ly;->c:I

    const/4 v1, 0x1

    sub-int v1, v0, v1

    sput v1, Ly;->c:I

    return v0
.end method

.method static synthetic d()I
    .locals 1

    sget v0, Ly;->c:I

    return v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Z)LaH;
    .locals 4

    iget-object v0, p0, Ly;->b:LaK;

    if-nez v0, :cond_0

    new-instance v0, LaK;

    iget-object v1, p0, Ly;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "GMM/3.0"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, LaK;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    iput-object v0, p0, Ly;->b:LaK;

    iget-object v0, p0, Ly;->b:LaK;

    invoke-virtual {v0}, LaK;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    new-instance v1, Lorg/apache/http/conn/params/ConnPerRouteBean;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lorg/apache/http/conn/params/ConnPerRouteBean;-><init>(I)V

    invoke-static {v0, v1}, Lorg/apache/http/conn/params/ConnManagerParams;->setMaxConnectionsPerRoute(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/params/ConnPerRoute;)V

    :cond_0
    new-instance v0, Lv;

    invoke-direct {v0, p0, p1, p2}, Lv;-><init>(Ly;Ljava/lang/String;Z)V

    return-object v0
.end method
