.class public final enum Lcom/miui/milk/model/ContactProtos$Im$ImType;
.super Ljava/lang/Enum;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos$Im;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/milk/model/ContactProtos$Im$ImType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/milk/model/ContactProtos$Im$ImType;

.field public static final enum CUSTOM:Lcom/miui/milk/model/ContactProtos$Im$ImType;

.field public static final enum HOME:Lcom/miui/milk/model/ContactProtos$Im$ImType;

.field public static final enum OTHER:Lcom/miui/milk/model/ContactProtos$Im$ImType;

.field public static final enum WORK:Lcom/miui/milk/model/ContactProtos$Im$ImType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/miui/milk/model/ContactProtos$Im$ImType;",
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

    .line 2324
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Im$ImType;

    const-string v1, "CUSTOM"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/miui/milk/model/ContactProtos$Im$ImType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Im$ImType;->CUSTOM:Lcom/miui/milk/model/ContactProtos$Im$ImType;

    .line 2325
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Im$ImType;

    const-string v1, "HOME"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/miui/milk/model/ContactProtos$Im$ImType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Im$ImType;->HOME:Lcom/miui/milk/model/ContactProtos$Im$ImType;

    .line 2326
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Im$ImType;

    const-string v1, "WORK"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/miui/milk/model/ContactProtos$Im$ImType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Im$ImType;->WORK:Lcom/miui/milk/model/ContactProtos$Im$ImType;

    .line 2327
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Im$ImType;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/miui/milk/model/ContactProtos$Im$ImType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Im$ImType;->OTHER:Lcom/miui/milk/model/ContactProtos$Im$ImType;

    .line 2322
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/milk/model/ContactProtos$Im$ImType;

    sget-object v1, Lcom/miui/milk/model/ContactProtos$Im$ImType;->CUSTOM:Lcom/miui/milk/model/ContactProtos$Im$ImType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/milk/model/ContactProtos$Im$ImType;->HOME:Lcom/miui/milk/model/ContactProtos$Im$ImType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/milk/model/ContactProtos$Im$ImType;->WORK:Lcom/miui/milk/model/ContactProtos$Im$ImType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/milk/model/ContactProtos$Im$ImType;->OTHER:Lcom/miui/milk/model/ContactProtos$Im$ImType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Im$ImType;->$VALUES:[Lcom/miui/milk/model/ContactProtos$Im$ImType;

    .line 2353
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Im$ImType$1;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos$Im$ImType$1;-><init>()V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Im$ImType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 2362
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2363
    iput p4, p0, Lcom/miui/milk/model/ContactProtos$Im$ImType;->value:I

    .line 2364
    return-void
.end method

.method public static valueOf(I)Lcom/miui/milk/model/ContactProtos$Im$ImType;
    .locals 1
    .parameter "value"

    .prologue
    .line 2339
    packed-switch p0, :pswitch_data_0

    .line 2344
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2340
    :pswitch_0
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Im$ImType;->CUSTOM:Lcom/miui/milk/model/ContactProtos$Im$ImType;

    goto :goto_0

    .line 2341
    :pswitch_1
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Im$ImType;->HOME:Lcom/miui/milk/model/ContactProtos$Im$ImType;

    goto :goto_0

    .line 2342
    :pswitch_2
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Im$ImType;->WORK:Lcom/miui/milk/model/ContactProtos$Im$ImType;

    goto :goto_0

    .line 2343
    :pswitch_3
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Im$ImType;->OTHER:Lcom/miui/milk/model/ContactProtos$Im$ImType;

    goto :goto_0

    .line 2339
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Im$ImType;
    .locals 1
    .parameter

    .prologue
    .line 2322
    const-class v0, Lcom/miui/milk/model/ContactProtos$Im$ImType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/milk/model/ContactProtos$Im$ImType;

    return-object p0
.end method

.method public static values()[Lcom/miui/milk/model/ContactProtos$Im$ImType;
    .locals 1

    .prologue
    .line 2322
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Im$ImType;->$VALUES:[Lcom/miui/milk/model/ContactProtos$Im$ImType;

    invoke-virtual {v0}, [Lcom/miui/milk/model/ContactProtos$Im$ImType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/milk/model/ContactProtos$Im$ImType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 2336
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Im$ImType;->value:I

    return v0
.end method
