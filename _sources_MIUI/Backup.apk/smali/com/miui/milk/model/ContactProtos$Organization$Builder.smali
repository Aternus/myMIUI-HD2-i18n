.class public final Lcom/miui/milk/model/ContactProtos$Organization$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos$Organization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/ContactProtos$Organization;",
        "Lcom/miui/milk/model/ContactProtos$Organization$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private department_:Ljava/lang/Object;

.field private jobDescription_:Ljava/lang/Object;

.field private label_:Ljava/lang/Object;

.field private officeLocation_:Ljava/lang/Object;

.field private symbol_:Ljava/lang/Object;

.field private title_:Ljava/lang/Object;

.field private type_:Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;

.field private value_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const-string v1, ""

    .line 4380
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 4578
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->value_:Ljava/lang/Object;

    .line 4614
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;->WORK:Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->type_:Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;

    .line 4638
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->label_:Ljava/lang/Object;

    .line 4674
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->title_:Ljava/lang/Object;

    .line 4710
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->department_:Ljava/lang/Object;

    .line 4746
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->jobDescription_:Ljava/lang/Object;

    .line 4782
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->symbol_:Ljava/lang/Object;

    .line 4818
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->officeLocation_:Ljava/lang/Object;

    .line 4381
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->maybeForceBuilderInitialization()V

    .line 4382
    return-void
.end method

