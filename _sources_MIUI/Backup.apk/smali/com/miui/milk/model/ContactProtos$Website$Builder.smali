.class public final Lcom/miui/milk/model/ContactProtos$Website$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos$Website;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/ContactProtos$Website;",
        "Lcom/miui/milk/model/ContactProtos$Website$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private label_:Ljava/lang/Object;

.field private type_:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

.field private value_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const-string v1, ""

    .line 6630
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 6758
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Website$Builder;->value_:Ljava/lang/Object;

    .line 6794
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;->HOMEPAGE:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Website$Builder;->type_:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    .line 6818
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Website$Builder;->label_:Ljava/lang/Object;

    .line 6631
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Website$Builder;->maybeForceBuilderInitialization()V

    .line 6632
    return-void
.end method

.method static synthetic access$8200()Lcom/miui/milk/model/ContactProtos$Website$Builder;
    .locals 1

    .prologue
    .line 6625
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Website$Builder;->create()Lcom/miui/milk/model/ContactProtos$Website$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/ContactProtos$Website$Builder;
    .locals 1

    .prologue
    .line 6637
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Website$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos$Website$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 6635
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 6625
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Website$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$Website;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/ContactProtos$Website;
    .locals 5

    .prologue
    .line 6678
    new-instance v1, Lcom/miui/milk/model/ContactProtos$Website;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/milk/model/ContactProtos$Website;-><init>(Lcom/miui/milk/model/ContactProtos$Website$Builder;Lcom/miui/milk/model/ContactProtos$1;)V

    .line 6679
    .local v1, result:Lcom/miui/milk/model/ContactProtos$Website;
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Website$Builder;->bitField0_:I

    .line 6680
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 6681
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 6682
    or-int/lit8 v2, v2, 0x1

    .line 6684
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Website$Builder;->value_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos$Website;->value_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Website;->access$8402(Lcom/miui/milk/model/ContactProtos$Website;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6685
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 6686
    or-int/lit8 v2, v2, 0x2

    .line 6688
    :cond_1
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Website$Builder;->type_:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    #setter for: Lcom/miui/milk/model/ContactProtos$Website;->type_:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Website;->access$8502(Lcom/miui/milk/model/ContactProtos$Website;Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;)Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    .line 6689
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 6690
    or-int/lit8 v2, v2, 0x4

    .line 6692
    :cond_2
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Website$Builder;->label_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos$Website;->label_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Website;->access$8602(Lcom/miui/milk/model/ContactProtos$Website;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6693
    #setter for: Lcom/miui/milk/model/ContactProtos$Website;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/milk/model/ContactProtos$Website;->access$8702(Lcom/miui/milk/model/ContactProtos$Website;I)I

    .line 6694
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 6625
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Website$Builder;->clone()Lcom/miui/milk/model/ContactProtos$Website$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 6625
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Website$Builder;->clone()Lcom/miui/milk/model/ContactProtos$Website$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/ContactProtos$Website$Builder;
    .locals 2

    .prologue
    .line 6652
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Website$Builder;->create()Lcom/miui/milk/model/ContactProtos$Website$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Website$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$Website;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos$Website$Builder;->mergeFrom(Lcom/miui/milk/model/ContactProtos$Website;)Lcom/miui/milk/model/ContactProtos$Website$Builder;

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
    .line 6625
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Website$Builder;->clone()Lcom/miui/milk/model/ContactProtos$Website$Builder;

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
    .line 6625
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos$Website$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$Website$Builder;

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
    .line 6625
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos$Website$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$Website$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$Website$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6720
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 6721
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 6726
    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/milk/model/ContactProtos$Website$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6728
    :sswitch_0
    return-object p0

    .line 6733
    :sswitch_1
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Website$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Website$Builder;->bitField0_:I

    .line 6734
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Website$Builder;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 6738
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 6739
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;->valueOf(I)Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    move-result-object v2

    .line 6740
    .local v2, value:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;
    if-eqz v2, :cond_0

    .line 6741
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Website$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Website$Builder;->bitField0_:I

    .line 6742
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos$Website$Builder;->type_:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    goto :goto_0

    .line 6747
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;
    :sswitch_3
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Website$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Website$Builder;->bitField0_:I

    .line 6748
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Website$Builder;->label_:Ljava/lang/Object;

    goto :goto_0

    .line 6721
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/ContactProtos$Website;)Lcom/miui/milk/model/ContactProtos$Website$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 6698
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Website;->getDefaultInstance()Lcom/miui/milk/model/ContactProtos$Website;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 6708
    :cond_0
    :goto_0
    return-object p0

    .line 6699
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Website;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6700
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Website;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Website$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Website$Builder;

    .line 6702
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Website;->hasType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6703
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Website;->getType()Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Website$Builder;->setType(Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;)Lcom/miui/milk/model/ContactProtos$Website$Builder;

    .line 6705
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Website;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6706
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Website;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Website$Builder;->setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Website$Builder;

    goto :goto_0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Website$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6833
    if-nez p1, :cond_0

    .line 6834
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6836
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Website$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Website$Builder;->bitField0_:I

    .line 6837
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Website$Builder;->label_:Ljava/lang/Object;

    .line 6839
    return-object p0
.end method

.method public setType(Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;)Lcom/miui/milk/model/ContactProtos$Website$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6802
    if-nez p1, :cond_0

    .line 6803
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6805
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Website$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Website$Builder;->bitField0_:I

    .line 6806
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Website$Builder;->type_:Lcom/miui/milk/model/ContactProtos$Website$WebsiteType;

    .line 6808
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Website$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 6773
    if-nez p1, :cond_0

    .line 6774
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 6776
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Website$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Website$Builder;->bitField0_:I

    .line 6777
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Website$Builder;->value_:Ljava/lang/Object;

    .line 6779
    return-object p0
.end method
