.class public final enum Lcom/miui/milk/model/ContactProtos$Event$EventType;
.super Ljava/lang/Enum;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/milk/model/ContactProtos$Event$EventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/milk/model/ContactProtos$Event$EventType;

.field public static final enum ANNIVERSARY:Lcom/miui/milk/model/ContactProtos$Event$EventType;

.field public static final enum BIRTHDAY:Lcom/miui/milk/model/ContactProtos$Event$EventType;

.field public static final enum CUSTOM:Lcom/miui/milk/model/ContactProtos$Event$EventType;

.field public static final enum OTHER:Lcom/miui/milk/model/ContactProtos$Event$EventType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/miui/milk/model/ContactProtos$Event$EventType;",
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

    .line 1793
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Event$EventType;

    const-string v1, "CUSTOM"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/miui/milk/model/ContactProtos$Event$EventType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Event$EventType;->CUSTOM:Lcom/miui/milk/model/ContactProtos$Event$EventType;

    .line 1794
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Event$EventType;

    const-string v1, "ANNIVERSARY"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/miui/milk/model/ContactProtos$Event$EventType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Event$EventType;->ANNIVERSARY:Lcom/miui/milk/model/ContactProtos$Event$EventType;

    .line 1795
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Event$EventType;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/miui/milk/model/ContactProtos$Event$EventType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Event$EventType;->OTHER:Lcom/miui/milk/model/ContactProtos$Event$EventType;

    .line 1796
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Event$EventType;

    const-string v1, "BIRTHDAY"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/miui/milk/model/ContactProtos$Event$EventType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Event$EventType;->BIRTHDAY:Lcom/miui/milk/model/ContactProtos$Event$EventType;

    .line 1791
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/milk/model/ContactProtos$Event$EventType;

    sget-object v1, Lcom/miui/milk/model/ContactProtos$Event$EventType;->CUSTOM:Lcom/miui/milk/model/ContactProtos$Event$EventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/milk/model/ContactProtos$Event$EventType;->ANNIVERSARY:Lcom/miui/milk/model/ContactProtos$Event$EventType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/milk/model/ContactProtos$Event$EventType;->OTHER:Lcom/miui/milk/model/ContactProtos$Event$EventType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/milk/model/ContactProtos$Event$EventType;->BIRTHDAY:Lcom/miui/milk/model/ContactProtos$Event$EventType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Event$EventType;->$VALUES:[Lcom/miui/milk/model/ContactProtos$Event$EventType;

    .line 1822
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Event$EventType$1;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos$Event$EventType$1;-><init>()V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Event$EventType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 1831
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1832
    iput p4, p0, Lcom/miui/milk/model/ContactProtos$Event$EventType;->value:I

    .line 1833
    return-void
.end method

.method public static valueOf(I)Lcom/miui/milk/model/ContactProtos$Event$EventType;
    .locals 1
    .parameter "value"

    .prologue
    .line 1808
    packed-switch p0, :pswitch_data_0

    .line 1813
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 1809
    :pswitch_0
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Event$EventType;->CUSTOM:Lcom/miui/milk/model/ContactProtos$Event$EventType;

    goto :goto_0

    .line 1810
    :pswitch_1
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Event$EventType;->ANNIVERSARY:Lcom/miui/milk/model/ContactProtos$Event$EventType;

    goto :goto_0

    .line 1811
    :pswitch_2
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Event$EventType;->OTHER:Lcom/miui/milk/model/ContactProtos$Event$EventType;

    goto :goto_0

    .line 1812
    :pswitch_3
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Event$EventType;->BIRTHDAY:Lcom/miui/milk/model/ContactProtos$Event$EventType;

    goto :goto_0

    .line 1808
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Event$EventType;
    .locals 1
    .parameter

    .prologue
    .line 1791
    const-class v0, Lcom/miui/milk/model/ContactProtos$Event$EventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/milk/model/ContactProtos$Event$EventType;

    return-object p0
.end method

.method public static values()[Lcom/miui/milk/model/ContactProtos$Event$EventType;
    .locals 1

    .prologue
    .line 1791
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Event$EventType;->$VALUES:[Lcom/miui/milk/model/ContactProtos$Event$EventType;

    invoke-virtual {v0}, [Lcom/miui/milk/model/ContactProtos$Event$EventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/milk/model/ContactProtos$Event$EventType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 1805
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Event$EventType;->value:I

    return v0
.end method