.method static synthetic access$5100()Lcom/miui/milk/model/ContactProtos$Organization$Builder;
    .locals 1

    .prologue
    .line 4375
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->create()Lcom/miui/milk/model/ContactProtos$Organization$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/ContactProtos$Organization$Builder;
    .locals 1

    .prologue
    .line 4387
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos$Organization$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 4385
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 4375
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$Organization;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/ContactProtos$Organization;
    .locals 5

    .prologue
    .line 4438
    new-instance v1, Lcom/miui/milk/model/ContactProtos$Organization;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/milk/model/ContactProtos$Organization;-><init>(Lcom/miui/milk/model/ContactProtos$Organization$Builder;Lcom/miui/milk/model/ContactProtos$1;)V

    .line 4439
    .local v1, result:Lcom/miui/milk/model/ContactProtos$Organization;
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->bitField0_:I

    .line 4440
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 4441
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 4442
    or-int/lit8 v2, v2, 0x1

    .line 4444
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->value_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos$Organization;->value_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Organization;->access$5302(Lcom/miui/milk/model/ContactProtos$Organization;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4445
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 4446
    or-int/lit8 v2, v2, 0x2

    .line 4448
    :cond_1
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->type_:Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;

    #setter for: Lcom/miui/milk/model/ContactProtos$Organization;->type_:Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Organization;->access$5402(Lcom/miui/milk/model/ContactProtos$Organization;Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;)Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;

    .line 4449
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 4450
    or-int/lit8 v2, v2, 0x4

    .line 4452
    :cond_2
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->label_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos$Organization;->label_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Organization;->access$5502(Lcom/miui/milk/model/ContactProtos$Organization;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4453
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 4454
    or-int/lit8 v2, v2, 0x8

    .line 4456
    :cond_3
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->title_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos$Organization;->title_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Organization;->access$5602(Lcom/miui/milk/model/ContactProtos$Organization;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4457
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 4458
    or-int/lit8 v2, v2, 0x10

    .line 4460
    :cond_4
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->department_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos$Organization;->department_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Organization;->access$5702(Lcom/miui/milk/model/ContactProtos$Organization;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4461
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 4462
    or-int/lit8 v2, v2, 0x20

    .line 4464
    :cond_5
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->jobDescription_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos$Organization;->jobDescription_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Organization;->access$5802(Lcom/miui/milk/model/ContactProtos$Organization;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4465
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 4466
    or-int/lit8 v2, v2, 0x40

    .line 4468
    :cond_6
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->symbol_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos$Organization;->symbol_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Organization;->access$5902(Lcom/miui/milk/model/ContactProtos$Organization;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4469
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 4470
    or-int/lit16 v2, v2, 0x80

    .line 4472
    :cond_7
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->officeLocation_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos$Organization;->officeLocation_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Organization;->access$6002(Lcom/miui/milk/model/ContactProtos$Organization;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4473
    #setter for: Lcom/miui/milk/model/ContactProtos$Organization;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/milk/model/ContactProtos$Organization;->access$6102(Lcom/miui/milk/model/ContactProtos$Organization;I)I

    .line 4474
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 4375
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->clone()Lcom/miui/milk/model/ContactProtos$Organization$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 4375
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->clone()Lcom/miui/milk/model/ContactProtos$Organization$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/ContactProtos$Organization$Builder;
    .locals 2

    .prologue
    .line 4412
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->create()Lcom/miui/milk/model/ContactProtos$Organization$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$Organization;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->mergeFrom(Lcom/miui/milk/model/ContactProtos$Organization;)Lcom/miui/milk/model/ContactProtos$Organization$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 4375
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->clone()Lcom/miui/milk/model/ContactProtos$Organization$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4375
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$Organization$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/MessageLite$Builder;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4375
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$Organization$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$Organization$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4515
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 4516
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 4521
    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4523
    :sswitch_0
    return-object p0

    .line 4528
    :sswitch_1
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->bitField0_:I

    .line 4529
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 4533
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 4534
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;->valueOf(I)Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;

    move-result-object v2

    .line 4535
    .local v2, value:Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;
    if-eqz v2, :cond_0

    .line 4536
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->bitField0_:I

    .line 4537
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->type_:Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;

    goto :goto_0

    .line 4542
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;
    :sswitch_3
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->bitField0_:I

    .line 4543
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->label_:Ljava/lang/Object;

    goto :goto_0

    .line 4547
    :sswitch_4
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->bitField0_:I

    .line 4548
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->title_:Ljava/lang/Object;

    goto :goto_0

    .line 4552
    :sswitch_5
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->bitField0_:I

    .line 4553
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->department_:Ljava/lang/Object;

    goto :goto_0

    .line 4557
    :sswitch_6
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->bitField0_:I

    .line 4558
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->jobDescription_:Ljava/lang/Object;

    goto :goto_0

    .line 4562
    :sswitch_7
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->bitField0_:I

    .line 4563
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->symbol_:Ljava/lang/Object;

    goto :goto_0

    .line 4567
    :sswitch_8
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->bitField0_:I

    .line 4568
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->officeLocation_:Ljava/lang/Object;

    goto :goto_0

    .line 4516
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/ContactProtos$Organization;)Lcom/miui/milk/model/ContactProtos$Organization$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 4478
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Organization;->getDefaultInstance()Lcom/miui/milk/model/ContactProtos$Organization;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 4503
    :cond_0
    :goto_0
    return-object p0

    .line 4479
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Organization;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4480
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Organization;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Organization$Builder;

    .line 4482
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Organization;->hasType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4483
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Organization;->getType()Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->setType(Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;)Lcom/miui/milk/model/ContactProtos$Organization$Builder;

    .line 4485
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Organization;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4486
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Organization;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Organization$Builder;

    .line 4488
    :cond_4
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Organization;->hasTitle()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4489
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Organization;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->setTitle(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Organization$Builder;

    .line 4491
    :cond_5
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Organization;->hasDepartment()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4492
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Organization;->getDepartment()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->setDepartment(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Organization$Builder;

    .line 4494
    :cond_6
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Organization;->hasJobDescription()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 4495
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Organization;->getJobDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->setJobDescription(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Organization$Builder;

    .line 4497
    :cond_7
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Organization;->hasSymbol()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4498
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Organization;->getSymbol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->setSymbol(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Organization$Builder;

    .line 4500
    :cond_8
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Organization;->hasOfficeLocation()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4501
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Organization;->getOfficeLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->setOfficeLocation(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Organization$Builder;

    goto :goto_0
.end method

.method public setDepartment(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Organization$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4725
    if-nez p1, :cond_0

    .line 4726
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4728
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->bitField0_:I

    .line 4729
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->department_:Ljava/lang/Object;

    .line 4731
    return-object p0
.end method

.method public setJobDescription(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Organization$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4761
    if-nez p1, :cond_0

    .line 4762
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4764
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->bitField0_:I

    .line 4765
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->jobDescription_:Ljava/lang/Object;

    .line 4767
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Organization$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4653
    if-nez p1, :cond_0

    .line 4654
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4656
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->bitField0_:I

    .line 4657
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->label_:Ljava/lang/Object;

    .line 4659
    return-object p0
.end method

.method public setOfficeLocation(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Organization$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4833
    if-nez p1, :cond_0

    .line 4834
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4836
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->bitField0_:I

    .line 4837
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->officeLocation_:Ljava/lang/Object;

    .line 4839
    return-object p0
.end method

.method public setSymbol(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Organization$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4797
    if-nez p1, :cond_0

    .line 4798
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4800
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->bitField0_:I

    .line 4801
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->symbol_:Ljava/lang/Object;

    .line 4803
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Organization$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4689
    if-nez p1, :cond_0

    .line 4690
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4692
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->bitField0_:I

    .line 4693
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->title_:Ljava/lang/Object;

    .line 4695
    return-object p0
.end method

.method public setType(Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;)Lcom/miui/milk/model/ContactProtos$Organization$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4622
    if-nez p1, :cond_0

    .line 4623
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4625
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->bitField0_:I

    .line 4626
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->type_:Lcom/miui/milk/model/ContactProtos$Organization$OrganizationType;

    .line 4628
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Organization$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 4593
    if-nez p1, :cond_0

    .line 4594
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4596
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->bitField0_:I

    .line 4597
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Organization$Builder;->value_:Ljava/lang/Object;

    .line 4599
    return-object p0
.end method
