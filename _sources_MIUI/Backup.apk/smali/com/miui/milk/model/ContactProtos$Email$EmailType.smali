.class public final enum Lcom/miui/milk/model/ContactProtos$Email$EmailType;
.super Ljava/lang/Enum;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos$Email;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EmailType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/milk/model/ContactProtos$Email$EmailType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/milk/model/ContactProtos$Email$EmailType;

.field public static final enum CUSTOM:Lcom/miui/milk/model/ContactProtos$Email$EmailType;

.field public static final enum HOME:Lcom/miui/milk/model/ContactProtos$Email$EmailType;

.field public static final enum MOBILE:Lcom/miui/milk/model/ContactProtos$Email$EmailType;

.field public static final enum OTHER:Lcom/miui/milk/model/ContactProtos$Email$EmailType;

.field public static final enum WORK:Lcom/miui/milk/model/ContactProtos$Email$EmailType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/miui/milk/model/ContactProtos$Email$EmailType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1267
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Email$EmailType;

    const-string v1, "CUSTOM"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/miui/milk/model/ContactProtos$Email$EmailType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Email$EmailType;->CUSTOM:Lcom/miui/milk/model/ContactProtos$Email$EmailType;

    .line 1268
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Email$EmailType;

    const-string v1, "HOME"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/miui/milk/model/ContactProtos$Email$EmailType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Email$EmailType;->HOME:Lcom/miui/milk/model/ContactProtos$Email$EmailType;

    .line 1269
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Email$EmailType;

    const-string v1, "WORK"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/miui/milk/model/ContactProtos$Email$EmailType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Email$EmailType;->WORK:Lcom/miui/milk/model/ContactProtos$Email$EmailType;

    .line 1270
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Email$EmailType;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/miui/milk/model/ContactProtos$Email$EmailType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Email$EmailType;->OTHER:Lcom/miui/milk/model/ContactProtos$Email$EmailType;

    .line 1271
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Email$EmailType;

    const-string v1, "MOBILE"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/miui/milk/model/ContactProtos$Email$EmailType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Email$EmailType;->MOBILE:Lcom/miui/milk/model/ContactProtos$Email$EmailType;

    .line 1265
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/miui/milk/model/ContactProtos$Email$EmailType;

    sget-object v1, Lcom/miui/milk/model/ContactProtos$Email$EmailType;->CUSTOM:Lcom/miui/milk/model/ContactProtos$Email$EmailType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/milk/model/ContactProtos$Email$EmailType;->HOME:Lcom/miui/milk/model/ContactProtos$Email$EmailType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/milk/model/ContactProtos$Email$EmailType;->WORK:Lcom/miui/milk/model/ContactProtos$Email$EmailType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/milk/model/ContactProtos$Email$EmailType;->OTHER:Lcom/miui/milk/model/ContactProtos$Email$EmailType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/milk/model/ContactProtos$Email$EmailType;->MOBILE:Lcom/miui/milk/model/ContactProtos$Email$EmailType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Email$EmailType;->$VALUES:[Lcom/miui/milk/model/ContactProtos$Email$EmailType;

    .line 1299
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Email$EmailType$1;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos$Email$EmailType$1;-><init>()V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Email$EmailType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter
    .parameter
    .parameter "index"
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    .prologue
    .line 1308
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1309
    iput p4, p0, Lcom/miui/milk/model/ContactProtos$Email$EmailType;->value:I

    .line 1310
    return-void
.end method

.method public static valueOf(I)Lcom/miui/milk/model/ContactProtos$Email$EmailType;
    .locals 1
    .parameter "value"

    .prologue
    .line 1284
    packed-switch p0, :pswitch_data_0

    .line 1290
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1285
    :pswitch_0
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Email$EmailType;->CUSTOM:Lcom/miui/milk/model/ContactProtos$Email$EmailType;

    goto :goto_0

    .line 1286
    :pswitch_1
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Email$EmailType;->HOME:Lcom/miui/milk/model/ContactProtos$Email$EmailType;

    goto :goto_0

    .line 1287
    :pswitch_2
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Email$EmailType;->WORK:Lcom/miui/milk/model/ContactProtos$Email$EmailType;

    goto :goto_0

    .line 1288
    :pswitch_3
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Email$EmailType;->OTHER:Lcom/miui/milk/model/ContactProtos$Email$EmailType;

    goto :goto_0

    .line 1289
    :pswitch_4
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Email$EmailType;->MOBILE:Lcom/miui/milk/model/ContactProtos$Email$EmailType;

    goto :goto_0

    .line 1284
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Email$EmailType;
    .locals 1
    .parameter

    .prologue
    .line 1265
    const-class v0, Lcom/miui/milk/model/ContactProtos$Email$EmailType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/milk/model/ContactProtos$Email$EmailType;

    return-object p0
.end method

.method public static values()[Lcom/miui/milk/model/ContactProtos$Email$EmailType;
    .locals 1

    .prologue
    .line 1265
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Email$EmailType;->$VALUES:[Lcom/miui/milk/model/ContactProtos$Email$EmailType;

    invoke-virtual {v0}, [Lcom/miui/milk/model/ContactProtos$Email$EmailType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/milk/model/ContactProtos$Email$EmailType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 1281
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Email$EmailType;->value:I

    return v0
.end method
