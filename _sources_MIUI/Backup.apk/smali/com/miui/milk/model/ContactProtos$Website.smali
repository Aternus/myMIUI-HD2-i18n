.class public final Lcom/miui/milk/model/ContactProtos$Website;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Website"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/milk/model/ContactProtos$Website$Builder;,
        Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;
    }
.end annotation


# static fields
.field private static final defaultInstance:Lcom/miui/milk/model/ContactProtos$Website;


# instance fields
.field private bitField0_:I

.field private label_:Ljava/lang/Object;

.field private memoizedIsInitialized:B

.field private memoizedSerializedSize:I

.field private type_:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

.field private value_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 6857
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Website;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/miui/milk/model/ContactProtos$Website;-><init>(Z)V

    sput-object v0, Lcom/miui/milk/model/ContactProtos$Website;->defaultInstance:Lcom/miui/milk/model/ContactProtos$Website;

    .line 6858
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Website;->defaultInstance:Lcom/miui/milk/model/ContactProtos$Website;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos$Website;->initFields()V

    .line 6859
    return-void
.end method

.method private constructor <init>(Lcom/miui/milk/model/ContactProtos$Website$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    const/4 v0, -0x1

    .line 6349
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;-><init>(Lcom/google/protobuf/GeneratedMessageLite$Builder;)V

    .line 6501
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos$Website;->memoizedIsInitialized:B

    .line 6524
    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Website;->memoizedSerializedSize:I

    .line 6350
    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/milk/model/ContactProtos$Website$Builder;Lcom/miui/milk/model/ContactProtos$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6344
    invoke-direct {p0, p1}, Lcom/miui/milk/model/ContactProtos$Website;-><init>(Lcom/miui/milk/model/ContactProtos$Website$Builder;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 1
    .parameter "noInit"

    .prologue
    const/4 v0, -0x1

    .line 6351
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 6501
    iput-byte v0, p0, Lcom/miui/milk/model/ContactProtos$Website;->memoizedIsInitialized:B

    .line 6524
    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Website;->memoizedSerializedSize:I

    .line 6351
    return-void
.end method

.method static synthetic access$8402(Lcom/miui/milk/model/ContactProtos$Website;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6344
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Website;->value_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8502(Lcom/miui/milk/model/ContactProtos$Website;Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;)Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6344
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Website;->type_:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    return-object p1
.end method

.method static synthetic access$8602(Lcom/miui/milk/model/ContactProtos$Website;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6344
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Website;->label_:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$8702(Lcom/miui/milk/model/ContactProtos$Website;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6344
    iput p1, p0, Lcom/miui/milk/model/ContactProtos$Website;->bitField0_:I

    return p1
.end method

.method public static getDefaultInstance()Lcom/miui/milk/model/ContactProtos$Website;
    .locals 1

    .prologue
    .line 6355
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Website;->defaultInstance:Lcom/miui/milk/model/ContactProtos$Website;

    return-object v0
.end method

.method private getLabelBytes()Lcom/google/protobuf/ByteString;
    .locals 3

    .prologue
    .line 6485
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Website;->label_:Ljava/lang/Object;

    .line 6486
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 6487
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6489
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Website;->label_:Ljava/lang/Object;

    move-object v2, v0

    .line 6492
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
    .line 6443
    iget-object v1, p0, Lcom/miui/milk/model/ContactProtos$Website;->value_:Ljava/lang/Object;

    .line 6444
    .local v1, ref:Ljava/lang/Object;
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 6445
    check-cast v1, Ljava/lang/String;

    .end local v1           #ref:Ljava/lang/Object;
    invoke-static {v1}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    .line 6447
    .local v0, b:Lcom/google/protobuf/ByteString;
    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Website;->value_:Ljava/lang/Object;

    move-object v2, v0

    .line 6450
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

    .line 6497
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Website;->value_:Ljava/lang/Object;

    .line 6498
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;->HOMEPAGE:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Website;->type_:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    .line 6499
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Website;->label_:Ljava/lang/Object;

    .line 6500
    return-void
.end method

.method public static newBuilder()Lcom/miui/milk/model/ContactProtos$Website$Builder;
    .locals 1

    .prologue
    .line 6618
    #calls: Lcom/miui/milk/model/ContactProtos$Website$Builder;->create()Lcom/miui/milk/model/ContactProtos$Website$Builder;
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Website$Builder;->access$8200()Lcom/miui/milk/model/ContactProtos$Website$Builder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 5

    .prologue
    .line 6471
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Website;->label_:Ljava/lang/Object;

    .line 6472
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 6473
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 6481
    :goto_0
    return-object v4

    .line 6475
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 6477
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 6478
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6479
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Website;->label_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 6481
    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 6526
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Website;->memoizedSerializedSize:I

    .line 6527
    .local v0, size:I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    move v1, v0

    .line 6543
    .end local v0           #size:I
    .local v1, size:I
    :goto_0
    return v1

    .line 6529
    .end local v1           #size:I
    .restart local v0       #size:I
    :cond_0
    const/4 v0, 0x0

    .line 6530
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Website;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_1

    .line 6531
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Website;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6534
    :cond_1
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Website;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-ne v2, v4, :cond_2

    .line 6535
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Website;->type_:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    invoke-virtual {v2}, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;->getNumber()I

    move-result v2

    invoke-static {v4, v2}, Lcom/google/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 6538
    :cond_2
    iget v2, p0, Lcom/miui/milk/model/ContactProtos$Website;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    .line 6539
    const/4 v2, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Website;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/protobuf/CodedOutputStream;->computeBytesSize(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v0, v2

    .line 6542
    :cond_3
    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Website;->memoizedSerializedSize:I

    move v1, v0

    .line 6543
    .end local v0           #size:I
    .restart local v1       #size:I
    goto :goto_0
.end method

.method public getType()Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;
    .locals 1

    .prologue
    .line 6461
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Website;->type_:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 5

    .prologue
    .line 6429
    iget-object v2, p0, Lcom/miui/milk/model/ContactProtos$Website;->value_:Ljava/lang/Object;

    .line 6430
    .local v2, ref:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 6431
    check-cast v2, Ljava/lang/String;

    .end local v2           #ref:Ljava/lang/Object;
    move-object v4, v2

    .line 6439
    :goto_0
    return-object v4

    .line 6433
    .restart local v2       #ref:Ljava/lang/Object;
    :cond_0
    move-object v0, v2

    check-cast v0, Lcom/google/protobuf/ByteString;

    move-object v1, v0

    .line 6435
    .local v1, bs:Lcom/google/protobuf/ByteString;
    invoke-virtual {v1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v3

    .line 6436
    .local v3, s:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/Internal;->isValidUtf8(Lcom/google/protobuf/ByteString;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6437
    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Website;->value_:Ljava/lang/Object;

    :cond_1
    move-object v4, v3

    .line 6439
    goto :goto_0
.end method

.method public hasLabel()Z
    .locals 2

    .prologue
    .line 6468
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Website;->bitField0_:I

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

.method public hasType()Z
    .locals 2

    .prologue
    .line 6458
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Website;->bitField0_:I

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

    .line 6426
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Website;->bitField0_:I

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
    .line 6548
    invoke-super {p0}, Lcom/google/protobuf/GeneratedMessageLite;->writeReplace()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 6512
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Website;->getSerializedSize()I

    .line 6513
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Website;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_0

    .line 6514
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Website;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6516
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Website;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v2, :cond_1

    .line 6517
    iget-object v0, p0, Lcom/miui/milk/model/ContactProtos$Website;->type_:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    invoke-virtual {v0}, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;->getNumber()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6519
    :cond_1
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Website;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 6520
    const/4 v0, 0x3

    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Website;->getLabelBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/CodedOutputStream;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 6522
    :cond_2
    return-void
.end method
