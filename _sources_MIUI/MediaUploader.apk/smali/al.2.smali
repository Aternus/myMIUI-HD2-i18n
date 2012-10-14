.class public final Lal;
.super Ljava/lang/Object;


# static fields
.field private static final a:Lal;


# instance fields
.field private b:LaM;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lal;

    invoke-direct {v0}, Lal;-><init>()V

    sput-object v0, Lal;->a:Lal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/io/InputStream;)Ljava/io/InputStream;
    .locals 1

    sget-object v0, Lal;->a:Lal;

    iget-object v0, v0, Lal;->b:LaM;

    invoke-interface {v0, p0}, LaM;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static a(LaM;)V
    .locals 1

    sget-object v0, Lal;->a:Lal;

    iput-object p0, v0, Lal;->b:LaM;

    return-void
.end method
