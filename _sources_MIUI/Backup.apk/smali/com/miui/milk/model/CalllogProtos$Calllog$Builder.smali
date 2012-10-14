.class public final Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "CalllogProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/milk/model/CalllogProtos$Calllog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite$Builder",
        "<",
        "Lcom/miui/milk/model/CalllogProtos$Calllog;",
        "Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;",
        ">;"
    }
.end annotation


# instance fields
.field private bitField0_:I

.field private call_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/milk/model/CalllogProtos$Call;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 1110
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>()V

    .line 1213
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;->call_:Ljava/util/List;

    .line 1111
    invoke-direct {p0}, Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;->maybeForceBuilderInitialization()V

    .line 1112
    return-void
.end method

.method static synthetic access$1200(Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;)Lcom/miui/milk/model/CalllogProtos$Calllog;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1105
    invoke-direct {p0}, Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;->buildParsed()Lcom/miui/milk/model/CalllogProtos$Calllog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300()Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;
    .locals 1

    .prologue
    .line 1105
    invoke-static {}, Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;->create()Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;

    move-result-object v0

    return-object v0
.end method

.method private buildParsed()Lcom/miui/milk/model/CalllogProtos$Calllog;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .prologue
    .line 1145
    invoke-virtual {p0}, Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;->buildPartial()Lcom/miui/milk/model/CalllogProtos$Calllog;

    move-result-object v0

    .line 1146
    .local v0, result:Lcom/miui/milk/model/CalllogProtos$Calllog;
    invoke-virtual {v0}, Lcom/miui/milk/model/CalllogProtos$Calllog;->isInitialized()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1147
    invoke-static {v0}, Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;->newUninitializedMessageException(Lcom/google/protobuf/MessageLite;)Lcom/google/protobuf/UninitializedMessageException;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/protobuf/UninitializedMessageException;->asInvalidProtocolBufferException()Lcom/google/protobuf/InvalidProtocolBufferException;

    move-result-object v1

    throw v1

    .line 1150
    :cond_0
    return-object v0
.end method

.method private static create()Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;
    .locals 1

    .prologue
    .line 1117
    new-instance v0, Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;

    invoke-direct {v0}, Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;-><init>()V

    return-object v0
.end method

.method private ensureCallIsMutable()V
    .locals 2

    .prologue
    .line 1216
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1217
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;->call_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;->call_:Ljava/util/List;

    .line 1218
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;->bitField0_:I

    .line 1220
    :cond_0
    return-void
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .prologue
    .line 1115
    return-void
.end method


# virtual methods
.method public addCall(Lcom/miui/milk/model/CalllogProtos$Call;)Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;
    .locals 1
    .parameter "value"

    .prologue
    .line 1249
    if-nez p1, :cond_0

    .line 1250
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1252
    :cond_0
    invoke-direct {p0}, Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;->ensureCallIsMutable()V

    .line 1253
    iget-object v0, p0, Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;->call_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1255
    return-object p0
.end method

