.class public final enum Lcom/miui/milk/model/ContactProtos$Postal$PostalType;
.super Ljava/lang/Enum;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos$Postal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PostalType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/milk/model/ContactProtos$Postal$PostalType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/milk/model/ContactProtos$Postal$PostalType;

.field public static final enum CUSTOM:Lcom/miui/milk/model/ContactProtos$Postal$PostalType;

.field public static final enum HOME:Lcom/miui/milk/model/ContactProtos$Postal$PostalType;

.field public static final enum OTHER:Lcom/miui/milk/model/ContactProtos$Postal$PostalType;

.field public static final enum WORK:Lcom/miui/milk/model/ContactProtos$Postal$PostalType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/miui/milk/model/ContactProtos$Postal$PostalType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5211
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Postal$PostalType;

    const-string v1, "CUSTOM"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/miui/milk/model/ContactProtos$Postal$PostalType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Postal$PostalType;->CUSTOM:Lcom/miui/milk/model/ContactProtos$Postal$PostalType;

    .line 5212
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Postal$PostalType;

    const-string v1, "HOME"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/miui/milk/model/ContactProtos$Postal$PostalType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Postal$PostalType;->HOME:Lcom/miui/milk/model/ContactProtos$Postal$PostalType;

    .line 5213
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Postal$PostalType;

    const-string v1, "WORK"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/miui/milk/model/ContactProtos$Postal$PostalType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Postal$PostalType;->WORK:Lcom/miui/milk/model/ContactProtos$Postal$PostalType;

    .line 5214
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Postal$PostalType;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/miui/milk/model/ContactProtos$Postal$PostalType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Postal$PostalType;->OTHER:Lcom/miui/milk/model/ContactProtos$Postal$PostalType;

    .line 5209
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/milk/model/ContactProtos$Postal$PostalType;

    sget-object v1, Lcom/miui/milk/model/ContactProtos$Postal$PostalType;->CUSTOM:Lcom/miui/milk/model/ContactProtos$Postal$PostalType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/milk/model/ContactProtos$Postal$PostalType;->HOME:Lcom/miui/milk/model/ContactProtos$Postal$PostalType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/milk/model/ContactProtos$Postal$PostalType;->WORK:Lcom/miui/milk/model/ContactProtos$Postal$PostalType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/milk/model/ContactProtos$Postal$PostalType;->OTHER:Lcom/miui/milk/model/ContactProtos$Postal$PostalType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Postal$PostalType;->$VALUES:[Lcom/miui/milk/model/ContactProtos$Postal$PostalType;

    .line 5240
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Postal$PostalType$1;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos$Postal$PostalType$1;-><init>()V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Postal$PostalType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 5249
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5250
    iput p4, p0, Lcom/miui/milk/model/ContactProtos$Postal$PostalType;->value:I

    .line 5251
    return-void
.end method

.method public static valueOf(I)Lcom/miui/milk/model/ContactProtos$Postal$PostalType;
    .locals 1
    .parameter "value"

    .prologue
    .line 5226
    packed-switch p0, :pswitch_data_0

    .line 5231
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 5227
    :pswitch_0
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Postal$PostalType;->CUSTOM:Lcom/miui/milk/model/ContactProtos$Postal$PostalType;

    goto :goto_0

    .line 5228
    :pswitch_1
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Postal$PostalType;->HOME:Lcom/miui/milk/model/ContactProtos$Postal$PostalType;

    goto :goto_0

    .line 5229
    :pswitch_2
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Postal$PostalType;->WORK:Lcom/miui/milk/model/ContactProtos$Postal$PostalType;

    goto :goto_0

    .line 5230
    :pswitch_3
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Postal$PostalType;->OTHER:Lcom/miui/milk/model/ContactProtos$Postal$PostalType;

    goto :goto_0

    .line 5226
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Postal$PostalType;
    .locals 1
    .parameter

    .prologue
    .line 5209
    const-class v0, Lcom/miui/milk/model/ContactProtos$Postal$PostalType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/milk/model/ContactProtos$Postal$PostalType;

    return-object p0
.end method

.method public static values()[Lcom/miui/milk/model/ContactProtos$Postal$PostalType;
    .locals 1

    .prologue
    .line 5209
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Postal$PostalType;->$VALUES:[Lcom/miui/milk/model/ContactProtos$Postal$PostalType;

    invoke-virtual {v0}, [Lcom/miui/milk/model/ContactProtos$Postal$PostalType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/milk/model/ContactProtos$Postal$PostalType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 5223
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Postal$PostalType;->value:I

    return v0
.end method
