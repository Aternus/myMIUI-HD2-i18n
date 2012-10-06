.class final LaR;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/apache/http/HttpRequestInterceptor;


# instance fields
.field private synthetic a:LA;


# direct methods
.method synthetic constructor <init>(LA;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, LaR;-><init>(LA;B)V

    return-void
.end method

.method private constructor <init>(LA;B)V
    .locals 0

    iput-object p1, p0, LaR;->a:LA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V
    .locals 2

    iget-object v0, p0, LaR;->a:LA;

    invoke-static {v0}, LA;->a(LA;)Lau;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lau;->a(Lau;)Z

    move-result v1

    if-eqz v1, :cond_0

    instance-of v1, p1, Lorg/apache/http/client/methods/HttpUriRequest;

    if-eqz v1, :cond_0

    check-cast p1, Lorg/apache/http/client/methods/HttpUriRequest;

    invoke-static {p1}, LA;->a(Lorg/apache/http/client/methods/HttpUriRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lau;->a(Lau;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
