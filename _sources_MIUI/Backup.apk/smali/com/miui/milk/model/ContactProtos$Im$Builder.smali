.class public final Lcom/miui/milk/model/ContactProtos$Im$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos$Im;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/ContactProtos$Im;",
        "Lcom/miui/milk/model/ContactProtos$Im$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private customProtocol_:Ljava/lang/Object;

.field private label_:Ljava/lang/Object;

.field private protocol_:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

.field private type_:Lcom/miui/milk/model/ContactProtos$Im$ImType;

.field private value_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const-string v1, ""

    .line 2701
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2861
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Im$Builder;->value_:Ljava/lang/Object;

    .line 2897
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Im$ImType;->OTHER:Lcom/miui/milk/model/ContactProtos$Im$ImType;

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Im$Builder;->type_:Lcom/miui/milk/model/ContactProtos$Im$ImType;

    .line 2921
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Im$Builder;->label_:Ljava/lang/Object;

    .line 2957
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;->CUSTOM_PROTOCOL:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Im$Builder;->protocol_:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    .line 2981
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Im$Builder;->customProtocol_:Ljava/lang/Object;

    .line 2702
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Im$Builder;->maybeForceBuilderInitialization()V

    .line 2703
    return-void
.end method

.method static synthetic access$3000()Lcom/miui/milk/model/ContactProtos$Im$Builder;
    .locals 1

    .prologue
    .line 2696
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Im$Builder;->create()Lcom/miui/milk/model/ContactProtos$Im$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/ContactProtos$Im$Builder;
    .locals 1

    .prologue
    .line 2708
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Im$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos$Im$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 2706
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2696
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Im$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$Im;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/ContactProtos$Im;
    .locals 5

    .prologue
    .line 2753
    new-instance v1, Lcom/miui/milk/model/ContactProtos$Im;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/milk/model/ContactProtos$Im;-><init>(Lcom/miui/milk/model/ContactProtos$Im$Builder;Lcom/miui/milk/model/ContactProtos$1;)V

    .line 2754
    .local v1, result:Lcom/miui/milk/model/ContactProtos$Im;
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Im$Builder;->bitField0_:I

    .line 2755
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 2756
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2757
    or-int/lit8 v2, v2, 0x1

    .line 2759
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Im$Builder;->value_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos$Im;->value_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Im;->access$3202(Lcom/miui/milk/model/ContactProtos$Im;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2760
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2761
    or-int/lit8 v2, v2, 0x2

    .line 2763
    :cond_1
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Im$Builder;->type_:Lcom/miui/milk/model/ContactProtos$Im$ImType;

    #setter for: Lcom/miui/milk/model/ContactProtos$Im;->type_:Lcom/miui/milk/model/ContactProtos$Im$ImType;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Im;->access$3302(Lcom/miui/milk/model/ContactProtos$Im;Lcom/miui/milk/model/ContactProtos$Im$ImType;)Lcom/miui/milk/model/ContactProtos$Im$ImType;

    .line 2764
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 2765
    or-int/lit8 v2, v2, 0x4

    .line 2767
    :cond_2
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Im$Builder;->label_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos$Im;->label_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Im;->access$3402(Lcom/miui/milk/model/ContactProtos$Im;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2768
    and-int/lit8 v3, v0, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 2769
    or-int/lit8 v2, v2, 0x8

    .line 2771
    :cond_3
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Im$Builder;->protocol_:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    #setter for: Lcom/miui/milk/model/ContactProtos$Im;->protocol_:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Im;->access$3502(Lcom/miui/milk/model/ContactProtos$Im;Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;)Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    .line 2772
    and-int/lit8 v3, v0, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_4

    .line 2773
    or-int/lit8 v2, v2, 0x10

    .line 2775
    :cond_4
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Im$Builder;->customProtocol_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos$Im;->customProtocol_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Im;->access$3602(Lcom/miui/milk/model/ContactProtos$Im;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2776
    #setter for: Lcom/miui/milk/model/ContactProtos$Im;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/milk/model/ContactProtos$Im;->access$3702(Lcom/miui/milk/model/ContactProtos$Im;I)I

    .line 2777
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2696
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Im$Builder;->clone()Lcom/miui/milk/model/ContactProtos$Im$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2696
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Im$Builder;->clone()Lcom/miui/milk/model/ContactProtos$Im$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/ContactProtos$Im$Builder;
    .locals 2

    .prologue
    .line 2727
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Im$Builder;->create()Lcom/miui/milk/model/ContactProtos$Im$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Im$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$Im;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos$Im$Builder;->mergeFrom(Lcom/miui/milk/model/ContactProtos$Im;)Lcom/miui/milk/model/ContactProtos$Im$Builder;

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
    .line 2696
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Im$Builder;->clone()Lcom/miui/milk/model/ContactProtos$Im$Builder;

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
    .line 2696
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos$Im$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$Im$Builder;

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
    .line 2696
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos$Im$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$Im$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$Im$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2809
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 2810
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 2815
    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/milk/model/ContactProtos$Im$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2817
    :sswitch_0
    return-object p0

    .line 2822
    :sswitch_1
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Im$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Im$Builder;->bitField0_:I

    .line 2823
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Im$Builder;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 2827
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2828
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/miui/milk/model/ContactProtos$Im$ImType;->valueOf(I)Lcom/miui/milk/model/ContactProtos$Im$ImType;

    move-result-object v2

    .line 2829
    .local v2, value:Lcom/miui/milk/model/ContactProtos$Im$ImType;
    if-eqz v2, :cond_0

    .line 2830
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Im$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Im$Builder;->bitField0_:I

    .line 2831
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos$Im$Builder;->type_:Lcom/miui/milk/model/ContactProtos$Im$ImType;

    goto :goto_0

    .line 2836
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/miui/milk/model/ContactProtos$Im$ImType;
    :sswitch_3
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Im$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Im$Builder;->bitField0_:I

    .line 2837
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Im$Builder;->label_:Ljava/lang/Object;

    goto :goto_0

    .line 2841
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2842
    .restart local v0       #rawValue:I
    invoke-static {v0}, Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;->valueOf(I)Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    move-result-object v2

    .line 2843
    .local v2, value:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;
    if-eqz v2, :cond_0

    .line 2844
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Im$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Im$Builder;->bitField0_:I

    .line 2845
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos$Im$Builder;->protocol_:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    goto :goto_0

    .line 2850
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;
    :sswitch_5
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Im$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x10

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Im$Builder;->bitField0_:I

    .line 2851
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Im$Builder;->customProtocol_:Ljava/lang/Object;

    goto :goto_0

    .line 2810
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/ContactProtos$Im;)Lcom/miui/milk/model/ContactProtos$Im$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 2781
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Im;->getDefaultInstance()Lcom/miui/milk/model/ContactProtos$Im;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2797
    :cond_0
    :goto_0
    return-object p0

    .line 2782
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Im;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2783
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Im;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Im$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Im$Builder;

    .line 2785
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Im;->hasType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2786
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Im;->getType()Lcom/miui/milk/model/ContactProtos$Im$ImType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Im$Builder;->setType(Lcom/miui/milk/model/ContactProtos$Im$ImType;)Lcom/miui/milk/model/ContactProtos$Im$Builder;

    .line 2788
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Im;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2789
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Im;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Im$Builder;->setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Im$Builder;

    .line 2791
    :cond_4
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Im;->hasProtocol()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2792
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Im;->getProtocol()Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Im$Builder;->setProtocol(Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;)Lcom/miui/milk/model/ContactProtos$Im$Builder;

    .line 2794
    :cond_5
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Im;->hasCustomProtocol()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2795
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Im;->getCustomProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Im$Builder;->setCustomProtocol(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Im$Builder;

    goto :goto_0
.end method

.method public setCustomProtocol(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Im$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2996
    if-nez p1, :cond_0

    .line 2997
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2999
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Im$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Im$Builder;->bitField0_:I

    .line 3000
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Im$Builder;->customProtocol_:Ljava/lang/Object;

    .line 3002
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Im$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2936
    if-nez p1, :cond_0

    .line 2937
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2939
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Im$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Im$Builder;->bitField0_:I

    .line 2940
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Im$Builder;->label_:Ljava/lang/Object;

    .line 2942
    return-object p0
.end method

.method public setProtocol(Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;)Lcom/miui/milk/model/ContactProtos$Im$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2965
    if-nez p1, :cond_0

    .line 2966
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2968
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Im$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Im$Builder;->bitField0_:I

    .line 2969
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Im$Builder;->protocol_:Lcom/miui/milk/model/ContactProtos$Im$ProtocolType;

    .line 2971
    return-object p0
.end method

.method public setType(Lcom/miui/milk/model/ContactProtos$Im$ImType;)Lcom/miui/milk/model/ContactProtos$Im$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2905
    if-nez p1, :cond_0

    .line 2906
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2908
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Im$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Im$Builder;->bitField0_:I

    .line 2909
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Im$Builder;->type_:Lcom/miui/milk/model/ContactProtos$Im$ImType;

    .line 2911
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Im$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2876
    if-nez p1, :cond_0

    .line 2877
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2879
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Im$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Im$Builder;->bitField0_:I

    .line 2880
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Im$Builder;->value_:Ljava/lang/Object;

    .line 2882
    return-object p0
.end method
