.class public final Lcom/miui/milk/model/ContactProtos$Postal$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos$Postal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/ContactProtos$Postal;",
        "Lcom/miui/milk/model/ContactProtos$Postal$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private city_:Ljava/lang/Object;

.field private country_:Ljava/lang/Object;

.field private label_:Ljava/lang/Object;

.field private neighborhood_:Ljava/lang/Object;

.field private pobox_:Ljava/lang/Object;

.field private postcode_:Ljava/lang/Object;

.field private region_:Ljava/lang/Object;

.field private street_:Ljava/lang/Object;

.field private type_:Lcom/miui/milk/model/ContactProtos$Postal$PostalType;

.field private value_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const-string v1, ""

    .line 5745
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 5971
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->value_:Ljava/lang/Object;

    .line 6007
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Postal$PostalType;->WORK:Lcom/miui/milk/model/ContactProtos$Postal$PostalType;

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->type_:Lcom/miui/milk/model/ContactProtos$Postal$PostalType;

    .line 6031
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->label_:Ljava/lang/Object;

    .line 6067
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->street_:Ljava/lang/Object;

    .line 6103
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->pobox_:Ljava/lang/Object;

    .line 6139
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->neighborhood_:Ljava/lang/Object;

    .line 6175
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->city_:Ljava/lang/Object;

    .line 6211
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->region_:Ljava/lang/Object;

    .line 6247
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->postcode_:Ljava/lang/Object;

    .line 6283
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->country_:Ljava/lang/Object;

    .line 5746
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->maybeForceBuilderInitialization()V

    .line 5747
    return-void
.end method

