.class public final Lcom/miui/milk/model/ContactProtos$Im;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Im"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/ContactProtos$Im$Builder;,
        Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;,
        Lcom/miui/milk/model/ContactProtos$Im$ImType;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/ContactProtos$Im;


# instance fields
.field private bitField0_:I

.field private customProtocol_:Ljava/lang/Object;

.field private label_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private protocol_:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

.field private type_:Lcom/miui/milk/model/ContactProtos$Im$ImType;

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 3020
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Im;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/ContactProtos$Im;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Im;->defaultInstance:Lcom/miui/milk/model/ContactProtos$Im;

    .line 3021
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Im;->defaultInstance:Lcom/miui/milk/model/ContactProtos$Im;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos$Im;->initFields()V

    .line 3022
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/ContactProtos$Im$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 2309
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 2558
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos$Im;->memoizedIsInitialized:B

    .line 2587
    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Im;->memoizedSerializedSize:I

    .line 2310
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/ContactProtos$Im$Builder;Lcom/miui/milk/model/ContactProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2304
    invoke-direct {p0, p1}, Lcom/miui/milk/model/ContactProtos$Im;-><init>(Lcom/miui/milk/model/ContactProtos$Im$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 2311
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 2558
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos$Im;->memoizedIsInitialized:B

    .line 2587
    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Im;->memoizedSerializedSize:I

    .line 2311
    return-void
.end method

.method static synthetic access$3202(Lcom/miui/milk/model/ContactProtos$Im;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2304
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Im;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3302(Lcom/miui/milk/model/ContactProtos$Im;Lcom/miui/milk/model/ContactProtos$Im$ImType;)Lcom/miui/milk/model/ContactProtos$Im$ImType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2304
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Im;->type_:Lcom/miui/milk/model/ContactProtos$Im$ImType;

    return-object p1
.end method

.method static synthetic access$3402(Lcom/miui/milk/model/ContactProtos$Im;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2304
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Im;->label_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3502(Lcom/miui/milk/model/ContactProtos$Im;Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;)Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2304
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Im;->protocol_:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    return-object p1
.end method

.method static synthetic access$3602(Lcom/miui/milk/model/ContactProtos$Im;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2304
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Im;->customProtocol_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$3702(Lcom/miui/milk/model/ContactProtos$Im;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2304
    iput p1, p0, Lcom/miui/milk/model/ContactProtos$Im;->bitField0_:I

    return p1
.end method

.method private getCustomProtocolBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2540
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Im;->customProtocol_:Ljava/lang/Object;

    .line 2541
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2542
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2544
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Im;->customProtocol_:Ljava/lang/Object;

    move-object v2, v0

    .line 2547
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

.method public static getDefaultInstance()Lcom/miui/milk/model/ContactProtos$Im;
    .locals 1

    .prologue
    .line 2315
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Im;->defaultInstance:Lcom/miui/milk/model/ContactProtos$Im;

    return-object v0
.end method

.method private getLabelBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 2498
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Im;->label_:Ljava/lang/Object;

    .line 2499
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2500
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2502
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Im;->label_:Ljava/lang/Object;

    move-object v2, v0

    .line 2505
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
    .line 2456
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Im;->value_:Ljava/lang/Object;

    .line 2457
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 2458
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 2460
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Im;->value_:Ljava/lang/Object;

    move-object v2, v0

    .line 2463
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

    .line 2552
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Im;->value_:Ljava/lang/Object;

    .line 2553
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Im$ImType;->OTHER:Lcom/miui/milk/model/ContactProtos$Im$ImType;

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Im;->type_:Lcom/miui/milk/model/ContactProtos$Im$ImType;

    .line 2554
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Im;->label_:Ljava/lang/Object;

    .line 2555
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;->CUSTOM_PROTOCOL:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Im;->protocol_:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    .line 2556
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Im;->customProtocol_:Ljava/lang/Object;

    .line 2557
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/ContactProtos$Im$Builder;
    .locals 1

    .prologue
    .line 2689
    #calls: Lcom/miui/milk/model/ContactProtos$Im$Builder;->create()Lcom/miui/milk/model/ContactProtos$Im$Builder;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Im$Builder;->access$3000()Lcom/miui/milk/model/ContactProtos$Im$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getCustomProtocol()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2526
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Im;->customProtocol_:Ljava/lang/Object;

    .line 2527
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 2528
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 2536
    :goto_0
    return-object v4

    .line 2530
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 2532
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 2533
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2534
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Im;->customProtocol_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 2536
    goto :goto_0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2484
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Im;->label_:Ljava/lang/Object;

    .line 2485
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 2486
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 2494
    :goto_0
    return-object v4

    .line 2488
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 2490
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 2491
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2492
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Im;->label_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 2494
    goto :goto_0
.end method

.method public getProtocol()Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;
    .locals 1

    .prologue
    .line 2516
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Im;->protocol_:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 2589
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Im;->memoizedSerializedSize:I

    .line 2590
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 2614
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 2592
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 2593
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Im;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 2594
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Im;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2597
    :cond_1
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Im;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 2598
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Im;->type_:Lcom/miui/milk/model/ContactProtos$Im$ImType;

    invoke-virtual {v2}, Lcom/miui/milk/model/ContactProtos$Im$ImType;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2601
    :cond_2
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Im;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-ne v2, v5, :cond_3

    .line 2602
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Im;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2605
    :cond_3
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Im;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    .line 2606
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Im;->protocol_:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    invoke-virtual {v2}, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;->getNumber()I

    move-result v2

    invoke-static {v5, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 2609
    :cond_4
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Im;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    const/16 v3, 0x10

    if-ne v2, v3, :cond_5

    .line 2610
    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Im;->getCustomProtocolBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 2613
    :cond_5
    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Im;->memoizedSerializedSize:I

    move v1, v0

    .line 2614
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getType()Lcom/miui/milk/model/ContactProtos$Im$ImType;
    .locals 1

    .prologue
    .line 2474
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Im;->type_:Lcom/miui/milk/model/ContactProtos$Im$ImType;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 5

    .prologue
    .line 2442
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Im;->value_:Ljava/lang/Object;

    .line 2443
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 2444
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 2452
    :goto_0
    return-object v4

    .line 2446
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 2448
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 2449
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2450
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Im;->value_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 2452
    goto :goto_0
.end method

.method public hasCustomProtocol()Z
    .locals 2

    .prologue
    .line 2523
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Im;->bitField0_:I

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

.method public hasLabel()Z
    .locals 2

    .prologue
    .line 2481
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Im;->bitField0_:I

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

.method public hasProtocol()Z
    .locals 2

    .prologue
    .line 2513
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Im;->bitField0_:I

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
    .line 2471
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Im;->bitField0_:I

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

    .line 2439
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Im;->bitField0_:I

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
    .line 2619
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 2569
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Im;->getSerializedSize()I

    .line 2570
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Im;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 2571
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Im;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2573
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Im;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 2574
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Im;->type_:Lcom/miui/milk/model/ContactProtos$Im$ImType;

    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos$Im$ImType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2576
    :cond_1
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Im;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-ne v0, v3, :cond_2

    .line 2577
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Im;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2579
    :cond_2
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Im;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 2580
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Im;->protocol_:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v3, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 2582
    :cond_3
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Im;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 2583
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Im;->getCustomProtocolBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 2585
    :cond_4
    return-void
.end method
