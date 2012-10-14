.class public final Lcom/miui/milk/model/ContactProtos$Postal;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Postal"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/ContactProtos$Postal$Builder;,
        Lcom/miui/milk/model/ContactProtos$Postal$PostalType;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/ContactProtos$Postal;


# instance fields
.field private bitField0_:I

.field private city_:Ljava/lang/Object;

.field private country_:Ljava/lang/Object;

.field private label_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private neighborhood_:Ljava/lang/Object;

.field private pobox_:Ljava/lang/Object;

.field private postcode_:Ljava/lang/Object;

.field private region_:Ljava/lang/Object;

.field private street_:Ljava/lang/Object;

.field private type_:Lcom/miui/milk/model/ContactProtos$Postal$PostalType;

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6322
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Postal;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/ContactProtos$Postal;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Postal;->defaultInstance:Lcom/miui/milk/model/ContactProtos$Postal;

    .line 6323
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Postal;->defaultInstance:Lcom/miui/milk/model/ContactProtos$Postal;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos$Postal;->initFields()V

    .line 6324
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/ContactProtos$Postal$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 5196
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 5567
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos$Postal;->memoizedIsInitialized:B

    .line 5611
    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Postal;->memoizedSerializedSize:I

    .line 5197
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/ContactProtos$Postal$Builder;Lcom/miui/milk/model/ContactProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5191
    invoke-direct {p0, p1}, Lcom/miui/milk/model/ContactProtos$Postal;-><init>(Lcom/miui/milk/model/ContactProtos$Postal$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 5198
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 5567
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos$Postal;->memoizedIsInitialized:B

    .line 5611
    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Postal;->memoizedSerializedSize:I

    .line 5198
    return-void
.end method

.method static synthetic access$7002(Lcom/miui/milk/model/ContactProtos$Postal;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5191
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Postal;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7102(Lcom/miui/milk/model/ContactProtos$Postal;Lcom/miui/milk/model/ContactProtos$Postal$PostalType;)Lcom/miui/milk/model/ContactProtos$Postal$PostalType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5191
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Postal;->type_:Lcom/miui/milk/model/ContactProtos$Postal$PostalType;

    return-object p1
.end method

.method static synthetic access$7202(Lcom/miui/milk/model/ContactProtos$Postal;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5191
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Postal;->label_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7302(Lcom/miui/milk/model/ContactProtos$Postal;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5191
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Postal;->street_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7402(Lcom/miui/milk/model/ContactProtos$Postal;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5191
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Postal;->pobox_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7502(Lcom/miui/milk/model/ContactProtos$Postal;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5191
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Postal;->neighborhood_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7602(Lcom/miui/milk/model/ContactProtos$Postal;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5191
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Postal;->city_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7702(Lcom/miui/milk/model/ContactProtos$Postal;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5191
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Postal;->region_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7802(Lcom/miui/milk/model/ContactProtos$Postal;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5191
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Postal;->postcode_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$7902(Lcom/miui/milk/model/ContactProtos$Postal;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5191
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Postal;->country_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8002(Lcom/miui/milk/model/ContactProtos$Postal;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5191
    iput p1, p0, Lcom/miui/milk/model/ContactProtos$Postal;->bitField0_:I

    return p1
.end method

.method private getCityBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5448
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Postal;->city_:Ljava/lang/Object;

    .line 5449
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5450
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5452
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Postal;->city_:Ljava/lang/Object;

    move-object v2, v0

    .line 5455
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method private getCountryBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5544
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Postal;->country_:Ljava/lang/Object;

    .line 5545
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5546
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5548
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Postal;->country_:Ljava/lang/Object;

    move-object v2, v0

    .line 5551
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method public static getDefaultInstance()Lcom/miui/milk/model/ContactProtos$Postal;
    .locals 1

    .prologue
    .line 5202
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Postal;->defaultInstance:Lcom/miui/milk/model/ContactProtos$Postal;

    return-object v0
.end method

.method private getLabelBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5320
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Postal;->label_:Ljava/lang/Object;

    .line 5321
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5322
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5324
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Postal;->label_:Ljava/lang/Object;

    move-object v2, v0

    .line 5327
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method private getNeighborhoodBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5416
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Postal;->neighborhood_:Ljava/lang/Object;

    .line 5417
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5418
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5420
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Postal;->neighborhood_:Ljava/lang/Object;

    move-object v2, v0

    .line 5423
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method private getPoboxBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5384
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Postal;->pobox_:Ljava/lang/Object;

    .line 5385
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5386
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5388
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Postal;->pobox_:Ljava/lang/Object;

    move-object v2, v0

    .line 5391
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method private getPostcodeBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5512
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Postal;->postcode_:Ljava/lang/Object;

    .line 5513
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5514
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5516
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Postal;->postcode_:Ljava/lang/Object;

    move-object v2, v0

    .line 5519
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method private getRegionBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5480
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Postal;->region_:Ljava/lang/Object;

    .line 5481
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5482
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5484
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Postal;->region_:Ljava/lang/Object;

    move-object v2, v0

    .line 5487
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method private getStreetBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5352
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Postal;->street_:Ljava/lang/Object;

    .line 5353
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5354
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5356
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Postal;->street_:Ljava/lang/Object;

    move-object v2, v0

    .line 5359
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method private getValueBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 5278
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Postal;->value_:Ljava/lang/Object;

    .line 5279
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 5280
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 5282
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Postal;->value_:Ljava/lang/Object;

    move-object v2, v0

    .line 5285
    .end local v0           #b:Lcom/google/protobuf/ByteString;
    :goto_0
    return-object v2

    .restart local v1       #ref:Ljava/lang/Object;
    :cond_0
    check-cast v1, Lcom/google/protobuf/ByteString;

    .end local v1           #ref:Ljava/lang/Object;
    move-object v2, v1

    goto :goto_0
.end method

.method private initFields()V
    .locals 2

    .prologue
    const-string v1, ""

    .line 5556
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Postal;->value_:Ljava/lang/Object;

    .line 5557
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Postal$PostalType;->WORK:Lcom/miui/milk/model/ContactProtos$Postal$PostalType;

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Postal;->type_:Lcom/miui/milk/model/ContactProtos$Postal$PostalType;

    .line 5558
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Postal;->label_:Ljava/lang/Object;

    .line 5559
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Postal;->street_:Ljava/lang/Object;

    .line 5560
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Postal;->pobox_:Ljava/lang/Object;

    .line 5561
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Postal;->neighborhood_:Ljava/lang/Object;

    .line 5562
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Postal;->city_:Ljava/lang/Object;

    .line 5563
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Postal;->region_:Ljava/lang/Object;

    .line 5564
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Postal;->postcode_:Ljava/lang/Object;

    .line 5565
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Postal;->country_:Ljava/lang/Object;

    .line 5566
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/ContactProtos$Postal$Builder;
    .locals 1

    .prologue
    .line 5733
    #calls: Lcom/miui/milk/model/ContactProtos$Postal$Builder;->create()Lcom/miui/milk/model/ContactProtos$Postal$Builder;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->access$6800()Lcom/miui/milk/model/ContactProtos$Postal$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .locals 5

    .prologue
    .line 5434
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Postal;->city_:Ljava/lang/Object;

    .line 5435
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 5436
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 5444
    :goto_0
    return-object v4

    .line 5438
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 5440
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 5441
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5442
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Postal;->city_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 5444
    goto :goto_0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 5

    .prologue
    .line 5530
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Postal;->country_:Ljava/lang/Object;

    .line 5531
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 5532
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 5540
    :goto_0
    return-object v4

    .line 5534
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 5536
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 5537
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5538
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Postal;->country_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 5540
    goto :goto_0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 5

    .prologue
    .line 5306
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Postal;->label_:Ljava/lang/Object;

    .line 5307
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 5308
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 5316
    :goto_0
    return-object v4

    .line 5310
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 5312
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 5313
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5314
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Postal;->label_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 5316
    goto :goto_0
.end method

.method public getNeighborhood()Ljava/lang/String;
    .locals 5

    .prologue
    .line 5402
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Postal;->neighborhood_:Ljava/lang/Object;

    .line 5403
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 5404
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 5412
    :goto_0
    return-object v4

    .line 5406
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 5408
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 5409
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5410
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Postal;->neighborhood_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 5412
    goto :goto_0
.end method

.method public getPobox()Ljava/lang/String;
    .locals 5

    .prologue
    .line 5370
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Postal;->pobox_:Ljava/lang/Object;

    .line 5371
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 5372
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 5380
    :goto_0
    return-object v4

    .line 5374
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 5376
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 5377
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5378
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Postal;->pobox_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 5380
    goto :goto_0
.end method

.method public getPostcode()Ljava/lang/String;
    .locals 5

    .prologue
    .line 5498
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Postal;->postcode_:Ljava/lang/Object;

    .line 5499
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 5500
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 5508
    :goto_0
    return-object v4

    .line 5502
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 5504
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 5505
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5506
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Postal;->postcode_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 5508
    goto :goto_0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 5466
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Postal;->region_:Ljava/lang/Object;

    .line 5467
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 5468
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 5476
    :goto_0
    return-object v4

    .line 5470
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 5472
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 5473
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5474
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Postal;->region_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 5476
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 5613
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Postal;->memoizedSerializedSize:I

    .line 5614
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 5658
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 5616
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 5617
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Postal;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 5618
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Postal;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5621
    :cond_1
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Postal;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 5622
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Postal;->type_:Lcom/miui/milk/model/ContactProtos$Postal$PostalType;

    invoke-virtual {v2}, Lcom/miui/milk/model/ContactProtos$Postal$PostalType;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 5625
    :cond_2
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Postal;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 5626
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Postal;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5629
    :cond_3
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Postal;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-ne v2, v6, :cond_4

    .line 5630
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Postal;->getStreetBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5633
    :cond_4
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Postal;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 5634
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Postal;->getPoboxBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5637
    :cond_5
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Postal;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_6

    .line 5638
    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Postal;->getNeighborhoodBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5641
    :cond_6
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Postal;->bitField0_:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_7

    .line 5642
    const/4 v2, 0x7

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Postal;->getCityBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5645
    :cond_7
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Postal;->bitField0_:I

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_8

    .line 5646
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Postal;->getRegionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5649
    :cond_8
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Postal;->bitField0_:I

    and-int/lit16 v2, v2, 0x100

    const/16 v3, 0x100

    if-ne v2, v3, :cond_9

    .line 5650
    const/16 v2, 0x9

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Postal;->getPostcodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5653
    :cond_9
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Postal;->bitField0_:I

    and-int/lit16 v2, v2, 0x200

    const/16 v3, 0x200

    if-ne v2, v3, :cond_a

    .line 5654
    const/16 v2, 0xa

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Postal;->getCountryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 5657
    :cond_a
    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Postal;->memoizedSerializedSize:I

    move v1, v0

    .line 5658
    .end local v0           #size:I
    .restart local v1       #size:I
    goto/16 :goto_0
.end method

.method public getStreet()Ljava/lang/String;
    .locals 5

    .prologue
    .line 5338
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Postal;->street_:Ljava/lang/Object;

    .line 5339
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 5340
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 5348
    :goto_0
    return-object v4

    .line 5342
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 5344
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 5345
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5346
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Postal;->street_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 5348
    goto :goto_0
.end method

.method public getType()Lcom/miui/milk/model/ContactProtos$Postal$PostalType;
    .locals 1

    .prologue
    .line 5296
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Postal;->type_:Lcom/miui/milk/model/ContactProtos$Postal$PostalType;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 5

    .prologue
    .line 5264
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Postal;->value_:Ljava/lang/Object;

    .line 5265
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 5266
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 5274
    :goto_0
    return-object v4

    .line 5268
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 5270
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 5271
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5272
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Postal;->value_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 5274
    goto :goto_0
.end method

.method public hasCity()Z
    .locals 2

    .prologue
    .line 5431
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Postal;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCountry()Z
    .locals 2

    .prologue
    .line 5527
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Postal;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLabel()Z
    .locals 2

    .prologue
    .line 5303
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Postal;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNeighborhood()Z
    .locals 2

    .prologue
    .line 5399
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Postal;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPobox()Z
    .locals 2

    .prologue
    .line 5367
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Postal;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPostcode()Z
    .locals 2

    .prologue
    .line 5495
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Postal;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRegion()Z
    .locals 2

    .prologue
    .line 5463
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Postal;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStreet()Z
    .locals 2

    .prologue
    .line 5335
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Postal;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 2

    .prologue
    .line 5293
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Postal;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValue()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5261
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Postal;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .prologue
    .line 5663
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 5
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 5578
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Postal;->getSerializedSize()I

    .line 5579
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Postal;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 5580
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Postal;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5582
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Postal;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 5583
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Postal;->type_:Lcom/miui/milk/model/ContactProtos$Postal$PostalType;

    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos$Postal$PostalType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 5585
    :cond_1
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Postal;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 5586
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Postal;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5588
    :cond_2
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Postal;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-ne v0, v4, :cond_3

    .line 5589
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Postal;->getStreetBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5591
    :cond_3
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Postal;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 5592
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Postal;->getPoboxBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5594
    :cond_4
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Postal;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 5595
    const/4 v0, 0x6

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Postal;->getNeighborhoodBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5597
    :cond_5
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Postal;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_6

    .line 5598
    const/4 v0, 0x7

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Postal;->getCityBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5600
    :cond_6
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Postal;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_7

    .line 5601
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Postal;->getRegionBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5603
    :cond_7
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Postal;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    const/16 v1, 0x100

    if-ne v0, v1, :cond_8

    .line 5604
    const/16 v0, 0x9

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Postal;->getPostcodeBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5606
    :cond_8
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Postal;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    const/16 v1, 0x200

    if-ne v0, v1, :cond_9

    .line 5607
    const/16 v0, 0xa

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Postal;->getCountryBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 5609
    :cond_9
    return-void
.end method
