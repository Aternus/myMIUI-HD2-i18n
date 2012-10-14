.class public final enum Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;
.super Ljava/lang/Enum;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos$Nickname;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NicknameType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

.field public static final enum CUSTOM:Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

.field public static final enum DEFAULT:Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

.field public static final enum INITIALS:Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

.field public static final enum MAINDEN_NAME:Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

.field public static final enum OTHER_NAME:Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

.field public static final enum SHORT_NAME:Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3062
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    const-string v1, "CUSTOM"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;->CUSTOM:Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    .line 3063
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;->DEFAULT:Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    .line 3064
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    const-string v1, "OTHER_NAME"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;->OTHER_NAME:Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    .line 3065
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    const-string v1, "MAINDEN_NAME"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;->MAINDEN_NAME:Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    .line 3066
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    const-string v1, "SHORT_NAME"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;->SHORT_NAME:Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    .line 3067
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    const-string v1, "INITIALS"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;->INITIALS:Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    .line 3060
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    sget-object v1, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;->CUSTOM:Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;->DEFAULT:Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;->OTHER_NAME:Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;->MAINDEN_NAME:Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;->SHORT_NAME:Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;->INITIALS:Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;->$VALUES:[Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    .line 3097
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType$1;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType$1;-><init>()V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 3106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 3107
    iput p4, p0, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;->value:I

    .line 3108
    return-void
.end method

.method public static valueOf(I)Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;
    .locals 1
    .parameter "value"

    .prologue
    .line 3081
    packed-switch p0, :pswitch_data_0

    .line 3088
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 3082
    :pswitch_0
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;->CUSTOM:Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    goto :goto_0

    .line 3083
    :pswitch_1
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;->DEFAULT:Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    goto :goto_0

    .line 3084
    :pswitch_2
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;->OTHER_NAME:Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    goto :goto_0

    .line 3085
    :pswitch_3
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;->MAINDEN_NAME:Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    goto :goto_0

    .line 3086
    :pswitch_4
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;->SHORT_NAME:Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    goto :goto_0

    .line 3087
    :pswitch_5
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;->INITIALS:Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    goto :goto_0

    .line 3081
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;
    .locals 1
    .parameter

    .prologue
    .line 3060
    const-class v0, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    return-object p0
.end method

.method public static values()[Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;
    .locals 1

    .prologue
    .line 3060
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;->$VALUES:[Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    invoke-virtual {v0}, [Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 3078
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Nickname$NicknameType;->value:I

    return v0
.end method
