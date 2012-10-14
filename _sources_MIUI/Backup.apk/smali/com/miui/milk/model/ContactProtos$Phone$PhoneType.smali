.class public final enum Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;
.super Ljava/lang/Enum;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos$Phone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhoneType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

.field public static final enum ASSISTANT:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

.field public static final enum CALLBACK:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

.field public static final enum CAR:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

.field public static final enum COMPANY_MAIN:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

.field public static final enum CUSTOM:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

.field public static final enum FAX_HOME:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

.field public static final enum FAX_WORK:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

.field public static final enum HOME:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

.field public static final enum ISDN:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

.field public static final enum MAIN:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

.field public static final enum MMS:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

.field public static final enum MOBILE:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

.field public static final enum OTHER:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

.field public static final enum OTHER_FAX:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

.field public static final enum PAGER:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

.field public static final enum RADIO:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

.field public static final enum TELEX:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

.field public static final enum TTY_TDD:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

.field public static final enum WORK:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

.field public static final enum WORK_MOBILE:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

.field public static final enum WORK_PAGER:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;",
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

    .line 693
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    const-string v1, "CUSTOM"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->CUSTOM:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    .line 694
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    const-string v1, "HOME"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->HOME:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    .line 695
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    const-string v1, "MOBILE"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->MOBILE:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    .line 696
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    const-string v1, "WORK"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->WORK:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    .line 697
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    const-string v1, "FAX_WORK"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->FAX_WORK:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    .line 698
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    const-string v1, "FAX_HOME"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->FAX_HOME:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    .line 699
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    const-string v1, "PAGER"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->PAGER:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    .line 700
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    const-string v1, "OTHER"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->OTHER:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    .line 701
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    const-string v1, "CALLBACK"

    const/16 v2, 0x8

    const/16 v3, 0x8

    const/16 v4, 0x8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->CALLBACK:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    .line 702
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    const-string v1, "CAR"

    const/16 v2, 0x9

    const/16 v3, 0x9

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->CAR:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    .line 703
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    const-string v1, "COMPANY_MAIN"

    const/16 v2, 0xa

    const/16 v3, 0xa

    const/16 v4, 0xa

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->COMPANY_MAIN:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    .line 704
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    const-string v1, "ISDN"

    const/16 v2, 0xb

    const/16 v3, 0xb

    const/16 v4, 0xb

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->ISDN:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    .line 705
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    const-string v1, "MAIN"

    const/16 v2, 0xc

    const/16 v3, 0xc

    const/16 v4, 0xc

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->MAIN:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    .line 706
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    const-string v1, "OTHER_FAX"

    const/16 v2, 0xd

    const/16 v3, 0xd

    const/16 v4, 0xd

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->OTHER_FAX:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    .line 707
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    const-string v1, "RADIO"

    const/16 v2, 0xe

    const/16 v3, 0xe

    const/16 v4, 0xe

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->RADIO:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    .line 708
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    const-string v1, "TELEX"

    const/16 v2, 0xf

    const/16 v3, 0xf

    const/16 v4, 0xf

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->TELEX:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    .line 709
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    const-string v1, "TTY_TDD"

    const/16 v2, 0x10

    const/16 v3, 0x10

    const/16 v4, 0x10

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->TTY_TDD:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    .line 710
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    const-string v1, "WORK_MOBILE"

    const/16 v2, 0x11

    const/16 v3, 0x11

    const/16 v4, 0x11

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->WORK_MOBILE:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    .line 711
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    const-string v1, "WORK_PAGER"

    const/16 v2, 0x12

    const/16 v3, 0x12

    const/16 v4, 0x12

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->WORK_PAGER:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    .line 712
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    const-string v1, "ASSISTANT"

    const/16 v2, 0x13

    const/16 v3, 0x13

    const/16 v4, 0x13

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->ASSISTANT:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    .line 713
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    const-string v1, "MMS"

    const/16 v2, 0x14

    const/16 v3, 0x14

    const/16 v4, 0x14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->MMS:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    .line 691
    const/16 v0, 0x15

    new-array v0, v0, [Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    sget-object v1, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->CUSTOM:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->HOME:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->MOBILE:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->WORK:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->FAX_WORK:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->FAX_HOME:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->PAGER:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->OTHER:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->CALLBACK:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->CAR:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->COMPANY_MAIN:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->ISDN:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->MAIN:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->OTHER_FAX:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->RADIO:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->TELEX:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->TTY_TDD:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->WORK_MOBILE:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->WORK_PAGER:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->ASSISTANT:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->MMS:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->$VALUES:[Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    .line 773
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType$1;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType$1;-><init>()V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 782
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 783
    iput p4, p0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->value:I

    .line 784
    return-void
.end method

.method public static valueOf(I)Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;
    .locals 1
    .parameter "value"

    .prologue
    .line 742
    packed-switch p0, :pswitch_data_0

    .line 764
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 743
    :pswitch_0
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->CUSTOM:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    goto :goto_0

    .line 744
    :pswitch_1
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->HOME:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    goto :goto_0

    .line 745
    :pswitch_2
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->MOBILE:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    goto :goto_0

    .line 746
    :pswitch_3
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->WORK:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    goto :goto_0

    .line 747
    :pswitch_4
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->FAX_WORK:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    goto :goto_0

    .line 748
    :pswitch_5
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->FAX_HOME:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    goto :goto_0

    .line 749
    :pswitch_6
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->PAGER:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    goto :goto_0

    .line 750
    :pswitch_7
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->OTHER:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    goto :goto_0

    .line 751
    :pswitch_8
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->CALLBACK:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    goto :goto_0

    .line 752
    :pswitch_9
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->CAR:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    goto :goto_0

    .line 753
    :pswitch_a
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->COMPANY_MAIN:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    goto :goto_0

    .line 754
    :pswitch_b
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->ISDN:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    goto :goto_0

    .line 755
    :pswitch_c
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->MAIN:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    goto :goto_0

    .line 756
    :pswitch_d
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->OTHER_FAX:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    goto :goto_0

    .line 757
    :pswitch_e
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->RADIO:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    goto :goto_0

    .line 758
    :pswitch_f
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->TELEX:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    goto :goto_0

    .line 759
    :pswitch_10
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->TTY_TDD:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    goto :goto_0

    .line 760
    :pswitch_11
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->WORK_MOBILE:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    goto :goto_0

    .line 761
    :pswitch_12
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->WORK_PAGER:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    goto :goto_0

    .line 762
    :pswitch_13
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->ASSISTANT:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    goto :goto_0

    .line 763
    :pswitch_14
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->MMS:Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    goto :goto_0

    .line 742
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;
    .locals 1
    .parameter

    .prologue
    .line 691
    const-class v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    return-object p0
.end method

.method public static values()[Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;
    .locals 1

    .prologue
    .line 691
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->$VALUES:[Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    invoke-virtual {v0}, [Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 739
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Phone$PhoneType;->value:I

    return v0
.end method
