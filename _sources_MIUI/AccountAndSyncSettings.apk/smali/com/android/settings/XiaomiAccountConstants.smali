.class public Lcom/android/settings/XiaomiAccountConstants;
.super Ljava/lang/Object;
.source "XiaomiAccountConstants.java"


# static fields
.field public static final errorCodes:[Ljava/lang/String;

.field public static final errorIds:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0xe

    .line 77
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "RegisteredAccount"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "BadVerification"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "BadToken"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "BadAuthentication"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "EmailNotVerified"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "TermsNotAgreed"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "AccountDeleted"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "AccountDisabled"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "ServiceDisabled"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "ServiceUnavailable"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "HasBound"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "NicknameExist"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "HasNick"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Unknown"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/XiaomiAccountConstants;->errorCodes:[Ljava/lang/String;

    .line 83
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/XiaomiAccountConstants;->errorIds:[I

    return-void

    :array_0
    .array-data 0x4
        0x45t 0x0t 0x6t 0x7ft
        0x46t 0x0t 0x6t 0x7ft
        0x47t 0x0t 0x6t 0x7ft
        0x48t 0x0t 0x6t 0x7ft
        0x49t 0x0t 0x6t 0x7ft
        0x4at 0x0t 0x6t 0x7ft
        0x4bt 0x0t 0x6t 0x7ft
        0x4ct 0x0t 0x6t 0x7ft
        0x4dt 0x0t 0x6t 0x7ft
        0x4et 0x0t 0x6t 0x7ft
        0x50t 0x0t 0x6t 0x7ft
        0x51t 0x0t 0x6t 0x7ft
        0x52t 0x0t 0x6t 0x7ft
        0x53t 0x0t 0x6t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
