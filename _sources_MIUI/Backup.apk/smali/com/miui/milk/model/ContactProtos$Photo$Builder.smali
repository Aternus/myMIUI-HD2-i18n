.class public final Lcom/miui/milk/model/ContactProtos$Photo$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/ContactProtos$Photo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/ContactProtos$Photo;",
        "Lcom/miui/milk/model/ContactProtos$Photo$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private image_:Lcom/google/protobuf/ByteString;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 5018
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 5114
    sget-object v0, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    iput-object v0, p0, Lcom/miui/milk/model/ContactProtos$Photo$Builder;->image_:Lcom/google/protobuf/ByteString;

    .line 5019
    invoke-direct {p0}, Lcom/miui/milk/model/ContactProtos$Photo$Builder;->maybeForceBuilderInitialization()V

    .line 5020
    return-void
.end method

.method static synthetic access$6300()Lcom/miui/milk/model/ContactProtos$Photo$Builder;
    .locals 1

    .prologue
    .line 5013
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Photo$Builder;->create()Lcom/miui/milk/model/ContactProtos$Photo$Builder;

    move-result-object v0

    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/ContactProtos$Photo$Builder;
    .locals 1

    .prologue
    .line 5025
    new-instance v0, Lcom/miui/milk/model/ContactProtos$Photo$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/ContactProtos$Photo$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 5023
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 5013
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Photo$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$Photo;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/ContactProtos$Photo;
    .locals 5

    .prologue
    .line 5062
    new-instance v1, Lcom/miui/milk/model/ContactProtos$Photo;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/milk/model/ContactProtos$Photo;-><init>(Lcom/miui/milk/model/ContactProtos$Photo$Builder;Lcom/miui/milk/model/ContactProtos$1;)V

    .line 5063
    .local v1, result:Lcom/miui/milk/model/ContactProtos$Photo;
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Photo$Builder;->bitField0_:I

    .line 5064
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 5065
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 5066
    or-int/lit8 v2, v2, 0x1

    .line 5068
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/model/ContactProtos$Photo$Builder;->image_:Lcom/google/protobuf/ByteString;

    #setter for: Lcom/miui/milk/model/ContactProtos$Photo;->image_:Lcom/google/protobuf/ByteString;
    invoke-static {v1, v3}, Lcom/miui/milk/model/ContactProtos$Photo;->access$6502(Lcom/miui/milk/model/ContactProtos$Photo;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/ByteString;

    .line 5069
    #setter for: Lcom/miui/milk/model/ContactProtos$Photo;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/milk/model/ContactProtos$Photo;->access$6602(Lcom/miui/milk/model/ContactProtos$Photo;I)I

    .line 5070
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 5013
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Photo$Builder;->clone()Lcom/miui/milk/model/ContactProtos$Photo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 5013
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Photo$Builder;->clone()Lcom/miui/milk/model/ContactProtos$Photo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/ContactProtos$Photo$Builder;
    .locals 2

    .prologue
    .line 5036
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Photo$Builder;->create()Lcom/miui/milk/model/ContactProtos$Photo$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Photo$Builder;->buildPartial()Lcom/miui/milk/model/ContactProtos$Photo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/ContactProtos$Photo$Builder;->mergeFrom(Lcom/miui/milk/model/ContactProtos$Photo;)Lcom/miui/milk/model/ContactProtos$Photo$Builder;

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
    .line 5013
    invoke-virtual {p0}, Lcom/miui/milk/model/ContactProtos$Photo$Builder;->clone()Lcom/miui/milk/model/ContactProtos$Photo$Builder;

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
    .line 5013
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos$Photo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$Photo$Builder;

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
    .line 5013
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/ContactProtos$Photo$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$Photo$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/ContactProtos$Photo$Builder;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 5090
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 5091
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 5096
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/milk/model/ContactProtos$Photo$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5098
    :sswitch_0
    return-object p0

    .line 5103
    :sswitch_1
    iget v1, p0, Lcom/miui/milk/model/ContactProtos$Photo$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/milk/model/ContactProtos$Photo$Builder;->bitField0_:I

    .line 5104
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/ContactProtos$Photo$Builder;->image_:Lcom/google/protobuf/ByteString;

    goto :goto_0

    .line 5091
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/ContactProtos$Photo;)Lcom/miui/milk/model/ContactProtos$Photo$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 5074
    invoke-static {}, Lcom/miui/milk/model/ContactProtos$Photo;->getDefaultInstance()Lcom/miui/milk/model/ContactProtos$Photo;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 5078
    :cond_0
    :goto_0
    return-object p0

    .line 5075
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Photo;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5076
    invoke-virtual {p1}, Lcom/miui/milk/model/ContactProtos$Photo;->getImage()Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/ContactProtos$Photo$Builder;->setImage(Lcom/google/protobuf/ByteString;)Lcom/miui/milk/model/ContactProtos$Photo$Builder;

    goto :goto_0
.end method

.method public setImage(Lcom/google/protobuf/ByteString;)Lcom/miui/milk/model/ContactProtos$Photo$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 5122
    if-nez p1, :cond_0

    .line 5123
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 5125
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/ContactProtos$Photo$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/ContactProtos$Photo$Builder;->bitField0_:I

    .line 5126
    iput-object p1, p0, Lcom/miui/milk/model/ContactProtos$Photo$Builder;->image_:Lcom/google/protobuf/ByteString;

    .line 5128
    return-object p0
.end method
