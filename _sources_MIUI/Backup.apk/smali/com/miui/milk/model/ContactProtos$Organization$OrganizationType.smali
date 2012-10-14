.class public final enum Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;
.super Ljava/lang/Enum;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos$Organization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OrganizationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;

.field public static final enum CUSTOM:Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;

.field public static final enum OTHER:Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;

.field public static final enum WORK:Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3929
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;

    const-string v1, "CUSTOM"

    invoke-direct {v0, v1, v2, v2, v2}, Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;->CUSTOM:Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;

    .line 3930
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;

    const-string v1, "WORK"

    invoke-direct {v0, v1, v3, v3, v3}, Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;->WORK:Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;

    .line 3931
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;

    const-string v1, "OTHER"

    invoke-direct {v0, v1, v4, v4, v4}, Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;->OTHER:Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;

    .line 3927
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;

    sget-object v1, Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;->CUSTOM:Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;->WORK:Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;->OTHER:Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;->$VALUES:[Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;

    .line 3955
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType$1;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType$1;-><init>()V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 3964
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3965
    iput p4, p0, Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;->value:I

    .line 3966
    return-void
.end method

.method public static valueOf(I)Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;
    .locals 1
    .parameter "value"

    .prologue
    .line 3942
    packed-switch p0, :pswitch_data_0

    .line 3946
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 3943
    :pswitch_0
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;->CUSTOM:Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;

    goto :goto_0

    .line 3944
    :pswitch_1
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;->WORK:Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;

    goto :goto_0

    .line 3945
    :pswitch_2
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;->OTHER:Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;

    goto :goto_0

    .line 3942
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;
    .locals 1
    .parameter

    .prologue
    .line 3927
    const-class v0, Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;

    return-object p0
.end method

.method public static values()[Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;
    .locals 1

    .prologue
    .line 3927
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;->$VALUES:[Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;

    invoke-virtual {v0}, [Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 3939
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;->value:I

    return v0
.end method
