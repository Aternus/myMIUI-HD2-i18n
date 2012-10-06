.class public final enum Lcom/miui/milk/model/CalllogProtos$Call$CallType;
.super Ljava/lang/Enum;
.source "CalllogProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/CalllogProtos$Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CallType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/milk/model/CalllogProtos$Call$CallType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/milk/model/CalllogProtos$Call$CallType;

.field public static final enum INCOMING:Lcom/miui/milk/model/CalllogProtos$Call$CallType;

.field public static final enum MISSED:Lcom/miui/milk/model/CalllogProtos$Call$CallType;

.field public static final enum OUTGOING:Lcom/miui/milk/model/CalllogProtos$Call$CallType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/miui/milk/model/CalllogProtos$Call$CallType;",
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

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 113
    new-instance v0, Lcom/miui/milk/model/CalllogProtos$Call$CallType;

    const-string v1, "INCOMING"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/miui/milk/model/CalllogProtos$Call$CallType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/CalllogProtos$Call$CallType;->INCOMING:Lcom/miui/milk/model/CalllogProtos$Call$CallType;

    .line 114
    new-instance v0, Lcom/miui/milk/model/CalllogProtos$Call$CallType;

    const-string v1, "OUTGOING"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/miui/milk/model/CalllogProtos$Call$CallType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/CalllogProtos$Call$CallType;->OUTGOING:Lcom/miui/milk/model/CalllogProtos$Call$CallType;

    .line 115
    new-instance v0, Lcom/miui/milk/model/CalllogProtos$Call$CallType;

    const-string v1, "MISSED"

    invoke-direct {v0, v1, v3, v3, v5}, Lcom/miui/milk/model/CalllogProtos$Call$CallType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/CalllogProtos$Call$CallType;->MISSED:Lcom/miui/milk/model/CalllogProtos$Call$CallType;

    .line 111
    new-array v0, v5, [Lcom/miui/milk/model/CalllogProtos$Call$CallType;

    sget-object v1, Lcom/miui/milk/model/CalllogProtos$Call$CallType;->INCOMING:Lcom/miui/milk/model/CalllogProtos$Call$CallType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/miui/milk/model/CalllogProtos$Call$CallType;->OUTGOING:Lcom/miui/milk/model/CalllogProtos$Call$CallType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/milk/model/CalllogProtos$Call$CallType;->MISSED:Lcom/miui/milk/model/CalllogProtos$Call$CallType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/miui/milk/model/CalllogProtos$Call$CallType;->$VALUES:[Lcom/miui/milk/model/CalllogProtos$Call$CallType;

    .line 139
    new-instance v0, Lcom/miui/milk/model/CalllogProtos$Call$CallType$1;

    invoke-direct {v0}, Lcom/miui/milk/model/CalllogProtos$Call$CallType$1;-><init>()V

    sput-object v0, Lcom/miui/milk/model/CalllogProtos$Call$CallType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 148
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 149
    iput p4, p0, Lcom/miui/milk/model/CalllogProtos$Call$CallType;->value:I

    .line 150
    return-void
.end method

.method public static valueOf(I)Lcom/miui/milk/model/CalllogProtos$Call$CallType;
    .locals 1
    .parameter "value"

    .prologue
    .line 126
    packed-switch p0, :pswitch_data_0

    .line 130
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 127
    :pswitch_0
    sget-object v0, Lcom/miui/milk/model/CalllogProtos$Call$CallType;->INCOMING:Lcom/miui/milk/model/CalllogProtos$Call$CallType;

    goto :goto_0

    .line 128
    :pswitch_1
    sget-object v0, Lcom/miui/milk/model/CalllogProtos$Call$CallType;->OUTGOING:Lcom/miui/milk/model/CalllogProtos$Call$CallType;

    goto :goto_0

    .line 129
    :pswitch_2
    sget-object v0, Lcom/miui/milk/model/CalllogProtos$Call$CallType;->MISSED:Lcom/miui/milk/model/CalllogProtos$Call$CallType;

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/milk/model/CalllogProtos$Call$CallType;
    .locals 1
    .parameter

    .prologue
    .line 111
    const-class v0, Lcom/miui/milk/model/CalllogProtos$Call$CallType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/milk/model/CalllogProtos$Call$CallType;

    return-object p0
.end method

.method public static values()[Lcom/miui/milk/model/CalllogProtos$Call$CallType;
    .locals 1

    .prologue
    .line 111
    sget-object v0, Lcom/miui/milk/model/CalllogProtos$Call$CallType;->$VALUES:[Lcom/miui/milk/model/CalllogProtos$Call$CallType;

    invoke-virtual {v0}, [Lcom/miui/milk/model/CalllogProtos$Call$CallType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/milk/model/CalllogProtos$Call$CallType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos$Call$CallType;->value:I

    return v0
.end method
