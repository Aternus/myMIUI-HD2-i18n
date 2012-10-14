.class public final Lcom/miui/milk/model/ContactProtos$Event$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/ContactProtos$Event;",
        "Lcom/miui/milk/model/ContactProtos$Event$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private label_:Ljava/lang/Object;

.field private type_:Lcom/miui/milk/model/ContactProtos$Event$EventType;

.field private value_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const-string v1, ""

    .line 2047
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 2175
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Event$Builder;->value_:Ljava/lang/Object;

    .line 2211
    sget-object v0, Lcom/miui/milk/model/ContactProtos$Event$EventType;->OTHER:Lcom/miui/milk/model/ContactProtos$Event$EventType;

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Event$Builder;->type_:Lcom/miui/milk/model/ContactProtos$Event$EventType;

    .line 2235
    const-string v0, ""

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Event$Builder;->label_:Ljava/lang/Object;

    .line 2048
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Event$Builder;->maybeForceBuilderInitialization()V

    .line 2049
    return-void
.end method

.method static synthetic access$2300()Lcom/miui/milk/model/ContactProtos$Event$Builder;
    .locals 1

    .prologue
    .line 2042
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Event$Builder;->create()Lcom/miui/milk/model/ContactProtos$Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/ContactProtos$Event$Builder;
    .locals 1

    .prologue
    .line 2054
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Event$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos$Event$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 2052
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 2042
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Event$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$Event;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/ContactProtos$Event;
    .locals 5

    .prologue
    .line 2095
    new-instance v1, Lcom/miui/milk/model/ContactProtos$Event;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/milk/model/ContactProtos$Event;-><init>(Lcom/miui/milk/model/ContactProtos$Event$Builder;Lcom/miui/milk/model/ContactProtos$1;)V

    .line 2096
    .local v1, result:Lcom/miui/milk/model/ContactProtos$Event;
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Event$Builder;->bitField0_:I

    .line 2097
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 2098
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 2099
    or-int/lit8 v2, v2, 0x1

    .line 2101
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Event$Builder;->value_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos$Event;->value_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Event;->access$2502(Lcom/miui/milk/model/ContactProtos$Event;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2102
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 2103
    or-int/lit8 v2, v2, 0x2

    .line 2105
    :cond_1
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Event$Builder;->type_:Lcom/miui/milk/model/ContactProtos$Event$EventType;

    #setter for: Lcom/miui/milk/model/ContactProtos$Event;->type_:Lcom/miui/milk/model/ContactProtos$Event$EventType;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Event;->access$2602(Lcom/miui/milk/model/ContactProtos$Event;Lcom/miui/milk/model/ContactProtos$Event$EventType;)Lcom/miui/milk/model/ContactProtos$Event$EventType;

    .line 2106
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 2107
    or-int/lit8 v2, v2, 0x4

    .line 2109
    :cond_2
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Event$Builder;->label_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/ContactProtos$Event;->label_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Event;->access$2702(Lcom/miui/milk/model/ContactProtos$Event;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2110
    #setter for: Lcom/miui/milk/model/ContactProtos$Event;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/milk/model/ContactProtos$Event;->access$2802(Lcom/miui/milk/model/ContactProtos$Event;I)I

    .line 2111
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 2042
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Event$Builder;->clone()Lcom/miui/milk/model/ContactProtos$Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 2042
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Event$Builder;->clone()Lcom/miui/milk/model/ContactProtos$Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/ContactProtos$Event$Builder;
    .locals 2

    .prologue
    .line 2069
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Event$Builder;->create()Lcom/miui/milk/model/ContactProtos$Event$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Event$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$Event;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos$Event$Builder;->mergeFrom(Lcom/miui/milk/model/ContactProtos$Event;)Lcom/miui/milk/model/ContactProtos$Event$Builder;

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
    .line 2042
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Event$Builder;->clone()Lcom/miui/milk/model/ContactProtos$Event$Builder;

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
    .line 2042
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos$Event$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$Event$Builder;

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
    .line 2042
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos$Event$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$Event$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$Event$Builder;
    .locals 4
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2137
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 2138
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 2143
    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/milk/model/ContactProtos$Event$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2145
    :sswitch_0
    return-object p0

    .line 2150
    :sswitch_1
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Event$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Event$Builder;->bitField0_:I

    .line 2151
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Event$Builder;->value_:Ljava/lang/Object;

    goto :goto_0

    .line 2155
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    .line 2156
    .local v0, rawValue:I
    invoke-static {v0}, Lcom/miui/milk/model/ContactProtos$Event$EventType;->valueOf(I)Lcom/miui/milk/model/ContactProtos$Event$EventType;

    move-result-object v2

    .line 2157
    .local v2, value:Lcom/miui/milk/model/ContactProtos$Event$EventType;
    if-eqz v2, :cond_0

    .line 2158
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Event$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x2

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Event$Builder;->bitField0_:I

    .line 2159
    iput-object v2, p0, Lcom/miui/milk/model/ContactProtos$Event$Builder;->type_:Lcom/miui/milk/model/ContactProtos$Event$EventType;

    goto :goto_0

    .line 2164
    .end local v0           #rawValue:I
    .end local v2           #value:Lcom/miui/milk/model/ContactProtos$Event$EventType;
    :sswitch_3
    iget v3, p0, Lcom/miui/milk/model/ContactProtos$Event$Builder;->bitField0_:I

    or-int/lit8 v3, v3, 0x4

    iput v3, p0, Lcom/miui/milk/model/ContactProtos$Event$Builder;->bitField0_:I

    .line 2165
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v3

    iput-object v3, p0, Lcom/miui/milk/model/ContactProtos$Event$Builder;->label_:Ljava/lang/Object;

    goto :goto_0

    .line 2138
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/ContactProtos$Event;)Lcom/miui/milk/model/ContactProtos$Event$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 2115
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Event;->getDefaultInstance()Lcom/miui/milk/model/ContactProtos$Event;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 2125
    :cond_0
    :goto_0
    return-object p0

    .line 2116
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Event;->hasValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2117
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Event;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Event$Builder;->setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Event$Builder;

    .line 2119
    :cond_2
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Event;->hasType()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2120
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Event;->getType()Lcom/miui/milk/model/ContactProtos$Event$EventType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Event$Builder;->setType(Lcom/miui/milk/model/ContactProtos$Event$EventType;)Lcom/miui/milk/model/ContactProtos$Event$Builder;

    .line 2122
    :cond_3
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Event;->hasLabel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2123
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Event;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Event$Builder;->setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Event$Builder;

    goto :goto_0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Event$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2250
    if-nez p1, :cond_0

    .line 2251
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2253
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Event$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Event$Builder;->bitField0_:I

    .line 2254
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Event$Builder;->label_:Ljava/lang/Object;

    .line 2256
    return-object p0
.end method

.method public setType(Lcom/miui/milk/model/ContactProtos$Event$EventType;)Lcom/miui/milk/model/ContactProtos$Event$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2219
    if-nez p1, :cond_0

    .line 2220
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2222
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Event$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Event$Builder;->bitField0_:I

    .line 2223
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Event$Builder;->type_:Lcom/miui/milk/model/ContactProtos$Event$EventType;

    .line 2225
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/miui/milk/model/ContactProtos$Event$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 2190
    if-nez p1, :cond_0

    .line 2191
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2193
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Event$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Event$Builder;->bitField0_:I

    .line 2194
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Event$Builder;->value_:Ljava/lang/Object;

    .line 2196
    return-object p0
.end method
