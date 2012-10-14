.class public final Lcom/miui/milk/model/ContactProtos$Email$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos$Email;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/ContactProtos$Email;",
        "Lcom/miui/milk/model/ContactProtos$Email$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private label_:Ljava/lang/Object;

.field private type_:Lcom/miui/milk/model/ContactProtos$Email$EmailType;

.field private value_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const-string v1, ""

    .line 1524
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1652
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Email$Builder;->value_:Ljava/lang/Object;

    .line 1688
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Email$EmailType;->OTHER:Lcom/miui/milk/model/ContactProtos$Email$EmailType;

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Email$Builder;->type_:Lcom/miui/milk/model/ContactProtos$Email$EmailType;

    .line 1712
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Email$Builder;->label_:Ljava/lang/Object;

    .line 1525
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Email$Builder;->maybeForceBuilderInitialization()V

    .line 1526
    return-void
.end method

.method static synthetic access$1600()Lcom/miui/milk/model/ContactProtos$Email$Builder;
    .locals 1

    .prologue
    .line 1519
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Email$Builder;->create()Lcom/miui/milk/model/ContactProtos$Email$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/ContactProtos$Email$Builder;
    .locals 1

    .prologue
    .line 1531
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Email$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos$Email$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 1529
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1519
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Email$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$Email;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/ContactProtos$Email;
    .locals 5

    .prologue
    .line 1572
    new-instance v1, Lcom/miui/milk/model/ContactProtos$Email;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/milk/model/ContactProtos$Email;-><init>(Lcom/miui/milk/model/ContactProtos$Email$Builder;Lcom/miui/milk/model/ContactProtos$1;)V

    .line 1573
    .local v1, result:Lcom/miui/milk/model/ContactProtos$Email;
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Email$Builder;->bitField0_:I

    .line 1574
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 1575
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1576
    or-int/lit8 v2, v2, 0x1

    .line 1578
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Email$Builder;->value_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos$Email;->value_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Email;->access$1802(Lcom/miui/milk/model/ContactProtos$Email;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1579
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 1580
    or-int/lit8 v2, v2, 0x2

    .line 1582
    :cond_1
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Email$Builder;->type_:Lcom/miui/milk/model/ContactProtos$Email$EmailType;

    #setter for: Lcom/miui/milk/model/ContactProtos$Email;->type_:Lcom/miui/milk/model/ContactProtos$Email$EmailType;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Email;->access$1902(Lcom/miui/milk/model/ContactProtos$Email;Lcom/miui/milk/model/ContactProtos$Email$EmailType;)Lcom/miui/milk/model/ContactProtos$Email$EmailType;

    .line 1583
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 1584
    or-int/lit8 v2, v2, 0x4

    .line 1586
    :cond_2
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Email$Builder;->label_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos$Email;->label_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Email;->access$2002(Lcom/miui/milk/model/ContactProtos$Email;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1587
    #setter for: Lcom/miui/milk/model/ContactProtos$Email;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/milk/model/ContactProtos$Email;->access$2102(Lcom/miui/milk/model/ContactProtos$Email;I)I

    .line 1588
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1519
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Email$Builder;->clone()Lcom/miui/milk/model/ContactProtos$Email$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1519
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Email$Builder;->clone()Lcom/miui/milk/model/ContactProtos$Email$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/ContactProtos$Email$Builder;
    .locals 2

    .prologue
    .line 1546
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Email$Builder;->create()Lcom/miui/milk/model/ContactProtos$Email$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Email$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$Email;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos$Email$Builder;->mergeFrom(Lcom/miui/milk/model/ContactProtos$Email;)Lcom/miui/milk/model/ContactProtos$Email$Builder;

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
    .line 1519
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Email$Builder;->clone()Lcom/miui/milk/model/ContactProtos$Email$Builder;

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
    .line 1519
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos$Email$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$Email$Builder;

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
    .line 1519
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos$Email$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$Email$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$Email$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1614
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1615
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 1620
    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/milk/model/ContactProtos$Email$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1622
    :sswitch_0
    return-object p0

    .line 1627
    :sswitch_1
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Email$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Email$Builder;->bitField0_:I

    .line 1628
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Email$Builder;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 1632
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 1633
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/miui/milk/model/ContactProtos$Email$EmailType;->valueOf(I)Lcom/miui/milk/model/ContactProtos$Email$EmailType;

    move-result-object v2

    .line 1634
    .local v2, value:Lcom/miui/milk/model/ContactProtos$Email$EmailType;
    if-eqz v2, :cond_0

    .line 1635
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Email$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Email$Builder;->bitField0_:I

    .line 1636
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos$Email$Builder;->type_:Lcom/miui/milk/model/ContactProtos$Email$EmailType;

    goto :goto_0

    .line 1641
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/miui/milk/model/ContactProtos$Email$EmailType;
    :sswitch_3
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Email$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Email$Builder;->bitField0_:I

    .line 1642
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Email$Builder;->label_:Ljava/lang/Object;

    goto :goto_0

    .line 1615
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/ContactProtos$Email;)Lcom/miui/milk/model/ContactProtos$Email$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 1592
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Email;->getDefaultInstance()Lcom/miui/milk/model/ContactProtos$Email;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1602
    :cond_0
    :goto_0
    return-object p0

    .line 1593
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Email;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1594
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Email;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Email$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Email$Builder;

    .line 1596
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Email;->hasType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1597
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Email;->getType()Lcom/miui/milk/model/ContactProtos$Email$EmailType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Email$Builder;->setType(Lcom/miui/milk/model/ContactProtos$Email$EmailType;)Lcom/miui/milk/model/ContactProtos$Email$Builder;

    .line 1599
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Email;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1600
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Email;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Email$Builder;->setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Email$Builder;

    goto :goto_0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Email$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1727
    if-nez p1, :cond_0

    .line 1728
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1730
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Email$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Email$Builder;->bitField0_:I

    .line 1731
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Email$Builder;->label_:Ljava/lang/Object;

    .line 1733
    return-object p0
.end method

.method public setType(Lcom/miui/milk/model/ContactProtos$Email$EmailType;)Lcom/miui/milk/model/ContactProtos$Email$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1696
    if-nez p1, :cond_0

    .line 1697
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1699
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Email$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Email$Builder;->bitField0_:I

    .line 1700
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Email$Builder;->type_:Lcom/miui/milk/model/ContactProtos$Email$EmailType;

    .line 1702
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Email$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1667
    if-nez p1, :cond_0

    .line 1668
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1670
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Email$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Email$Builder;->bitField0_:I

    .line 1671
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Email$Builder;->value_:Ljava/lang/Object;

    .line 1673
    return-object p0
.end method