.method public bridge synthetic buildPartial()Lcom/google/protobuf/MessageLite;
    .locals 1

    .prologue
    .line 1105
    invoke-virtual {p0}, Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;->buildPartial()Lcom/miui/milk/model/CalllogProtos$Calllog;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/miui/milk/model/CalllogProtos$Calllog;
    .locals 4

    .prologue
    .line 1154
    new-instance v1, Lcom/miui/milk/model/CalllogProtos$Calllog;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/milk/model/CalllogProtos$Calllog;-><init>(Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;Lcom/miui/milk/model/CalllogProtos$1;)V

    .line 1155
    .local v1, result:Lcom/miui/milk/model/CalllogProtos$Calllog;
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;->bitField0_:I

    .line 1156
    .local v0, from_bitField0_:I
    iget v2, p0, Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1157
    iget-object v2, p0, Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;->call_:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;->call_:Ljava/util/List;

    .line 1158
    iget v2, p0, Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;->bitField0_:I

    and-int/lit8 v2, v2, -0x2

    iput v2, p0, Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;->bitField0_:I

    .line 1160
    :cond_0
    iget-object v2, p0, Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;->call_:Ljava/util/List;

    #setter for: Lcom/miui/milk/model/CalllogProtos$Calllog;->call_:Ljava/util/List;
    invoke-static {v1, v2}, Lcom/miui/milk/model/CalllogProtos$Calllog;->access$1502(Lcom/miui/milk/model/CalllogProtos$Calllog;Ljava/util/List;)Ljava/util/List;

    .line 1161
    return-object v1
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .prologue
    .line 1105
    invoke-virtual {p0}, Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;->clone()Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .prologue
    .line 1105
    invoke-virtual {p0}, Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;->clone()Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;
    .locals 2

    .prologue
    .line 1128
    invoke-static {}, Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;->create()Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;->buildPartial()Lcom/miui/milk/model/CalllogProtos$Calllog;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;->mergeFrom(Lcom/miui/milk/model/CalllogProtos$Calllog;)Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;

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
    .line 1105
    invoke-virtual {p0}, Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;->clone()Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;

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
    .line 1105
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;

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
    .line 1105
    invoke-virtual {p0, p1, p2}, Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;->mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;
    .locals 3
    .parameter "input"
    .parameter "extensionRegistry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1188
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/CodedInputStream;->readTag()I

    move-result v1

    .line 1189
    .local v1, tag:I
    sparse-switch v1, :sswitch_data_0

    .line 1194
    invoke-virtual {p0, p1, p2, v1}, Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;->parseUnknownField(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1196
    :sswitch_0
    return-object p0

    .line 1201
    :sswitch_1
    invoke-static {}, Lcom/miui/milk/model/CalllogProtos$Call;->newBuilder()Lcom/miui/milk/model/CalllogProtos$Call$Builder;

    move-result-object v0

    .line 1202
    .local v0, subBuilder:Lcom/miui/milk/model/CalllogProtos$Call$Builder;
    invoke-virtual {p1, v0, p2}, Lcom/google/protobuf/CodedInputStream;->readMessage(Lcom/google/protobuf/MessageLite$Builder;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1203
    invoke-virtual {v0}, Lcom/miui/milk/model/CalllogProtos$Call$Builder;->buildPartial()Lcom/miui/milk/model/CalllogProtos$Call;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;->addCall(Lcom/miui/milk/model/CalllogProtos$Call;)Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;

    goto :goto_0

    .line 1189
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public mergeFrom(Lcom/miui/milk/model/CalllogProtos$Calllog;)Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;
    .locals 2
    .parameter "other"

    .prologue
    .line 1165
    invoke-static {}, Lcom/miui/milk/model/CalllogProtos$Calllog;->getDefaultInstance()Lcom/miui/milk/model/CalllogProtos$Calllog;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 1176
    :cond_0
    :goto_0
    return-object p0

    .line 1166
    :cond_1
    #getter for: Lcom/miui/milk/model/CalllogProtos$Calllog;->call_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/CalllogProtos$Calllog;->access$1500(Lcom/miui/milk/model/CalllogProtos$Calllog;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1167
    iget-object v0, p0, Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;->call_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1168
    #getter for: Lcom/miui/milk/model/CalllogProtos$Calllog;->call_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/CalllogProtos$Calllog;->access$1500(Lcom/miui/milk/model/CalllogProtos$Calllog;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;->call_:Ljava/util/List;

    .line 1169
    iget v0, p0, Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;->bitField0_:I

    goto :goto_0

    .line 1171
    :cond_2
    invoke-direct {p0}, Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;->ensureCallIsMutable()V

    .line 1172
    iget-object v0, p0, Lcom/miui/milk/model/CalllogProtos$Calllog$Builder;->call_:Ljava/util/List;

    #getter for: Lcom/miui/milk/model/CalllogProtos$Calllog;->call_:Ljava/util/List;
    invoke-static {p1}, Lcom/miui/milk/model/CalllogProtos$Calllog;->access$1500(Lcom/miui/milk/model/CalllogProtos$Calllog;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method
