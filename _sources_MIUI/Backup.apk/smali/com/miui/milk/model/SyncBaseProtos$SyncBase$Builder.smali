.class public final Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "SyncBaseProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/SyncBaseProtos$SyncBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/SyncBaseProtos$SyncBase;",
        "Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private version_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 283
    const-string v0, ""

    iput-object v0, p0, Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;->version_:Ljava/lang/Object;

    .line 188
    invoke-direct {p0}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;->maybeForceBuilderInitialization()V

    .line 189
    return-void
.end method

.method static synthetic access$000(Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;)Lcom/miui/milk/model/SyncBaseProtos$SyncBase;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;->buildParsed()Lcom/miui/milk/model/SyncBaseProtos$SyncBase;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;
    .locals 1

    .prologue
    .line 182
    invoke-static {}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;->create()Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/miui/milk/model/SyncBaseProtos$SyncBase;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;->buildPartial()Lcom/miui/milk/model/SyncBaseProtos$SyncBase;

    move-result-object v0

    .line 223
    .local v0, result:Lcom/miui/milk/model/SyncBaseProtos$SyncBase;
    invoke-virtual {v0}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 224
    invoke-static {v0}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 227
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;
    .locals 1

    .prologue
    .line 194
    new-instance v0, Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;-><init>()V

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 192
    return-void
.end method


# virtual methods
.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;->buildPartial()Lcom/miui/milk/model/SyncBaseProtos$SyncBase;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/SyncBaseProtos$SyncBase;
    .locals 5

    .prologue
    .line 231
    new-instance v1, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;-><init>(Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;Lcom/miui/milk/model/SyncBaseProtos$1;)V

    .line 232
    .local v1, result:Lcom/miui/milk/model/SyncBaseProtos$SyncBase;
    iget v0, p0, Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;->bitField0_:I

    .line 233
    .local v0, from_bitField0_:I
    const/4 v2, 0x0

    .line 234
    .local v2, to_bitField0_:I
    and-int/lit8 v3, v0, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 235
    or-int/lit8 v2, v2, 0x1

    .line 237
    :cond_0
    iget-object v3, p0, Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;->version_:Ljava/lang/Object;

    #setter for: Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->version_:Ljava/lang/Object;
    invoke-static {v1, v3}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->access$302(Lcom/miui/milk/model/SyncBaseProtos$SyncBase;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    #setter for: Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->bitField0_:I
    invoke-static {v1, v2}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->access$402(Lcom/miui/milk/model/SyncBaseProtos$SyncBase;I)I

    .line 239
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;->clone()Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 182
    invoke-virtual {p0}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;->clone()Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;
    .locals 2

    .prologue
    .line 205
    invoke-static {}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;->create()Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;->buildPartial()Lcom/miui/milk/model/SyncBaseProtos$SyncBase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;->mergeFrom(Lcom/miui/milk/model/SyncBaseProtos$SyncBase;)Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;

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
    .line 182
    invoke-virtual {p0}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;->clone()Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;

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
    .line 182
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;

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
    .line 182
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;
    .locals 2
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v0

    .line 260
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 265
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 267
    :sswitch_0
    return-object p0

    .line 272
    :sswitch_1
    iget v1, p0, Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;->bitField0_:I

    .line 273
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;->version_:Ljava/lang/Object;

    goto :goto_0

    .line 260
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x7a -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/SyncBaseProtos$SyncBase;)Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;
    .locals 1
    .parameter "other"

    .prologue
    .line 243
    invoke-static {}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->getDefaultInstance()Lcom/miui/milk/model/SyncBaseProtos$SyncBase;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 247
    :cond_0
    :goto_0
    return-object p0

    .line 244
    :cond_1
    invoke-virtual {p1}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->hasVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p1}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase;->getVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;->setVersion(Ljava/lang/String;)Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;

    goto :goto_0
.end method

.method public setVersion(Ljava/lang/String;)Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 298
    if-nez p1, :cond_0

    .line 299
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 301
    :cond_0
    iget v0, p0, Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;->bitField0_:I

    .line 302
    iput-object p1, p0, Lcom/miui/milk/model/SyncBaseProtos$SyncBase$Builder;->version_:Ljava/lang/Object;

    .line 304
    return-object p0
.end method
