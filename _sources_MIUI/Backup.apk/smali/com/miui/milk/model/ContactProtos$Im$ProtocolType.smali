.class public final enum Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;
.super Ljava/lang/Enum;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos$Im;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProtocolType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

.field public static final enum AIM:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

.field public static final enum CUSTOM_PROTOCOL:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

.field public static final enum GOOGLE_TALK:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

.field public static final enum ICQ:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

.field public static final enum JABBER:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

.field public static final enum MSN:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

.field public static final enum NETMEETING:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

.field public static final enum QQ:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

.field public static final enum SKYPE:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

.field public static final enum YAHOO:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;",
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

    .line 2371
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    const-string v1, "CUSTOM_PROTOCOL"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v5, v5, v2}, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;->CUSTOM_PROTOCOL:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    .line 2372
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    const-string v1, "AIM"

    invoke-direct {v0, v1, v6, v6, v5}, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;->AIM:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    .line 2373
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    const-string v1, "MSN"

    invoke-direct {v0, v1, v7, v7, v6}, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;->MSN:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    .line 2374
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    const-string v1, "YAHOO"

    invoke-direct {v0, v1, v8, v8, v7}, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;->YAHOO:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    .line 2375
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    const-string v1, "SKYPE"

    invoke-direct {v0, v1, v9, v9, v8}, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;->SKYPE:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    .line 2376
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    const-string v1, "QQ"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3, v9}, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;->QQ:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    .line 2377
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    const-string v1, "GOOGLE_TALK"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;->GOOGLE_TALK:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    .line 2378
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    const-string v1, "ICQ"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;->ICQ:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    .line 2379
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    const-string v1, "JABBER"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;->JABBER:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    .line 2380
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    const-string v1, "NETMEETING"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;->NETMEETING:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    .line 2369
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    sget-object v1, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;->CUSTOM_PROTOCOL:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;->AIM:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;->MSN:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;->YAHOO:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;->SKYPE:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;->QQ:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;->GOOGLE_TALK:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;->ICQ:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;->JABBER:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;->NETMEETING:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;->$VALUES:[Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    .line 2418
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType$1;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType$1;-><init>()V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 2427
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2428
    iput p4, p0, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;->value:I

    .line 2429
    return-void
.end method

.method public static valueOf(I)Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;
    .locals 1
    .parameter "value"

    .prologue
    .line 2398
    packed-switch p0, :pswitch_data_0

    .line 2409
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 2399
    :pswitch_0
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;->CUSTOM_PROTOCOL:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    goto :goto_0

    .line 2400
    :pswitch_1
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;->AIM:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    goto :goto_0

    .line 2401
    :pswitch_2
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;->MSN:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    goto :goto_0

    .line 2402
    :pswitch_3
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;->YAHOO:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    goto :goto_0

    .line 2403
    :pswitch_4
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;->SKYPE:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    goto :goto_0

    .line 2404
    :pswitch_5
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;->QQ:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    goto :goto_0

    .line 2405
    :pswitch_6
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;->GOOGLE_TALK:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    goto :goto_0

    .line 2406
    :pswitch_7
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;->ICQ:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    goto :goto_0

    .line 2407
    :pswitch_8
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;->JABBER:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    goto :goto_0

    .line 2408
    :pswitch_9
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;->NETMEETING:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    goto :goto_0

    .line 2398
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;
    .locals 1
    .parameter

    .prologue
    .line 2369
    const-class v0, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    return-object p0
.end method

.method public static values()[Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;
    .locals 1

    .prologue
    .line 2369
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;->$VALUES:[Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    invoke-virtual {v0}, [Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 2395
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;->value:I

    return v0
.end method
