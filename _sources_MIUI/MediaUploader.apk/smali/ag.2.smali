.class public final Lag;
.super Ljava/lang/Object;


# static fields
.field private static a:LaP;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls;

    invoke-direct {v0}, Ls;-><init>()V

    sput-object v0, Lag;->a:LaP;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Ljava/lang/Integer;
    .locals 1

    sget-object v0, Lag;->a:LaP;

    invoke-virtual {v0, p0}, LaP;->a(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public static a(J)Ljava/lang/Long;
    .locals 1

    sget-object v0, Lag;->a:LaP;

    invoke-virtual {v0, p0, p1}, LaP;->a(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
