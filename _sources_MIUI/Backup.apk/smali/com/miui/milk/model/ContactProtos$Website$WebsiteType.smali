.class public final enum Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;
.super Ljava/lang/Enum;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos$Website;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WebsiteType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

.field public static final enum BLOG:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

.field public static final enum CUSTOM:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

.field public static final enum FTP:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

.field public static final enum HOME:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

.field public static final enum HOMEPAGE:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

.field public static final enum OTHER:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

.field public static final enum PROFILE:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

.field public static final enum WORK:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

.field private static internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<",
            "Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;",
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

    .line 6364
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    const-string v1, "CUSTOM"

    invoke-direct {v0, v1, v5, v5, v5}, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;->CUSTOM:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    .line 6365
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    const-string v1, "HOMEPAGE"

    invoke-direct {v0, v1, v6, v6, v6}, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;->HOMEPAGE:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    .line 6366
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    const-string v1, "BLOG"

    invoke-direct {v0, v1, v7, v7, v7}, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;->BLOG:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    .line 6367
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    const-string v1, "PROFILE"

    invoke-direct {v0, v1, v8, v8, v8}, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;->PROFILE:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    .line 6368
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    const-string v1, "HOME"

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;->HOME:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    .line 6369
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    const-string v1, "WORK"

    const/4 v2, 0x5

    const/4 v3, 0x5

    const/4 v4, 0x5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;->WORK:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    .line 6370
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    const-string v1, "FTP"

    const/4 v2, 0x6

    const/4 v3, 0x6

    const/4 v4, 0x6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;->FTP:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    .line 6371
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    const-string v1, "OTHER"

    const/4 v2, 0x7

    const/4 v3, 0x7

    const/4 v4, 0x7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;->OTHER:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    .line 6362
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    sget-object v1, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;->CUSTOM:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;->HOMEPAGE:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;->BLOG:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;->PROFILE:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;->HOME:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;->WORK:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;->FTP:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;->OTHER:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;->$VALUES:[Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    .line 6405
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType$1;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType$1;-><init>()V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    .line 6414
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6415
    iput p4, p0, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;->value:I

    .line 6416
    return-void
.end method

.method public static valueOf(I)Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;
    .locals 1
    .parameter "value"

    .prologue
    .line 6387
    packed-switch p0, :pswitch_data_0

    .line 6396
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 6388
    :pswitch_0
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;->CUSTOM:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    goto :goto_0

    .line 6389
    :pswitch_1
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;->HOMEPAGE:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    goto :goto_0

    .line 6390
    :pswitch_2
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;->BLOG:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    goto :goto_0

    .line 6391
    :pswitch_3
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;->PROFILE:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    goto :goto_0

    .line 6392
    :pswitch_4
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;->HOME:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    goto :goto_0

    .line 6393
    :pswitch_5
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;->WORK:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    goto :goto_0

    .line 6394
    :pswitch_6
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;->FTP:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    goto :goto_0

    .line 6395
    :pswitch_7
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;->OTHER:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    goto :goto_0

    .line 6387
    nop

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
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;
    .locals 1
    .parameter

    .prologue
    .line 6362
    const-class v0, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    return-object p0
.end method

.method public static values()[Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;
    .locals 1

    .prologue
    .line 6362
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;->$VALUES:[Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    invoke-virtual {v0}, [Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .prologue
    .line 6384
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;->value:I

    return v0
.end method