.method static synthetic access$6800()Lcom/miui/milk/model/ContactProtos$Postal$Builder;
    .locals 1

    .prologue
    .line 5740
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->create()Lcom/miui/milk/model/ContactProtos$Postal$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/ContactProtos$Postal$Builder;
    .locals 1

    .prologue
    .line 5752
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos$Postal$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 5750
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5740
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$Postal;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/ContactProtos$Postal;
    .locals 5

    .prologue
    .line 5807
    new-instance v1, Lcom/miui/milk/model/ContactProtos$Postal;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/milk/model/ContactProtos$Postal;-><init>(Lcom/miui/milk/model/ContactProtos$Postal$Builder;Lcom/miui/milk/model/ContactProtos$1;)V

    .line 5808
    .local v1, result:Lcom/miui/milk/model/ContactProtos$Postal;
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->bitField0_:I

    .line 5809
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 5810
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 5811
    or-int/lit8 v2, v2, 0x1

    .line 5813
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->value_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos$Postal;->value_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Postal;->access$7002(Lcom/miui/milk/model/ContactProtos$Postal;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5814
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 5815
    or-int/lit8 v2, v2, 0x2

    .line 5817
    :cond_1
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->type_:Lcom/miui/milk/model/ContactProtos$Postal$PostalType;

    #setter for: Lcom/miui/milk/model/ContactProtos$Postal;->type_:Lcom/miui/milk/model/ContactProtos$Postal$PostalType;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Postal;->access$7102(Lcom/miui/milk/model/ContactProtos$Postal;Lcom/miui/milk/model/ContactProtos$Postal$PostalType;)Lcom/miui/milk/model/ContactProtos$Postal$PostalType;

    .line 5818
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 5819
    or-int/lit8 v2, v2, 0x4

    .line 5821
    :cond_2
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->label_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos$Postal;->label_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Postal;->access$7202(Lcom/miui/milk/model/ContactProtos$Postal;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5822
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 5823
    or-int/lit8 v2, v2, 0x8

    .line 5825
    :cond_3
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->street_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos$Postal;->street_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Postal;->access$7302(Lcom/miui/milk/model/ContactProtos$Postal;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5826
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 5827
    or-int/lit8 v2, v2, 0x10

    .line 5829
    :cond_4
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->pobox_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos$Postal;->pobox_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Postal;->access$7402(Lcom/miui/milk/model/ContactProtos$Postal;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5830
    and-int/lit8 v3, v0, 0x20

    const/16 v4, 0x20

    if-ne v3, v4, :cond_5

    .line 5831
    or-int/lit8 v2, v2, 0x20

    .line 5833
    :cond_5
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->neighborhood_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos$Postal;->neighborhood_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Postal;->access$7502(Lcom/miui/milk/model/ContactProtos$Postal;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5834
    and-int/lit8 v3, v0, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_6

    .line 5835
    or-int/lit8 v2, v2, 0x40

    .line 5837
    :cond_6
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->city_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos$Postal;->city_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Postal;->access$7602(Lcom/miui/milk/model/ContactProtos$Postal;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5838
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_7

    .line 5839
    or-int/lit16 v2, v2, 0x80

    .line 5841
    :cond_7
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->region_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos$Postal;->region_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Postal;->access$7702(Lcom/miui/milk/model/ContactProtos$Postal;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5842
    and-int/lit16 v3, v0, 0x100

    const/16 v4, 0x100

    if-ne v3, v4, :cond_8

    .line 5843
    or-int/lit16 v2, v2, 0x100

    .line 5845
    :cond_8
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->postcode_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos$Postal;->postcode_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Postal;->access$7802(Lcom/miui/milk/model/ContactProtos$Postal;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5846
    and-int/lit16 v3, v0, 0x200

    const/16 v4, 0x200

    if-ne v3, v4, :cond_9

    .line 5847
    or-int/lit16 v2, v2, 0x200

    .line 5849
    :cond_9
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->country_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos$Postal;->country_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Postal;->access$7902(Lcom/miui/milk/model/ContactProtos$Postal;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5850
    #setter for: Lcom/miui/milk/model/ContactProtos$Postal;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/milk/model/ContactProtos$Postal;->access$8002(Lcom/miui/milk/model/ContactProtos$Postal;I)I

    .line 5851
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 5740
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->clone()Lcom/miui/milk/model/ContactProtos$Postal$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 5740
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->clone()Lcom/miui/milk/model/ContactProtos$Postal$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/ContactProtos$Postal$Builder;
    .locals 2

    .prologue
    .line 5781
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->create()Lcom/miui/milk/model/ContactProtos$Postal$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$Postal;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->mergeFrom(Lcom/miui/milk/model/ContactProtos$Postal;)Lcom/miui/milk/model/ContactProtos$Postal$Builder;

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
    .line 5740
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->clone()Lcom/miui/milk/model/ContactProtos$Postal$Builder;

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
    .line 5740
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$Postal$Builder;

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
    .line 5740
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$Postal$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$Postal$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5898
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 5899
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 5904
    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 5906
    :sswitch_0
    return-object p0

    .line 5911
    :sswitch_1
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->bitField0_:I

    .line 5912
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 5916
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 5917
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/miui/milk/model/ContactProtos$Postal$PostalType;->valueOf(I)Lcom/miui/milk/model/ContactProtos$Postal$PostalType;

    move-result-object v2

    .line 5918
    .local v2, value:Lcom/miui/milk/model/ContactProtos$Postal$PostalType;
    if-eqz v2, :cond_0

    .line 5919
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->bitField0_:I

    .line 5920
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->type_:Lcom/miui/milk/model/ContactProtos$Postal$PostalType;

    goto :goto_0

    .line 5925
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/miui/milk/model/ContactProtos$Postal$PostalType;
    :sswitch_3
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->bitField0_:I

    .line 5926
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->label_:Ljava/lang/Object;

    goto :goto_0

    .line 5930
    :sswitch_4
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->bitField0_:I

    .line 5931
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->street_:Ljava/lang/Object;

    goto :goto_0

    .line 5935
    :sswitch_5
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->bitField0_:I

    .line 5936
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->pobox_:Ljava/lang/Object;

    goto :goto_0

    .line 5940
    :sswitch_6
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x20

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->bitField0_:I

    .line 5941
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->neighborhood_:Ljava/lang/Object;

    goto :goto_0

    .line 5945
    :sswitch_7
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x40

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->bitField0_:I

    .line 5946
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->city_:Ljava/lang/Object;

    goto :goto_0

    .line 5950
    :sswitch_8
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x80

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->bitField0_:I

    .line 5951
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->region_:Ljava/lang/Object;

    goto :goto_0

    .line 5955
    :sswitch_9
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x100

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->bitField0_:I

    .line 5956
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->postcode_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 5960
    :sswitch_a
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->bitField0_:I

    or-int/lit16 v3, v3, 0x200

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->bitField0_:I

    .line 5961
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->country_:Ljava/lang/Object;

    goto/16 :goto_0

    .line 5899
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
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/ContactProtos$Postal;)Lcom/miui/milk/model/ContactProtos$Postal$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 5855
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Postal;->getDefaultInstance()Lcom/miui/milk/model/ContactProtos$Postal;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 5886
    :cond_0
    :goto_0
    return-object p0

    .line 5856
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Postal;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5857
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Postal;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Postal$Builder;

    .line 5859
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Postal;->hasType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5860
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Postal;->getType()Lcom/miui/milk/model/ContactProtos$Postal$PostalType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->setType(Lcom/miui/milk/model/ContactProtos$Postal$PostalType;)Lcom/miui/milk/model/ContactProtos$Postal$Builder;

    .line 5862
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Postal;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5863
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Postal;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Postal$Builder;

    .line 5865
    :cond_4
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Postal;->hasStreet()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5866
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Postal;->getStreet()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->setStreet(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Postal$Builder;

    .line 5868
    :cond_5
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Postal;->hasPobox()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5869
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Postal;->getPobox()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->setPobox(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Postal$Builder;

    .line 5871
    :cond_6
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Postal;->hasNeighborhood()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5872
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Postal;->getNeighborhood()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->setNeighborhood(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Postal$Builder;

    .line 5874
    :cond_7
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Postal;->hasCity()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5875
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Postal;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->setCity(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Postal$Builder;

    .line 5877
    :cond_8
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Postal;->hasRegion()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 5878
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Postal;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->setRegion(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Postal$Builder;

    .line 5880
    :cond_9
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Postal;->hasPostcode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5881
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Postal;->getPostcode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->setPostcode(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Postal$Builder;

    .line 5883
    :cond_a
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Postal;->hasCountry()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5884
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Postal;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->setCountry(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Postal$Builder;

    goto/16 :goto_0
.end method

.method public setCity(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Postal$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6190
    if-nez p1, :cond_0

    .line 6191
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6193
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->bitField0_:I

    .line 6194
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->city_:Ljava/lang/Object;

    .line 6196
    return-object p0
.end method

.method public setCountry(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Postal$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6298
    if-nez p1, :cond_0

    .line 6299
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6301
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->bitField0_:I

    .line 6302
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->country_:Ljava/lang/Object;

    .line 6304
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Postal$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6046
    if-nez p1, :cond_0

    .line 6047
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6049
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->bitField0_:I

    .line 6050
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->label_:Ljava/lang/Object;

    .line 6052
    return-object p0
.end method

.method public setNeighborhood(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Postal$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6154
    if-nez p1, :cond_0

    .line 6155
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6157
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->bitField0_:I

    .line 6158
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->neighborhood_:Ljava/lang/Object;

    .line 6160
    return-object p0
.end method

.method public setPobox(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Postal$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6118
    if-nez p1, :cond_0

    .line 6119
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6121
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->bitField0_:I

    .line 6122
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->pobox_:Ljava/lang/Object;

    .line 6124
    return-object p0
.end method

.method public setPostcode(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Postal$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6262
    if-nez p1, :cond_0

    .line 6263
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6265
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->bitField0_:I

    .line 6266
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->postcode_:Ljava/lang/Object;

    .line 6268
    return-object p0
.end method

.method public setRegion(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Postal$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6226
    if-nez p1, :cond_0

    .line 6227
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6229
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->bitField0_:I

    .line 6230
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->region_:Ljava/lang/Object;

    .line 6232
    return-object p0
.end method

.method public setStreet(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Postal$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6082
    if-nez p1, :cond_0

    .line 6083
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6085
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->bitField0_:I

    .line 6086
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->street_:Ljava/lang/Object;

    .line 6088
    return-object p0
.end method

.method public setType(Lcom/miui/milk/model/ContactProtos$Postal$PostalType;)Lcom/miui/milk/model/ContactProtos$Postal$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6015
    if-nez p1, :cond_0

    .line 6016
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6018
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->bitField0_:I

    .line 6019
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->type_:Lcom/miui/milk/model/ContactProtos$Postal$PostalType;

    .line 6021
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Postal$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 5986
    if-nez p1, :cond_0

    .line 5987
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5989
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->bitField0_:I

    .line 5990
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Postal$Builder;->value_:Ljava/lang/Object;

    .line 5992
    return-object p0
.end method
